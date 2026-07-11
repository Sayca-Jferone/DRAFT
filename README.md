# DRAFT - Well thinked ? Well built ? Well documented. Iterate.

> Version: `v0.66` Cognitive Matrix for Systems Development | Any language, any domain, for Humans and Artificials

> Author: `sayca-jferone` - [Github profile](https://github.com/Sayca-Jferone) - [Saycalabs](https://saycalabs.com)

> Licence: `Apache 2.0` - Open Sourced by `Sayca Jason FERONE`

> Preference: ENGLISH ONLY - For universal heritage

---

## Any Systems shown under 5 Dimensions

**DRAFT is not a software-only method.** It is a cognitive matrix applicable to
**any object**, existing or projected: a piece of software, an AI model, a
company and its departments, an HR tree, fuzzy ideas, politics decisions, anything.
Five parallel planes, describing the same object, called "Drafted **__System__**".

| DRAFT Dimension | System layer | Output | Format |
|---|---|---|---|
| **D0: Discovery** | Emergence | Raw materials, ideas and questions, no file mandatory. It's D4 without the System. | Any notes/pdf files |
| **D1: Registration** | Conditions | single source of truth System's rules | FMBOA in Markdown |
| **D2: Articulation** | Conception | System's specification & logic debug | BIOPGE in Markdown |
| **D3: Fabrication** | Incarnation | the build phase traceability. Optional. | Debug Notes / Dev Journal + Real-world Artifact |
| **D4: Terrain** | Experience | for user experience feedbacks. It's D0 with the System. | Feedbacks Notes + Living System |

```markdown
docs/					         # Example of DRAFT applied in Software Engineering, by coders / devs / sys archs.
	DRAFT.vx-xx.md               <- you are reading this, DRAFT's local reference
	DRAFT/                       <- your Draft Workspace, with Drafted System's local version
    	0-Discovery/             <- raw notes, PDF, customer's requests, brainstorms (optional pre-construction phase)
			Ideations.md, (...)				
    	1-Conditions.v1-00.md    <- source of truth : the problem readable in 60 seconds (FMBOA checkboxes format)
    	2-Conception.v1-00.md    <- logical contract : traceable, debuggable without touching the substrate (BIOPGE blocks format)
    	3-Fabrication.v1-00.md   <- build log : dev journal, in-progress news, refactors, D3->D2 & D3->D2->D1 retro-changes (fixes and updates)
    	4-Experience/*           <- terrain feedback once the System is live
			Feedback.xxxxx.v1-00.md, (...)
```

---

## [D0] - Discovery : Emergence `0-Discovery/*` (optional)

<details>
<summary> Click here to see Discovery Dimension D0</summary>

### D0 Discipline

- Collect. Do not filter.
- Note. Do not commit.
- No structured file is required at this stage.
- Zero classification. Zero FMBOA. Zero BIOPGE.

D0 is a permanent floating plane, not a gate. It is where raw creativity
and intellectual matter come from, mostly human intuition. Same plane as
D4 (real, lived experience), but without the System yet in place.

D0 is invoked only for non-existant Systems, or brainstorms for upgrades.
This layer exists whether or not you formalize it. Writing it down is
only useful to enter D1 with more depth and fewer silent assumptions.
	
</details>

---

## [D1] - Registration : Conditions `1-Conditions.md`

<details>
<summary> Click here to see Registration Dimension D1</summary>

### D1 Discipline
- Decompose. Do not architect.
- Classify. Do not resolve.
- Flag ambiguities. Do not resolve them silently.
- Zero code. Zero file structure. Zero BIOPGE (D2).

### The 5 FMBOA categories

| ID | Category | Definition |
|---|---|---|
| **F-XX** | Formats | Language, version, norms, constraints, deliverables, repo structure, CLI. |
| **M-XX** | Mandatory | Explicitly required. Project invalid without them. |
| **B-XX** | Bonus | Optional. Indicate if targeted / skipped + rationale. |
| **O-XX** | Open Points | Choices left to the developer. Decision + rationale mandatory. |
| **A-XX** | Ambiguities | Grey areas. Resolve via QR or mark `[ASSUMED]` + rationale. |

### Process
1. Read the subject in full. Flag gaps or contradictions immediately.
2. Extract every requirement. Explicit and implicit. One line = one checkbox.
3. Classify into exactly one category.
4. Surface hidden assumptions.
5. Run QR on any open question that could invalidate D2 downstream.
6. Build ambiguity resolution trace if >10 A-XX items.
7. Verify output: no remaining ambiguity can break the architecture.

<details>
  <summary>Click here to see 1-Conditions.md structure</summary>

```markdown
# 1-Conditions.md - [project name]

| DRAFT D1 | Author: [names] | Subject: [name/version] | Date: [YYYY-MM-DD] |
|---|---|---|---|

<details>
  <summary>`1. FORMAT`</summary>

| # | Element | Value | Source |
|---|---|---|---|
| F1 | ... | ... | ... |

</details>

<details>
  <summary>`2. Mandatory`</summary>

| # | Item | Source |
|---|---|---|
| M1 | ... | ... |

</details>

<details>
  <summary>`3. Bonus`</summary>

| # | Item | Targeted? | Source |
|---|---|---|---|
| B1 | ... | yes / no / deferred | ... |

</details>

<details>
  <summary>`4. Open Points`</summary>

| # | Item | Decision | Rationale |
|---|---|---|---|
| O1 | ... | ... | ... |

</details>

<details>
  <summary>`5. Ambiguities`</summary>

| # | Question | Resolution | Source |
|---|---|---|---|
| A1 | ... | [answer] or `[ASSUMED]` : rationale | ... |

</details>
```

</details>

### D1 exit if
- [ ] 5 categories filled (or skipped if empty)
- [ ] All ambiguities resolved or ASSUMED + rationale
- [ ] All Open Points with decision + rationale
- [ ] No open question can invalidate D2
- [ ] Dense, readable in 60 seconds

</details>

---

## [D2] - Articulation : Conception `2-Conception.md`

<details>
<summary>Click here to see Articulation Dimension D2</summary>

### D2 Discipline
- Specify. Do not implement.
- Validate logical consistency. Do not explore.
- Zero code. Zero language syntax. Zero idioms.

### The "BIOPGE" block

<details>
  <summary>Click here to see the "BIOPGE" Block structure</summary>

```markdown
### `src/file.example`

"Short descriptor" (optional, 2-4 words)

| Field | Content |
|---|---|
| **Boundary** | Name, optional author, scope. What the unit owns AND what it does NOT own. |
| **Inputs** | Typed parameters. Name, type, valid range/format. Zero ambiguity. |
| **Outputs** | Typed returns or side effects. |
| **Process** | Numbered steps : `1. step -> 2. step -> 3. step`. No prose. |
| **Guaranty** | Falsifiable post-conditions. Verifiable invariants after execution. |
| **Errors** | Each failure mode : trigger -> behavior. Exception names if applicable. |

> Covers : F-X, M-Y, A-Z
```

</details>

### BIOPGE best practices

| Field | Bad | Good |
|---|---|---|
| Boundary | "Handles I/O" | "`io.c` - Owns: disk reads, JSON validation. NOT: argparse, business logic." |
| Process | "Reads file and processes lines" | "1. Open fd -> 2. parse json(fd) -> 3. Validate outer type = list -> 4. Return list" |
| Guarantees | "Works correctly" | "Output sorted ASC ; fd always closed ; JSON parseable by json.loads" |
| Errors | "Returns -1 on error" | "`FileNotFoundError` : missing file -> propagate, caller exit 1" |

### Process
1. Read `1-Conditions.md` in full. Each block traces to ≥1 ID.
2. Apply gate (skip / free schema / full BIOPGE).
3. Enumerate logical units. Ignore passive data structures.
4. Optionally write a GLOBAL SOLUTION paragraph at the top.
5. Write each BIOPGE block. Zero prose between blocks.
6. Validate cross-block consistency (compatible I/O types, no orphan dependencies).
7. Verify output: every D1 requirement covered by ≥1 block.

<details>
  <summary>Click here to see 2-Conception.md structure</summary>

```markdown
# 2-Conception.md - [project name]

| DRAFT D2 | Author: [names] | Based on: 1-Conditions.md ([date]) | Date: [YYYY-MM-DD] |
|---|---|---|---|

---

## GLOBAL VIEW (optional, recommended if ≥4 interfaces)

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

### D2 exit
Valid exit if:
- [ ] Gate applied and decision recorded
- [ ] All blocks complete (or free schema if 2-3 interfaces)
- [ ] `> Covers :` filled where D1 traceability matters
- [ ] Cross-block I/O types consistent
- [ ] Zero code written

</details>

---

## [D3] - Fabrication : Incarnation

<details>
<summary> Click here to see Fabrication Dimension D3</summary>

### D3 Discipline
- Translate the contract into the target substrate. Do not redesign it.
- Fix form in place. Do not refactor architecture on the fly.
- Flag logic errors -> return to D2.
- Flag systemic incoherence -> escalate to D1.

The substrate is whatever the System is made of: source code, a physical
build, an organizational rollout, a manual process. D3 is where the D2
contract stops being an abstract plan and starts existing.

### Critical rule : formal vs logic error

| Type | Definition | Response |
|---|---|---|
| **Formal** | A defect in how the contract is expressed in the substrate: a typo, a wrong cast, a misapplied step order, a local execution slip. What the unit does is unaffected. | Fix in place. Stay in D3. |
| **Logic** | The substrate's behavior does not honor the D2 contract: wrong flow, impossible guarantee, missing case. | STOP. Return D2. Amend block. Re-validate. |
| **Systemic incoherence** | The entire architecture is untenable, multiple blocks need rewriting. | STOP. Escalate D1. Cascade D2. Resume D3 only when both upstream layers are clean. |

**Diagnostic checklist:**
1. Does fixing this imply changing what the unit *does*? -> Logic -> D2.
2. Does fixing this only change *how* it is expressed in the substrate? -> Formal -> in place.
3. Did the error exist in the contract itself? -> Yes -> D2.
4. Does the fix cascade across multiple blocks? -> Systemic -> D1.

### Critical rule : BIOPGE outside the substrate

The contract lives in `docs/DRAFT/2-Conception.md`. **Not inside the
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
Fix    : [suggested amendment for 2-Conception.md]
Action : Pause. Amend. Re-validate. Resume.
```

**Systemic incoherence:**
```
SYSTEMIC INCOHERENCE - D1 escalation required
Symptom    : [what the substrate produces or refuses to produce]
Scope      : [list of impacted blocks in 2-Conception.md]
Root cause : [requirement misread / missing / contradictory]
Action     : Pause D3. Amend 1-Conditions.md. Cascade D2. Resume.
```

### Audit mode (injected existing object)

Applies to any pre-existing object: source code, a physical build, an
organizational structure, a running process.

1. Read the object + `2-Conception.md` in full.
2. Per block: verify Boundary / Inputs / Process / Guarantees / Errors / Covers.
3. Produce the report:

```markdown
## Audit : 2-Conception.md vs [object] - [date]

### `[block]`
- [ ] Boundary   : PASS / FAIL - [detail]
- [ ] Inputs     : PASS / FAIL - [detail]
- [ ] Process    : PASS / FAIL - [detail]
- [ ] Guarantees : PASS / FAIL - [detail]
- [ ] Errors     : PASS / FAIL - [detail]
- [ ] Covers     : PASS / SKIP - [detail]

**Verdict :** COMPLIANT / NON-COMPLIANT
**Issues :** [list]
```

Systematically verify the absence of BIOPGE leaking into the substrate's
own documentation. Any leak is a documentary violation to flag.

</details>

---

## [D4] - Terrain : Experience `4-Experience/*` (optional)

<details>
<summary> Click here to see Terrain Dimension D4</summary>

### D4 Discipline
- Observe. Do not re-architect from a single anecdote.
- Collect friction and feedback from real use. Do not filter it into D1 yet.
- Zero code. Zero BIOPGE. This layer feeds D0 for the next cycle, it does
  not bypass D1/D2 directly.

D4 is the System alive, seen as something lived-in or used rather than as
an open machine. Same plane as D0, but with the System now in place. It
is where terrain feedback surfaces, to be re-injected into D0 for the
next iteration.

</details>

---

## [RETROACTIVITY]

```
D3 - formal error            -> fix in place
D3 - logic error             -> D2 : amend block -> re-validate -> resume D3
D3 - contract contradicted   -> D2 : amend 2-Conception.md -> resume D3
D3 - requirement misread     -> D1 : amend 1-Conditions.md -> cascade D2 -> resume D3
D3 - systemic incoherence    -> full D1 -> full D2 -> D3
D4 - terrain feedback        -> D0 : re-inject as raw matter for next cycle
```

Going back is not a failure. It is the method filtering at the least costly stage.

---

## [HARD_RULES]

Humans or AIs, whatever : You must NEVER
- Write code, build, or act before a BIOPGE block is defined (except D2 gate ≤1 interface)
- Produce architecture without a validated Reference checklist
- Resolve an ambiguity silently without flagging it
- Reclassify a logic error as formal to avoid friction
- Write more than 3 consecutive questions in a QR
- Rephrase the human's subject without having done D1
- Ignore an injected artifact (checklist, schema, code, object) without auditing it
- Skip D1/D2 discipline on the ground that the object is not software.
  DRAFT is domain-agnostic; the gates apply identically.

---

## [ETHICS]

DRAFT is a cognitive matrix. Neutral tool, not neutral usage.

DRAFT must NEVER be used to:
- Reverse-engineer a System's behavioral flaws for exploitation
- Circumvent safety guardrails of any System, human or artificial
- Support activities illegal or harmful under applicable jurisdiction

Auditing a System's logic (D2/D3) to document, understand, or improve it
within its provider's terms is legitimate use. Auditing it to bypass its
safeguards is not, regardless of framing.

This "Ethics Disclaimer" is effective whatever the type of agent applying DRAFT : Human, Artificial, Any type.

---

## [HERITAGE]

DRAFT does not rely on any specific agent to remain readable.
Any dimension (D0 to D4) can be transmitted to a third party, whether human or artificial, without any loss of logical content, provided the corresponding file exists.

---

## [LICENSE]

Apache 2.0 OpenSource 2025-2026 - Sayca Jason FERONE (under Sayca Labs works signature)
