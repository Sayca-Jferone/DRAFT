# FEEDBACKS - DRAFT Matrix (reflexive instance)

| Dimension | System | Version | Method | Author | File refresh |
|-----------|--------|---------|--------|--------|--------------|
| D4 : Experience | `DRAFT` | `0.71.0` | `0.71.0` | `@sayca-jferone` | 2026-09-07 |

> D4. Terrain feedback, re-injected into D0 for the next iteration. Observe, do not
> re-architect from a single anecdote.

---

> D4 carries **no percentage**: it is an external dimension, permanently floating (M37).
> `null` here is structural, not "not eligible yet".

## 2026-09-07 - first migration at scale: six Matrices under one procedure

**Origin.** A v0.70.0 layout change was propagated across every DRAFT Matrix on one
machine - Inception, Agent Smith, NOESIS, repo-kickstart, HEXIS, the HEXIS cognition
store, plus this repository's own. Seven Matrices, one procedure, one session. Until now
the method had been exercised by **one reading of one System at a time**; this is the
first time it governed a fleet.

**Observed, not yet classified:**

- **The rename is never the work; the references are.** Every Matrix cost minutes to
  rename and hours to sweep. One carried **15 references outside its own `.draft/`** - in
  an agent definition, two skills, a fact file and three project memories. A sweep scoped
  to `.draft/` would have left eight dead paths behind, and the method's own migration
  guidance said nothing about looking outside the Matrix.
- **A Matrix can be invisible to git and nobody notices.** One repository had `.draft`
  recorded in its index as a gitlink pointing at a commit **from a different repository**.
  No `.gitmodules`, no nested `.git`: an accident. The effect was that 12 files and 2.5 MB
  - a fully extracted 40-page subject, its D1 and its D2 - were versioned nowhere, and a
  fresh clone would have produced an empty `.draft/`. The method has **no check that a
  Matrix is actually tracked**, and the passport cannot express it.
- **Five of six Matrices declared no method version**, even though `Method-version` had
  been in the model since v0.69.0. Being in the template is not being in practice. This
  became M55.
- **The same need was met twice under two names before the method described it.** A
  subject-level source sat at `dimensions/<Subject>.pdf` in one Matrix and in
  `polydimensional/` in another. Neither author was wrong; the file model simply did not
  cover the case. This became M54.
- **Historical mentions must survive a sweep.** A mechanical rename rewrote a sentence
  recording what a folder *used to be called*, turning a true statement about the past
  into a false one. A migration edits paths, never the record of why they changed.
- **The method broke its own process to adopt these rules.** M53-M56 were published in
  `README.md` before being recorded in D1 and D2 - the in-place edit `PENDING [METHOD]`
  explicitly forbids. The rules are sound and evidenced; the path taken to them was not
  the one the method prescribes. Whether a layout-only change deserves a lighter path is
  now an open question rather than an unnoticed shortcut.

- **A System can exist as two divergent clones and neither Matrix knows it.** Two
  directories cloned the same repository on the same branch, 11 commits apart, both
  holding a `.draft/` for the same System: one at `overall: 63`, the other at `94`. The
  figures were not in conflict - they were two photographs of one subject taken a month
  apart - but nothing in either Matrix could say so, and pushing from the stale one would
  have overwritten the live one. Resolved by archiving the stale clone after verifying,
  rather than assuming, that nothing on that side was unique: its only distinct commits
  were the day's migrations, fourteen of its seventeen unique lines were identity headers,
  and the remaining three were superseded formulations of text that still exists. Recorded
  as `G7`, same class as `G1`: a storage fact the method assumes and never checks.

**Not observed, and still the largest gap.** Every one of these seven Matrices has the
same single author. Six Systems governed by one person is fleet-scale traffic, not
adoption: nothing here says what happens when the reader did not write the rules.

---

## 2026-07-29 - first real use: a 166-entry D1 on an external System

**Origin.** The owner applied DRAFT to a 42 *Inception* subject - a public specification
with an objective correction at the end - producing a D1 of 166 entries: 22 F, 58 M, 9 B,
32 annex, 18 O, 27 A. First use of this method on a System that is not DRAFT itself, and
the first at a scale the method had never been exercised at.

**Observed, not yet classified:**

- **A D1 stops being readable somewhere past fifty entries.** Not a formatting preference:
  at 166 rows, a file mixing state and normative text cannot be scanned for a single item
  without reading it whole. The user's own fix was to split state from content and collapse
  the rest, which the method had never prescribed and did not forbid.
- **The method measured dimensions, never entries.** Nothing recorded where one requirement
  stood. On a 166-entry D1, "D1 at 90%" says nothing usable about which nine entries are
  unresolved.
- **`[PROPAGATION]` mandates a cross-dimension check without saying where its result is
  read.** The user materialised it as two columns in the D1 dashboard. The rule had been
  operating on trust for four versions.
- **Not every requirement costs the same to miss.** The subject carries clauses whose
  breach ends the project outright, and others contested at peer review. The method's cost
  axis existed at dimension granularity only.
- **Real subjects contain statements that fit no FMBOA category.** Recommendations, study
  injunctions, mechanical consequences of a mandatory rule - 32 of them here. Filing them
  as Mandatory overstates; dropping them loses. The user built a holding annex and wrote
  its own defence before being asked.
- **A dimension file is read alone.** The passport sits beside it and is not consulted; the
  file was given a header stating System, version and author. Nothing said which DRAFT
  version wrote it.

**Consumed the same day** into D1 as M47-M52, and into `README.md` as `[FILE_HEADER]`, the
D1 file shape, and the traceability annex clause. Per `[PROPAGATION]`, D4 material feeds D0
for the next cycle; this batch went straight to D1 because the owner arrived with the
artifact rather than the observation, and the observations were extracted from it here
after the fact. **That order is itself a finding** - a working artifact can outrun the
dimension that should have received it first.

**Still unobserved.** No external contributor has used the governance surface: no issue
through `.github/ISSUE_TEMPLATE/*`, no PR against `CONTRIBUTING.md`, no propagation
declaration written by anyone but the author. The `DRAFT-STATE` block has been instantiated
once and **never read by an orchestrator** - so every machine-readable decision of v0.69.0
(the block, the derivation, `Method-version`, the visibility field) rests on zero real
reads. That is what `draft-compose` as a plain reader is for.

**Second-hand, worth recording as unverified.** The owner reports a x1.5 to x2 efficiency
multiplier on full cycles at equal production time, across Sayca and 42 projects. Stated in
`README.md` as a rough estimate. No instrumented measurement exists, and none is planned
here - recorded so a later claim can be checked against when it was first made.

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/dimensions/D4-experience/FEEDBACKS.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: D4 terrain feedback log for the DRAFT repository governance cycle.

> SPDX-FileNotice: First terrain entry 2026-07-29, from a 166-entry D1 applied to an external System.
