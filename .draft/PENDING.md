# PENDING # System open items

<!-- DRAFT-PENDING v0.71.0
system-name: DRAFT
system-vers: 0.71.0
method-name: DRAFT
method-vers: 0.71.0
updated: 2026-09-07
-->

> Dynamic to-do list. What is decided but not done, and what is open and owed a decision.
> Nothing else. State lives in `STATE.md`, identity in `PASSPORT.md`, rationale in the
> dimension files this list points back to.

**System** : **DRAFT** `0.71.0` | **Author** : @sayca-jferone

**LAST FILE UPDATE:** 2026-09-07 (v0.70.0 layout rules, v0.71.0 naming and README)

---

## [RELEASE]

- [ ] Tag `v0.70.0` and `v0.71.0`. Both are written, committed and coherent across the
      seven repositories, and **neither is tagged or pushed**. The repository is the
      single source of truth only once the remote carries it

---

## [METHOD]

*Changes to the DRAFT method itself. Each one is owed a full D0->D1->D2 pass, never an
in-place edit.*

- [ ] **The v0.70.0 and v0.71.0 rules were written substrate-first.** M53 to M56 exist in
      D1 and D2 as of 2026-09-07, but they were published in `README.md` before being
      recorded here - the in-place edit this section forbids. The rules themselves are
      sound and evidenced by an audit of six Matrices; what is owed is the acknowledgement
      that the method broke its own process to adopt them, and a decision on whether a
      layout-only change deserves a lighter path than a full D0->D1->D2 pass
- [ ] **D4 is still `null` and the method now has terrain.** Six Matrices were migrated
      under this method in one session, which is the first real use of DRAFT by anything
      other than a single reading of a single System. `FEEDBACKS.md` has not been written
      from it. This is the harvest `[LEVERAGE]` says would turn one case into evidence

- [ ] Settle `PERMALOG`'s evidentiary status, then reintroduce it. Withdrawn from the
      method at v0.69.0 (M33/A10) because "not a secured file" and "legal proof" cannot
      both hold. Reintroduction needs either external anchoring (signed commits,
      third-party timestamping, git-reflog derivation) or a stated non-evidentiary scope.
      The regime criterion that separated it from `DEVJOURNAL.md` is archived in D0 and
      returns with it
- [x] Write the migration **procedure** (A13). **Done 2026-09-07, and exactly as this
      item asked**: written against a real 0.69.0 -> 0.70.0 migration rather than invented
      in the abstract. It ships in the skill's `MIGRATION.md` as a seven-step delta
      procedure, and it was executed on **six live Matrices** before being written down.
      Two of its warnings are earned rather than deduced: **`git mv`, never copy** - a
      relocation done as a copy left one obligation under two binding IDs in a real
      Matrix - and **the references are the work, not the rename**: one Matrix carried 15
      of them outside its own `.draft/`, in agents, skills and project memories
- [ ] Watch M17 for a second case. A8 was closed by fixing the D4 heading, not by
      amending M17 - the "block is a pure projection" premise was left standing on the
      strength of a single counter-example. A second instance where the machine layer is
      more precise than the prose reopens it with evidence

---

## [GAPS]

*Shortcomings of the method itself, surfaced by terrain rather than by reasoning. Each
one is a candidate rule owed a D0 -> D1 -> D2 pass; none is a rule yet. Recorded here so
a resolution table can be built against a fixed list rather than from memory.*

**Source: `D4-experience/FEEDBACKS.md`, 2026-09-07 entry** - one migration procedure
applied to seven Matrices in one session.

| # | Gap | What it broke, concretely | Candidate direction |
| --- | --- | --- | --- |
| **G1** | **Nothing verifies a Matrix is actually tracked by version control.** | One repository had `.draft` indexed as a gitlink pointing at a commit from a *different* repository. No `.gitmodules`, no nested `.git`. 12 files and 2.5 MB - a fully extracted 40-page subject, its D1 and its D2 - were versioned nowhere, and a fresh clone would have produced an empty `.draft/`. Undetected until a migration touched it | A conformity check a Matrix can fail, and a `PASSPORT.md` field that can state it. **Opened in D0, 2026-09-07** |
| **G2** | **Migration guidance stops at the Matrix boundary.** | One Matrix carried **15 path references outside its own `.draft/`** - an agent definition, two skills, a fact file, three project memories. A sweep scoped to `.draft/` leaves 8 dead paths behind. The method's own procedure said nothing about looking outside | State that a migration's search scope is the whole repository, never the Matrix folder |
| **G3** | **Being in the template is not being in practice.** | `Method-version` shipped in the file model at v0.69.0. Five of six audited Matrices declared none, a year of drift nobody detected. Fixed by M55 - but the *class* of defect is unaddressed: any optional-looking template field can rot the same way | Distinguish, in the file model itself, what is illustrative from what is required |
| **G4** | **A mechanical sweep can rewrite history.** | A rename rewrote a sentence recording what a folder *used to be called*, turning a true statement about the past into a false one. Caught by reading, not by any rule | A migration edits paths; it never edits the record of why they changed. Owed a stated rule |
| **G5** | **The method broke its own process to adopt v0.70.0 and v0.71.0.** | M53-M56 were published in `README.md` before entering D1 and D2 - the in-place edit `[METHOD]` forbids. The rules are sound and evidenced; the path was not the prescribed one | Decide whether a layout-only change deserves a lighter path than a full D0 -> D1 -> D2, and write that path down. Currently the choice is between over-ceremony and silent shortcut |
| **G7** | **A System can exist as two divergent clones, and its Matrix cannot say which one is authoritative.** | Two directories cloned the same repository on the same branch, 11 commits apart, both carrying a `.draft/` for the same System - one reading `overall: 63`, the other `overall: 94`. Neither Matrix could state that the other existed, and pushing from the stale one would have collided with the live one. Same class as G1: a storage fact the method assumes and never checks. Found 2026-09-07, resolved by archiving the stale clone with a written record of what was verified before doing so | A Matrix states where the System lives, or the method declares this out of scope and says so. `PASSPORT.md` is the nearest home - it already holds `System-visibility`, which states intent the same way |
| **G6** | **Seven Matrices, one author.** | Fleet-scale traffic is not adoption. Every rule, every audit and every arbitration in this method has been produced and validated by one person - which is what `I11`-style peer review exists to prevent, applied to the method itself | Not a rule to write. An instrument to hand a reader: a short contestable list, the way `ARBITRATION.md` works for a System |

**Discipline for this table.** A gap leaves it by becoming an `M-XX` in `CONDITION.md`, or
by being refused with its reason. It is never deleted, and never silently promoted: a rule
adopted without a recorded arbitration is exactly G5 happening again.

---

## [COMPOSITION]

- [ ] Open the composition cycle in D0: manifest format, master-table shape, and whether
      the workspace root carries a `.draft-compose/` (D1/O10, A5 - the owner's own open
      question, deliberately left unresolved at v0.69.0)
- [ ] Write the `[DRAFT-COMPOSE]` README section. `README.md` already forward-references
      it from the `[DRAFT-STATE]` block; the reference is currently dangling
- [ ] Express sibling composition. `[SUB-SYSTEMS]` lives in `PASSPORT.md` and covers
      parent/child subtrees only; `DRAFT` and `DRAFT-compose` are siblings, both
      truthfully `Parent-System: None`, with a relation nothing can currently declare
- [ ] Decide where the `draft-compose` orchestrator System lives (new repository, per O6)
- [ ] Build `draft-compose` as a plain reader first - scan `.draft/`, read the blocks,
      render the table. The protocol is specified afterwards, against what real reads
      break. `DRAFT-STATE` has been instantiated once and never read (D4 `null`);
      specifying further on one instance is the vibe-specing this method exists to prevent

---

## [MAINTENANCE]

- [ ] Confirm whether GitHub Discussions is enabled (referenced by `SUPPORT.md`); adjust
      the link or disable the reference if not
- [ ] Install `pipx` (or accept the current fallback) to actually exercise `make spell`
      and the `lychee`-based half of `make links`
- [ ] Re-run the D1/D2 propagation check at the next version bump, and again if
      `[SUB-SYSTEMS]` gains a real child System in this repository
- [ ] At every commit, check the `DRAFT-STATE` block's `updated:` against `STATE.md`'s
      `LAST FILE UPDATE:` - both are written by hand from the same fact and can drift
      silently
- [ ] At every commit, check the message names its change (M32). No bare `update`/`fix`,
      no `Update <file>` web-editor default, no version-number-only subject. If the
      message can only be "update", split the commit instead

---

## [CLOSED]

*Kept until the version is closed, then dropped.*

- [x] Provision `security@saycalabs.com` - live and receiving; placeholder removed from
      `SECURITY.md`. Routing mechanism deliberately not documented here (public
      repository)
- [x] A8 - the `STATE.md` template can now express "not eligible" without asserting a
      percentage. This file's own D4 heading is the first corrected instance
- [x] A9 - `README.md` realigned: map ASCII shows `dimensions/` and `PENDING.md`, and the
      contract-surface rule is stated. The tree no longer leads its specification
- [x] A10 - closed by withdrawal (M33). Carried forward as a reintroduction item under
      `[METHOD]`, not as an unresolved ambiguity
- [x] A11 - generalised into M36: declining an optional element is conformant use when the
      refusal is recorded with its rationale
- [x] A12 - `DRAFT Matrix` and `Mutation` defined in `README.md`; the glossary now quotes
      it instead of inventing
- [x] A13 - a Matrix is conformant to the version it declares in `maintained-with`,
      indefinitely; migration is never obligatory (M45/M46). Only the procedure remains,
      carried under `[METHOD]` as work owed a real migration
- [x] Visibility - `System-visibility` added to the `PASSPORT.md` template (M34), stating
      intent and never enforcement (M35). D0 material written before deciding
- [x] Split the `[Unreleased]` CHANGELOG section; tag the past releases retroactively
      (`v0.65.0`, `v0.66.0`, `v0.68.0`)
- [x] Close v0.69.0: `[Unreleased]` promoted to `## [0.69.0] - 2026-07-29`, tagged and
      pushed with the three retroactive tags

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/PENDING.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Open-item register for the DRAFT passport, extracted from STATE.md so the state file stays a pure snapshot.

> SPDX-FileNotice: Created 2026-07-28. Holds the accumulative items STATE.md carried until v0.69.0.
