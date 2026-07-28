# DEVJOURNAL - DRAFT Matrix (reflexive instance)

| Dimension | System | Version | Method | Author | File refresh |
|-----------|--------|---------|--------|--------|--------------|
| D3 : Incarnation | `DRAFT` | `0.69` | `0.69.0` | `@sayca-jferone` | 2026-07-29 |

> D3. Build log: what was translated from CONCEPTION.md into the real substrate, formal
> vs. logic errors caught along the way, and any D2/D1 return.

---

## 2026-07-26 - governance layer + reflexive `.draft/`

### Substrate delivered

Per `.draft/2-conception/CONCEPTION.md`, one file per logical unit:

- `CLA.md` - rewritten from scratch (previous version, inherited from a friend's
  "Pan Bagnat" repo, was a direct ownership-transfer CLA incompatible with Apache 2.0)
- `CONTRIBUTING.md` - rewritten from scratch, same reason
- `CODE_OF_CONDUCT.md` - new (Contributor Covenant v2.1, adapted)
- `SECURITY.md` - new
- `SUPPORT.md` - new
- `CHANGELOG.md` - new, reconstructed from `git log --reverse` only, no invented entries
- `NOTICE` - new, minimal
- `.github/CODEOWNERS` - new
- `.github/PULL_REQUEST_TEMPLATE.md` - new
- `.github/ISSUE_TEMPLATE/bug_report.md` - new
- `.github/ISSUE_TEMPLATE/method_amendment.md` - new
- `.github/ISSUE_TEMPLATE/terrain_feedback.md` - new
- `.github/ISSUE_TEMPLATE/config.yml` - new
- `.draft/PASSPORT.md`, `.draft/STATE.md`, `.draft/0-emergence/IDEATION.md`,
  `.draft/1-condition/CONDITION.md`, `.draft/2-conception/CONCEPTION.md`,
  `.draft/3-incarnation/DEVJOURNAL.md` (this file), `.draft/4-experience/FEEDBACKS.md`

### Formal vs. logic checks performed

- All internal cross-references (`README.md` anchors, file paths) were verified to exist
  before being cited - see verification pass after the first two files (`CLA.md`,
  `CONTRIBUTING.md`): `grep -c` against every `## [SECTION]` anchor cited, plus existence
  check on every referenced path. No formal error (broken link) shipped.
- No logic error requiring a D2 return occurred in this cycle: the light-BIOPGE gate
  decided in `CONDITION.md` (O4) held for every unit: none needed typed Inputs/Outputs to
  stay unambiguous.
- No systemic incoherence: the 12 M-items in `CONDITION.md` map 1:1 onto delivered files
  or template groups, with no orphan requirement and no orphan file.

### Audit note (self-check against CONCEPTION.md)

| Block | Boundary | Trigger | Content contract | Process | Guaranty | Errors | Covers |
|---|---|---|---|---|---|---|---|
| CLA.md | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| CONTRIBUTING.md | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| CoC/Security/Support | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| .github templates | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| CHANGELOG.md | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| NOTICE | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| .draft/* | PASS | PASS | PASS | PASS | PASS | PASS | PASS |

**Verdict:** COMPLIANT.

### Known gap, not blocking

- `GOVERNANCE.md` and `FUNDING.yml` were explicitly scoped out (B3, B4 in
  `CONDITION.md`). If a second maintainer or sponsoring account is ever introduced, both
  become M-items and require a new D0->D1->D2->D3 pass, not a silent file drop.
- The v0.67.0 `CHANGELOG.md` entry is honestly incomplete (O2) - if the git history is
  later clarified (tag added, commit found), the entry should be corrected, which is a
  patch-level change to `CHANGELOG.md` itself.

## 2026-07-26 (session 2) - Makefile/lint hardening + SUB-SYSTEMS propagation

### Formal errors found and fixed in place (D3, no D2 return needed)

The user added `Makefile` directly (not proposed by this agent). Running its targets
against the tree it was meant to check surfaced three formal-class defects - each was a
defect in how the tooling was expressed, not in what it was meant to guarantee:

1. **`make license` reported success without checking anything.** `pipx` is absent from
   this environment; the target's `reuse lint \|\| { echo "note..." }` fallback swallowed
   the failure and exited 0. Fixed: `license` is now an explicit alias for `spdx-check`
   (which has no external dependency and actually greps every tracked `.md` for
   `SPDX-License-Identifier:`).
2. **`make markdown` failed with 622 issues**, almost all against formatting already
   deliberate in `README.md`/`CLA.md`/`CONTRIBUTING.md` (`<details>`/`<summary>`,
   unaligned tables, long BIOPGE/FMBOA lines, blank-line-separated SPDX blockquotes,
   README's own `h1 -> h3` intro items, mixed list bullet styles, plain-text example
   fences). Fixed: added `.markdownlint-cli2.jsonc` disabling exactly those rules, each
   justified inline - not a blanket bypass. Two remaining real hits (bare URLs) were
   fixed at the source where the content was this agent's own
   (`.draft/2-conception/CONCEPTION.md`), and exempted by path where the content was
   normative method text not to be touched outside the "AI-skill" workflow
   (`AI-skills/DRAFT-v0-68-0.md`, via a local `AI-skills/.markdownlint-cli2.jsonc`
   directory override).
3. **8 files had no SPDX block**, contradicting `CONTRIBUTING.md`'s own requirement
   ("Keep `SPDX-License-Identifier: Apache-2.0` on every file in this repository"):
   `AI-skills/DRAFT-v0-68-0.md` and 7 `.github/` files (issue templates, PR template,
   `config.yml`), plus `.draft/0-emergence/IDEATION.md` itself. All seven governance
   templates got an HTML/YAML-comment SPDX block (kept out of the rendered GitHub form);
   `AI-skills/DRAFT-v0-68-0.md` got a `## [LICENSE]` block identical in form to
   `README.md`'s, logged as metadata-only, not a method amendment.

No logic error and no systemic incoherence in this pass: the `Makefile`'s own intent
(ephemeral pipx/npx tooling, no CI) was never in question, only its execution.

### Addition-driven propagation: README `[SUB-SYSTEMS]`

Detected via `git diff README.md` on rescan: the user added a `[SUB-SYSTEMS]` section
(optional parent/child System subdivision) directly to `README.md`, outside this agent's
session. Per `[PROPAGATION]`'s addition-driven rule (`D0 addition -> D1 -> D2 -> D3 -> D4`),
propagated as:

- D1: `CONDITION.md` M14 + O5 + A4 record the fact and the resulting scope decision.
- D2: `CONCEPTION.md` gained a dedicated block for the amendment itself.
- D3 (this entry): `.draft/PASSPORT.md` now carries a real `[SUB-SYSTEMS]` block
  (Parent-System: None; zero children), matching the new README template instead of
  silently omitting the field.
- D4: not applicable - no terrain use of `[SUB-SYSTEMS]` exists yet to report on.

### Audit note (updated)

| Block | Boundary | Trigger | Content contract | Process | Guaranty | Errors | Covers |
|---|---|---|---|---|---|---|---|
| `Makefile` + markdownlint config | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| README `[SUB-SYSTEMS]` propagation | PASS | PASS | PASS | PASS | PASS | PASS | PASS |

**Verdict:** COMPLIANT. `make lint` passes on the current tree (re-verified after every
edit in this entry).

---

## 2026-07-28 - v0.69.0: machine-readable state block

### Origin

Owner request for a "DRAFT Workspace" / "DRAFT-compose": a plain folder holding every
DRAFT repository side by side, with a master panel showing Version + D0-D4 for each.
Landed in D0, decomposed in D1 (M15-M22, O6-O10, A5-A7), specified in D2.

### Scope decision, and what it protects

The orchestrator is **not** built here and will not be. `[CONSTRAINTS]` forbids
executable code in this repository; rather than amend that constraint, the delivery
splits along the Docker/Compose precedent recorded in D0 - the *format* ships with the
method, the *implementation* is a separate System. This repository therefore receives
Markdown only, and the constraint stands unmodified at v0.69.0.

What ships is the precondition for everything else: without a read contract on
`STATE.md`, an orchestrator has nothing to enumerate.

### Substrate delivered

- `README.md` - new `[DRAFT-STATE]` section after `[STATE.md]`, its own section rather
  than an addition to the `STATE.md` template, because the block is optional (M16) and
  embedding it would read as mandatory to anyone copying the template (O9). Version
  header bumped to v0.69.0.
- `.draft/STATE.md` - the block applied reflexively, this System's own first instance.
- `AI-skills/DRAFT-v0-69-0.md` - new file. `DRAFT-v0-68-0.md` untouched alongside it
  (M22), and `[ARTIFACT_RULES]` in `PASSPORT.md` gained the retention rule that this
  decision implies, so the convention is recorded rather than merely practised.
- `.draft/PASSPORT.md` - version `0.69`, `DRAFT-STATE v1` registered under
  `[PROTOCOLS]`, entry points updated.
- `GLOSSARY.md`, `CHANGELOG.md`, `CITATION.cff` - propagated.

### Formal-class findings

1. **The existing heading format is not a viable read contract.** The README template
   specifies a D4 heading ending in "[X]% / not eligible"; this System's own
   `STATE.md` had written "0% / not eligible yet". A heading regex would already have been
   handling two shapes at the only site where the format had ever been instantiated -
   and the divergence was introduced by the format's own author, unprompted. The
   heading is corrected in this pass, but the correction is cosmetic and must not be
   mistaken for a fix: one instance brought back in line does not make prose an
   interface, which is precisely why M15 specifies a block instead. Evidence retained
   in D0, where the correction is noted so the record does not cite something the file
   no longer shows.
2. **`overall` cannot be derived.** `85` against D0-D3 at 100/100/100/95 is not any
   average of them; the README defines it as weighted by deliverable. M18 forbids
   recomputation for this reason - an orchestrator that "helpfully" recalculated would
   silently overwrite a human judgement.
3. **`null` vs `0` on D4.** This System's D4 is `null`, not `0`: no external
   contributor has used the governance surface yet, so the question does not arise.
   Rendering that as `0%` in a master table would make every young System read as
   failing. Fixed in the spec (M19) with a worked example, D4 being the field most
   likely to be filled carelessly.

### Logic-class finding

**Two authorities for one figure is the failure mode this method exists to prevent.**
A block carrying its own numbers alongside prose carrying different ones is precisely
the epistemic degradation DRAFT tracks. Resolved by construction rather than by
convention: the block is defined as a projection that creates no information, and the
prose is named authoritative in the spec, the glossary, and the skill (M17). On
divergence the block is a defect - there is no case where correcting the prose to
match the block is right.

### Finding that outlives this cycle: the projection is sharper than its source

Writing the first block put both representations of D4 side by side. The heading says
`0% / not eligible`; the block says `null`. Same meaning, incompatible form - and M17
names the prose authoritative, so the first instance of the block reads as a violation
of the rule it ships with.

The fault is in the `STATE.md` template, not in either file. Its D4 shape requires a
percentage beside a phrase that negates it, so *not eligible* cannot be written without
also asserting a figure. The `0` is noise the format demands.

What this exposes is a premise error in M17, not a formatting nuisance. The block was
specified as a pure projection - carrying nothing the prose does not already say. It
turns out to carry a distinction the prose cannot express: `null` and `0` are different
facts, and only the block has the vocabulary. A projection sharper than its source is
not what M17 describes.

Left standing at v0.69.0. Amending the template is a method change; making it inside the
cycle that discovered it would skip D0 -> D1 -> D2, which is the failure mode
`HARD_RULES` exists to prevent and which this very session produced twice before
(logged at v0.68.0). Recorded as D1/A8 and re-landed in D0 for the next cycle, with a
candidate resolution: allow the heading to omit the percentage when a dimension is not
eligible.

### Human readability: the D1 file gets a shape

Owner refactor, arriving as a worked artifact rather than a request - a 166-entry D1 for a
42 *Inception* subject, restructured until it was readable, then offered as the format.
Three of its inventions are things DRAFT lacked and did not know it lacked.

**State separated from content** (M48). The file splits into a dashboard projecting one
row per entry, the normative text in full, and the decision reasoning - the last two
collapsed. Its own reading rules state the discipline outright: *the dashboard is a
projection, it carries state and never content, and where dashboard and text disagree the
text is authoritative and the dashboard is a bug.* That is M17 applied one level down,
arrived at independently. Past roughly fifty entries a D1 mixing state and normative text
stops being readable, and the alternative to a projection is deletion.

**Per-entry state markers** (M49). DRAFT measured whole dimensions; nothing said where one
requirement stood. Deliberately *not* wired to percentages: deriving a dimension figure by
counting markers would create a second derivation beside M18's and is owed its own D0. The
README says so explicitly, so the temptation is refused in writing rather than left open.

**D2/D3 columns inside the D1 file** (M50). `[PROPAGATION]` mandates the cross-dimension
check but never said where its *result* is read. These two columns are that place -
propagation becomes visible from D1 instead of asserted.

**Cost column** (M51). The `!` flag marks entries whose failure is fatal or contested at
review. It is M39's cost axis at entry granularity: not every requirement costs the same to
miss, and the ones that end the System deserve to be visible without opening anything.

### The header, and what it fixes

`| Dimension | System | Version | Method | Author | File refresh |` (M47), applied to this
Matrix's own five dimension files.

Two corrections to the owner's draft, both accepted. Column 1 was named `DRAFT Matrix`
while holding `D1 : Condition` - but the Matrix is the whole instance (M29) and a dimension
is one of its five faces, so the column is `Dimension`. And a `Method` column was added:
a dimension file is read in isolation far more often than the passport beside it, and
without it a file crossing a migration loses the one fact that says how to read it
(M41/M45). The passport carrying `Method-version` does not help a file opened alone.

### The sixth-category question

The Inception D1 carries a 32-entry `I-XX` annex - soft-normative statements and mechanical
consequences of mandatory rules. Filing them as `M-XX` overstates them; dropping them loses
them. The owner had already written the defence: *a holding annex, not a sixth FMBOA
category*, every row naming what it binds, "traceability, never authority".

Raised anyway, because 32 entries with ids, states and D2/D3 columns behave like a
category, and `[HARD_RULES]` forbids reclassifying to avoid friction - which is exactly
what an annex permits: not deciding between Mandatory and Open Point. Settled as a general
rule (M52) rather than a local comment: a System **may** keep such an annex, on the single
condition that every entry names the FMBOA item it binds and the annex carries no authority
of its own. That condition is what keeps it an annex. An annex able to stand alone would be
the sixth category.

### Deferred, deliberately

`draft-compose.yml`'s format, the master table's shape, and whether the workspace root
carries a `.draft-compose/` are all out of scope (O10). The owner raised the third as
an open question in D0 ("A markdown file? A VSCode panel? A `.draft-compose/`?", translated);
settling it here would resolve an owner's open question silently, which `HARD_RULES`
forbids. It returns as D0 material for the composition cycle, recorded as A5.

Discovery is decided in principle (scan for `.draft/`, optional manifest to override,
O7) but not specified - a decision recorded is not a format delivered.

### Audit note

| Block | Boundary | Trigger | Content contract | Process | Guaranty | Errors | Covers |
|---|---|---|---|---|---|---|---|
| README `[DRAFT-STATE]` | PASS | PASS | PASS | PASS | PASS | PASS | PASS |
| `AI-skills/DRAFT-v0-69-0.md` | PASS | PASS | PASS | PASS | PASS | PASS | PASS |

**Verdict:** COMPLIANT for the declared scope. The block is specified and instantiated
once (this System). It has not yet been exercised by a second System or by any reader,
which is exactly what D4 will report on once a composition cycle runs.

---

## 2026-07-28 - v0.69.0 session 2: `.draft/` and root restructuring

### Origin

Owner-led restructuring, opened as a design question - what belongs at the root of the
`.draft/` dotfolder, then of the repository itself - rather than as a defect report. The
dimension folders had already been regrouped under `dimensions/` with the reference
documentation knowingly left behind (A9).

### Rule extracted

The root of `.draft/` is the **contract surface**: fixed paths an orchestrator reads
without being told where to look. Subfolders hold content, at free paths. The rule follows
from O7 - discovery by scan - since a file an orchestrator must find cannot sit at a path
it must first be taught. Recorded as M24, then applied a second time to the repository root
(O13), where the test becomes "does a platform or tool resolve this by exact path".

Evidence it was already the de-facto rule: `.draft/PASSPORT.md` and `.draft/STATE.md` are
referenced 35 times across the tree and never once through a subdirectory, including in
files written during the refactor. Nothing ever wanted to move them.

### Substrate delivered

- `.draft/PENDING.md` - new. Absorbs the to-do extracted from `STATE.md`, sectioned
  `[RELEASE]`/`[METHOD]`/`[COMPOSITION]`/`[MAINTENANCE]`/`[CLOSED]`. Three items are new
  rather than carried: the dangling `[DRAFT-COMPOSE]` reference, the sibling composition
  gap, and the reader-first build sequence for the orchestrator.
- `.draft/STATE.md` - to-do section removed, replaced by a pointer; header rule now states
  the file is a snapshot and nothing accumulates in it.
- Repository root flattened 14 -> 8 entries: `CONTRIBUTING.md`, `CLA.md`,
  `CODE_OF_CONDUCT.md`, `SECURITY.md`, `SUPPORT.md` moved to `.github/`. No platform
  behaviour lost - GitHub resolves community health files from root, `.github/` or `docs/`
  equally. `CITATION.cff` deliberately stays: the citation button reads nowhere else.
- `GLOSSARY.md` - realigned to v0.69.0 and given the maintenance rule it lacked (M28).
- `CHANGELOG.md` - `[0.68.0]` takes the entries already in git history; `[Unreleased]`
  keeps only this cycle. Releases 0.65.0/0.66.0/0.68.0 tagged retroactively; no history
  rewritten, since tags do not modify commits.

Cascade verified rather than assumed: a link checker over every `.md` found 18 links inside
the moved files still pointing at root-level targets. All rewritten, then re-verified - all
relative links resolve. `make lint` passes on 24 files.

### Vocabulary: DRAFT is not the DRAFT Matrix

**DRAFT** is the method - one, invariant, versioned in its own right. **The DRAFT Matrix of
a System** is an instance, carried by one versioned individual. The owner's own two
sentences prove the distinction is load-bearing: "a versioned individual owns its DRAFT"
and "its DRAFT Matrix is in mutation" - the second is unsayable if the two are one thing,
since DRAFT does not mutate when a System moves v1 -> v2. The `DRAFT Matrix` product name
had welded class to instance; removing it freed the word. Grammatical test: a possessive or
complement takes *Matrix*, otherwise *DRAFT*. Recorded as M29.

`Mutation` defined alongside it (M30) as the **state** of a Matrix under revision - opened
by a change at any dimension, closed when all five re-synchronise. Not the version bump,
which is its outcome. It names what `[PROPAGATION]` already manipulates ("until the Version
is explicitly closed") without having a word for it.

The rename had over-applied; `Matrix` restored where it carries the instance sense (five
dimension-file titles, `PASSPORT.md`'s `System-type`, the injection sentence in `README.md`
and `GLOSSARY.md`). Left untouched: every `Matrix` meaning the method in contribution
vocabulary, which stays correct under the new distinction.

### Decisions, reversals and rejections

- **Zero PERMALOG in this repository** (O11). Raised on the visibility of the git remote:
  the repo is public, git has no visibility granularity below the repository, and a
  repo-wide register accumulates machine paths, hostnames and agent output - the detail
  that makes such a log useful is the detail that must not be published. Instance deleted,
  rule kept. First time reflexivity was *partially* declined: applying a method to itself
  does not mean adopting every optional element (A11).
- **No version increment** (O12). The session was initially recorded as v0.70.0 across nine
  files, unrequested and unflagged; challenged by the owner and reverted. v0.69.0 was never
  tagged, so there was no closed cycle to increment away from, and `[PROPAGATION]` holds
  until a Version is explicitly closed.
- **`PASSPORT.md` -> `INFO.md` rejected** (M27). "Info" excludes nothing and is where
  catch-all files drift; "passport" carries identity, bounded validity and third-party
  readability - which is what the file's fields are.
- **Cloudflare routing detail removed** from `PENDING.md`: an announced catch-all on a
  public repo is an aid to targeted phishing. The fact is kept, the mechanism is not.
- **D3 concision rule** (M31), from this entry's own measurement: the journal had reached
  441 lines, doubling in one session, because every decision got a paragraph including
  those that did not survive. This entry is the first written under the new rule.
- **Commit message discipline forward, history kept** (M32/O14). 6 of 25 pre-v0.69.0
  commits carry no recoverable meaning. A rewrite was technically available - the GitHub
  API reports 0 forks and 0 network, so no clone exists to break - and was declined on
  merit: the abandoned `Pre-0.67.0` and the three ETHICS passes are the visible evidence
  that `[PROPAGATION]`'s "going back is not a failure" was practised, and erasing them
  would contradict the thesis the repository exists to demonstrate.

### The four debts closed, in one pass

A8, A9, A10 and A12 all pointed at `README.md`, so they were closed together rather than
in four cycles over one file. Owner arbitration was taken live before writing; each answer
is recorded in D1 with its rationale.

- **A9** - map ASCII regrouped under `dimensions/`, `PENDING.md` documented, and the
  contract-surface rule stated in prose beneath it. The tree no longer leads its spec.
- **A8** - the D4 heading may now drop its percentage entirely when a dimension is not
  eligible. M17 stands unamended: the alternative, letting the block be *more precise*
  than the prose, was declined as too permissive on a single observed case.
- **A10** - resolved by **withdrawal**, not by picking a side. `PERMALOG` leaves the method
  (M33) until its evidentiary status can be settled: removed from the README map and
  section, from `GLOSSARY.md`, and from the current AI-skill. `DRAFT-v0-68-0.md` keeps it,
  per `[ARTIFACT_RULES]` - prior skills are never edited.
- **A12** - both definitions added to `README.md`, which becomes their source; the glossary
  entries now quote it like every other. The divergence closed in the direction M28
  requires - the source gains the term rather than the projection keeping it.

Consequence accepted deliberately: withdrawing PERMALOG makes M25/M26 - the regime
criterion written in this same session - moot, since there is no longer a second log to
separate `DEVJOURNAL.md` from. Both were removed from D1 and their D2 block deleted. The
*reasoning* was archived in D0 instead of discarded: it survived the decision it supported,
and returns intact when PERMALOG does.

### Visibility: the method gains a field it cannot enforce

Opened in D0 rather than decided ad hoc, because O11 had already had to be settled without
a rule. DRAFT assumed every `.draft/` equally publishable; D0 and D4 are precisely the
dimensions it asks to fill *unfiltered*, and so the least safe to publish.

Delivered: `System-visibility: public | private | internal` in the `PASSPORT.md` template
(M34), plus a README clause stating that a `.draft/` inherits its repository's visibility
and that the choice is made before writing, not after.

The field states **intent, never protection** (M35). Git has no visibility granularity
below the repository - no private subtree, and objects pushed to a public remote stay
reachable by SHA after deletion. Per-dimension visibility was considered and declined for
that reason: it would promise granularity the substrate cannot deliver. What the field buys
is an orchestrator able to refuse rendering a `private` System into a public table, which
is the composition-time failure D0 identified.

### The numbering explained: D0-D4 is a cost axis

Owner statement, and the answer to a friction this journal had noted without resolving -
that numbering the dimensions 0 to 4 makes them read as a pipeline, which the method
explicitly denies. They are not an order of execution but an axis of **cost of
modification**: D0 none, D1 minimal, D2 moderate, D3 high, D4 extreme, where extreme means
the supplier's credibility with its clients.

That single fact justifies two rules that had been stated without ground. `[PROPAGATION]`
repairs at the dimension a fault belongs to rather than in place, because **repairing is
descending the cost axis**. And "going back is not a failure" stops being reassurance and
becomes arithmetic: going back is going cheaper. Recorded as M39.

### Internal and external dimensions

D1/D2/D3 are **internal** - bounded by the System, measurable, completable. D0 and D4 are
**external** - incoming matter and lived experience, outside the System's control,
permanently floating. External dimensions carry **no percentage at all** (M37).

This corrects this Matrix's own state file, which read `D0: 100` and described D0 as
"closed for this cycle". A permanently floating plane does not close, and 100% on it
asserted something meaningless. Both D0 and D4 now read `floating` in the prose and `null`
in the block.

It also settles A8 more deeply than the heading fix did. The D4 heading was awkward because
it demanded a figure for a dimension that has none by nature - not merely one that was not
yet eligible.

Absolute rule stated alongside it (M40): no production without a D0 rich enough to feed a
coherent D1. Not a partial D1 - nothing.

### `overall` becomes derived

Reversal of M18, on owner decision: `overall` was "a human judgement, transported, never
recomputed". It is now **derived, never authored**:

```txt
overall = (D1x1 + D2x2 + D3x4) / 7, rounded
```

The reasoning that made the reversal possible is M37: once D0 and D4 carry no percentage,
only three values remain and a formula becomes meaningful. The weights follow the cost axis
(M39) - finishing D3 costs more than finishing D1, so an unfinished D3 must weigh more, and
D3 doubles D2 because incarnation is where cost actually explodes.

What it buys: a figure any reader can verify. A hand-written `overall` cannot be checked,
and two authors produce two numbers for the same Matrix.

**Consequence accepted, not hidden:** M17 said the block creates no information. That is now
false for exactly one field, so M17 carries a stated exception rather than being quietly
violated by every instance. This Matrix's own `overall` moved from an authored 88 to a
derived 94 - the gap is what the reversal was for.

Percentages may also **fall** (M38). Injecting D0 or D4 material into D1 lowers it, because
the truth it must cover grew; enriching D0 alone changes nothing. The fall cascades to
D2/D3 by **re-verification, never recomputation**, so those stay authored facts and only
`overall` follows automatically.

### `Method-version`: a Matrix knows which DRAFT made it

`PASSPORT.md` now carries `Method-version: created-with X.Y.Z | maintained-with X.Y.Z`
(M41). `System-version` is the System's version, never the method's, and nothing recorded
which DRAFT produced a given Matrix - a fact impossible to recover afterwards.

Two fields rather than one, because a Matrix outlives the version that wrote it: this one
was created under 0.68.0 and is maintained under 0.69.0, the version it also defines.

### Migration: a judgement task, made verifiable

A13 moves from open to **partially resolved**. What is settled is the operation's *nature*:
migrating a Matrix between DRAFT versions is a **judgement task**, not a mechanical
transformation - no algorithm produces it, only a LLM or a human with a great deal of time.
The owner's term was "heuristic-driven action" (translated from the owner's French); heuristic understates it, since a heuristic
is a cheap approximation of a computation that exists, and here none does.

That creates a problem worth naming: the migration is the moment DRAFT is most exposed to
what it exists to prevent. A model asked to "extract the good data" from a deprecated
Matrix takes exactly the decisions D1 forbids taking silently - reclassifying, resolving an
ambiguity, deciding what survives. Delegation is unavoidable; unconstrained delegation is
not.

Two rules make the operation safe, both constraining the *output* rather than the process:

- **Additive** (M42). The source stays at `.draft-<old-version>/`, the new Matrix is
  written beside it, and the source is deleted only once the migration is trusted. This
  contradicts the owner's initial phrasing ("replace/overwrite", translated) and the contradiction was
  raised rather than absorbed: what is overwritten can no longer be verified, and every
  other safeguard depends on the source still existing.
- **Reported** (M43). Every item is classified transported / transformed / abandoned (with
  reason) / created. The real risk is not mistranslation - which is visible - but silent
  loss: an unresolved `A-XX`, an `O-XX` the new version has no slot for. A report turns an
  abandonment into one readable line instead of an absence inside a large diff.

Both are verifiable without redoing the work, which is the condition for delegating
anything. Same lever as the D2 Guaranty for generated code: delegate execution, keep
verification.

**M44** splits the vocabulary that blocked all of this: *mutation* is a System moving
v1 -> v2 under a constant method; *migration* is a Matrix crossing method versions. One
word for two operations made A13 unspecifiable, exactly as `DRAFT`/`DRAFT Matrix` had been.

**Conformity settled (M45/M46), closing A13.** The owner's position was that migrating is
the user's responsibility - DRAFT takes nobody by the hand. That settles *assistance*, but
not *conformity*, and only the protocol can state conformity: without it, `Method-version`
records a fact no reader can act on. So: a Matrix is conformant to the version it declares
in `maintained-with`, indefinitely; a newer DRAFT never invalidates it retroactively; and
migration is never obligatory - you migrate when the newer method buys you something.

The counterpart binds the reader rather than the author: a Matrix declaring
`maintained-with 0.69.0` must be **read as 0.69.0**, and applying newer rules to an older
Matrix makes the reader the fault. Written into the AI-skill as an instruction to load the
skill matching the declared version, not the latest.

Still open, deliberately: the **procedure**. Its intended shape is known - feed the model
the delta between two retained AI-skills, which `[ARTIFACT_RULES]` preserves precisely so
"a port between versions stays diffable", and let it touch only what the delta implies.
Written against a real 0.69 -> 0.70 migration rather than invented now; the orchestrator
gets the same treatment, plain reader before protocol.

Worth noting: none of this requires executable code. The report is Markdown, the additive
rule is a naming convention, and the method delta already exists. `[CONSTRAINTS]` stands
unamended.

### Closed by the final anti-stale sweep

The mechanical path cascade is done: the five dimension files' SPDX `FileName:` headers
declared the pre-refactor flat paths and now match their real location. A D1 -> D2 coverage
check found five live rules with no BIOPGE block (M27, M29-M31, M36 - vocabulary and
authoring discipline); a block was written for them, so every live M-item is now covered.
All French quotations of owner decisions were translated in place, marked as translations,
since the repository is public and English-only by F1.

### Deferred, deliberately

`[DRAFT-COMPOSE]`
remains a dangling forward reference: writing it would mean specifying what O10/A5 left
open, on a block instantiated once and never read.

### Audit note

| Block | Guaranty | Verdict |
|---|---|---|
| Repository root (contract surface) | PASS | all fields PASS |
| `GLOSSARY.md` | PASS | all fields PASS |
| `.draft/PENDING.md` | PASS | all fields PASS |
| `.draft/STATE.md` (slimmed) | PASS | all fields PASS |
| `README.md` realignment (4 debts) | PASS | all fields PASS |
| `System-visibility` field | **PARTIAL** | remaining fields PASS |

**Verdict:** COMPLIANT. One qualified guaranty: `System-visibility` declares intent and
nothing enforces it, which is stated in the field's own definition rather than implied
(M35). A8, A9, A10 and A12 are closed; the documentation no longer trails the tree.

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/dimensions/3-incarnation/DEVJOURNAL.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: D3 build log for the DRAFT repository governance and composition cycles.

> SPDX-FileNotice: Reflexive D3 log on the DRAFT project itself; entries from v0.68.0 onward.
