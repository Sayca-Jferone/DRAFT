# BLOCK-FORMAT - structured Markdown blocks

A block is one structured body inside a Matrix file: a Markdown table OR a
fenced yaml mapping. Everything else is prose. Readers: a human or an LLM.
No DRAFT parser exists or will exist, so a block carries no marker line: the
heading above it, or its `<details>` summary, names it. A block inside a
fenced code block is an example, never a block.

Fields of a tool's blocks live with the tool, in DRAFT_tools/. This file
holds only what every block shares.

## Body shape

Two admissible bodies. The choice is determined by the data, not by
preference, and a file may carry both.

```yaml
yaml_fenced:  key -> single value, flat or nested. one line per fact
when:         identity records, figures, indexes, annexes, source lists
why:          a vertical table spends three cells of markup per fact. a
              mapping spends one line
table_vertical: one entity, N fixed attributes. rows are the field names.
                first column named after the tool, never "Field"
when:           a BIOPGE contract, where the fields ARE the contract
table_horizontal: N entities, identical columns. one row = one entry
when:             FMBOA entries, PENDING rows. already the dense form:
                  converting these to yaml multiplies line count by the
                  column count
rule:         count the entities. one entity flat -> yaml. one entity with a
              fixed field list -> vertical table. many entities -> horizontal
              table
yaml_validity: a Matrix yaml body stays valid yaml. tabs are forbidden in
               indentation, and an inline sequence needs brackets: ["a", "b"],
               never a, b, which reads as one string and loses the structure
scope_of_that_rule: Matrix files under .draft/ only. the yaml fences inside
               these method files are caveman descriptions, not held to it
cell_escape:  '\|' literal pipe. '<br>' line break. inline Markdown allowed
unknown:      any extra column or row is kept, in order, verbatim
```

## Contract-surface fields

```yaml
passport:
  mandatory:  [System-name, System-version, System-type, System-license]
  recognised: [System-description, System-authors, System-stack,
               Dev-protocols, Dev-tracker, GIT-visibility, GIT-repository,
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
  RESERVES:   what holds each figure below 100, keyed by dimension
  PROPAGATION: cross-dimension effects, keyed by date
  SESSIONS:   what each session changed, keyed by date
```

## Derived values

```yaml
rule:     never written. counts, exception lists, coverage, D2/D3
          propagation, BIOPGE gate, overall. the reader computes them on read
why:      a stored projection drifts from its source. measured in the
          Inception Matrix: 12 dashboard rows out of 17 disagreed with their
          source at the third conformity pass
authored: dimension percentages, decisions, reasons, per-entry observations
          (FMBOA light Dev/Test). written once, in one block
```

## Example

````markdown
## System

```yaml
System-name: tree_nity
System-type: software
System-stack: ["C++23", "CMake"]
System-version: 2.0
System-license: No
```
````

## Presentation

```yaml
presentation: the human-facing form of D1 and D2 is a rendered document,
            one PDF each, produced from the Matrix for a presentation. the
            Markdown stays the source; the PDF is a projection with no
            authority of its own
```
