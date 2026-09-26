# MIGRATION between DRAFT versions

```yaml
nature: judgement task. no algorithm produces it.
additive: the source Matrix stays readable beside the new one: a sibling
          folder .draft-<old-version>/, or a git tag draft-<old-version> on
          the source's last commit (lighter, verifiable with
          git diff <tag> -- .draft/). delete or untag the source only once
          the migration is trusted. what is overwritten and untagged can no
          longer be verified.
reported: emit a report classifying every item as transported (identical),
          transformed (show old and new), abandoned (state the reason), or created
          (required by the new version). the human verifies the report, not the Matrix.
real_risk: silent loss, not mistranslation. a dropped A-XX or O-XX vanishes in a large
           diff. mistranslation is visible, omission is not.
delta_discipline: apply what the version delta implies, transport everything else
                  verbatim. do not reinterpret the Matrix at large. NEVER resolve an
                  ambiguity the source left open.
conformity: a Matrix is conformant to the version it declares in `maintained-with`,
            for as long as it declares it. it never expires. a newer DRAFT never
            invalidates it retroactively. migration is NEVER obligatory.
reader_duty: a Matrix declaring maintained-with X.Y.Z must be READ as X.Y.Z. applying
             newer rules to an older Matrix makes the READER the fault, not the Matrix.
             load the skill matching the declared version, not the latest one.
```

## Delta 0.69.0 -> 0.70.0

```yaml
nature: layout only. no dimension semantics changed, no field added to any file
        model, no D-file content touched. a 0.69.0 Matrix is still readable as
        0.69.0 forever - see `conformity` above. migrating buys consistency
        across Matrices, never correctness.

changes:
  1_dimension_folder_prefix:
      was:  dimensions/{0-emergence, 1-condition, ...}
      now:  dimensions/{D0-emergence, D1-condition, ...}
      why:  three naming conventions were found live across six Matrices in one
            audit - `0-`, `D0-`, and `0-discovery`. a bare digit reads as an
            arbitrary ordinal, and no tool could locate a dimension reliably.
      cost: one rename per folder, plus every reference to the old path.
            THE REFERENCES ARE THE WORK, not the rename. an audit on 2026-09-07
            found 16 dead references surviving a folder rename done earlier,
            five of them SPDX-FileName fields.
  2_subject_artifact_position:
      was:  undocumented. the same need was met twice under two names -
            `dimensions/<Subject>.pdf` and `polydimensional/`.
      now:  rule_subject_artifact. root of dimensions/, named and versioned with
            the System.
      why:  a source feeding D0 through D4 belongs to no single dimension.
  3_method_version_declaration:
      was:  `method-vers` present in the header model but absent from most
            Matrices in practice.
      now:  REQUIRED in every contract-surface header block. a Matrix that does
            not declare its method version cannot be migrated, because nothing
            says what it is being migrated FROM.

procedure:
  1. read the Matrix's declared method-vers. absent -> stop, establish it first.
  2. git mv each dimension folder. never copy: a copy leaves two live trees, and
     a relocation executed as a copy is the defect class that produced one
     obligation under two binding IDs in the Inception Matrix (PENDING P-11).
  3. sweep EVERY reference to the old paths, SPDX-FileName fields included.
     grep the whole repository, not only .draft/.
  4. move the subject-level artifact to the root of dimensions/, if one exists.
  5. bump method-vers to 0.70.0 in every header block.
  6. verify: zero hits for the old folder names anywhere in the repository.
  7. emit the report `reported` above requires.

not_in_this_delta: dimension semantics, FMBOA, BIOPGE, PROPAGATION, the file
                   models themselves, and the D0/D4 external-dimension rule.
                   all transported verbatim.
```

## Delta 0.70.0 -> 0.71.0

```yaml
nature: nomenclature only. no file model, no dimension semantics changed.
changes:
  1_d4_verb:
      was:  D4 verb "Terrain"
      now:  D4 verb "Track"
      why:  the acronym's letters carried four verbs and one noun, the noun a
            French word used in English. Track is a verb, and already the
            verb of the method's guaranty.
  2_tutorial_out:
      was:  the method's full reference could live inside one System's .draft/
      now:  method documentation lives in the DRAFT repository only
      why:  a method reference inside one Matrix diverges from the method's
            single source of truth.
procedure:
  1. rename D4's verb wherever the Matrix spells it (STATE.md heading).
  2. move method documentation out of .draft/, record where in NOTICE.
  3. bump method-vers to 0.71.0 in every header block.
reconstructed: 2026-09-10 from commit f80cb1a of the Inception Matrix. no
               0.71.0 skill was ever written; this delta is its only record.
```

## Delta 0.71.0 -> 0.72.0

```yaml
nature: file format. every structured table becomes a block a tool reads and
        writes without touching prose. dimension semantics unchanged.
changes:
  1_block_format:   file-models/BLOCK-FORMAT.md. marker line + Markdown table
  2_fmboa_columns:  ID, !, State mandatory. "#" and "St" renamed. bold IDs
                    unbolded. Label, D2, D3 dashboard columns dropped, derived
  3_biopge_rows:    "> Covers :" line -> Covers row. "; delivers X" ->
                    Delivers row. quoted tagline -> Tagline row. bold field
                    names unbolded. @id / @id? allowed in Inputs and Outputs
  4_topos_rows:     YAML blocks -> vertical topos tables. FLUX
                    "--( x )--> T2" -> "x -> T2". Projects row carries L2
  5_no_derived:     counts, exception lists, coverage, gate and overall are
                    never written (HEADER.md rule_no_derived_values)
  6_state_block:    D1-D3 percentages leave the header for one state block
  7_passport_block: the [DRAFT] quoted fields become one passport block.
                    System-stack added, optional
  8_panel_layout:   REPO-LAYOUT admits PANEL.html and panel/
procedure:
  1. keep the source: git tag draft-<old-version>, or a sibling folder.
  2. convert every structured table (changes 2-4, 6, 7). normalise each row
     to the canonical form, so a reader round-trips it byte for byte.
  3. remove the derived values a reader computes. one it does not compute
     yet stays, recorded in PENDING as owed.
  4. a note written as a derived list: keep its reasoning, move dated history
     to the dimension's audit log, drop only the counts. never delete a
     sentence unread.
  5. bump method-vers to 0.72.0 in every header block.
  6. verify: every block parses with zero diagnostics and round-trips exactly.
  7. emit the report. references (@) and new authored fields are PROPOSED in
     the report, applied only once the author validates them: content, not
     format.
```
