# D1 - Condition (FMBOA)

```yaml
discipline: [decompose not architect, classify not resolve, flag ambiguities,
             zero code, zero file structure, zero BIOPGE]
output: .draft/dimensions/D1-condition/SRS-FMBOA.md
categories:
  F-XX: Formats     # language, version, norms, constraints, deliverables, repo structure, CLI
  M-XX: Mandatory   # explicitly required. System invalid without them
  B-XX: Bonus       # optional. state targeted / skipped + rationale
  O-XX: Open Points # left to the developer. decision + rationale mandatory
  A-XX: Ambiguities # grey areas. resolve via QR, or mark [ASSUMED] + rationale
process:
  1: read subject in full, flag gaps and contradictions immediately
  2: extract every requirement, explicit and implicit. one line = one checkbox
  3: classify into exactly one category
  4: surface hidden assumptions
  5: run QR on any open question able to invalidate D2 downstream
  6: build an ambiguity resolution trace if A-XX count > 10
  7: verify no remaining ambiguity can break the architecture
exit_to_D2:
  - 5 categories filled or explicitly skipped as empty
  - every A-XX resolved or [ASSUMED] + rationale
  - every O-XX carries decision + rationale
  - no open question can invalidate D2
  - dense, readable in 60 seconds
audit_clause: an artifact injected at D0 is hypothetical. its audit IS the D1
              classification. no separate Audit mode exists before D2/D3.
```

## File shape past ~50 entries

Split in two, collapse both: **Normative** (full text) and **Decisions**
(reasoning behind O-XX and A-XX). Every table carrying entries is a `fmboa`
block (file-models/BLOCK-FORMAT.md). No dashboard is written: exception lists,
counts and coverage are computed by a reader such as the DRAFT Panel.

```markdown
<!-- DRAFT:FMBOA category=M -->
| ID | ! | State | Item | Source |
|---|---|---|---|---|
| M1 | 💀 | 🔵 | Full text of the requirement. | p. 7 |
```

```yaml
columns:
  ID:     mandatory. [A-Z][0-9]+, category letter first, no bold
  "!":    mandatory, may be empty. 💀 fatal, ⚔️ contested at review
  State:  mandatory. per entry, never per dimension
  Source: recognised when present. origin: page, section, or derivation.
          links the entry to D0
  other:  free per category (Item, Decision, Reasoning...). kept verbatim
state_markers:   # glyphs adaptable, distinctions are not
  untouched:   ⚫ not yet examined        -> needs attention
  frozen:      🔵 settled, awaiting D2    -> nominal
  in_progress: 🟡 D2 or D3 started        -> needs attention
  verified:    🟢 built AND verified      -> nominal
  blocked:     🔴 blocked or failing      -> needs attention
derived_rule: exception lists, counts, D2/D3 propagation and coverage are
              derived, so never written. a stored projection drifts.
forbidden: deriving a dimension percentage by counting markers. a dimension
           figure stays authored.
```

## Traceability annex (optional)

For statements that bind work but are neither Mandatory nor Bonus: recommendations,
study injunctions, mechanical consequences of a mandatory rule.

```yaml
condition: every entry names the FMBOA item it binds, and the annex carries no
           authority of its own. otherwise it has become a sixth category and lets
           the System avoid deciding between Mandatory and Open Point.
promotion: moving an annex entry into M-XX or O-XX is a D1 amendment -> PROPAGATION.
```

```yaml
index: a file past ~200 entries carries an index block of ID ranges at
       its head, so a reader addresses a theme by range instead of loading
       the whole file. measured on tree_nity: a targeted range read cost 841
       bytes against 47137 for the file, and the index paid for itself on
       its first use.
chaptering: <details> around the index, the legend, the entry tables and the
       audit. navigation without scrolling, and nothing hidden from a grep.
```
