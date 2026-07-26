# Changelog

All notable changes to DRAFT are documented in this file.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versioning
follows the rules in [`CONTRIBUTING.md`](CONTRIBUTING.md#versioning) (major = the Matrix
itself changes, minor = a dimension's discipline changes, patch = clarification with no
change of meaning).

This file tracks the **method's** version history. For the live state of a given System
built with DRAFT, see that System's own `.draft/STATE.md`.

## [Unreleased]

- Added project governance files: `CLA.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`,
  `SECURITY.md`, `SUPPORT.md`, `NOTICE`, `.github/` templates and `CODEOWNERS`.
- Added `CITATION.cff` for academic/technical citation of the method.
- Added `GLOSSARY.md`, centralizing DRAFT vocabulary (System, D0-D4, FMBOA, BIOPGE,
  PROPAGATION, HARD_RULES, PASSPORT.md/STATE.md/PERMALOG.md) with verbatim citations to
  `README.md`.
- Added `.github/FUNDING.yml` (commented skeleton, no active sponsoring link yet).
- Added `.github/ISSUE_TEMPLATE/feature_request.md` and `ambiguity_report.md`, and
  reflected both in `PULL_REQUEST_TEMPLATE.md` and `SUPPORT.md`.
- Widened `SECURITY.md` scope to explicitly cover AI-skill prompt-injection/jailbreak
  vectors, and stated that scope expands once D3 gains an executable substrate.
- Reflexive `.draft/` structure applying DRAFT to the DRAFT repository itself.
- Added `Makefile` (repository maintenance commands: SPDX presence check, Markdown lint,
  spell check, link check, ephemeral `pipx`/`npx` tooling) and
  `.markdownlint-cli2.jsonc` (`+ AI-skills/.markdownlint-cli2.jsonc`), scoped to match
  formatting already deliberate in `README.md`/`CLA.md`/`CONTRIBUTING.md`. Fixed the
  `license` target silently reporting success with no tool installed, and closed 8
  missing SPDX headers found by the new `spdx-check` target.
- README gained an optional `[SUB-SYSTEMS]` section (System subdivision into disjoint
  child Systems); propagated into this repository's own `.draft/PASSPORT.md`
  (`[SUB-SYSTEMS]` block, currently "None - top-level System").

## [0.68.0] - 2026-07-26

- Added an AI-skill example (`AI-skills/DRAFT-v0-68-0.md`).
- Method updates and clarifications.

## [0.67.0] - unreleased as a tagged version

- Pre-release iteration; superseded by 0.68.0. No standalone public release recorded.

## [0.66.0] - 2026-07-11

- Added the `[ETHICS]` clause to the method.
- Renamed the five dimensions to the D-R-A-F-T acronym.
- Generalized the versioning scheme.
- Updated LICENSE to Apache 2.0 for 2026.

## [0.65.0] - 2026-07-08

- Initial public version of the DRAFT method.
- Clarified LLM restrictions in the `[HARD_RULES]` section.
- Clarified system layers and section titles.

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: CHANGELOG.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Version history of the DRAFT method itself.

> SPDX-FileNotice: Reconstructed from git history at v0.68.0.
