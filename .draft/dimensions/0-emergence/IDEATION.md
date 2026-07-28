# IDEATION - DRAFT Matrix (reflexive instance)

| Dimension | System | Version | Method | Author | File refresh |
|-----------|--------|---------|--------|--------|--------------|
| D0 : Emergence | `DRAFT` | `0.69` | `0.69.0` | `@sayca-jferone` | 2026-07-29 |

> D0. Collect, do not filter. No structure required beyond chronology.

---

## 2026-07-26 - governance gap noticed

<details><summary>Open this journal</summary>

- The repo shipped `CLA.md` and `CONTRIBUTING.md` copy-pasted from a friend's project
  ("Pan Bagnat"). Content was theirs, structure/intent was worth keeping, but the legal
  substance contradicted this repo's own Apache 2.0 licence (non-OSI clauses, ownership
  transfer, commercial-use prohibition).
- Question raised: what should CLA/CONTRIBUTING actually say for a project that is (a)
  Apache 2.0, (b) BDFL-governed, (c) a *method* rather than software?

</details>

## 2026-07-26 - second pass, from an external Sonnet instance

<details><summary>Open this journal</summary>

- A list of "standard" community files was proposed: CODE_OF_CONDUCT, SECURITY,
  ISSUE_TEMPLATE/, PULL_REQUEST_TEMPLATE, CHANGELOG, CODEOWNERS, GOVERNANCE, SUPPORT,
  FUNDING, .editorconfig, NOTICE.
- Observation, from the human: "we need to build a DRAFT for DRAFT... in `.draft/`."
  I.e. the repository defining the method does not yet apply the method to itself.
  Flagged as the more interesting gap of the two.

</details>

## Open questions carried into D1

<details><summary>Open this journal</summary>

- Which of the "nice to have" files are actually warranted for a single-maintainer,
  code-free, method-only repository? (resolved in D1/CONDITION - GOVERNANCE.md and
  FUNDING.yml dropped, CODEOWNERS and SUPPORT.md kept)
- Does DRAFT's own `.draft/` need to look like the Software example in the README, or
  should it be adapted since the substrate here is documentary, not code? (resolved in
  D2/CONCEPTION - light-gate BIOPGE, substrate = Markdown files themselves)

</details>

## 2026-07-26 - post-v0.68.0: incremental era opens

<details><summary>Open this journal</summary>

- v0.68.0 committed (`adf3d58`) closes the governance-layer cycle. Declared as the
  rupture point: `README.md` becomes the protected "MAIN BUS" - the D3 substrate of the
  DRAFT method itself, edited only via a full D0 -> D1 -> D2 propagation, never
  in direct response to a live conversation turn (the failure mode this session
  produced twice before being caught and corrected).
- Two feed mechanisms declared for this incremental era, both landing here first:
  1. **Dogfooding** - applying DRAFT to real external Systems. Terrain feedback flows
     back as that System's own D4, then re-injected here as D0 material for
     DRAFT-the-method (per README `[PROPAGATION]`: "D4 terrain feedback -> D0").
  2. **Exogenous injection** - intellectual material sourced externally (open-source
     web scraping, adjacent formal methods, prior art), landed here raw, before any
     FMBOA classification.
- Discipline restated for this era: no method content reaches `README.md` without
  first passing through this file (D0), `CONDITION.md` (D1 FMBOA), and `CONCEPTION.md`
  (D2), exactly as `HARD_RULES` already requires - the difference is this era makes the
  *volume* of injected material large enough that skipping the sequence becomes tempting.

</details>

## Open questions carried into D1 (this era)

<details><summary>Open this journal</summary>

- Does exogenous material need a distinct FMBOA source tag (e.g. `[EXOGENOUS]` vs.
  `[DOGFOODING]` vs. user-originated) for traceability, given HARD_RULES' ban on
  silently resolving ambiguity? Undecided - first real injection will force the answer.

</details>

## 2026-07-28 - the composition need

<details><summary>Open this journal</summary>

- Raw statement from the owner: a "DRAFT Workspace" / "DRAFT-compose" folder, "à la
  sauce Docker-compose" - a plain `GIT_WORKS`-style directory where every repository
  under DRAFT protocol is cloned side by side. Opened as a single VSCode workspace,
  it would show the DRAFT state *and* version of every project it contains.
- Stated analogy: the VSCode Git extension already reports the git status of every
  repository in an explored folder. Those same repositories should be recognisable as
  DRAFT repositories in the same way.
- Compatibility claim, asserted as a requirement rather than a question: a repository
  may be git-only, DRAFT-only, neither, or both. The two protocols are strictly
  independent and must not constrain each other.
- Desired outcome: a master panel in a master repository - a `draft-compose` cousin to
  the `docker-compose` orchestrator - displaying Version + D0/D1/D2/D3/D4 for every
  project. Delivery form left open by the owner: generated Markdown, VSCode panel, or a
  `.draft-compose/` at the master root distinguishing it from the `.draft/` of the
  worked repositories.

</details>

### Prior art consulted (exogenous injection)

<details><summary>Open this journal</summary>

- Docker/Compose history, used as a decision precedent rather than as content: Compose
  began as Fig, a third-party tool acquired in 2014, and stayed a separate binary in a
  separate repository - and a different language - for roughly seven years before
  becoming the `docker compose` CLI plugin in 2021. The *format* was ultimately
  extracted into an independent, openly-specified artifact (`compose-spec`) readable by
  runtimes other than Docker.
- Read across: the method and its orchestrator are separable, and it is the *format*
  that belongs with the method. Documented in D1 as the resolution to O6.

</details>

## 2026-07-28 - found by writing the first block: the template cannot say "not eligible"

<details><summary>Open this journal</summary>

- Applying `DRAFT-STATE` to this System's own `STATE.md` put the two representations of
  D4 side by side for the first time: the heading says `0% / not eligible`, the block
  says `null`. They do not contradict each other in meaning, but they do in form, and
  M17 makes the prose authoritative - so read literally, the very first instance of the
  block violates its own rule.
- Root cause is in the README template, not in either file: the D4 heading shape
  "D4 : Terrain [X]% / not eligible" forces a percentage to be written next to a phrase
  that negates it. A dimension whose question does not yet arise has no percentage, yet the
  template has no way to express that. The `0` is noise the format requires.
- The block has the vocabulary the heading lacks (`null` vs `0`). This is the first
  evidence that the machine-readable layer is not merely a projection of the prose - it
  can be *more precise* than the prose it projects, which was not anticipated when M17
  was written.
- Deliberately not fixed at v0.69.0: amending the `STATE.md` template is a method
  change, and doing it inside the cycle that discovered it would skip D0->D1->D2.
  Recorded as A8 in D1. Candidate resolution: let the heading drop the percentage
  entirely when a dimension is not eligible.

</details>

## 2026-07-28 - visibility: the method assumes every `.draft/` is publishable

<details><summary>Open this journal</summary>

- Raised while deciding O11 (zero PERMALOG in this public repository). The decision had to
  be taken ad hoc, because nothing in DRAFT says anything about who may read a `.draft/`.
  The method treats every dimension as equally publishable, which is false in practice.
- D0 and D4 are structurally the most exposed. D0 holds raw material - client requests,
  brainstorms, unfiltered notes. D4 holds terrain feedback, potentially nominative. Both
  are the dimensions where the method explicitly asks for *unfiltered* input, which is
  exactly what makes them unsafe to publish by default.
- Git offers no help: visibility is an attribute of the repository, never of a branch or a
  path. There is no "private subtree". A `.draft/` inherits its repo's visibility whole,
  and objects pushed to a public remote stay reachable by SHA after deletion.
- Observed on this repository, first hand: the PERMALOG written earlier the same session
  leaked machine paths (`/sgoinfre/...`) in its first three log lines, before anyone had
  tried to make it useful. The risk is structural, not a lapse of care.
- Compounds at composition time. An orchestrator scanning a workspace aggregates `.draft/`
  folders of differing visibility into one table. If it cannot tell them apart, the table
  itself becomes the leak - a public artifact carrying figures from private Systems.
- Precedent worth reading across: `.gitignore` does not classify secrets, it only excludes
  paths; the classification problem was pushed to separate tools (git-secrets, SOPS,
  sealed-secrets). Read across: a method can state *that* a boundary exists and whose job
  it is, without shipping the mechanism that enforces it.
- Open, carried to D1: does a System *declare* its visibility (a field in `PASSPORT.md`),
  or is visibility purely a property of its host repository that DRAFT merely warns about?
  The first makes an orchestrator able to reason about it; the second keeps the method
  free of a claim it cannot enforce.

</details>

## 2026-07-28 - archived: the PERMALOG/DEVJOURNAL regime criterion

<details><summary>Open this journal</summary>

Kept as D0 material because the reasoning outlived the decision it supported. PERMALOG is
being withdrawn from the README (A10) until its evidentiary claim is settled, so the
criterion that separated it from `DEVJOURNAL.md` has nothing left to separate. The
reasoning is archived here rather than deleted, to be reused when PERMALOG returns.

- Two logs over overlapping scope need a stated boundary, or an agent cannot know which to
  write to - and two journals of one fact prove nothing.
- Scope does not separate them: every action on the code is also an action on the
  repository, so the scopes nest rather than partition. Author does not separate them
  either: an agent can write both.
- What does separate them is **regime**. Narrative - interpreted, amended as understanding
  evolves, a D3 deliverable under `[PROPAGATION]`, authoritative on *why*. Versus factual -
  raw, append-only, never rewritten, outside the dimensions, authoritative on *that*. Under
  that split, overlap stops being a defect: one event may appear in both, answering
  different questions, and the two cannot contradict each other.
- Correction rule that follows: a factual entry is never edited, only corrected by
  appending. Editing destroys the only property such a log has.
- Unenforceable in plain text - nothing detects a rewrite - which is precisely why the
  evidentiary question (A10) had to be settled before the format could be specified. That
  order was wrong the first time: the criterion was written, then the claim it rested on
  was found unsupportable.

</details>

## Open questions carried into D1 (composition)

<details><summary>Open this journal</summary>

- Where does the orchestrator live, given `[CONSTRAINTS]` forbids executable code in
  this repository? (resolved in D1 - O6: separate repository, spec only lands here)
- How does an orchestrator read five percentages out of a `STATE.md` written as prose?
  (resolved in D1 - M15: optional `DRAFT-STATE` block. Evidence found while asking the
  question: this System's own D4 heading read "0% / not eligible yet" against the README
  template's "[X]% / not eligible" - a spontaneous divergence at the only site where the
  format had ever been instantiated, by its own author. The heading was subsequently
  brought back in line at v0.69.0, so the deviation is no longer visible in the file;
  it is recorded here because it is the reason M15 exists, and because correcting one
  instance does not make heading-parsing a contract)
- Does a composed workspace discover its Systems by scanning for `.draft/`, or by
  declaration? (resolved in D1 - O7: scan by default, optional manifest to override)

</details>

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/0-emergence/IDEATION.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: D0 raw notes for the DRAFT repository governance cycle.

> SPDX-FileNotice: D0 requires no structured file; this block is metadata only, not a classification.
