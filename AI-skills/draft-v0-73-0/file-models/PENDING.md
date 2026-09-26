# PENDING.md

```yaml
role: open items at the contract surface.
title: "# SYSTEM PENDING DEV - generic, like PASSPORT and STATE"
sections:
  decided-but-not-done: decision taken, work not executed
  open-and-owed-a-decision: no decision yet, and one is owed
  owed-derived-values: a derived value no reader computes yet, per
                       BLOCK-FORMAT `derived values`
body: horizontal Markdown tables, and it stays that way.
```

## Why this file keeps a header block

Since v0.73.0 PASSPORT.md and STATE.md carry their identity inside a yaml
body, so their `<!-- DRAFT:... -->` header became redundant and was dropped.
PENDING.md did not follow, and the reason is not inconsistency.

```yaml
rule: a file drops its header block only when its BODY names the System and
      the method version. a body that cannot do so keeps the header.
pending_case: the body is three horizontal tables of open items. nothing in a
      row says which System it belongs to, nor under which method version it
      was written. strip the header and the file identifies nothing.
roles_of_the_header:
  parser:  no DRAFT parser exists in common use yet. the header is written
           ahead of one rather than retrofitted onto a corpus later
  reader:  a human in a text editor sees, on line 3, which System and which
           method version the rows belong to
  migration: HEADER.md rule_method_vers_required. a Matrix declaring no
           method version cannot be migrated, because nothing states what it
           would be migrated FROM
```

## Why the tables stay tables

```yaml
shape: N entities, identical columns, one row per entry. BLOCK-FORMAT
       `Body shape` calls this the horizontal case, and it is already the
       dense form.
cost_if_converted: a five-column row becomes six yaml lines. a thirty-row
       file becomes one hundred and eighty lines. the yaml shape compacts
       flat key-to-value data, never a record set.
ordering: rows are kept in ID order. an ID appended out of sequence reads as
       a later decision than it is.
closing: a resolved item is marked resolved in place, never deleted. the
       trail of what was closed, and by what, is the point of the file.
```

## Known weakness

```yaml
growth: the file grows by one row per decision and nothing prunes it. the
        contract surface is fixed in COUNT, not in bytes. watch it, and when
        it stops being cheap to read, say so rather than quietly reading less.
```
