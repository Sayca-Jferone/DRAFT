# BLOCK-FORMAT - annotated Markdown blocks

Since v0.72.0. Every structured table of a Matrix is a block: one marker line,
then its body. Everything else is prose. A tool reads and rewrites blocks only,
never prose. Readers: a human, an LLM, any script honouring this contract.

Since v0.73.0 a block body is a Markdown table OR a fenced yaml mapping. The
shape follows the data, never taste: see `Body shape` below.

```yaml
marker:   <!-- DRAFT:<type>( <key>=<value>)* -->
value:    unquoted: no space, no '"'. quoted: "...", no '"' inside
position: the marker holds a whole line. next non-blank line starts the body.
          a <details> wrapper goes around the marker, never between marker
          and body
fenced:   a marker inside a fenced code block is an example, never a block.
          a fenced BODY under a real marker is a block, not an example
```

## Type casing

Since v0.73.0. The case of `<type>` states what the block is, and a reader
keys on it.

```yaml
UPPERCASE: a TOOL. one of several that could fill this dimension, and the
           Matrix names which one it used. FMBOA and BIOPGE are the current
           principals at D1 and D2; they are not the only ones admissible,
           and a Matrix may declare another
lowercase: a ROLE. a fixed surface of the method itself, with no alternative
           to name: passport, state, pending, index, sources, condition,
           conception, emergence, incarnation, experience, annex
why:       a dimension file says WHICH tool produced it. a contract-surface
           file has nothing to choose. collapsing the two loses the
           distinction a reader needs to know whether a substitution is even
           possible
```

```yaml
tools:     FMBOA | BIOPGE | TOPOS
roles:     passport | state | pending | index | sources | condition |
           conception | emergence | incarnation | experience | annex
keys:
  FMBOA:      category (required): one uppercase letter, equal to the ID prefix
  BIOPGE:     id (required) [a-z0-9][a-z0-9-]*, unit, group, x, y
  TOPOS:      id (required) T<n> at L1 or L0-<name> at L0, level (L0 or L1),
              x, y
  passport:   type (optional): PROTOCOLS | SUBSTRATE | SUB-SYSTEMS |
              CONSTRAINTS
  state:      type (optional): RESERVES | PROPAGATION | SESSIONS
  annex:      type (required): names the annex, e.g. SCOPE | COVERAGE | OWED
  index:      none
  sources:    none
  pending:    none. a header block, not a table
  condition:  none. a header block naming the dimension
  conception: none. a header block naming the dimension
  emergence, incarnation, experience: none. header blocks of the D0, D3,
              D4 journals, same shape as condition
x_y:       canvas position, integers, written by a tool. absent -> the tool
           places the block itself
```

## Body shape

Since v0.73.0. Two admissible bodies. The choice is determined by the data,
not by preference, and a file may carry both.

```yaml
yaml_fenced:  key -> single value, flat or nested. one line per fact
when:         identity records, figures, indexes, annexes, source lists
why:          a vertical table spends three cells of markup per fact. a
              mapping spends one line
table_vertical: one entity, N fixed attributes. rows are the field names
when:           a BIOPGE block, where the six fields ARE the contract and a
                reader checks them one by one
table_horizontal: N entities, identical columns. one row = one entry
when:             FMBOA entries, PENDING rows. already the dense form:
                  converting these to yaml multiplies line count by the
                  column count
rule:         count the entities. one entity flat -> yaml. one entity with a
              fixed field list -> vertical table. many entities -> horizontal
              table
yaml_validity: a MATRIX body must parse. tabs are forbidden in indentation,
               and an inline sequence needs brackets: ["a", "b"], never
               a, b, which parses as one string and loses the structure
scope_of_that_rule: Matrix files under .draft/ only. the yaml fences inside
               these method files are caveman descriptions written to be read,
               not parsed, and they are not held to it
```

## Table

```yaml
header:        first row names the columns. second row is the separator
horizontal:    FMBOA. one row = one entry
vertical:      BIOPGE, TOPOS. two columns. the first column is named after
               the tool, BIOPGE or TOPOS, not "Field": the header then states
               which contract the rows belong to. one row = one field
yaml:          passport, state, index, sources, annex. no table at all
end:           first line not starting with '|'
cell_escape:   '\|' literal pipe. '<br>' line break. inline Markdown allowed
canonical_row: '| ' + cells joined by ' | ' + ' |'
canonical_sep: '|---|' once per column
unknown:       any column or row not listed below is kept, in order,
               verbatim. adding one never breaks a reader
```

## Fields

```yaml
FMBOA:
  mandatory:  [ID, "!", State]     # columns
  recognised: [Source]             # links the entry to D0
  ID:         [A-Z][0-9]+, no bold, first letter = category
  State:      one of ⚫ 🔵 🟡 🟢 🔴. nominal: 🔵 🟢. needs attention: ⚫ 🟡 🔴
  "!":        empty, 💀, ⚔️, or both
BIOPGE:
  mandatory:  [Boundary, Inputs, Outputs, Process, Guaranty, Errors]  # rows
  recognised: [Tag, Covers, Delivers]
  Tag:        since v0.73.0, replaces Tagline. same meaning, one word
  header:     first column is named BIOPGE, not Field
  Covers:     FMBOA IDs, comma-separated, or ranges "M13 to M25" inside one
              category. optional: owed only where D1 traceability matters
TOPOS:
  mandatory:  [Block, Intent, Owns, Not, Flux]
  recognised: [Covers, Projects]
  Flux:       "<name> -> <topos id>" entries separated by " ; ". "-" for none.
              target "all" = every block
  Projects:   biopge ids, comma-separated. or "none" [": <reason>"] for a
              declared 1 -> 0. only L1 blocks project onto D2. L0 masses
              project through their L1 blocks
passport:
  mandatory:  [System-name, System-version, System-type, System-license]
  recognised: [System-description, System-authors, System-stack,
               Dev-protocols, GIT-visibility, GIT-repository,
               DRAFT-version, DRAFT-created-with, DRAFT-license, DRAFT-repository,
               DRAFT-configuration, Language, Package-manager, Invocation,
               Implementation-root, Entry-points]
  keys:       kebab-case. a key carrying a space does not survive a yaml
               reader
  lists:      bracketed inline sequences, e.g. ["C++23", "CMake"]
state:
  mandatory:  [D1, D2, D3]         # integers 0-100, authored
  D0_D4:      no row. external dimensions carry no figure
  recognised: [updated]
  RESERVES:   what holds each figure below 100, keyed by dimension. a
               percentage alone hides this
  PROPAGATION: cross-dimension effects, keyed by date
  SESSIONS:   what each session changed, keyed by date
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

A vertical table, because the six BIOPGE fields are the contract:

```markdown
<details><summary><code>Makefile</code></summary>

<!-- DRAFT:BIOPGE id=makefile unit="Makefile" group=orchestration -->
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

A yaml body, because the data is flat key to value:

````markdown
<!-- DRAFT:passport -->
```yaml
System-name: tree_nity
System-type: software
System-stack: ["C++23", "CMake"]
System-version: 2.0
System-license: No
```
````

## Reader contract

```yaml
round_trip: parse then serialize a canonical block -> identical bytes. a yaml
            body round-trips as text, never through a yaml dumper, which
            would reorder keys and restyle scalars
prose:      never read as a block, never rewritten, never reflowed
legacy:     a Matrix declaring method-vers < 0.72.0 is read-only for a tool
reference:  none. the method ships no reader tool. the DRAFT Panel, a
            reader built against 0.72.0, was abandoned 2026-09-26
presentation: the human-facing form of D1 and D2 is a rendered document,
            one PDF each, produced from the Matrix for a presentation. the
            Markdown stays the source; the PDF is a projection with no
            authority of its own
```
