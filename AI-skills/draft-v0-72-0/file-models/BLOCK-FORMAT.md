# BLOCK-FORMAT - annotated Markdown blocks

Since v0.72.0. Every structured table of a Matrix is a block: one marker line,
then one Markdown table. Everything else is prose. A tool reads and rewrites
blocks only, never prose. Readers: the DRAFT Panel, an LLM, a human on GitHub.

```yaml
marker:   <!-- draft:<type>( <key>=<value>)* -->
type:     fmboa | biopge | topos | passport | state
value:    unquoted: no space, no '"'. quoted: "...", no '"' inside
position: the marker holds a whole line. next non-blank line starts the table.
          a <details> wrapper goes around the marker, never between marker
          and table
fenced:   a marker inside a fenced code block is an example, never a block
keys:
  fmboa:    category (required): one uppercase letter, equal to the ID prefix
  biopge:   id (required) [a-z0-9][a-z0-9-]*, unit, group, x, y
  topos:    id (required) T<n> at L1 or L0-<name> at L0, level (L0 or L1),
            x, y
  passport: none
  state:    none
x_y:      canvas position, integers, written by a tool. absent -> the tool
          places the block itself
```

## Table

```yaml
header:        first row names the columns. second row is the separator
horizontal:    fmboa. one row = one entry
vertical:      biopge, topos, passport, state. two columns, Field and Content.
               one row = one field
end:           first line not starting with '|'
cell_escape:   '\|' literal pipe. '<br>' line break. inline Markdown allowed
canonical_row: '| ' + cells joined by ' | ' + ' |'
canonical_sep: '|---|' once per column
unknown:       any column or row not listed below is kept, in order,
               verbatim. adding one never breaks a reader
```

## Fields

```yaml
fmboa:
  mandatory:  [ID, "!", State]     # columns
  recognised: [Source]             # links the entry to D0
  ID:         [A-Z][0-9]+, no bold, first letter = category
  State:      one of ⚫ 🔵 🟡 🟢 🔴. nominal: 🔵 🟢. needs attention: ⚫ 🟡 🔴
  "!":        empty, 💀, ⚔️, or both
biopge:
  mandatory:  [Boundary, Inputs, Outputs, Process, Guaranty, Errors]  # rows
  recognised: [Tagline, Covers, Delivers]
  Covers:     FMBOA IDs, comma-separated, or ranges "M13 to M25" inside one
              category. optional: owed only where D1 traceability matters
topos:
  mandatory:  [Block, Intent, Owns, Not, Flux]
  recognised: [Covers, Projects]
  Flux:       "<name> -> <topos id>" entries separated by " ; ". "-" for none.
              target "all" = every block
  Projects:   biopge ids, comma-separated. or "none" [": <reason>"] for a
              declared 1 -> 0. only L1 blocks project onto D2. L0 masses
              project through their L1 blocks
passport:
  mandatory:  [System-name, System-version, System-type, System-license,
               System-visibility]
  recognised: [System-desc, System-authors, System-contributors,
               System-state-file, System-stack]
  System-stack: authored, comma-separated
state:
  mandatory:  [D1, D2, D3]         # integers 0-100, authored
  D0_D4:      no row. external dimensions carry no figure
```

## References

```yaml
where:   Inputs and Outputs cells of a biopge block. nowhere else
forms:   "@id" required dependency. "@id?" anticipated: permitted, not real yet
edge:    "@a" in the Inputs of B -> a -> B. "@b" in the Outputs of A -> A -> b
same:    one edge written from both sides is one edge. a required mention
         beats an anticipated one
orphan:  a reference to no block. reported by the reader, never a parse failure
email:   "x@y" preceded by a word character is not a reference
```

## Derived values

```yaml
rule:     never written. counts, exception lists, coverage, D2/D3
          propagation, BIOPGE gate, overall. a reader computes them on read
why:      a stored projection drifts from its source. measured in the
          Inception Matrix: 12 dashboard rows out of 17 disagreed with their
          source at the third conformity pass
owed:     a derived value no reader computes yet stays where it is, recorded
          in PENDING as owed. never deleted before a reader replaces it
authored: dimension percentages, decisions, reasons. written once, in one
          block
```

## Example

```markdown
<details><summary><code>Makefile</code></summary>

<!-- draft:biopge id=makefile unit="Makefile" group=orchestration -->
| Field | Content |
|---|---|
| Tagline | Single command, no service knowledge |
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

## Reader contract

```yaml
round_trip: parse then serialize a canonical block -> identical bytes
prose:      never read as a block, never rewritten, never reflowed
legacy:     a Matrix declaring method-vers < 0.72.0 is read-only for a tool
reference:  DRAFT Panel, repository sayca-jferone/DRAFT, folder DRAFT-panel/
```
