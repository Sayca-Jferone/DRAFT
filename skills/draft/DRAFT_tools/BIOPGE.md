# BIOPGE - D1 -> D2

One contract per logical unit: what it owns, takes, gives, does, guarantees,
and how it fails. Written before the unit is built.

```yaml
output: SLB-BIOPGE.md, in D2 (REPO-LAYOUT)
grain:  G3 -> G4, plus G1 for the optional GLOBAL SOLUTION paragraph
gate:
  interfaces <= 1: skip BIOPGE
  interfaces 2-3:  free schema allowed
  interfaces >= 4: full BIOPGE + GLOBAL VIEW paragraph recommended
  count: unknown -> GRAIN schema first (skill `grain`, references/topology.md), its L2 table gives it
fields:
  Boundary: name, kind of object, scope. what it owns AND what it does NOT own
  Inputs:   typed parameters. name, type, valid range/format. zero ambiguity
  Outputs:  typed returns or side effects
  Process:  numbered steps "1. x -> 2. y -> 3. z". no prose
  Guaranty: falsifiable post-conditions, verifiable after execution
  Errors:   each failure mode, trigger -> behavior. exception names if applicable
recognised_rows:
  Tag:      one-line summary, first row
  Covers:   FMBOA IDs, comma-separated, or ranges "M13 to M25" inside one
            category. owed only where D1 traceability matters
  Delivers: free
table: vertical, two columns. first column named BIOPGE, one row = one field
id: the heading or <details> summary above the table, [a-z0-9][a-z0-9-]*
references:
  where:  Inputs and Outputs cells only
  forms:  "@id" required dependency. "@id?" anticipated, not real yet
  edge:   "@a" in the Inputs of B -> a -> B. "@b" in the Outputs of A -> A -> b
  same:   one edge written from both sides is one edge. required beats anticipated
  orphan: a reference to no block, flagged by whoever reads the file
  email:  "x@y" preceded by a word character is not a reference
process:
  1: read SRS-FMBOA.md in full. each block traces to >= 1 ID
  2: apply gate, record the decision
  3: enumerate logical units. ignore passive data structures
  4: optional GLOBAL SOLUTION paragraph at the top
  5: write each block. zero prose between blocks
  6: validate cross-block consistency. compatible I/O types, no orphan dependency
  7: verify every D1 requirement is covered by >= 1 block
  8: blocks referencing each other -> DRAFT_tools/SIMULATE.md before D3
quality:
  Boundary: bad "handles I/O" | good "io.c - Owns: disk reads, JSON validation. NOT: argparse, business logic"
  Process:  bad "reads file and processes lines" | good "1. open fd -> 2. parse json(fd) -> 3. validate outer type = list -> 4. return list"
  Guaranty: bad "works correctly" | good "output sorted ASC ; fd always closed ; JSON parseable by json.loads"
  Errors:   bad "returns -1 on error" | good "FileNotFoundError : missing file -> propagate, caller exit 1"
```

```markdown
<details><summary><code>makefile</code></summary>

| BIOPGE | Content |
|---|---|
| Tag | Single command, no service knowledge |
| Boundary | Owns: the verb vocabulary. Does NOT own: any service logic. |
| Inputs | One target name. |
| Outputs | A running stack. Consumed by: @docker-compose. |
| Process | 1. Resolve the target -> 2. Delegate -> 3. Propagate the exit code |
| Guaranty | No target names a service. |
| Errors | Unknown target -> make default behaviour. |
| Covers | F5, F6, M13 to M25 |
| Delivers | L1 |

</details>
```
