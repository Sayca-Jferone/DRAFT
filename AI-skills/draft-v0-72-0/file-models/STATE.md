# STATE.md and the DRAFT-STATE block

```yaml
STATE.md:
  role: living dashboard. lean. detail lives in linked files. identity lives
        in PASSPORT.
  update: before ANY commit+push, and at the end of ANY work session.
  naming: adaptable, e.g. STATE-<branch>.md
  percentages: one state block (BLOCK-FORMAT.md), rows D1, D2, D3. bare
               integers 0-100. authored, never derived, written once.
DRAFT-STATE:
  role: header block, identity and method keys only (HEADER.md
        rule_no_derived_values)
  placement: immediately after the "# STATE # System state" title, before
             the first blockquote. HTML comment, never YAML front matter.
null_semantics:
  D0/D4: structural. external dimensions never close, nothing to measure.
         no row.
  internal: a missing row means "not eligible yet", which is NOT 0
            ("eligible, nothing done"). rare, since D1/D2/D3 are eligible as
            soon as the System exists.
  rendering: a reader renders a missing figure as "-", never as "0%".
falling_pct: legitimate. injecting D0 or D4 material into D1 lowers D1,
             because the truth it must cover grew. enriching D0 alone changes
             nothing, injecting it does. the fall cascades to D2/D3 BY
             RE-VERIFICATION, never by recomputation. a falling figure is the
             measure becoming honest.
overall: removed in v0.72.0. a weighted mean of authored figures informed no
         decision.
block_version: the "v1" marker versions the block format, independent of the
               method version. an unknown block version must be DECLINED,
               never guessed.
maintenance: by hand or through the DRAFT Panel. no tooling required inside
             the System's repository.
```
