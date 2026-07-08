# DRAFT - Well thinked, well built, well documented.

> Version: `v0.65` Cognitive Lens for System Development | Any language | Any domain | For Humans and Artificials

> Author: `sayca-jferone` - [Github profile](https://github.com/Sayca-Jferone) - [Saycalabs](https://saycalabs.com)

> Licence: `Apache 2.0` - Open Sourced by `Sayca Jason FERONE`

> Language: ENGLISH ONLY in any file

---

## All your Systems exists in 5 Dimensions

| Layer | Output | Format |
|---|---|---|
| D0: Brainstorming | `0-Ideations.md`   : pre-work papers, customer's requests | Any notes/pdf files |
| **D1: Conditions** | `1-Conditions.md`   : single source of truth system's rules | FMBOA in Markdown |
| **D2: Conception** | `2-Conception.md`   : system's specification & logic debug | BIOPGE in Markdown |
| **D3: Implementation** | `3-DevJournal.md` : for dev phase tracability. Optional. | Debug Notes + Source Code |
| D4: Experience | `4-Feedbacks.md` : for user experience feedbacks. Optional. | Feedbacks Notes + Usable System |

```markdown
docs/
	DRAFT.md            <- you are here
	DRAFT/
    0-Ideations.md      <- customer's requests / initial notes & documents (example: PDF 42network subject, brainstorms)
    1-Conditions.md     <- source of truth : the problem readable in 60 seconds
    2-Conception.md     <- logical contract : traceable, debuggable without touching code
    3-DevJournal.md     <- perma log retranscription : in-dev news, happenings, refactors, D3->D2 & D3->D2->D1 retro-change, for extra-project overviews/benchmarks of DRAFT performances.
    
```

---

## [D1] - Conditions `1-Conditions.md`

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

---

### Output Template

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

---

### D1 exit if
- [ ] 5 categories filled (or skipped if empty)
- [ ] All ambiguities resolved or ASSUMED + rationale
- [ ] All Open Points with decision + rationale
- [ ] No open question can invalidate D2
- [ ] Dense, readable in 60 seconds

---

## [D2] - Conception `2-Conception.md`

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


### Output Template

<details>
  <summary>Click here to see 2-Rules.md structure</summary>

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

## [D3] - Implementation

### D3 Discipline
- Translate the contract. Do not redesign it.
- Fix syntax in place. Do not refactor architecture on the fly.
- Flag logic errors -> return to D2.
- Flag systemic incoherence -> escalate to D1.

### Critical rule : syntactic vs logic error

| Type | Definition | Response |
|---|---|---|
| **Syntactic** | Typo, off-by-one, missing import, wrong cast | Fix in place. Stay in D3. |
| **Logic** | Incorrect flow, impossible guarantee, missing case | STOP. Return D2. Amend block. Re-validate. |
| **Systemic incoherence** | Entire architecture absurd, multiple blocks to rewrite | STOP. Escalate D1. Cascade D2. Resume D3 only when both upstream layers are clean. |

**Diagnostic checklist:**
1. Does fixing this imply changing what the unit *does*? -> Logic -> D2.
2. Does fixing this only change *how* it is expressed? -> Syntax -> in place.
3. Did the error exist in the contract? -> Yes -> D2.
4. Does the fix cascade across multiple blocks? -> Systemic -> D1.

### Critical rule : BIOPGE outside source code

The contract lives in `docs/devnotes/2-Conception.md`. **Not in the code.**

Forbidden in source code:
- BIOPGE tables in docstrings
- Sections named `Boundary:`, `Inputs:`, `Outputs:` etc.
- Tags `# BIOPGE block: ...`

Allowed and encouraged:
- Standard docstrings (PEP 257 / Google / NumPy for Python ; Norm 42 for C)
- Comments on non-obvious logic
- Module docstring: one sentence, file role

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
Symptom    : [what the code produces or refuses to produce]
Scope      : [list of impacted blocks in 2-Conception.md]
Root cause : [requirement misread / missing / contradictory]
Action     : Pause D3. Amend 1-Conditions.md. Cascade D2. Resume.
```

### Audit mode (injected existing code)

1. Read the code + `2-Conception.md` in full.
2. Per block: verify Boundary / Inputs / Process / Guarantees / Errors / Covers.
3. Produce the report:

```markdown
## Audit : 2-Conception.md vs [source file] - [date]

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

Systematically verify the absence of BIOPGE in docstrings.
Any leak = documentary violation to flag.

---

## [RETROACTIVITY]

```
D3 - syntactic error        -> fix in place
D3 - logic error            -> D2 : amend block -> re-validate -> resume D3
D3 - contract contradicted  -> D2 : amend 2-Conception.md -> resume D3
D3 - requirement misread    -> D1 : amend 1-Conditions.md -> cascade D2 -> resume D3
D3 - systemic incoherence   -> full D1 -> full D2 -> D3
```

Going back is not a failure. It is the method filtering at the least costly stage.

---

## [HARD_RULES]

Humans or AIs, whatever : You must NEVER
- Writes code before a BIOPGE block is defined (except D2 gate ≤1 interface)
- Produces architecture without a validated Reference checklist
- Resolves an ambiguity silently without flagging it
- Reclassifies a logic error as syntactic to avoid friction
- Writes more than 3 consecutive questions in a QR
- Rephrases the human's subject without having done D1
- Ignores an injected artifact (checklist, schema, code) without auditing it

---

## [HERITAGE]

DRAFT does not rely on any specific agent to remain readable.
Any dimension (D0 to D4) can be transmitted to a third party, whether human or artificial, without any loss of logical content, provided the corresponding file exists.

---

## [LICENSE]

Apache 2.0 OpenSource 2025-2026 - Sayca Jason FERONE (under Sayca Labs works signature)
