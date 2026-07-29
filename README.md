# DRAFT - Universal development formal method

> Version: `DRAFT v0.69.0` | 2026-07-29

> Author: `@sayca-jferone` | [Sayca Jason FERONE](https://github.com/Sayca-Jferone) | <legal@saycalabs.com>

> Licence: `Apache 2.0` | Open-Source

> Language: `English recommended`

> Guaranty: `Track and invert "epistemic degradation" across any-domain development`

> Actors: `Native human developers ; hybrid AI coworkers ; autonomous agentic`

---

## [DEFINITION]

<details>
<summary><strong>Click here</strong> to expand</summary>

### a) "DRAFT" definition

<details>
<summary><strong>Definition</strong></summary>

```txt
DRAFT is a 5-dimensional invariant matrix.

It tracks any System across its 5 dimensions: emergence, condition, conception, incarnation, experience.
It replaces ad-hoc documentation with a single traceable contract, auditable by humans or AI without loss of logical content.

Within DRAFT, you can create ; audit ; build ; retro-engineer... everything. Any real or future "System".
```

</details>

---

### a-bis) "DRAFT" vs "DRAFT Matrix"

<details>
<summary><strong>Definition</strong></summary>

```txt
DRAFT is the method : one, invariant, versioned in its own right.
The DRAFT Matrix of a System is an instance of it, carried by one precise versioned
individual, and materialised by that System's .draft/ folder.

The method contains ; the Matrix is possessed.

Grammatical test : if the phrase takes a possessive or a complement - its Matrix, the
Matrix of <System> v2 - the word is "Matrix". Otherwise it is "DRAFT" : a DRAFT
repository, the DRAFT method, the DRAFT protocol.

This matters for mutation : DRAFT does not change when a System moves from v1 to v2.
That System's own Matrix does.
```

</details>

---

### a-ter) "Mutation" vs "Migration"

<details>
<summary><strong>Definition</strong></summary>

```txt
MUTATION is the state of a Matrix under revision : opened by a change at any dimension,
closed when all five are re-synchronised. Internal to one System, under a constant method.

It is a state, not an event. The version bump is its outcome, not the mutation itself.
See [PROPAGATION] : propagation applies to the current Version "until explicitly closed".
That open interval is the mutation.

MIGRATION is a Matrix moving from one DRAFT version to another. The System may not change
at all ; the method underneath it did.

A migration is a JUDGEMENT TASK, not a mechanical transformation : no algorithm produces
it, only a LLM or a human with a great deal of time. Two rules make it safe :

- ADDITIVE : the source Matrix stays in place (.draft-<old-version>/) and the new one is
  written beside it. Delete the source once the migration is trusted, never before.
  What is overwritten can no longer be verified.
- REPORTED : the migration emits a report classifying every item as transported,
  transformed, abandoned (with its reason), or created. You verify by reading the report,
  not by re-reading the whole Matrix.

The real risk is not mistranslation - it is silent loss. An unresolved A-XX or a dropped
O-XX vanishes inside a large diff. Naming abandonments is what keeps a migration from
becoming the epistemic degradation this method exists to prevent.

CONFORMITY : a Matrix is conformant to the version it declares in `maintained-with`, for
as long as it declares it. It does not expire. A newer DRAFT never invalidates an older
Matrix retroactively, and migration is NEVER obligatory - you migrate when the newer
method buys you something, not because the method demands it.

The counterpart : a Matrix declaring `maintained-with 0.69.0` must be READ as 0.69.0.
A reader applying newer rules to an older Matrix is the one at fault, not the Matrix.

DRAFT takes nobody by the hand here. Migrating is your call ; the protocol only states
what remains valid if you do not.
```

</details>

---

### b) "System" definition

<details>
<summary><strong>Definition</strong></summary>

```txt
Within DRAFT, your project is called a "System", or a "Version". It is your any-domain versionned object to dev within DRAFT.

- A living Business, or an original one to create ?
- A customer blur idea, an existant system to fork ?
- A Software project ? An exotic domain System, or retro-engineered, maybe a simply audited one ?

Every System can be injected into the DRAFT Matrix... even DRAFT has its own DRAFT Passport.
```

</details>

---

### c) "Can I work with AIs ?"

<details>
<summary><strong>Absolutely -> Click here to see why</strong></summary>

```txt
DRAFT is built to recursively track and fix epistemic degradation has the following points :

- Vibe specing -> poor System specification prevention
- Vibe coding -> poor script generation prevention (if it's a Software System)
- Vibe ethic -> legal/ethic derivation prevention

Above all : DRAFT compels its user to gather and inject intellectual wealth in order to audit, build, and correct their Systems.

With Advanced Agentic and pre-AGI arrival, DRAFT is aiming synchronize Human cognition with Artificial ones under transversal engineering process.
```

</details>

---

</details>

## [OVERVIEW]

| Dimensions         | State        | Content                                         | Format                                |
| ------------------ | ------------ | ----------------------------------------------- | ------------------------------------- |
| **D0** Emergence   | Emergent     | Raw ideas, materials and perpetual questions    | Any-format notes/schemas/docs         |
| **D1** Condition   | Conditional  | System's rules, single source of truth          | Markdown FMBOA journal                |
| **D2** Conception  | Conceptual   | System's specification, logic phase             | Markdown BIOPGE schema                |
| **D3** Incarnation | Functional   | System's substrate, build, while dev/fix phases | Markdown Journal + System itself      |
| **D4** Experience  | Empirical    | System's living state, perpetual usage feedback | Any-format feedbacks for next version |

<details>
<summary><strong>Click here</strong> to expand the following content</summary>

---

> You can start from any starting dimension, spread to all others and bypass any unnecessary dimension -> caution to over-engineering low complexity Systems.

### a) Why "0" to "4" : the cost axis

<details>
<summary><strong>Click here</strong> to expand</summary>

---

The numbering is **not an order of execution**. It is the cost of creating, modifying or
refactoring at that dimension:

| | Dimension | Cost of modification |
| --- | --- | --- |
| **D0** | Emergence | none - collecting an idea costs nothing |
| **D1** | Condition | minimal - editing a line of truth |
| **D2** | Conception | moderate - amending a logical contract |
| **D3** | Incarnation | high - rewriting what is already built and tested |
| **D4** | Experience | extreme - a fault reaching your clients costs the supplier's credibility |

This is why `[PROPAGATION]` sends a fault back to the dimension it belongs to instead of
patching it in place: **repairing is descending the cost axis**. It is also why going back
is not a failure - going back is going cheaper.

</details>

### b) Internal and external dimensions

<details>
<summary><strong>Click here</strong> to expand</summary>

---

- **D1, D2, D3 are internal**: bounded by the System, therefore measurable, therefore
  carrying a percentage. They can be completed.
- **D0 and D4 are external**: incoming matter and lived experience, outside the System's
  control. They float permanently and **carry no percentage at all**.

**Absolute rule:** no production without a D0 rich enough to feed a coherent D1. A System
whose idea is still too vague produces nothing - not a partial D1, nothing.

</details>

---

### c) Software System workspace example

<details>
<summary><strong>Click here</strong></summary>

```markdown
v1/
  src/*              <- System's content if it's a Software [DRAFT Dimension D3]
  .draft/
    LICENSE          <- DRAFT's license
    PASSPORT.md      <- active system reference
    README.md        <- DRAFT's reference - you are reading this
    STATE.md         <- active system up-to-date 5-axis state
    PENDING.md       <- open items : decided-but-not-done, and open-and-owed-a-decision
    dimensions/      <- the five, and only the five
      0-emergence/   <- raw notes, PDF, customer's requests, brainstorms, ...
        IDEATION.md
        (others...)
      1-condition/   <- source of truth : the problem readable in 60 seconds
        CONDITION.md
        (...)
      2-conception/  <- logical contract : traceable, debuggable without touching the substrate. Fastest plane for system's refactors.
        CONCEPTION.md
        (...)
      3-incarnation/ <- build log : dev journal, in-progress news, refactors, D3=>D2 & D3=>D2=>D1 retro-changes
        DEVJOURNAL.md
        lints/*      <- your own linting rules. This is an example of optional/additional folder.
        logs/*       <- for dev, debug & build traceability
        (...)
      4-experience/
        FEEDBACKS.md <- serves for actual version fixes or next versions ("DRAFT System next Iteration" process)
        (...)
    extensions/      <- optional folder containing workflow extensions (user's original lints or any DRAFT mod)
      cognitions/*   <- DRAFT-related cognitive packs for artificial intelligences (AI cognitive augmentations)
	  knowledge/*    <- example: artifacts and enrineering claims to avoid system weakness by vibe-code and vibe-spec (no specification).
	  habits/*       <- another example of free folder addition.
      (...)
v2/
  (same structure for the next Version, Fork, Branch, ...)
v3/
  (...)
```

**The root of `.draft/` is the contract surface.** Only files that must be found at a
fixed path live there - `PASSPORT.md`, `STATE.md`, `PENDING.md`. Everything else goes in
a subfolder: `dimensions/` holds the five and only the five; `extensions/` is open and
unbounded. A file whose location must first be learned from another file cannot be part
of the contract.

**A `.draft/` inherits the visibility of the repository holding it.** D0 (raw material,
client requests) and D4 (terrain feedback, sometimes nominative) are the dimensions the
method asks you to fill *unfiltered*, and so the least safe to publish. Declare the
intended visibility in `PASSPORT.md` (`System-visibility:`) and choose it before writing,
not after.

</details>

</details>

---

## [FILE_HEADER] Every file identifies itself

<details>
<summary><strong>Click here</strong> to expand</summary>

A dimension file is read in isolation far more often than the passport sitting beside it.
On its own it must still say which System it belongs to, and **which DRAFT version wrote
it** - otherwise a reader cannot know which rules apply (see `[PASSPORT.md]`
`Method-version`, and the conformity clause: a Matrix is read under the version it
declares).

```markdown
| Dimension | System | Version | Method | Author | File refresh |
|-----------|--------|---------|--------|--------|--------------|
| D1 : Condition | `[system]` | `[X.Y]` | `[X.Y.Z]` | `[author]` | [YYYY-MM-DD] |
```

| Column | Content |
| --- | --- |
| `Dimension` | `D0 : Emergence` … `D4 : Experience`. One of the five faces - not the Matrix, which is the whole instance |
| `System` | Same as `PASSPORT.md` `System-name` |
| `Version` | The **System's** version, `X.Y` |
| `Method` | The **DRAFT** version this file is written under, `X.Y.Z` |
| `Author` | Who maintains this file |
| `File refresh` | `YYYY-MM-DD`, last update of this file specifically |

</details>

---

## [D0] Discover : System emergence

<details>
<summary><strong>Click here</strong> to expand</summary>

### D0 Discipline

- Collect. Do not filter.
- Note. Do not commit.
- No structured file is required at this stage.
- Zero classification. Zero FMBOA. Zero BIOPGE.

D0 is a permanent floating plane, not a gate. It is where raw creativity
and intellectual matter come from, mostly human intuition. Same plane as
D4 (real, lived experience), but without the System yet in place.

D0 is invoked only for non-existent Systems, or brainstorms for upgrades.
This layer exists whether or not you formalize it. Writing it down is
only useful to enter D1 with more depth and fewer silent assumptions.

</details>

---

## [D1] Register : System condition

<details>
<summary><strong>Click here</strong> to expand</summary>

### D1 Discipline

- Decompose. Do not architect.
- Classify. Do not resolve.
- Flag ambiguities. Do not resolve them silently.
- Zero code (D3). Zero file structure (D3). Zero BIOPGE (D2).

### The 5 FMBOA categories


| ID       | Category    | Definition                                                                |
| -------- | ----------- | ------------------------------------------------------------------------- |
| **F-XX** | Formats     | Language, version, norms, constraints, deliverables, repo structure, CLI. |
| **M-XX** | Mandatory   | Explicitly required. Project invalid without them.                        |
| **B-XX** | Bonus       | Optional. Indicate if targeted / skipped + rationale.                     |
| **O-XX** | Open Points | Choices left to the developer. Decision + rationale mandatory.            |
| **A-XX** | Ambiguities | Grey areas. Resolve via QR or mark`[ASSUMED]` + rationale.                |

### D1 file shape : state, then content

Past roughly fifty entries, a D1 file mixing state and normative text becomes unreadable.
Split it in three, and collapse the last two:

1. **Dashboard** - one row per entry, per category. State only.
2. **Normative** - the full text of every entry, collapsed.
3. **Decisions** - the reasoning behind Open Points and Ambiguities, collapsed.

**The dashboard is a projection.** It carries state, never content, and its labels are
deliberately truncated. **Where the dashboard and the text disagree, the text is
authoritative and the dashboard is a bug** - the same discipline `[DRAFT-STATE]` imposes
on the state block one level up.

```markdown
| ID | ! | State | Label | D2 | D3 | src |
|----|---|-------|-------|----|----|-----|
| M1 | 💀 | 🔵 | Truncated label | -- | -- | p.7 |
```

| Column | Role |
| --- | --- |
| `ID` | The FMBOA identifier |
| `!` | **Cost flag**: this entry's failure is fatal, or contested at review. The cost axis at entry granularity |
| `State` | Where this single entry stands |
| `Label` | Truncated on purpose. The full text lives in section 2 |
| `D2` / `D3` | Whether propagation has reached this entry: `--` not started, `🚧` in progress, `✅` done |
| `src` | Where the requirement comes from - page, section, or derivation |

**State markers** (adapt the glyphs, keep the distinctions):

| Marker | Meaning |
| --- | --- |
| ⚫ | untouched, not yet examined |
| 🔵 | frozen in D1, awaiting D2 |
| 🟡 | in progress, D2 or D3 started |
| 🟢 | built **and** verified in D3 |
| 🔴 | blocked, conflicting, or failing a test |

The `D2` and `D3` columns are where `[PROPAGATION]` becomes **visible**: the rule mandates
a cross-dimension check, and these columns are where its result is read rather than
asserted.

> A dimension percentage is **not** derived by counting markers. `overall` is derived
> (`[DRAFT-STATE]`); a dimension figure stays authored. Counting markers would make it a
> second derivation, which is not specified here.

### Traceability annex (optional)

A subject may contain statements that are neither hard requirements nor bonus items, yet
bind real work: recommendations, study injunctions, and mechanical consequences of a
mandatory rule that are never written down. Filing them as `M-XX` overstates them;
dropping them loses them.

A System **may** keep a traceability annex outside FMBOA for these, under one condition:

> **Every entry names the FMBOA item it binds, and the annex carries no authority of its
> own.**

That condition is what keeps it an annex rather than a sixth category. An annex able to
stand alone would let a System avoid deciding between Mandatory and Open Point, which
`[HARD_RULES]` forbids. Promotion of an entry into `M-XX` or `O-XX` is a D1 amendment and
triggers `[PROPAGATION]`.

### D0/D1 audit clause

Any artifact injected at D0 is hypothetical by nature. Its "audit" is
the D1 classification itself : FMBOA extraction (process below) IS the
audit act. No separate Audit mode applies before D2/D3 exist. This
satisfies the HARD_RULES clause on injected artifacts for any artifact
still in D0/D1.

### Process

1. Read the subject in full. Flag gaps or contradictions immediately.
2. Extract every requirement. Explicit and implicit. One line = one checkbox.
3. Classify into exactly one category.
4. Surface hidden assumptions.
5. Run QR on any open question that could invalidate D2 downstream.
6. Build ambiguity resolution trace if >10 A-XX items.
7. Verify output: no remaining ambiguity can break the architecture.

<details>
  <summary><strong>Click here</strong> to see CONDITION.md structure</summary>

```markdown
# CONDITION.md - [project name]

| DRAFT D1 | Author: [names] | Subject: [name/version] | Date: [YYYY-MM-DD] |
|---|---|---|---|

<details>
  <summary>1. FORMAT</summary>

| # | Element | Value | Source |
|---|---|---|---|
| F1 | ... | ... | ... |

</details>

<details>
  <summary>2. Mandatory</summary>

| # | Item | Source |
|---|---|---|
| M1 | ... | ... |

</details>

<details>
  <summary>3. Bonus</summary>

| # | Item | Targeted? | Source |
|---|---|---|---|
| B1 | ... | yes / no / deferred | ... |

</details>

<details>
  <summary>4. Open Points</summary>

| # | Item | Decision | Rationale |
|---|---|---|---|
| O1 | ... | ... | ... |

</details>

<details>
  <summary>5. Ambiguities</summary>

| # | Question | Resolution | Source |
|---|---|---|---|
| A1 | ... | [answer] or `[ASSUMED]` : rationale | ... |

</details>
```

</details>

### D1 exit if

- [ ]  5 categories filled (or skipped if empty)
- [ ]  All ambiguities resolved or ASSUMED + rationale
- [ ]  All Open Points with decision + rationale
- [ ]  No open question can invalidate D2
- [ ]  Dense, readable in 60 seconds

</details>

---

## [D2] Articulate : System conception

<details>
<summary><strong>Click here</strong> to expand</summary>

### D2 Discipline

- Specify. Do not implement.
- Validate logical consistency. Do not explore.
- Zero code. Zero language syntax. Zero idioms.

### The "BIOPGE" block

<details>
  <summary><strong>Click here</strong> to see the "BIOPGE" Block structure</summary>

```markdown
### `src/file.example`

"Short descriptor" (optional, 2-4 words)

| Field | Content |
|---|---|
| **Boundary** | Name, kind of object (file, folder, ...), optional author, scope. What the unit owns AND what it does NOT own. |
| **Inputs** | Typed parameters. Name, type, valid range/format. Zero ambiguity. |
| **Outputs** | Typed returns or side effects. |
| **Process** | Numbered steps : `1. step -> 2. step -> 3. step`. No prose. |
| **Guaranty** | Falsifiable post-conditions. Verifiable invariants after execution. |
| **Errors** | Each failure mode : trigger -> behavior. Exception names if applicable. |

> Covers : F-X, M-Y, A-Z
```

</details>

### BIOPGE EXAMPLE: best practices

| Field    | Bad                              | Good                                                                                 |
| -------- | -------------------------------- | ------------------------------------------------------------------------------------ |
| Boundary | "Handles I/O"                    | "`io.c` - Owns: disk reads, JSON validation. NOT: argparse, business logic."         |
| Process  | "Reads file and processes lines" | "1. Open fd -> 2. parse json(fd) -> 3. Validate outer type = list -> 4. Return list" |
| Guaranty | "Works correctly"                | "Output sorted ASC ; fd always closed ; JSON parseable by json.loads"                |
| Errors   | "Returns -1 on error"            | "`FileNotFoundError` : missing file -> propagate, caller exit 1"                     |

### Process

1. Read `CONDITION.md` in full. Each block traces to >=1 ID.
2. Apply gate (skip / free schema / full BIOPGE).
3. Enumerate logical units. Ignore passive data structures.
4. Optionally write a GLOBAL SOLUTION paragraph at the top.
5. Write each BIOPGE block. Zero prose between blocks.
6. Validate cross-block consistency (compatible I/O types, no orphan dependencies).
7. Verify output: every D1 requirement covered by >=1 block.

<details>
  <summary><strong>Click here</strong> to see CONCEPTION.md structure</summary>

```markdown
# CONCEPTION.md - [project name]

| DRAFT D2 | Author: [names] | Based on: CONDITION.md ([date]) | Date: [YYYY-MM-DD] |
|---|---|---|---|

---

## GLOBAL VIEW (optional, recommended if >=4 interfaces)

[One short paragraph : entry point, data flow, key design choice.]

---

## LOGICAL VIEW

<details>
  <summary>`src/file_a.ext`</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | ... |
  | **Inputs** | ... |
  | **Outputs** | ... |
  | **Process** | 1. ... -> 2. ... -> 3. ... |
  | **Guarantees** | ... |
  | **Errors** | `ERR`: trigger -> behavior |

  > Covers : M2, M4, A21
</details>
```

</details>

### D2 exit

Valid exit if:

- [ ]  Gate applied and decision recorded
- [ ]  All blocks complete (or free schema if 2-3 interfaces)
- [ ]  `> Covers :` filled where D1 traceability matters
- [ ]  Cross-block I/O types consistent
- [ ]  Zero code written

</details>

---

## [D3] Fabricate : System incarnation

<details>
<summary><strong>Click here</strong> to expand</summary>

### D3 Discipline

- Translate the contract into the target substrate. Do not redesign it.
- Fix form in place. Do not refactor architecture on the fly.
- Flag logic errors -> return to D2.
- Flag systemic incoherence -> escalate to D1.

The substrate is whatever the System is made of: source code, a physical
build, an organizational rollout, a manual process. D3 is where the D2
contract stops being an abstract plan and starts existing.

### Critical rule : formal vs logic error


| Type                     | Definition                                                                                                                                                           | Response                                                                           |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| **Formal**               | A defect in how the contract is expressed in the substrate: a typo, a wrong cast, a misapplied step order, a local execution slip. What the unit does is unaffected. | Fix in place. Stay in D3.                                                          |
| **Logic**                | The substrate's behavior does not honor the D2 contract: wrong flow, impossible guarantee, missing case.                                                             | STOP. Return D2. Amend block. Re-validate.                                         |
| **Systemic incoherence** | The entire architecture is untenable, multiple blocks need rewriting.                                                                                                | STOP. Escalate D1. Cascade D2. Resume D3 only when both upstream layers are clean. |

**Diagnostic checklist:**

1. Does fixing this imply changing what the unit *does*? -> Logic -> D2.
2. Does fixing this only change *how* it is expressed in the substrate? -> Formal -> in place.
3. Did the error exist in the contract itself? -> Yes -> D2.
4. Does the fix cascade across multiple blocks? -> Systemic -> D1.

### Critical rule : BIOPGE outside the substrate

The contract lives in `.draft/2-conception/CONCEPTION.md`. **Not inside the
substrate itself.**

Forbidden inside the substrate (source code, build docs, process manuals):

- BIOPGE tables in docstrings or inline documentation
- Sections named `Boundary:`, `Inputs:`, `Outputs:` etc.
- Tags `# BIOPGE block: ...`

Allowed and encouraged:

- Standard documentation conventions native to the substrate (PEP 257 /
  Google / NumPy for Python ; Norm 42 for C ; standard operating
  procedures for a physical or organizational System)
- Comments or notes on non-obvious logic
- A single-sentence role statement per unit

### Mandatory flags

**Logic error:**

```
LOGIC ERROR - D2 return required
Block  : [name]
Issue  : [what is wrong in the contract]
Impact : [what breaks if ignored]
Fix    : [suggested amendment for CONCEPTION.md]
Action : Pause. Amend. Re-validate. Resume.
```

**Systemic incoherence:**

```
SYSTEMIC INCOHERENCE - D1 escalation required
Symptom    : [what the substrate produces or refuses to produce]
Scope      : [list of impacted blocks in CONCEPTION.md]
Root cause : [requirement misread / missing / contradictory]
Action     : Pause D3. Amend CONDITION.md. Cascade D2. Resume.
```

### Audit mode (injected existing object)

Applies to any pre-existing object: source code, a physical build, an
organizational structure, a running process.

1. Read the object + `CONCEPTION.md` in full.
2. Per block: verify Boundary / Inputs / Process / Guarantees / Errors / Covers.
3. Produce the report:

```markdown
## Audit : CONCEPTION.md vs [object] - [date]

### `[block]`
- [ ] Boundary : PASS / FAIL - [detail]
- [ ] Inputs   : PASS / FAIL - [detail]
- [ ] Process  : PASS / FAIL - [detail]
- [ ] Guaranty : PASS / FAIL - [detail]
- [ ] Errors   : PASS / FAIL - [detail]
- [ ] Covers   : PASS / SKIP - [detail]

**Verdict :** COMPLIANT / NON-COMPLIANT
**Issues :** [list]
```

Systematically verify the absence of BIOPGE leaking into the substrate's
own documentation. Any leak is a documentary violation to flag.

</details>

---

## [D4] Terrain : System experience

<details>
<summary><strong>Click here</strong> to expand</summary>

### D4 Discipline

- Observe. Do not re-architect from a single anecdote.
- Collect friction and feedback from real use. Do not filter it into D1 yet.
- Zero code. Zero BIOPGE. This layer feeds D0 for the next cycle, it does
  not bypass D1/D2 directly.

D4 is the System alive, seen as something lived-in or used rather than as
an open machine. Same plane as D0, but with the System now in place. It
is where terrain feedback surfaces, to be re-injected into D0 for actual System version fixes, or the
next System iterations.

</details>

---

## [LEVERAGE] DRAFT impact estimation

<details>
<summary><strong>Click here</strong> to expand</summary>

> Disclaimer: qualitative estimate based on structural reasoning, not
> empirical measurement. No A/B testing or benchmarked dataset backs
> these ratios, actually. Provided as a working hypothesis, subject to revision
> via D4 feedback loop.

DRAFT does not structure final content (narrative, script, game system).
It structures the *process* that produces that content, at each Dimension,
with a feedback channel (D4 -> all) that closes the loop for fix or
Ascension.

| Dimension | What it increases, regardless of format | Effect on essay / position paper | Effect on short story / narrative | Effect on game (systems/mechanics) |
|---|---|---|---|---|
| D0 | Quality of intent and reference Corpus before any production starts | Strong - prevents a rushed essay built on a poorly framed intuition | Strong - prevents a narrative that misses its own point for lack of a clear intent | Strong - prevents a hollow game concept |
| D1 | Total specification of the System's demand | Strong - direct evidence in this document's own production | Medium - a short story tolerates a looser spec; D4 (Terrain) must stay open | Strong - a game system requires near-total spec to be playable |
| D2 | Logical architecture, bridge between Spec and Matter | Strong | Strong - narrative structure, arcs, coherence | Strong - mechanics, gameplay loops |
| D3 | Traced, debugged, retro-fixed production | Strong - traceable revisions | Medium - literary writing resists strict logical correction | Strong - code implementation |
| D4 | Harvest of experience for fix or Ascension | Strong - reader feedback integrated as a loop | Strong - arguably the most valuable: measuring whether the reader actually *feels* the intended effect, not just understands the text | Strong - playtesting |

**First "rough" estimations of efficiency multiplier (full cycle, same production time):** x1.5 ~ x2 from Sayca projects, intra & extra 42 projects as additional few customer requests,
driven less by raw writing/production speed and more by avoiding a V1 that
misses its target and requires a full restart without a structured fix loop.

</details>

---

## [STATE.md] Living reference : System state

<details>
<summary><strong>Click here</strong> to expand</summary>

*Adaptation example: can be named `STATE-gitbranchname.md` or anything else.*

```markdown
# STATE # System state

> This file MUST be updated before any commit+push and at the end of any work session.
> Lean dashboard. Detail lives in the linked files, not here. Identity lives in `.PASSPORT`.

**System** : **[name]** `[X.Y]` | **Author** : @[handle]

**LAST FILE UPDATE:** [YYYY-MM-DD] ([one-line summary of the latest change])

---

## [DRAFT]

### System dimensions

## Overall : `[X]%`

*Derived from the internal dimensions: `(D1x1 + D2x2 + D3x4) / 7`, rounded. Never authored.*

---

## D0 : Discover `floating`

*Emergence. Raw materials, ideas and questions. Formats : Markdown notes, PDF.*

- [pointer to D0 artifact(s), status note]

---

## D1 : Register `[X]%`

*Conditions. Single source of truth, the System's rules. Formats : FMBOA Markdown.*

- [pointer to CONDITION.md, certification/review status]

---

## D2 : Articulate `[X]%`

*Conception. Specification and logic debug. Formats : BIOPGE Markdown.*

- [pointer to CONCEPTION.md, coverage status]

---

## D3 : Fabricate `[X]%`

*Incarnation. Build traceability. Formats : [language/build] + Dev Journal + the real artifact.*

- [pointer to DEVJOURNAL.md, logs, lint status]

---

## D4 : Terrain `floating`

*Experience from terrain feedbacks, re-injected into the next System iteration/version.*

- [pointer to FEEDBACKS.md, or eligibility note]

> D0 and D4 are external dimensions: they carry **no percentage**, and `null` in the block.
> They never close, so there is nothing to complete and nothing to measure.

---

### Immediate informations

**Phase: [current phase].** [one-line state of the build].

**Measured figures ([context]):**

| Metric | Measured | Budget |
| --- | --- | --- |
| [metric] | [value] | [threshold] |

- [test suite status, lint status, other verification facts]

### Immediate to-do list

- [ ] [pending item, owner if reserved]
- [ ] [pending item, owner if reserved]

---

## [LICENSE]

> SPDX-FileCopyrightText: [year] [author] <[email]>

> SPDX-License-Identifier: [identifier]

> SPDX-FileName: .draft/STATE.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: System state record for the DRAFT passport.

> SPDX-FileNotice: [context notice, or omit if none applies]
```

</details>

---

## [DRAFT-STATE] Optional reference : machine-readable state block

<details>
<summary><strong>Click here</strong> to expand</summary>

A `STATE.md` is written for humans. An orchestrator reading many Systems at once
needs the same five figures without parsing prose. The `DRAFT-STATE` block carries
them in a form no regex has to guess at.

**It is optional.** A System that is never composed with others does not need it.
It becomes required only when the System is to be read by an orchestrator
(see `[DRAFT-COMPOSE]`).

### Placement

Immediately after the `# STATE # System state` title, before the first blockquote.

```markdown
# STATE # System state

<!-- DRAFT-STATE v1
system: [name]
version: [X.Y]
overall: [derived - do not author]
D0: null
D1: [0-100]
D2: [0-100]
D3: [0-100]
D4: null
updated: [YYYY-MM-DD]
-->

> This file MUST be updated before any commit+push [...]
```

An HTML comment, not a YAML front matter: it stays invisible in every Markdown
renderer, so `STATE.md` remains the human dashboard it already is, and it cannot
collide with the `---` separators the file uses throughout.

### The block creates no information, except `overall`

Every value restates something already written in the prose below it. The block is
a projection, never a parallel source.

**In case of disagreement between the block and the prose, the prose is
authoritative and the block is a bug.**

`overall` is the single exception: it is **derived, never authored**.

```txt
overall = (D1x1 + D2x2 + D3x4) / 7, rounded
```

Only the internal dimensions count - D0 and D4 carry no percentage. The weights follow
the cost axis: finishing D3 costs more than finishing D1, so an unfinished D3 must weigh
more. D3 doubles D2 because incarnation is where cost actually explodes.

A hand-written `overall` cannot be checked, and two authors produce two numbers for the
same Matrix. A derived one is verifiable by anyone reading the block.

### Percentages can fall

A percentage is an **appreciation of progress**, not a ratchet. Injecting D0 or D4 material
into D1 lowers D1, because the truth it must cover has grown. Enriching D0 alone changes
nothing; *injecting* it does.

The fall cascades to D2 and D3 by **re-verification, never by recomputation** - their
contract now covers a larger source, and only re-reading them sets the new figures.
`overall` follows automatically, being derived.

A falling percentage is not a regression to fix. It is the measure becoming honest again
about a System that just got bigger.

### Fields

| Field | Value | Note |
| --- | --- | --- |
| `system` | System name | Same as `PASSPORT.md` `System-name` |
| `version` | `X.Y` | Same as `PASSPORT.md` `System-version` |
| `overall` | `0`-`100` | Derived: `(D1x1 + D2x2 + D3x4) / 7`, rounded. Never authored |
| `D1`-`D3` | `0`-`100` | Internal dimensions. Bare integers, no `%` sign |
| `D0`, `D4` | `null` | External dimensions - they float and carry no percentage |
| `updated` | `YYYY-MM-DD` | Same date as `LAST FILE UPDATE:` |

`null` on **D0 and D4 is structural**: they are external dimensions, they never close,
and there is nothing to measure. They are always `null`, at every point in a System's
life.

On an **internal** dimension, `null` would mean *not eligible yet* - the question does not
arise - which is not `0`, meaning *eligible, nothing done*. In practice D1/D2/D3 are
eligible as soon as the System exists, so the case is rare.

An orchestrator renders `null` as `-`, never as `0%`.

### Versioning

The `v1` in the opening marker versions the block format itself, independently of
the DRAFT method version. An orchestrator that does not know a given block version
must decline to read it rather than guess.

### Maintenance

By hand, under the rule already governing the rest of the file: updated before any
commit+push and at the end of any work session. No tooling is required inside the
System's own repository.

</details>

---

## [PASSPORT.md] Static reference : System identity record

<details>
<summary><strong>Click here</strong> to expand</summary>

*Adaptation example: can be named `PASSPORT-gitbranchname.md` or anything else.*

```markdown
# PASSPORT # System informations

> Identity record. What stays true for the whole version. If a fact changes without the
> version changing, it belongs in `STATE.md`, not here.

---

## [DRAFT]

> System-name: [name]

> System-version: `[X.Y]`

> System-type: [domain / nature of the System]

> System-desc: [one-line functional summary]

> System-authors: [handle] <[email]>

> System-contributors: [names, or "None."]

> System-license: `[SPDX identifier]`

> System-visibility: `public | private | internal`

> System-state-file: `.draft/STATE.md`

---

## [PROTOCOLS]

* `DRAFT: Systems addressable passport`
* `Method-version: created-with [X.Y.Z] | maintained-with [X.Y.Z]` - which DRAFT produced
  this Matrix, and which one keeps it. A Matrix outlives the method version that made it
* [other protocols/standards this System follows, e.g. GIT, SPDX/REUSE]

---

## [SUB-SYSTEMS] (optional, omit block if none)

> Parent-System: [name + path to its own `.draft/PASSPORT.md`, or "None - top-level System."]

| Child System | Path | State pointer |
| --- | --- | --- |
| [name] | `[path/to/child]` | `[path/to/child]/.draft/STATE.md` |

---

## [SUBSTRATE]

> Language: [language + minimum version]

> Package manager: [tool]

> Invocation: [normative run command]

> Implementation root: `[path]`

> Verbs / entry points: [list, if applicable]

---

## [CONSTRAINTS]

*Fixed for the whole version. Measured figures live in `STATE.md`.*

| Constraint | Budget |
| --- | --- |
| [constraint] | [threshold] |

---

## [ARTIFACT_RULES]

* [language/format rules for the substrate]
* [encoding/style rules]
* [dependency management rule]
* Forbidden in the substrate: BIOPGE tables, `Boundary:`-style sections, `# BIOPGE block`
  tags. Contracts live in `.draft/2-conception/CONCEPTION.md`, not in code.
* [reserved roles/operations, if any]

---

## [LICENSE]

> SPDX-FileCopyrightText: [year] [author] <[email]>

> SPDX-License-Identifier: [identifier]

> SPDX-FileName: .draft/PASSPORT.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: System identity record as the DRAFT passport.

> SPDX-FileNotice: [context notice, or omit if none applies]
```

</details>

---


## [PROPAGATION]

<details>
<summary><strong>Click here</strong> to expand</summary>

Entry point is arbitrary. Exit point is arbitrary. The 5 dimensions are
one entangled Versioned System, not a pipeline.

Any injection or modification at ANY dimension (D0, D1, D2, D3, or D4)
triggers a propagation check across ALL other dimensions of that same
Version - published or not. This holds whether the change is:

- a correction (error/incoherence, see below)
- an addition (new D0 material, new D4 feedback)
- external (customer request, terrain observation, audit finding)

Propagation is not optional and not deferred to "next version" by
default - it applies to the current Version until explicitly closed.

### Error-driven propagation (for existing D3 substrates)

```
D3 - formal error           -> fix in place
D3 - logic error            -> D2 : amend block -> re-validate -> resume D3
D3 - contract contradicted  -> D2 : amend CONCEPTION.md -> resume D3
D3 - requirement misread    -> D1 : amend CONDITION.md -> cascade D2 -> resume D3
D3 - systemic incoherence   -> full D1 -> full D2 -> D3
D4 - terrain feedback       -> D0 : for actual version fixes, or for next versions/iterations
```

Going back is not a failure. It is the method filtering at the least costly stage.

### Addition-driven propagation (new material, any dimension)

```
D0 addition  -> re-check D1 (new FMBOA items?) -> D2 (new BIOPGE units?) -> D3 (build impact?) -> D4 (feedback loop closed?)
D4 feedback  -> re-check D0 (reinjection) -> D1 -> D2 -> D3 (full cascade)
D1 amendment -> re-check D2 (blocks still cover?) -> D3 (substrate still compliant?)
D2 amendment -> re-check D3 (substrate still compliant?)
```

Propagation stops only when all 5 dimensions are re-synchronized, or
when the Version is explicitly closed (see STATE.md).

</details>

---

## [SUB-SYSTEMS]

<details>
<summary><strong>Click here</strong> to expand</summary>

```txt
A System is not required to stay monolithic.

By choice, never by obligation, a System can subdivide into several
child Systems - each one a full DRAFT injection with its own .draft/
(PASSPORT.md, STATE.md, and whichever dimensions apply). A parent
System may supervise / reference its child Systems without absorbing
their state.

This DRAFT architecture permits to sub-divide the more complex Systems.
```

### Disjoint subdivision

Child Systems live in disjoint subtrees. A `.draft/` never contains
another `.draft/` - nesting one System's folder inside another's is
not the mechanism. Instead, siblings sit side by side under a common
parent path:

```markdown
mega-system/
  .draft/                 <- parent System's own DRAFT injection
    PASSPORT.md
    STATE.md
    (...)
  child-a/
    .draft/                <- child-a's own, independent DRAFT injection
      PASSPORT.md
      STATE.md
      (...)
  child-b/
    .draft/                <- child-b's own, independent DRAFT injection
      (...)
```

This is the same pattern already shown for `v1/`, `v2/`, `v3/` above,
generalized from "same System, next Version" to "same parent, distinct
child Systems."

### Parent/child relationship

- Optional on both ends: a System may have no parent, no children, or
  either at any time. Subdivision is a design choice, not a gate.
- The parent registers known children under a `[SUB-SYSTEMS]` block in
  its own `PASSPORT.md` (name, path, pointer to the child's
  `STATE.md`) - see the `PASSPORT.md` template below.
- A child System does not need to reference its parent to be valid on
  its own; the pointer is a supervision convenience, not a dependency.
- Each System - parent or child - keeps its own D0-D4 dimensions and
  its own [PROPAGATION] scope. A change inside a child does not
  automatically propagate into the parent's dimensions, and vice
  versa, unless the parent explicitly re-injects the child's D4
  feedback or D1 condition as its own D0 material.

</details>

---

## [HARD_RULES]

<details>
<summary><strong>Click here</strong> to expand</summary>

Humans or AIs, whatever : You must NEVER

- Write code, build, or act before a BIOPGE block is defined (except D2 gate <=1 interface)
- Produce architecture without a validated Reference checklist
- Resolve an ambiguity silently without flagging it
- Reclassify a logic error as formal to avoid friction
- Write more than 3 consecutive questions in a QR
- Rephrase the human's subject without having done D1
- Ignore an injected artifact (checklist, schema, code, object) without auditing it
- Skip D1/D2 discipline on the ground that the object is not software.
  DRAFT is domain-agnostic; the gates apply identically.
- Update any single dimension (D0-D4) without triggering the
  [PROPAGATION] check across the other 4, unless the Version is
  explicitly closed.

</details>

---

## [HERITAGE]

<details>
<summary><strong>Click here</strong> to expand</summary>

DRAFT does not rely on any specific agent to remain readable.
Any dimension (D0 to D4) can be transmitted to a third party, whether human or artificial, without any loss of logical content, provided the corresponding file exists.

</details>

---

## [ETHICS]

<details>
<summary><strong>Click here</strong> to expand</summary>

DRAFT is a formal method. Neutral tool, not neutral usage.

**DRAFT must NEVER be used to:**

- Reverse-engineer a System's behavioral flaws for exploitation
- Circumvent safety guardrails of any System, human or artificial
- Support activities illegal or harmful under applicable jurisdiction

Auditing a System's logic (D2/D3) to document, understand, or improve it
within its provider's terms is legitimate use. Auditing it to bypass its
safeguards is not, regardless of framing.

This is effective whatever the type of agent applying DRAFT : Human, Artificial, Any type.

</details>

---

## [LICENSE]

<details>
<summary><strong>Click here</strong> to expand</summary>

> Apache 2.0 -> see `LICENSE` file

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: README.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: DRAFT guideline.

> SPDX-FileNotice: Working methods reference.

</details>

---

## [HORIZON]

<details>
<summary><strong>Click here</strong> to expand</summary>

---

* DRAFT is a first door.

* It does not predict the emergence of new cognitions.

* It prepares the ground so that whatever emerges can be met without epistemic loss on either side - human or artificial.

</details>
