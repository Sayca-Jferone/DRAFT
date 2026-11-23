# Repo layout - the .draft/ contract surface

```yaml
contract_surface: .draft/          # flat since v0.75.1, one level deep
.draft/:
  PASSPORT.md:      static identity, true for the whole Version
  STATE.md:         living dashboard, 5-axis progression
  PENDING.md:       decided-but-not-done + open-and-owed-a-decision
  D0_IDEATION.md:   D0 journal, raw material
  D1_SRS-FMBOA.md:  D1, the rules
  D2_SLB-BIOPGE.md: D2, the contracts
  D3_DEVJOURNAL.md: D3 build journal
  D4_FEEDBACKS.md:  D4 journal, real use
  D<n>_<name>:      optional, 0..n per dimension. see rule_dimension_prefix
  sources/:         what the System is built FROM. see rule_subject_artifact
  extensions/:      open, unbounded. e.g. cognitions/, knowledge/, habits/

rule_flat: NORMATIVE since v0.75.1. no dimension folders: the five dimensions
    share the .draft/ root and are told apart by their prefix. one layout for
    every size of Matrix, no variant to declare.
    why: one folder per dimension doubled every path, hid the files one level
    down and cost a navigation step per read, for a separation the prefix
    already carries. sorted by name, the root lists each dimension as one
    run of files.

rule_dimension_prefix: a file or folder authored by a dimension starts with
    `D<n>_`, n in 0..4: D0_brainstorm-2026-11.md, D3_logs/, D3_lints/,
    D4_user-mails.md. the prefix is the dimension, never a rank. a dimension
    may hold a subfolder only under its prefix, and that subfolder is
    unconstrained inside. the dimension's own name (emergence, condition,
    conception, fabrication, consumption) lives in the header `Dimension`
    cell, never varies, and is not repeated in the file name.

rule_dimension_file_naming: NORMATIVE since v0.73.0. after the prefix, a
    tool-produced file is named `<SIGLE>-<TOOL>.md`, where TOOL is the
    instrument that produced it and SIGLE names the document kind. the title
    develops the sigle.
    scope: a file produced by a substitutable TOOL, today D1 and D2 only.
    a journal with no tool to name keeps its role name: IDEATION, DEVJOURNAL,
    FEEDBACKS. same split as GLOSSARY, tool against role.
    sigles: named after what the document is.
      D1: {sigle: SRS, file: D1_SRS-FMBOA.md, title: "# SRS-FMBOA : System Requirements Specification"}
      D2: {sigle: SLB, file: D2_SLB-BIOPGE.md, title: "# SLB-BIOPGE : System Logical Blueprint"}
    why: FMBOA and BIOPGE are the current principal tools at D1 and D2, not
    the only admissible ones. a file named D1_CONDITION.md states the
    dimension twice and hides which tool was used. a Matrix substituting
    another tool renames the file and stays readable, because the name
    carries the instrument rather than the dimension.

rule_subject_artifact: a SOURCE the System is built FROM - a subject PDF, a
    brief, a standard, a contract - sits in .draft/sources/, never under a
    dimension prefix. it feeds D0 comprehension, D1 extraction, D2 coverage,
    D3 conformity and the D4 defense alike, so filing it under one dimension
    makes four others cite across a boundary. name it for what it is and
    version it with the System: sources/Subject_v5-3.pdf,
    sources/Brief_v1-0.md. it is a source, never an output: nothing in
    sources/ is authored by the Matrix, and a file the Matrix writes belongs
    to the dimension that writes it.

rule_fixed_path: PASSPORT.md, STATE.md, PENDING.md and the five D<n>_ journals
    above are the fixed-path files. a file whose location must be learned
    from another file is not part of the contract. a .draft/ root entry is
    either a fixed-path file, a D<n>_ entry, sources/ or extensions/:
    nothing else.
rule_identity_by_header: since v0.73.1. a dimension file is identified by
    its header table, the `Dimension` and `Tool` cells (HEADER.md). the
    prefix locates it, the header proves it. a Matrix is read by an agent,
    not by a parser: a path that does not match this document is not an
    error while the header holds.
rule_tool_files_optional: STATE.md and PENDING.md follow STATE.md
    `tracker`: an external tracker replaces them. a Matrix with no D0 or D4
    journal yet omits it.
rule_visibility: .draft/ inherits the visibility of its repository. D0 and D4 are
    filled unfiltered, so least safe to publish. declare
    PASSPORT System-visibility BEFORE writing, never after.
rule_version_carrier: folder (v1/, v2/), git branch, or none for a single living
    Version. illustrative, not normative. pick one carrier, declare it
    in PASSPORT, never mix two in one repository.
rule_nesting: a .draft/ never contains another .draft/. child Systems sit in
    disjoint sibling subtrees.
```

## Earlier layouts

```yaml
before_0_75_1: canonical .draft/dimensions/D0-emergence/ .. D4-consumption/,
    sources at the root of dimensions/, and since 0.73.1 a flat variant
    (DEV-PASSPORT.md, SYS-SPECS.md, SYS-LOGIC.md). both retired.
reading_rule: a Matrix written under an earlier version is read with that
    version's REPO-LAYOUT, archived in AI-skills/. it is not migrated unless
    its owner reopens it: MIGRATION.md, delta 0.75.0 -> 0.75.1.
```
