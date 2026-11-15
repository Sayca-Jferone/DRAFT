# DRAFT TOOLS CATALOGUE

Focal: GRAIN G0-G6 (skill `grain`). G span = grain read -> grain written.
`?` = the world outside the System, or D0 whose grain is not ruled.

| Verb | Transition | Tool | Default | G span | Defined in |
|---|---|---|---|---|---|
| Discover | ? -> D0 | PROBE | - | ? -> G6 | PROBE.md, software instance skill `api-probe` |
| Register | D0 -> D1 | FRAME | yes | ? -> G0-G1 | FRAME.md, head of SRS-FMBOA.template.md |
| Register | D0 -> D1 | FMBOA light | yes | ? -> G3 | FMBOA.md + SRS-FMBOA.template.md |
| Register | D0 -> D1 | FMBOA extended | - | ? -> G3 | FMBOA.md |
| Articulate | D1 -> D2 | GRAIN schema | - | G3 -> G1-G2 | skill `grain`, references/topology.md |
| Articulate | D1 -> D2 | BIOPGE | yes | G3 (G2) -> G4, G1 global view | BIOPGE.md |
| Fabricate | D2 -> D3 | SIMULATE | - | G4 -> G4 | SIMULATE.md |
| Fabricate | D2 -> D3 | AUDIT | yes | G4 -> G5 read, G6 run | AUDIT.md |
| Track | D3 -> D4 | STRESS-TEST | yes | G5 -> G6 | STRESS-TEST.md, software instance skill `stress-gate` |
| Ascend | D4 -> next Version or fork | VERSION ASCENSION | yes | G6 -> G0 | VERSION-ASCENSION.md, first definition |

## Map: what each cell holds

One grid, dimensions and their entry transitions. Source of the layout:
author's table "GRAIN x DRAFT", 2026-11-15.

| G | ? => D0 + D0 | D0 => D1 | D1 | D1 => D2 | D2 | D2 => D3 | D3 | D3 => D4 | D4 | D4 => next |
|---|---|---|---|---|---|---|---|---|---|---|
| G0 | R ideas, analogies | T FRAME Purpose | F frame Purpose | - | P | - | P README first line | - | R perceived purpose | T VA verdict per P claim |
| G1 | R sketches, outlines | T FRAME Silhouette | F frame Silhouette | T GRAIN schema L0 | T BIOPGE global view | - | P one role sentence per unit | - | R real uses | T VA verdict per S claim, orphans |
| G2 | R block drafts | - | X a topology is not a rule | T GRAIN schema L1 | T GRAIN schema, extensions/ | - | P code map | - | R where it rubs | traversed |
| G3 | R subject clauses | T FMBOA light / extended | A SRS-FMBOA | T reads SRS | P Covers references | - | X rule hidden in code | - | R violated expectation | traversed |
| G4 | R existing contracts | - | X solution in rules | T BIOPGE | A SLB-BIOPGE | T SIMULATE, AUDIT reads | X contract leak | - | R contract failing in use | traversed |
| G5 | R injected prior code | - | X code in rules | - | X code in logic | T AUDIT read verdict | A substrate | T STRESS-TEST reads | R user patch, never applied | traversed |
| G6 | T PROBE, previous runs | - | X run in rules | - | X SIMULATE run thrown away | T AUDIT run verdict | A runs, tests | T STRESS-TEST | A feedback, logs | T VA reads evidence |

A anchor. T tool. F frame (FRAME, head of D1). R raw intake, any grain
(D0, D4). P projection with no authority (skill grain), never a DRAFT tool.
X out of sense: finer than the anchor (HARD_RULE 11). VA VERSION ASCENSION.
