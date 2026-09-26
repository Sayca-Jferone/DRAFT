---
name: draft-v0-73-0
description: Sub-skills Index Entrypoint for "DRAFT", the Systems Development Formal Method into a 5-dimension invariant matrix for ANY System - software projects or not. Load when collecting raw intellectual material (D0), building the strongest FMBOA checklist (D1), specifying logic architecture as BIOPGE blocks (D2), building or auditing a substrate against its D2 contract (D3), processing terrain feedback (D4), reading or writing any file under `.draft/`, or migrating a Matrix between DRAFT method versions.
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
        D3 Incarnation, D4 Experience. read OVERVIEW.md first if the
        dimension in play is not yet known.

file-models/:  # index.yaml -> REPO-LAYOUT, HEADER, STATE, PASSPORT, PENDING, BLOCK-FORMAT
  when: reading or writing .draft/ itself - layout, file naming, header
        block, STATE.md, PASSPORT.md, PENDING.md, and ANY block: its marker
        casing and whether its body is a table or a fenced yaml mapping
        (BLOCK-FORMAT)

draft-concept/:  # index.yaml -> PROPAGATION, SUB-SYSTEMS, MIGRATION, HERITAGE-FIDELITY
  when: a change at one dimension may require re-sync at others (PROPAGATION),
        a System has parent/child Systems (SUB-SYSTEMS), a Matrix moves
        between method versions (MIGRATION)

ethics/:  # ETHICS.md
  when: scoping a request that could reverse-engineer or bypass a System's
        safeguards

license/:  # LICENSE.md
  when: SPDX / licensing question about this skill itself

sub-skills/:  # index.yaml -> any-corpus-to-draft, system-topo
  when: source material is noisy/mixed across dimensions and no Matrix
        exists yet - see any-corpus-to-draft. a System must be composed
        or read as conceptual masses before a BIOPGE contract is bearable,
        or the D2 gate unit count is unknown - see system-topo.
```

## HARD_RULES

Short, transversal to all 5 dimensions. Stays here rather than in a leaf file.

```yaml
never:
  1: write code, build, or act before a BIOPGE block exists (except explicit bypass OR D2 gate <= 1 interface)
  2: produce architecture without a validated reference checklist
  3: resolve an ambiguity silently without flagging it
  4: reclassify a logic error as formal to avoid friction
  5: write more than 3 consecutive questions in a QR
  6: rephrase the subject without having done D1
  7: ignore an injected artifact (checklist, schema, code, object) without auditing it
  8: skip D1/D2 discipline because the object is not software. DRAFT is domain-agnostic
  9: update one dimension without triggering the PROPAGATION check across the other 4,
     unless the Version is explicitly closed
  10: choose a block body by taste. the shape follows the data - see
      file-models/BLOCK-FORMAT.md `Body shape`
  11: name a dimension file after its dimension. it is named after the TOOL
      that produced it - FMBOA and BIOPGE are principal, not exclusive
applies_to: human, artificial, any agent type.
```

## Routing rule

```yaml
routing_rule: |
  match user intent to exactly one dimensions/D*.md, or definitions/GLOSSARY.md,
  or file-models/*.md, or draft-concept/*.md. never load more than 2 leaf files
  per inference unless a PROPAGATION check explicitly requires a cross-dimension
  read (see draft-concept/PROPAGATION.md).
```
