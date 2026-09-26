# DRAFT-FILES_HEADER

Before anything in markdown files of `.draft/` AND after the `#title` line and YAML
front matter.

Example taken from a `STATE.md`:

```markdown
# [file_name] # [system_name] v[system_version]

<!-- DRAFT-[file_name] v[DRAFT-method-vers]
system-name: [name]
system-vers: [X.Y.Z]
method-name: DRAFT
method-vers: [X.Y.Z]
updated: [YYYY-MM-DD]
-->

| Dimension | System | Version | Method | Author | File refresh |
|-----------|--------|---------|--------|--------|--------------|
| `[D#] : [name]` | `[system]` | `[X.Y]` | `[X.Y.Z]` | `[author]` | [YYYY-MM-DD] |

---
```

```yaml
Dimension: "D0 : Emergence" .. "D4 : Experience". one face, not the Matrix.
Version:   the SYSTEM version, X.Y. equals PASSPORT System-version.
Method:    the DRAFT version this file is written under, X.Y.Z.
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
