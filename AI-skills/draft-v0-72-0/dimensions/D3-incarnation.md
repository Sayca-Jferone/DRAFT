# D3 - Incarnation

```yaml
discipline: [translate the contract not redesign it, fix form in place,
             never refactor architecture on the fly]
output: .draft/dimensions/D3-incarnation/DEVJOURNAL.md + the substrate itself
error_classification:
  formal:   defect in HOW the contract is expressed. typo, wrong cast, local step
            order slip. what the unit does is unaffected -> fix in place, stay D3
  logic:    substrate behavior does not honor the D2 contract. wrong flow,
            impossible guarantee, missing case -> STOP, D2, amend, re-validate
  systemic: architecture untenable, multiple blocks to rewrite
            -> STOP, escalate D1, cascade D2, resume D3 when both are clean
diagnostic:
  - does the fix change what the unit DOES?          -> logic -> D2
  - does the fix change only HOW it is expressed?    -> formal -> in place
  - did the error exist in the contract itself?      -> D2
  - does the fix cascade across multiple blocks?     -> systemic -> D1
biopge_leak:
  location: the contract lives in .draft/dimensions/D2-conception/CONCEPTION.md,
            never inside the substrate
  forbidden_in_substrate: [BIOPGE tables in docstrings or inline docs,
                           sections named "Boundary:" "Inputs:" "Outputs:",
                           tags "# BIOPGE block: ..."]
  allowed: [native documentation conventions of the substrate (PEP 257, Google,
            NumPy, Norm 42, standard operating procedures),
            comments on non-obvious logic,
            one single-sentence role statement per unit]
```

Mandatory flags, emitted verbatim:

```
LOGIC ERROR - D2 return required
Block  : [name]
Issue  : [what is wrong in the contract]
Impact : [what breaks if ignored]
Fix    : [suggested amendment for CONCEPTION.md]
Action : Pause. Amend. Re-validate. Resume.
```

```
SYSTEMIC INCOHERENCE - D1 escalation required
Symptom    : [what the substrate produces or refuses to produce]
Scope      : [impacted blocks in CONCEPTION.md]
Root cause : [requirement misread / missing / contradictory]
Action     : Pause D3. Amend CONDITION.md. Cascade D2. Resume.
```

## Audit mode - any pre-existing object

```yaml
scope: source code, physical build, organisational structure, running process
steps:
  1: read the object and CONCEPTION.md in full
  2: per block verify Boundary / Inputs / Process / Guaranty / Errors / Covers
  3: emit the report below
  4: systematically verify absence of BIOPGE leak in the object's own docs
```

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
