# USE 5 - GRAIN schema (G2 Topology, DRAFT tool D1 -> D2)

Absorbed from DRAFT sub-skill system-topo (TOPOS), 2026-11-15. Composes a
System as conceptual masses before a contract is bearable.

```yaml
axiom: a block is a conceptual mass, NOT a BIOPGE contract in waiting.
       projection cardinality free: 1->0, 1->1, 1->n, n->1. a block that
       never incarnates is a finding, not a gap
authority: none over any D-file. SRS-FMBOA.md always wins. SCHEMA.md wins
       over any canvas: text over canvas, always
grammar:   # 4 fields, never 5
  BLOCK:  conceptual name. never filename, service name or module name
  INTENT: why this mass exists. dies at BIOPGE. the human re-entry point
  OWNS:   what it answers for
  NOT:    what it does not answer for
  FLUX:   "<what circulates> -> <block id>", entries split by " ; ".
          target "all" = every block. named, NEVER typed
table: vertical, first column GRAIN. rows Block, Intent, Owns, Not, Flux,
       then Covers (FMBOA IDs) and Projects (biopge ids, or "none: <why>")
forbidden_fields: [type, range, format, guaranty, error, postcondition, step]
                  any of those means BIOPGE started. stop, go to D2
rule_inheritance: NOT is the only inherited constraint. what a block does not
       own, none of its BIOPGE contracts may own. without it, decoration
rule_cardinality: every block declares its projection count AND its reason.
       1->0 states why it never incarnates. n->1 why reasonings share one
       substrate
zoom:
  L0: 3-5 masses, one screen. more than 5 -> two Systems (DRAFT SUB-SYSTEMS)
  L1: 5-12 blocks, full grammar. where the human composes
  L2: projection TABLE only, block -> contract count -> reason
process:
  1: read D0 and D1 in full. never compose from memory
  2: L0 masses -> 3: L1, one block per distinct INTENT, not per file
  4: fill NOT before OWNS -> 5: name every FLUX
  6: L2 table, every cardinality reasoned -> 7: harvest findings
  8: SCHEMA.md first, canvas (SCHEMA.excalidraw) second, never canvas alone
placement: .draft/extensions/grain/SCHEMA.md. neither a dimension nor a contract file
handover: L2 distinct-contract count IS the BIOPGE gate input. the schema
       does not close after D2 opens: it stays the human map, amended when D1
       moves
```

| Symptom | Means | Fix |
|---|---|---|
| block named like a file | drawing D3, not composing | rename to the intent |
| NOT empty | boundary not thought | fill NOT or delete block |
| every block 1->1 | BIOPGE with fewer fields | regroup by INTENT |
| unnamed edge | coupling not examined | name it or remove it |
| more than 12 L1 blocks | several Systems | DRAFT SUB-SYSTEMS |
| canvas edited, .md stale | authority inverted | re-sync .md, it wins |
