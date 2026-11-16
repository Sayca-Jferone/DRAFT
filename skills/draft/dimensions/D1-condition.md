# D1 - Condition

```yaml
name: Condition
verb: Register
class: internal
content: the rules, single source of truth
reached_by: DRAFT_tools/CATALOGUE.md, transition D0 -> D1 (FRAME, then FMBOA)
discipline: [decompose not architect, classify not resolve, flag ambiguities]
anchor: G3, FRAME (G0-G1) at the head. nothing finer than G3 (HARD_RULE 11)
output: .draft/D1_SRS-FMBOA.md (REPO-LAYOUT)
exit_to_D2:
  - FRAME written, every row serves >= 1 FRAME claim
  - every category filled or explicitly skipped as empty
  - every ambiguity resolved or [ASSUMED] + rationale
  - every open point carries decision + rationale
  - no open question can invalidate D2
  - dense, readable in 60 seconds
```
