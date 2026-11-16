# AUDIT - D2 -> D3

The D3 object confronted with its D2 contract. A judgement, never a production.
Preceded, when blocks reference each other, by DRAFT_tools/SIMULATE.md.

```yaml
grain: G4 -> G6. a verdict from reading stays G5
findings: routed by dimensions/D3-fabrication.md error_classification
```

## Procedure - any pre-existing object

```yaml
scope: source code, physical build, organisational structure, running process
steps:
  1: read the object and the D2 file in full
  2: per contract, verify every field the D2 tool declares mandatory, plus
     its traceability field. BIOPGE: Boundary, Inputs, Process, Guaranty,
     Errors, Covers
  3: emit the report below, one line per field
  4: systematically verify absence of contract leak in the object's own docs
     (D3-fabrication.md `contract_leak`)
  5: tag every verdict with its evidence, `run` or `read`. only `run` earns a
     PASS stated as verified. a FAIL suspected from reading is probed before it
     is reported: ten lines that call the unit with the failing input are
     cheaper than a wrong finding handed to the person who owns the code.
  6: list what was NOT run, in the report, by name.
```

```markdown
## Audit : [D2 file] vs [object] - [date]

### `[contract]`      (rows shown for BIOPGE; another D2 tool lists its own fields)
- [ ] Boundary : PASS / FAIL - [detail]
- [ ] Inputs   : PASS / FAIL - [detail]
- [ ] Process  : PASS / FAIL - [detail]
- [ ] Guaranty : PASS / FAIL - [detail]
- [ ] Errors   : PASS / FAIL - [detail]
- [ ] Covers   : PASS / SKIP - [detail]

**Evidence :** run / read - [what was run, what was not]
**Verdict :** COMPLIANT / NON-COMPLIANT
**Issues :** [list]
```
