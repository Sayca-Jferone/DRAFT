#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>
# SPDX-License-Identifier: Apache-2.0
"""Check the public skills and build the release bundles into dist/.

Usage: python3 scripts/bundle.py [--check]
"""
import re
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SKILLS = ROOT / "skills"
CORE = ["draft", "grain"]
INSTANCES = ["stress-gate", "api-probe"]
DESC_MAX = 200
NAME_RE = re.compile(r"^[a-z0-9]+(-[a-z0-9]+)*$")
PRIVATE = [
          re.compile(r"facts/"),
          re.compile(r"hexis", re.IGNORECASE),
          re.compile(r"~/\.claude"),
          re.compile(r"/sgoinfre|/home/"),
          re.compile(r"42-ficanas"),
          ]
TYPO = re.compile(
                 "[\u2013\u2014\u2018\u2019\u201c\u201d\u2026"
                 "\u00a0\u202f\u200b]"
                 )
REF_RE = re.compile(
                   r"\b((?:DRAFT_tools|dimensions|file-models|draft-concept"
                   r"|definitions|references|ethics|license)/"
                   r"[A-Za-z0-9._-]+\.(?:md|yaml))"
                   )
SKILL_RE = re.compile(r"skill `([a-z0-9-]+)`")


def frontmatter(skill: Path) -> dict[str, str]:
    """Return the top-level scalar keys of SKILL.md frontmatter."""
    text = (skill / "SKILL.md").read_text(encoding="utf-8")
    match = re.match(r"---\n(.*?)\n---\n", text, re.S)
    if match is None:
        return {}
    keys: dict[str, str] = {}
    for line in match.group(1).splitlines():
        if line and not line.startswith(" ") and ":" in line:
            key, _, value = line.partition(":")
            keys[key.strip()] = value.strip()
    return keys


def text_files(skill: Path) -> list[Path]:
    """List the text files of one skill, sorted."""
    return sorted(
                 p for p in skill.rglob("*")
                 if p.is_file() and p.suffix in (".md", ".yaml")
                 or p.name == "version"
                 )


def check(skill: Path, known: set[str]) -> list[str]:
    """Return every gate violation of one skill directory."""
    errors: list[str] = []
    keys = frontmatter(skill)
    name = keys.get("name", "")
    desc = keys.get("description", "")
    if name != skill.name or not NAME_RE.match(name):
        errors.append(f"name '{name}' must equal dir '{skill.name}'")
    if not desc or len(desc) > DESC_MAX or not desc.isascii():
        errors.append(f"description: {len(desc)} chars, ASCII, max 200")
    if "license" not in keys:
        errors.append("frontmatter: no license")
    for path in text_files(skill):
        rel = path.relative_to(SKILLS)
        body = path.read_text(encoding="utf-8")
        for pattern in PRIVATE:
            if pattern.search(body):
                errors.append(f"{rel}: private ref /{pattern.pattern}/")
        if TYPO.search(body):
            errors.append(f"{rel}: typographic character")
        for ref in REF_RE.findall(body):
            if not any((SKILLS / k / ref).exists() for k in known):
                errors.append(f"{rel}: dead ref {ref}")
        for other in SKILL_RE.findall(body):
            if other not in known:
                errors.append(f"{rel}: unbundled skill `{other}`")
    return errors


def version() -> str:
    """Read the method version, 0-74-0 -> 0.74.0."""
    raw = (SKILLS / "draft" / "version").read_text(encoding="utf-8")
    return raw.strip().replace("-", ".")


def zip_dirs(out: Path, dirs: list[Path], base: Path) -> None:
    """Zip each dir with its own folder at the archive root."""
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as archive:
        for folder in dirs:
            for path in sorted(folder.rglob("*")):
                if path.is_file():
                    archive.write(path, path.relative_to(base))


def single_markdown(out: Path, names: list[str], ver: str) -> None:
    """Concatenate the core skills into one file for any AI."""
    parts = [f"# DRAFT {ver} - single-file edition\n\n"
             "Every file of the bundled skills, in order. Paths are "
             "given in the headings.\n"]
    for name in names:
        files = text_files(SKILLS / name)
        files.sort(key=lambda p: p.name != "SKILL.md")
        for path in files:
            rel = path.relative_to(SKILLS)
            body = path.read_text(encoding="utf-8")
            parts.append(f"\n---\n\n## FILE: {rel}\n\n{body}")
    out.write_text("".join(parts), encoding="utf-8")


def build(ver: str) -> Path:
    """Write every release asset into dist/<version>/."""
    dist = ROOT / "dist" / ver
    dist.mkdir(parents=True, exist_ok=True)
    for name in CORE + INSTANCES:
        zip_dirs(dist / f"{name}.zip", [SKILLS / name], SKILLS)
    zip_dirs(
            dist / f"draft-skills-{ver}.zip",
            [SKILLS / n for n in CORE + INSTANCES],
            ROOT,
            )
    single_markdown(dist / f"DRAFT-{ver}.md", CORE, ver)
    return dist


def main() -> int:
    """Run the gate, then build unless --check."""
    known = set(CORE + INSTANCES)
    errors = [
             f"{name}: {err}" for name in sorted(known)
             for err in check(SKILLS / name, known)
             ]
    for err in errors:
        print(f"GATE: {err}")
    if errors:
        print(f"FAIL: {len(errors)} violation(s), nothing built")
        return 1
    print(f"OK: gate passed for {len(known)} skills")
    if "--check" in sys.argv[1:]:
        return 0
    dist = build(version())
    for asset in sorted(dist.iterdir()):
        print(f"built {asset.relative_to(ROOT)} {asset.stat().st_size}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
