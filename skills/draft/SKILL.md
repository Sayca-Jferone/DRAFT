---
name: draft
description: DRAFT method: 5 dimensions of any System joined by tools (FRAME, FMBOA, BIOPGE, AUDIT...). Use for requirements, contracts, building, audits, stress tests, .draft/ files, migration.
license: Apache-2.0
metadata:
  version: "0.75.0"
---

# DRAFT root index

This file routes only.
It never explains, never accumulates.
Load exactly the leaf file matching the task, never a whole subtree.

```yaml
version: ./version file

definitions/:  # GLOSSARY.md
  when: unclear term (DRAFT, Matrix, System, substrate, mutation, migration, ...)

dimensions/:   # index.yaml -> OVERVIEW.md + D0..D4-*.md
  when: working any of D0 Emergence, D1 Condition, D2 Conception,
        D3 Fabrication, D4 Consumption. read OVERVIEW.md first if the
        dimension in play is not yet known.

file-models/:  # index.yaml -> REPO-LAYOUT, HEADER, STATE, PASSPORT, PENDING, BLOCK-FORMAT
  when: reading or writing .draft/ itself - layout (canonical or flat), file
        naming, header block, STATE.md, PASSPORT.md, PENDING.md, a tracker
        replacing them, and ANY block: whether its body is a table or a
        fenced yaml mapping (BLOCK-FORMAT)

draft-concept/:  # index.yaml -> PROPAGATION, SUB-SYSTEMS, MIGRATION, HERITAGE-FIDELITY
  when: a change at one dimension may require re-sync at others (PROPAGATION),
        a System has parent/child Systems (SUB-SYSTEMS), a Matrix moves
        between method versions (MIGRATION)

DRAFT_tools/:  # index.yaml -> CATALOGUE, PROBE, FRAME, FMBOA, SRS-FMBOA.template, BIOPGE, SIMULATE, AUDIT, STRESS-TEST, VERSION-ASCENSION
  when: choosing which tool carries a transition D(n) -> D(n+1), its GRAIN
        span (skill `grain`, G0-G6), and the tool itself: PROBE (? -> D0),
        FRAME and FMBOA (D0 -> D1), BIOPGE (D1 -> D2), SIMULATE and AUDIT
        (D2 -> D3), STRESS-TEST (D3 -> D4), VERSION ASCENSION (D4 -> next
        Version or fork)

ethics/:  # ETHICS.md
  when: scoping a request that could reverse-engineer or bypass a System's
        safeguards

license/:  # LICENSE.md
  when: SPDX / licensing question about this skill itself
```

## HARD_RULES

Short, transversal to all 5 dimensions. Stays here rather than in a leaf file.

```yaml
never:
  1: build before the D2 contract exists, unless explicit bypass or a D2 gate
     of <= 1 interface
  2: write a D2 contract without a settled D1
  3: resolve an ambiguity silently without flagging it
  4: reclassify a logic error as formal to avoid friction
  5: rephrase the subject without having done D1
  6: ignore an injected artifact (checklist, schema, code, object) without auditing it
  7: skip D1/D2 discipline because the object is not software. DRAFT is domain-agnostic
  8: update one dimension without the PROPAGATION check across the other 4,
     unless the Version is explicitly closed
  9: write a tool's rules inside a dimension file. a dimension is a view, a
     tool carries a transition and lives in DRAFT_tools/
  10: name a dimension file after its dimension alone (D1.md, CONDITION.md).
      name it after the TOOL that produced it (SRS-FMBOA.md) or after the kind
      of document it is (SYS-SPECS.md)
  11: let an internal dimension hold a grain finer than its anchor (skill
      grain): D1 nothing below G3, D2 nothing below G4, D3 no G3 or G4 inside
      the substrate. above its anchor a dimension holds only its frame or a
      projection with no authority. D0 and D4 accept every grain, raw.
      DRAFT_tools/CATALOGUE.md `Relevance`
applies_to: human, artificial, any agent type.
```

## Routing rule

```yaml
routing_rule: |
  match user intent to exactly one dimensions/D*.md, DRAFT_tools/*.md,
  definitions/GLOSSARY.md, file-models/*.md or draft-concept/*.md. a dimension
  file plus the tool files of the transition in play count as one leaf. never
  load more than 2 leaves per inference unless a PROPAGATION check explicitly
  requires a cross-dimension read (see draft-concept/PROPAGATION.md).
```
