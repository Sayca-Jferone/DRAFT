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

The machine-readable release: DRAFT becomes legible to an orchestrator without ceasing to
be written for humans. Several rules that had been operating implicitly are given their
ground, and two are reversed.

### Machine-readable state

- README gained an optional **`[DRAFT-STATE]`** section: a state block
  (`<!-- DRAFT-STATE v1 ... -->`) a `STATE.md` may carry so an orchestrator can read
  Version + dimensions without parsing prose. An HTML comment, invisible in every renderer,
  so `STATE.md` stays the human dashboard it already is. Optional - a System never composed
  with others stays fully conformant without it - and required only for orchestration. The
  block format carries its own version, independent of the method's: an orchestrator
  meeting an unknown block version must decline rather than guess.
- **`overall` is derived, never authored**: `(D1x1 + D2x2 + D3x4) / 7`, rounded, over the
  internal dimensions only. This reverses the original rule ("a human judgement,
  transported, never recomputed"): a hand-written figure cannot be checked, and two authors
  produce two numbers for the same Matrix. The weights follow the cost axis - finishing D3
  costs more than finishing D1. The block consequently carries one derived value, stated as
  an explicit exception to "the block creates no information" rather than left to
  contradict it silently.
- `PASSPORT.md` gains **`System-visibility: public | private | internal`**. It states
  intent, never protection - git has no visibility granularity below the repository, and
  objects pushed to a public remote stay reachable after deletion. D0 and D4 are the
  dimensions the method asks you to fill *unfiltered*, and so the least safe to publish.
- Added `AI-skills/DRAFT-v0-69-0.md`. `DRAFT-v0-68-0.md` is kept unchanged alongside it,
  so a port between method versions stays diffable.

### Foundations made explicit

- **The D0-D4 numbering is an axis of cost of modification**, not an order of execution:
  D0 none, D1 minimal, D2 moderate, D3 high, D4 extreme - a fault reaching your clients
  costs the supplier's credibility. This grounds two rules that previously had none:
  `[PROPAGATION]` repairs at the dimension a fault belongs to because *repairing is
  descending the cost axis*, and "going back is not a failure" becomes arithmetic rather
  than reassurance.
- **D1/D2/D3 are internal** - bounded by the System, measurable, completable. **D0 and D4
  are external** - incoming matter and lived experience, outside the System's control,
  permanently floating, carrying **no percentage at all**. This explains at once why only
  some dimensions have a figure and why `D4: null` reads correctly where `D1: null` would
  not.
- **A percentage may fall.** Injecting D0 or D4 material into D1 lowers it, because the
  truth it must cover grew; enriching D0 alone changes nothing. The fall cascades to D2/D3
  by **re-verification, never recomputation**, so those stay authored facts. A falling
  figure is the measure becoming honest about a System that got bigger, not a regression
  to fix.
- **Absolute rule:** no production without a D0 rich enough to feed a coherent D1. Not a
  partial D1 - nothing.

### Vocabulary

- **`DRAFT`** (the method - one, invariant, versioned in its own right) separated from
  **the `DRAFT Matrix` of a System** (an instance, carried by one versioned individual and
  materialised by its `.draft/`). The method contains; the Matrix is possessed. Grammatical
  test: a possessive or complement takes *Matrix*, otherwise *DRAFT*.
- **`Mutation`** defined as the *state* of a Matrix under revision - opened by a change at
  any dimension, closed when all five re-synchronise. A state, not an event: the version
  bump is its outcome.
- **`Migration`** defined and distinguished from mutation: a Matrix crossing DRAFT
  versions, where the System may not change at all but the method underneath it did.

### Longevity

- `PASSPORT.md` gains **`Method-version: created-with X.Y.Z | maintained-with X.Y.Z`**. A
  Matrix outlives the method version that wrote it, and which DRAFT produced it cannot be
  recovered after the fact.
- A migration is a **judgement task** - no algorithm produces it, only a LLM or a human
  with a great deal of time. Two rules make it safe. **Additive**: the source Matrix stays
  at `.draft-<old-version>/` and is deleted only once the migration is trusted, since what
  is overwritten can no longer be verified. **Reported**: every item is classified
  transported, transformed, abandoned (with its reason) or created, so the result is
  checked by reading the report rather than the whole Matrix. The risk guarded against is
  silent loss, not mistranslation.
- **A Matrix does not expire.** It is conformant to the version it declares in
  `maintained-with`, for as long as it declares it, and a newer DRAFT never invalidates it
  retroactively. Migration is never obligatory. The counterpart binds the reader: a Matrix
  declaring `maintained-with 0.69.0` must be *read* as 0.69.0, and applying newer rules to
  an older Matrix makes the reader the fault, not the Matrix.
- The migration **procedure** is deliberately left unwritten until a real migration
  exercises it - the intended shape being to feed the model the delta between two retained
  AI-skills and let it touch only what that delta implies.

### Removed

- **`PERMALOG` leaves the method.** The README described it as "not a secured file" while
  it was meant to serve as proof of action; the two cannot both hold, and settling it would
  require anchoring the log outside itself (signed commits, third-party timestamping,
  reflog derivation) - a mechanism this repository's constraints forbid. Withdrawn from
  `README.md`, `GLOSSARY.md` and the current AI-skill until the question is answered.
  `AI-skills/DRAFT-v0-68-0.md` keeps it unchanged, as prior skills are never edited.

### Structure and housekeeping

- `.draft/` restructured: D0-D4 grouped under `dimensions/` (closed at exactly five),
  `extensions/` added (open, unbounded), and a **contract-surface rule** for the dotfolder
  root - only files an orchestrator resolves at a fixed path stay there. The same test
  applied to the repository root moved the contribution surface into `.github/`, taking it
  from 14 entries to 8, with no platform behaviour lost.
- Added `.draft/PENDING.md`, taking over the open-item list `STATE.md` carried, so the
  state file is a snapshot and nothing accumulates in it.
- `GLOSSARY.md` given an explicit maintenance rule - it is a projection of `README.md`, and
  a divergence is a bug in the glossary. It had drifted to announcing v0.68.0.
- Two repository disciplines recorded, both forward-only: a D3 entry states what was
  delivered and what was learned delivering it, not the session that produced it; and a
  commit message names the change it makes. The pre-0.69.0 history is deliberately kept
  unrewritten - its abandoned iterations are evidence the method was practised.

## [0.68.0] - 2026-07-28

The governance release: the method acquired a project around it, and was applied to
itself for the first time.

### Method

- `[RETROACTIVITY]` renamed and rewritten as **`[PROPAGATION]`**, stating explicitly that
  the five dimensions are "one entangled Versioned System, not a pipeline": any change at
  any dimension triggers a propagation check across all four others, for the current
  Version, until that Version is explicitly closed.
- Dimension verbs settled to their final form - Discover, Register, Articulate, Fabricate,
  Terrain - and the `[OVERVIEW]` table introduced as the method's single-glance summary.
- `[STATE.md]` specified as the living reference: a 5-axis dashboard with an `Overall`
  figure, distinct from `PASSPORT.md`'s static identity record.
- `[DIMENSIONAL_LEVERAGE]` added: an estimation of where DRAFT actually pays off, so the
  method warns against its own over-application on low-complexity Systems.
- `[SUB-SYSTEMS]` added: a System may subdivide into child Systems, each carrying its own
  full `.draft/`, in disjoint subtrees. A `.draft/` never contains another `.draft/`.
- Audit block generalized from `2-Conception.md vs [source file]` to `CONCEPTION.md vs
  [object]`, completing the shift from software-only to domain-agnostic.

### Tooling and governance

- Added an AI-skill example (`AI-skills/DRAFT-v0-68-0.md`): an operative condensate of the
  README, loadable into an agentic tool, with the README normative on any discrepancy.
- Added project governance files: `CLA.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`,
  `SECURITY.md`, `SUPPORT.md`, `NOTICE`, `.github/` templates and `CODEOWNERS`. `CLA.md`
  and `CONTRIBUTING.md` were rewritten from scratch - the inherited versions carried an
  ownership-transfer clause incompatible with Apache 2.0.
- `CONTRIBUTING.md` requires a D0-D4 propagation declaration on every non-trivial PR,
  mirrored byte-for-byte in `PULL_REQUEST_TEMPLATE.md` so exactly one canonical shape
  exists.
- Added `CITATION.cff` for academic and technical citation of the method.
- Added `GLOSSARY.md`, centralizing DRAFT vocabulary with citations back to `README.md`.
- Added `.github/FUNDING.yml` (commented skeleton, no active sponsoring link yet) and two
  further issue templates (`feature_request.md`, `ambiguity_report.md`).
- Widened `SECURITY.md` scope to cover AI-skill prompt-injection and jailbreak vectors,
  stating that scope expands once D3 gains an executable substrate.
- Added `Makefile` (SPDX presence check, Markdown lint, spell check, link check, all tools
  resolved ephemerally via `pipx`/`npx`) and `.markdownlint-cli2.jsonc`. Running it found
  real defects rather than confirming health: the `license` target reported success with
  no tool installed, 622 markdownlint issues stood against deliberate formatting, and 8
  files carried no SPDX header despite `CONTRIBUTING.md` requiring one on every file.

### Reflexive application

- **DRAFT applied to its own repository** for the first time: a complete `.draft/` with
  `PASSPORT.md`, `STATE.md` and all five dimension files. The method's claim that "even
  DRAFT has its own DRAFT Passport" stopped being rhetorical.

## [0.67.0] - unreleased as a tagged version

- Pre-release iteration; superseded by 0.68.0. No standalone public release commit is
  distinguishable in git history, so no content is claimed for it.

## [0.66.0] - 2026-07-11

The release that made DRAFT a 5-dimensional method. 0.65.0 had three dimensions.

- **Added `[D0] Discovery` and `[D4] Terrain`**, both initially marked optional. This is
  the change that gave the method its shape: D0 as the permanent floating plane where raw
  material and intuition enter, D4 as the same plane once the System is alive and lived
  in. Before this, DRAFT began at conditions and ended at implementation, with nowhere for
  ideas to come from and nowhere for experience to return.
- Dimensions renamed to the **D-R-A-F-T acronym** (Discovery, Registration, Articulation,
  Fabrication, Terrain), aligning the five names with the method's own name.
- Generalized from software to **any-domain Systems**: "All your Systems exists in 5
  Dimensions" became "Any Systems shown under 5 Dimensions", and the D2 audit block
  stopped naming source files specifically.
- Added the `[ETHICS DISCLAIMER]`: a neutral tool, not a neutral usage. Auditing a
  System's logic to document or improve it is legitimate; auditing it to bypass its
  safeguards is not, regardless of framing.
- Updated `LICENSE` to Apache 2.0 for 2026.

## [0.65.0] - 2026-07-08

First public version. Three dimensions (D1 Conditions, D2 Conception, D3 Implementation),
software-oriented, with the core disciplines already in place.

- **FMBOA** established as D1's classification: Formats, Mandatory, Bonus, Open Points,
  Ambiguities - one line, one checkbox, exactly one category, ambiguities flagged rather
  than silently resolved.
- **BIOPGE** established as D2's logical unit: Boundary, Inputs/Outputs, Process,
  Guaranty, Errors - the falsifiable contract a substrate is then built against.
- `[RETROACTIVITY]` introduced (later `[PROPAGATION]`): the principle that a fault
  returns to the dimension it belongs to rather than being patched where it surfaced.
- `[HARD_RULES]` introduced, including the clause on LLM restrictions: never produce
  architecture without a validated reference checklist, never resolve an ambiguity
  silently, never reclassify a logic error as formal to avoid friction.
- `[HERITAGE]` introduced.
- Clarified system layers and section titles; copyright and owner set in `LICENSE`.

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: CHANGELOG.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Version history of the DRAFT method itself.

> SPDX-FileNotice: Reconstructed from git history at v0.68.0; released versions tagged retroactively 2026-07-28.
