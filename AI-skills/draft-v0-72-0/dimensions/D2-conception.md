# D2 - Conception (BIOPGE)

```yaml
discipline: [specify not implement, validate logical consistency not explore,
             zero code, zero language syntax, zero idioms]
output: .draft/dimensions/D2-conception/CONCEPTION.md
gate:
  interfaces <= 1: skip BIOPGE
  interfaces 2-3:  free schema allowed
  interfaces >= 4: full BIOPGE + GLOBAL VIEW paragraph recommended
fields:
  Boundary: name, kind of object, scope. what it owns AND what it does NOT own
  Inputs:   typed parameters. name, type, valid range/format. zero ambiguity
  Outputs:  typed returns or side effects
  Process:  numbered steps "1. x -> 2. y -> 3. z". no prose
  Guaranty: falsifiable post-conditions, verifiable after execution
  Errors:   each failure mode, trigger -> behavior. exception names if applicable
format: every block is a biopge block, see file-models/BLOCK-FORMAT.md
traceability: a Covers row in each block, e.g. "F5, M13 to M25, A2"
references: "@id" (required) or "@id?" (anticipated), in Inputs and Outputs
            only. a reference to no block is an orphan, reported by a reader
process:
  1: read CONDITION.md in full. each block traces to >= 1 ID
  2: apply gate, record the decision
  3: enumerate logical units. ignore passive data structures
  4: optional GLOBAL SOLUTION paragraph at the top
  5: write each block. zero prose between blocks
  6: validate cross-block consistency. compatible I/O types, no orphan dependency
  7: verify every D1 requirement is covered by >= 1 block
exit_to_D3:
  - gate applied and decision recorded
  - all blocks complete, or free schema if 2-3 interfaces
  - Covers row filled where D1 traceability matters
  - cross-block I/O types consistent
  - zero code written
quality:
  Boundary: bad "handles I/O" | good "io.c - Owns: disk reads, JSON validation. NOT: argparse, business logic"
  Process:  bad "reads file and processes lines" | good "1. open fd -> 2. parse json(fd) -> 3. validate outer type = list -> 4. return list"
  Guaranty: bad "works correctly" | good "output sorted ASC ; fd always closed ; JSON parseable by json.loads"
  Errors:   bad "returns -1 on error" | good "FileNotFoundError : missing file -> propagate, caller exit 1"
```
