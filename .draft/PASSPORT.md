# PASSPORT # System informations

> Identity record. What stays true for the whole version. If a fact changes without the
> version changing, it belongs in `STATE.md`, not here.

---

## [DRAFT]

> System-name: DRAFT Matrix

> System-version: `0.68`

> System-type: Formal method / documentary protocol (self-referential: this System *is*
> the DRAFT Matrix, injected into itself)

> System-desc: A 5-dimensional invariant matrix (D0-D4) tracking any-domain Systems
> against epistemic degradation, applied here to its own repository.

> System-authors: @sayca-jferone <legal@saycalabs.com>

> System-contributors: None.

> System-license: `Apache-2.0`

> System-state-file: `.draft/STATE.md`

---

## [SUB-SYSTEMS]

> Parent-System: None - top-level System.

| Child System | Path | State pointer |
| --- | --- | --- |
| *(none)* | - | - |

---

## [PROTOCOLS]

* `DRAFT: Systems addressable passport` (v0.68.0)
* SPDX / REUSE (file-level license headers)
* GIT (github.com/Sayca-Jferone/DRAFT)

---

## [SUBSTRATE]

> Language: Markdown (GitHub-flavored) + YAML front matter for AI-skills

> Package manager: none - plain-text repository

> Invocation: read `README.md`, or load an `AI-skills/*.md` file into an agentic tool

> Implementation root: `/` (repository root)

> Verbs / entry points: `README.md` (human/agent reference), `AI-skills/DRAFT-v0-68-0.md`
> (operational skill form), `CONTRIBUTING.md` + `.github/` (contribution surface),
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
* SPDX header (`## [LICENSE]` block) required at the end of every top-level
  documentation file, consistent with the format used across `README.md`.
* Forbidden in the substrate: BIOPGE tables outside `.draft/2-conception/CONCEPTION.md`,
  `Boundary:`-style sections, `# BIOPGE block` tags leaking into `README.md` or the
  AI-skills themselves.
* AI-skill filenames track the method version they implement
  (`AI-skills/DRAFT-vX-Y-Z.md`).
* No reserved roles beyond CODEOWNERS (`@sayca-jferone` on `*`).

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/PASSPORT.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: System identity record as the DRAFT passport, applied reflexively to the DRAFT project itself.

> SPDX-FileNotice: First reflexive injection of DRAFT into its own Matrix, at v0.68.0.
