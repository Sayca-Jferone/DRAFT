# DRAFT-FILES_HEADER

Right after the `# title` line of a markdown file of `.draft/`.

```yaml
rule_header_conditional: a file carries a header table UNLESS its own body
    already names the System and the method version. a yaml-bodied
    PASSPORT.md or STATE.md identifies itself on its first block, so a second
    naming is redundant and is dropped. a file whose body is a record set -
    PENDING.md, and any dimension file - cannot identify itself from a row,
    and KEEPS the header.
    test: strip the header. can a reader still say which System and which
    method version this file belongs to? yes -> the header was redundant.
    no -> it was load bearing.
```

Example taken from a D1 file, `SRS-FMBOA.md`:

```markdown
# SRS-FMBOA : System Requirements Specification

| Dimension | Tool | System name | System v. | Author | DRAFT v. | File refresh |
|---|---|---|---|---|---|---|
| `D1 Condition` | `FMBOA` | `[system]` | `[X.Y]` | `[author]` | `[X.Y.Z]` | [YYYY-MM-DD] |
```

```yaml
form:          one Markdown table, one row. no HTML comment, no marker: no
               DRAFT parser exists, a reader is a human or an LLM.
title:         the file's own title, never "# [file] # [system]". dimension
               files develop their sigle (REPO-LAYOUT), contract-surface files
               are generic: "# SYSTEM PASSPORT", "# SYSTEM STATE",
               "# SYSTEM PENDING DEV".
columns:
  Dimension:   "D0 Emergence" .. "D4 Consumption". one face, not the Matrix.
  Tool:        the instrument that produced the file, FMBOA, BIOPGE. a
               journal with no tool writes `-`.
  System v.:   the SYSTEM version, X.Y. equals PASSPORT System-version.
  DRAFT v.:    the method version this file is written under, X.Y.Z.
  File refresh: last update of this file specifically.
  Scope:       optional extra column. a sub-perimeter of the System this file
               covers, e.g. client. absent -> the whole System.
```

```yaml
rule_method_vers_required: NORMATIVE since v0.70.0. `DRAFT v.` is MANDATORY in
    every surviving header, and it is the field a reader obeys: a Matrix
    declaring 0.69.0 must be read as 0.69.0, whatever skill version is loaded
    (see draft-concept/MIGRATION.md `reader_duty`). a Matrix that declares no
    method version cannot be read correctly and cannot be migrated, because
    nothing states what it would be migrated FROM.
    an audit of six live Matrices on 2026-09-07 found five declaring none.

rule_no_derived_values: NORMATIVE since v0.72.0. a header carries identity and
    method values only. a value restating the body - a count, a list, a gate,
    a mean of percentages - is not written: the reader derives it.
```
