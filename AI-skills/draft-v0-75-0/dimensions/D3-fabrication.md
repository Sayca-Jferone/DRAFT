# D3 - Fabrication

```yaml
name: Fabrication
verb: Fabricate
class: internal
content: the thing, substrate + build journal
reached_by: DRAFT_tools/CATALOGUE.md, transition D2 -> D3 (SIMULATE, then
            AUDIT, default)
discipline: [translate the contract not redesign it, fix form in place,
             never refactor architecture on the fly]
output: .draft/dimensions/D3-fabrication/DEVJOURNAL.md + the substrate itself
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
anchor: G5, runs G6. no G3 or G4 inside the substrate (HARD_RULE 11):
        contract_leak below is its concrete form
contract_leak:
  location: the contract lives in the D2 file (SLB-BIOPGE.md by default),
            never inside the substrate
  forbidden_in_substrate: [contract tables in docstrings or inline docs,
                           sections named after contract fields ("Boundary:"
                           "Inputs:" "Outputs:" for BIOPGE),
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
Fix    : [suggested amendment for SLB-BIOPGE.md]
Action : Pause. Amend. Re-validate. Resume.
```

```
SYSTEMIC INCOHERENCE - D1 escalation required
Symptom    : [what the substrate produces or refuses to produce]
Scope      : [impacted blocks in SLB-BIOPGE.md]
Root cause : [requirement misread / missing / contradictory]
Action     : Pause D3. Amend SRS-FMBOA.md. Cascade D2. Resume.
```

Audit of the object against its contract: DRAFT_tools/AUDIT.md.
Stress of the object against simulated realities: DRAFT_tools/STRESS-TEST.md.
