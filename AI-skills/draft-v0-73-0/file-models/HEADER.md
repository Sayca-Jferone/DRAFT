# DRAFT-FILES_HEADER

Before anything in markdown files of `.draft/` AND after the `#title` line and YAML
front matter.

```yaml
rule_header_conditional: NORMATIVE since v0.73.0. a file carries a header
    block UNLESS its own body already names the System and the method
    version. a yaml-bodied PASSPORT.md or STATE.md identifies itself on its
    first block, so a second naming is redundant and is dropped. a file whose
    body is a record set - PENDING.md, and any dimension file - cannot
    identify itself from a row, and KEEPS the header.
    test: strip the header. can a reader still say which System and which
    method version this file belongs to? yes -> the header was redundant.
    no -> it was load bearing.
    the method version stays mandatory wherever the header survives, per
    rule_method_vers_required below.
```

Example taken from a D1 file, `SRS-FMBOA.md`:

```markdown
# SRS-FMBOA : System Requirements Specification

<!-- DRAFT:condition
system-name: [name]
system-vers: [X.Y]
method-name: DRAFT
method-vers: [X.Y.Z]
method-config:
  - only: [D1, D2, PASSPORT.md]
updated: [YYYY-MM-DD]
-->

| Dimension | Tool | System name | System v. | Author | DRAFT v. | File refresh |
|---|---|---|---|---|---|---|
| `D1 Condition` | `FMBOA` | `[system]` | `[X.Y]` | `[author]` | `[X.Y.Z]` | [YYYY-MM-DD] |
```

```yaml
marker:        <!-- DRAFT:<role> -->, role lowercase per BLOCK-FORMAT
               `Type casing`: condition, conception, pending, or the journal
               role of D0, D3, D4. keys one per line, yaml. since v0.73.0;
               the form <!-- DRAFT-<FILE> v<X.Y.Z> is retired.
title:         the file's own title, never "# [file] # [system]". dimension
               files develop their sigle (REPO-LAYOUT), contract-surface files
               are generic: "# SYSTEM PASSPORT", "# SYSTEM STATE",
               "# SYSTEM PENDING DEV".
method-config: optional. how this Matrix restricts the method, stated once
               and repeated in each header it binds.
  only:        the dimensions and contract files this Matrix keeps. a
               dimension absent from the list is out of scope, never pending.
  scope:       a sub-perimeter of the System this file covers, e.g. client.
               absent -> the whole System.
table:         human face of the header, one row. optional where a
               renderer already shows the header keys.
  Dimension:   "D0 Emergence" .. "D4 Experience". one face, not the Matrix.
  Tool:        the instrument that produced the file, FMBOA, BIOPGE. a
               journal with no tool writes `-`.
  System v.:   the SYSTEM version, X.Y. equals PASSPORT System-version.
  DRAFT v.:    the method version this file is written under, X.Y.Z.
  File refresh: last update of this file specifically.
```

```yaml
rule_method_vers_required: NORMATIVE since v0.70.0. `method-vers` is MANDATORY in
    every contract-surface header block, and it is the field a reader obeys: a
    Matrix declaring 0.69.0 must be read as 0.69.0, whatever skill version is
    loaded (see draft-concept/MIGRATION.md `reader_duty`). a Matrix that declares
    no method version cannot be read correctly and cannot be migrated, because
    nothing states what it would be migrated FROM.
    an audit of six live Matrices on 2026-09-07 found five declaring none. that
    is why this is stated as a rule rather than left to the template.
```


```yaml
rule_no_derived_values: NORMATIVE since v0.72.0. a header block carries
    identity and method keys only. a value restating the body - a count, a
    list, a gate, a mean of percentages - is not written: a reader derives it.
    authored figures live in blocks (BLOCK-FORMAT.md), e.g. the STATE
    percentages in the state block. a derived value no reader computes yet
    stays, recorded in PENDING as owed.
```
