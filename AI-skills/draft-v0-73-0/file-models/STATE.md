# STATE.md and the DRAFT-STATE block

```yaml
STATE.md:
  role: living dashboard. lean. detail lives in linked files. identity lives
        in PASSPORT.
  update: before ANY commit+push, and at the end of ANY work session.
  naming: adaptable, e.g. STATE-<branch>.md
  title: "# SYSTEM STATE". generic since v0.73.0, like the PASSPORT title.
  percentages: one state block (BLOCK-FORMAT.md), rows D1, D2, D3. bare
               integers 0-100. authored, never derived, written once.
  body: fenced yaml since v0.73.0. figures are flat key to value, and the
        three narrative sections are dated lists, which a table cannot hold
        without one row per sentence.
sections:
  Figures:     <!-- DRAFT:state -->               D1, D2, D3, updated
  Reserves:    <!-- DRAFT:state type=RESERVES -->
  Propagation: <!-- DRAFT:state type=PROPAGATION -->
  Sessions:    <!-- DRAFT:state type=SESSIONS -->
reserves:
  role: what holds each figure below 100, keyed by dimension. the figure says
        how far; the reserve says what is in the way. a percentage alone
        hides this, which is the failure this section exists to prevent.
  recognised: [counts-what, verified-by, not-verified]
  not-verified: NORMATIVE since v0.73.0. name what the figure does NOT prove.
                a figure earned against a test double, a stub or a sample is
                not the same fact as one earned against the real thing, and a
                reader cannot tell them apart from the number.
propagation:
  role: cross-dimension effects, keyed by date. HARD_RULE 9 made auditable.
sessions:
  role: what each session changed, keyed by date. thin, no narrative.
  recognised: [known-defect, commits]
DRAFT-STATE:
  role: header block, identity and method keys only (HEADER.md
        rule_no_derived_values). OPTIONAL since v0.73.0 when the body is yaml
        and already carries the identity keys: a file whose first block names
        the System needs no second naming. keep it where the body cannot
        identify the file on its own - see PENDING.md.
  placement: immediately after the title, before the first section. HTML
             comment, never YAML front matter.
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
