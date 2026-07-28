# passport # System informations

> Identity record. What stays true for the whole version. If a fact changes without the
> version changing, it belongs in `STATE.md`, not here.

---

## [DRAFT]

> System-name: DRAFT

> System-version: `0.69`

> System-type: Formal method / documentary protocol (self-referential: this System *is*
> DRAFT, carrying its own DRAFT Matrix)

> System-desc: A 5-dimensional invariant matrix (D0-D4) tracking any-domain Systems
> against epistemic degradation, applied here to its own repository.

> System-authors: @sayca-jferone <legal@saycalabs.com>

> System-contributors: None.

> System-license: `Apache-2.0`

> System-visibility: `public`

> System-state-file: `.draft/STATE.md`

---

## [SUB-SYSTEMS]

> Parent-System: None - top-level System.

| Child System | Path | State pointer |
| --- | --- | --- |
| *(none)* | - | - |

---

## [PROTOCOLS]

* `DRAFT: Systems addressable passport`
* `Method-version: created-with 0.68.0 | maintained-with 0.69.0` - this Matrix was first
  written under 0.68.0 and is maintained under 0.69.0, the version it also defines
* `DRAFT-STATE v1` (optional machine-readable state block, carried by `.draft/STATE.md`)
* SPDX / REUSE (file-level license headers)
* GIT (github.com/Sayca-Jferone/DRAFT)

---

## [SUBSTRATE]

> Language: Markdown (GitHub-flavored) + YAML front matter for AI-skills

> Package manager: none - plain-text repository

> Invocation: read `README.md`, or load an `AI-skills/*.md` file into an agentic tool

> Implementation root: `/` (repository root)

> Verbs / entry points: `README.md` (human/agent reference), `AI-skills/DRAFT-v0-69-0.md`
> (operational skill form; `DRAFT-v0-68-0.md` retained for versions pinned to 0.68),
> `.github/` (contribution surface: `CONTRIBUTING.md`, `CLA.md`, `CODE_OF_CONDUCT.md`,
> `SECURITY.md`, `SUPPORT.md`, templates, `CODEOWNERS`),
> `make help` (maintenance commands: `spdx-check`/`license`, `markdown`, `spell`, `links`,
> `lint`, `all`)

---

## [CONSTRAINTS]

*Fixed for the whole version. Measured figures live in `STATE.md`.*

| Constraint | Budget |
| --- | --- |
| No executable code in the repository | 0 source files outside documentation/skill Markdown |
| No compiled build output / dependency manager | 0 (the `Makefile` orchestrates ephemeral lint tools via `pipx`/`npx`; it produces no artifact and adds no dependency of its own) |
| Single maintainer (BDFL governance) | 1 CODEOWNER (`@sayca-jferone`) |
| `make lint` passes on the tracked tree | exit code 0 |
| README readable in one pass by human or AI without loss | qualitative, reviewed each version bump |

---

## [ARTIFACT_RULES]

* Markdown only. No embedded scripts, no build artifacts.
* The root of `.draft/` carries the contract surface only - the fixed-path files an
  orchestrator resolves without prior knowledge of the layout (`PASSPORT.md`,
  `STATE.md`, `PENDING.md`). Content lives in subfolders: `dimensions/` (closed at
  exactly five, D0-D4) and `extensions/` (open, unbounded).
* `STATE.md` holds state only. Accumulative items belong to `PENDING.md`.
* No `PERMALOG` here, and none in the method at v0.69.0: the option is withdrawn until
  its evidentiary status is settled (D1/M33, A10). This repository would have declined
  it regardless, being public (D1/O11).
* A D3 entry records what was delivered and what was learned delivering it - not the
  session that produced it. Abandoned paths and reversals get one line, never a section.
* SPDX header (`## [LICENSE]` block) required at the end of every top-level
  documentation file, consistent with the format used across `README.md`.
* Forbidden in the substrate: BIOPGE tables outside
  `.draft/dimensions/2-conception/CONCEPTION.md`,
  `Boundary:`-style sections, `# BIOPGE block` tags leaking into `README.md` or the
  AI-skills themselves.
* AI-skill filenames track the method version they implement
  (`AI-skills/DRAFT-vX-Y-Z.md`). Prior versions are retained side by side, never
  renamed or deleted on a version bump, so a port between versions stays diffable.
* No reserved roles beyond CODEOWNERS (`@sayca-jferone` on `*`).

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/PASSPORT.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: System identity record as the DRAFT passport, applied reflexively to the DRAFT project itself.

> SPDX-FileNotice: Reflexive injection of DRAFT into its own Matrix, updated at v0.69.0.
