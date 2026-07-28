# Changelog

All notable changes to DRAFT are documented in this file.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versioning
follows the rules in [`CONTRIBUTING.md`](.github/CONTRIBUTING.md#versioning) (major = the Matrix
itself changes, minor = a dimension's discipline changes, patch = clarification with no
change of meaning).

This file tracks the **method's** version history. For the live state of a given System
built with DRAFT, see that System's own `.draft/STATE.md`.

## [Unreleased]

*Working tree, not yet released. Everything below becomes `0.69.0` at tag time.*

- README gained an optional `[DRAFT-STATE]` section: a machine-readable state block
  (`<!-- DRAFT-STATE v1 ... -->`) that a `STATE.md` may carry so an orchestrator can
  read Version + D0-D4 without parsing prose. Optional - a System that is never
  composed stays fully conformant without it. The block restates the prose and never
  supersedes it; on divergence the prose is authoritative. Applied reflexively to this
  repository's own `.draft/STATE.md`.
- Added `AI-skills/DRAFT-v0-69-0.md`, carrying the `DRAFT-STATE` block.
  `AI-skills/DRAFT-v0-68-0.md` is kept unchanged alongside it, so a port between
  method versions stays diffable.
- Restructured this repository's own `.draft/`: D0-D4 grouped under `dimensions/`,
  `extensions/` added, and a contract-surface rule for the dotfolder root - only files an
  orchestrator resolves at a fixed path stay there. The README template still describes
  the previous layout and is realigned in a later cycle.
- Added `.draft/PENDING.md`, taking over the open-item list that `.draft/STATE.md`
  carried, so the state file is a snapshot and nothing accumulates in it.
- Specified the `PERMALOG`/`DEVJOURNAL` boundary as a rule of the method: narrative and
  amendable (D3) versus factual and append-only. This repository keeps no `PERMALOG` of
  its own - it is public, and a repo-wide action register accumulates exactly the detail
  that should not be published.
- Moved the contribution surface into `.github/`: `CONTRIBUTING.md`, `CLA.md`,
  `CODE_OF_CONDUCT.md`, `SECURITY.md` and `SUPPORT.md` join the templates and
  `CODEOWNERS`. GitHub resolves community health files from `.github/` exactly as from
  the root, so every link, tab and banner is unchanged. Repository root: 14 entries -> 8.
- Separated `DRAFT` (the method - one, invariant, versioned in its own right) from the
  `DRAFT Matrix` of a System (an instance, carried by one versioned individual). Defined
  `Mutation` as the state of a Matrix under revision, closed when all five dimensions
  re-synchronise. Both added to `GLOSSARY.md`; `README.md` defines neither yet.
- `GLOSSARY.md` brought back in line and given an explicit maintenance rule - it is a
  projection of `README.md`, and a divergence is a bug in the glossary. It had drifted to
  announcing v0.68.0.
- Two repository disciplines recorded: a D3 entry states what was delivered and what was
  learned delivering it, not the session that produced it; and a commit message names the
  change it makes. Both apply forward - the pre-v0.69.0 history is deliberately kept
  unrewritten, since its abandoned iterations are evidence the method was practised.
- **Removed:** `PERMALOG` leaves the method. The README described it as "not a secured
  file" while it was meant to serve as proof of action; the two cannot both hold, and
  settling it would require anchoring the log outside itself (signed commits, third-party
  timestamping, reflog derivation). Withdrawn from `README.md`, `GLOSSARY.md` and the
  current AI-skill until that question is answered. `AI-skills/DRAFT-v0-68-0.md` keeps it
  unchanged, as prior skills are never edited.
- A `.draft/` now declares the visibility its author intends -
  `System-visibility: public | private | internal` in `PASSPORT.md`. It states intent,
  never protection: git has no visibility granularity below the repository. D0 and D4 are
  the dimensions the method asks you to fill unfiltered, and so the least safe to publish.
- A dimension whose question does not yet arise now carries **no percentage** in
  `STATE.md`: write `not eligible` and `D4: null`, never `0%`, which means *eligible,
  nothing done*.
- `README.md` realigned with the delivered structure: the workspace map shows
  `dimensions/` and `PENDING.md`, and the contract-surface rule for the `.draft/` root is
  stated alongside it.
- **The D0-D4 numbering is documented as a cost axis**, not an order of execution: D0
  none, D1 minimal, D2 moderate, D3 high, D4 extreme (a fault reaching clients costs the
  supplier's credibility). This is why `[PROPAGATION]` repairs at the dimension a fault
  belongs to - repairing is descending the cost axis - and why going back is not a
  failure.
- **D1/D2/D3 named internal** (bounded, measurable, completable) and **D0/D4 external**
  (permanently floating, outside the System's control). External dimensions now carry no
  percentage at all: always `null` in the block, `floating` in the prose.
- **`overall` is now derived, never authored**: `(D1x1 + D2x2 + D3x4) / 7`, rounded, over
  the internal dimensions only. Weights follow the cost axis. This reverses the previous
  rule ("a human judgement, transported, never recomputed"): a hand-written figure cannot
  be verified and two authors produce two numbers. The state block consequently carries
  one derived value, stated as an explicit exception to "the block creates no
  information".
- A percentage may **fall**. Injecting D0 or D4 material into D1 lowers it - the truth it
  must cover grew - and the fall cascades to D2/D3 by re-verification, never by
  recomputation. A falling figure is the measure becoming honest, not a regression.
- Absolute rule stated: **no production without a D0 rich enough to feed a coherent D1.**
- `PASSPORT.md` gains `Method-version: created-with X.Y.Z | maintained-with X.Y.Z`. A
  Matrix outlives the method version that wrote it, and which DRAFT produced it cannot be
  recovered after the fact.
- **Migration** defined and separated from **mutation**: a mutation is a System moving
  v1 -> v2 under a constant method; a migration is a Matrix crossing DRAFT versions. A
  migration is a *judgement task* - no algorithm produces it, only a LLM or a human with
  a great deal of time - and two rules make it safe. **Additive**: the source Matrix stays
  at `.draft-<old-version>/` and is deleted only once the migration is trusted, since what
  is overwritten can no longer be verified. **Reported**: every item is classified
  transported, transformed, abandoned (with reason) or created, so the result is checked
  by reading the report rather than the whole Matrix. The risk guarded against is silent
  loss, not mistranslation. The migration *procedure* is deliberately left unwritten until
  a real migration exercises it.

## [0.68.0] - 2026-07-28

- Added an AI-skill example (`AI-skills/DRAFT-v0-68-0.md`).
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

> SPDX-FileNotice: Reconstructed from git history at v0.68.0; released versions tagged retroactively 2026-07-28.
