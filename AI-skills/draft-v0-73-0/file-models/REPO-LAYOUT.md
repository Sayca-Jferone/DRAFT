# Repo layout - the .draft/ contract surface

```yaml
contract_surface: .draft/          # only fixed-path files live at this root
.draft/:
  LICENSE:      method licence
  README.md:    DRAFT reference
  PASSPORT.md:  static identity, true for the whole Version
  STATE.md:     living dashboard, 5-axis progression
  PENDING.md:   decided-but-not-done + open-and-owed-a-decision
  dimensions/:  the five FOLDERS and only the five
    <subject-level artifact>    # optional, 0..n. see rule_subject_artifact
    D0-emergence/{IDEATION.md, ...}
    D1-condition/{RSD-FMBOA.md, ...}
    D2-conception/{SLB-BIOPGE.md, ...}
    D3-incarnation/{DEVJOURNAL.md, lints/, logs/, ...}
    D4-experience/{FEEDBACKS.md, ...}
  extensions/:  open, unbounded. e.g. cognitions/, knowledge/, habits/

rule_dimension_file_naming: NORMATIVE since v0.73.0. a dimension file is
    named `<SIGLE>-<TOOL>.md`, where TOOL is the instrument that produced it
    and SIGLE names the document kind. the title develops the sigle.
    scope: a file produced by a substitutable TOOL, today D1 and D2 only.
    a journal with no tool to name keeps its role name: IDEATION.md,
    DEVJOURNAL.md, FEEDBACKS.md. same split as BLOCK-FORMAT `Type casing`,
    tool against role.
    sigles: named after what the document is inside DRAFT, not after an
    outside standard whose template DRAFT does not follow.
      D1: {sigle: RSD, file: RSD-FMBOA.md, title: "# RSD-FMBOA : Requirements and Specifications Document"}
      D2: {sigle: SLB, file: SLB-BIOPGE.md, title: "# SLB-BIOPGE : System Logical Blueprint"}
    why: FMBOA and BIOPGE are the current principal tools at D1 and D2, not
    the only admissible ones. a file named CONDITION.md states the dimension
    twice, the folder already carrying it, and hides which tool was used. a
    Matrix substituting another tool renames the file and stays readable,
    because the name carries the instrument rather than the dimension.

rule_dimension_naming: the folder carries the D prefix - D0-emergence, not
                 0-emergence. NORMATIVE since v0.70.0. the prefix makes the folder
                 self-describing to a reader who does not know the method, and stops
                 a bare digit reading as an arbitrary ordinal. the SUFFIX is the
                 dimension's own name and never varies: emergence, condition,
                 conception, incarnation, experience. a Matrix naming D0 "discovery"
                 is non-conformant, however defensible the word.

rule_subject_artifact: a SOURCE the System is built FROM - a subject PDF, a brief, a
                 standard, a contract - sits at the ROOT of dimensions/, never inside
                 a dimension folder. it feeds D0 comprehension, D1 extraction, D2
                 coverage, D3 conformity and the D4 defense alike, so filing it under
                 one dimension makes four others cite across a boundary. this does
                 NOT breach "the five and only the five": that rule governs the
                 dimension FOLDERS, which stay five. name it for what it is and
                 version it with the System: Subject_v5-3.pdf, Brief_v1-0.md.
                 it is a source, never an output: nothing under dimensions/ root is
                 authored by the Matrix, and a file the Matrix writes belongs to the
                 dimension that writes it.

rule_fixed_path: a file whose location must be learned from another file is not
                 part of the contract. anything not fixed-path goes in a subfolder.
rule_visibility: .draft/ inherits the visibility of its repository. D0 and D4 are
                 filled unfiltered, so least safe to publish. declare
                 PASSPORT System-visibility BEFORE writing, never after.
rule_version_carrier: folder (v1/, v2/), git branch, or none for a single living
                 Version. illustrative, not normative. pick one carrier, declare it
                 in PASSPORT, never mix two in one repository.
rule_nesting: a .draft/ never contains another .draft/. child Systems sit in
              disjoint sibling subtrees.
```
