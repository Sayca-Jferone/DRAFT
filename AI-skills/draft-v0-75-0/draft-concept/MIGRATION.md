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
  8_panel_layout:   REPO-LAYOUT admits PANEL.html and panel/. withdrawn
                    in 0.73.0 with the Panel itself: delete both
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

## Delta 0.72.0 -> 0.73.0

```yaml
nature: file format and naming. a block body may now be a fenced yaml mapping
        instead of a Markdown table, chosen by the shape of the data.
        dimension semantics unchanged. no entry, block or figure is touched.
origin: applied on the tree_nity Matrix by the author, 2026-09-20, then
        normalised back into the method. measured on that Matrix:
        PASSPORT.md 2144 -> 907 bytes, STATE.md 3887 -> 3086.
changes:
  1_body_shape:     BLOCK-FORMAT.md `Body shape`. yaml for flat key to value,
                    vertical table for one entity with a fixed field list,
                    horizontal table for a record set. the rule is the data,
                    never taste
  2_type_casing:    UPPERCASE marker type = a TOOL that could be substituted,
                    FMBOA, BIOPGE, TOPOS. lowercase = a ROLE of the method
                    with no alternative, passport, state, pending, index,
                    sources, annex
  3_dimension_files: <SIGLE>-<TOOL>.md. CONDITION.md -> RSD-FMBOA.md,
                    CONCEPTION.md -> SLB-BIOPGE.md. the title develops the
                    sigle. REPO-LAYOUT rule_dimension_file_naming. D1 and D2
                    only: D0, D3, D4 journals keep their names.
  9_header_marker:  the header block marker is <!-- DRAFT:<role> -->, its
                    keys one per line, yaml. the pre-0.72 form
                    <!-- DRAFT-<FILE> v<X.Y.Z> is retired. HEADER.md
  4_generic_titles: "# SYSTEM PASSPORT", "# SYSTEM STATE". the System name
                    lives in the body, so a title never drifts from the facts
  5_header_optional: HEADER.md rule_header_conditional. a file whose yaml
                    body names the System and the method version drops the
                    header. a record-set file keeps it
  6_biopge_header:  the first column of a BIOPGE table is named BIOPGE, not
                    Field. Tagline row renamed Tag
  7_state_sections: RESERVES, PROPAGATION, SESSIONS as typed state blocks.
                    not-verified becomes normative: name what the figure does
                    not prove
  8_chaptering:     <details> for navigation inside a long dimension file, and
                    an index block of ID ranges at its head
  10_no_reader:     the DRAFT Panel is abandoned, PANEL.html and panel/ leave
                    REPO-LAYOUT. the human-facing form of D1 and D2 is one
                    rendered PDF each, a projection for presentation.
                    BLOCK-FORMAT `presentation`
procedure:
  1. keep the source: git tag draft-0-72-0, or a sibling folder.
  2. rename the dimension files and their titles (change 3). fix every
     reference to the old names across the Matrix, PENDING included.
  3. convert only the bodies whose data is flat key to value (change 1).
     a horizontal table is ALREADY the dense form: converting it multiplies
     its line count by its column count. leave it.
  4. case the marker types (change 2). rename the BIOPGE header column and
     the Tagline row (change 6).
  5. drop a header block only where the body identifies the file on its own
     (change 5). when in doubt, keep it.
  6. verify: every yaml body parses, no tab in indentation, every inline
     sequence bracketed. entry counts unchanged before and after. zero
     orphan @ reference. coverage recomputed, never recopied.
  7. bump method-vers to 0.73.0 wherever a header block survives.
gotchas:
  tabs:      a tab in yaml indentation is invisible in an editor and fatal to
             a parser. the failure looks like nothing at all
  bare_list: `a, b` parses as one string, not a sequence. bracket it
  key_space: a key carrying a space does not survive a yaml reader
  meta_loss: deleting a meta block because it reads poorly loses the audit
             trail with it. collapse it into a closed <details> instead
```

## Delta 0.73.0 -> 0.73.1

```yaml
nature: additive and optional. nothing is renamed, no entry, block or figure is
        touched. a Matrix declaring 0.73.0 stays conformant and is read as 0.73.0.
origin: the tree_nity Matrix, 2026-10-29, after the project moved from C++ to Go.
changes:
  1_layout_variants: REPO-LAYOUT `layout_variants`. a flat .draft/ is admitted
                     (DEV-PASSPORT, SYS-SPECS, SYS-LOGIC) and a dimension file is
                     identified by its header marker, not its path. HARD_RULE 11
                     now bans only the bare dimension name.
  2_tracker:         STATE.md `Tracker instead of STATE.md`, PENDING.md `Optional`.
                     a tracker may replace both. PASSPORT key Dev-tracker.
  3_evidence:        D3 audit mode. verdicts tagged run or read, suspected
                     failures probed, the not-run list reported.
  4_substrate:       PROPAGATION `substrate_replaced`. a change of language.
to_migrate: nothing. a Matrix opts in per change and sets DRAFT-version to 0.73.1,
            DRAFT-created-with keeping the version that wrote it.
```

## Delta 0.73.1 -> 0.74.0

```yaml
nature: breaking. layout, naming and file format. what each dimension IS
        does not change; where the rules of each tool live does.
origin: author session 2026-11-15. no DRAFT parser will ever exist: a Matrix
        is read by a human or an LLM. DRAFT becomes an environment of tools
        and methods, one Pentaspace, and carries no Matrix of its own.
changes:
  1_markers_out:    every <!-- DRAFT:... --> line removed, block and header
                    markers alike. a block is named by its heading or its
                    <details> summary. the header is the one-row table. a
                    dimension file is identified by its header table.
                    round-trip, block_version, x/y keys, legacy read-only
                    rule, owed derived values: parser contracts, removed
  2_sigle_srs:      D1 sigle RSD -> SRS. RSD-FMBOA.md -> SRS-FMBOA.md, title
                    "# SRS-FMBOA : System Requirements and Specifications"
  3_d3_d4_renamed:  Incarnation -> Fabrication, Experience -> Consumption.
                    folders D3-fabrication/, D4-consumption/. verbs unchanged,
                    so the acronym stays DRAFT
  4_tools_on_transitions: a tool carries a transition between two dimensions,
                    a dimension is a view. tool rules leave dimensions/ for
                    DRAFT_tools/ (FMBOA, BIOPGE, SIMULATE, AUDIT, STRESS-TEST).
                    CATALOGUE.md maps every tool on dimension x GRAIN
  5_fmboa_light:    Default D1 tool = FMBOA light (SRS-FMBOA.template.md).
                    the former model is FMBOA extended. Dev/Test columns are
                    authored observations. any-corpus-to-draft becomes FMBOA
                    step 0
  6_grain_focal:    skill grain (GER) is the grain axis of every tool.
                    sub-skill system-topo leaves DRAFT for grain
                    references/topology.md, renamed GRAIN schema
  7_simulate_in:    skill simulate-contract -> DRAFT_tools/SIMULATE.md
  8_stress_test:    STRESS-TEST (D3 -> D4) added, domain-agnostic. skill
                    stress-gate is its software instance
  12_frame:         FRAME (D0 -> D1, ? -> G0-G1) heads every D1 file. the
                    light template gains "> DRAFT :", "> Purpose :",
                    "> Silhouette :". an existing Matrix writes its FRAME at
                    its next D1 amendment
  13_probe_ascension: PROBE (reality -> D0, G6) and VERSION ASCENSION
                    (D4 -> D0, G6 -> G0, first definition) added
  14_grain_ceiling: HARD_RULE 11 states once what D1, D2, D3 disciplines
                    said three times: no grain finer than the anchor
  15_verbs_are_entries: each DRAFT verb names the transition INTO its
                    dimension (Discover ? -> D0 ... Track D3 -> D4). a sixth
                    verb, Ascend, leaves D4 for the next Version or a fork.
                    CATALOGUE map follows the author's GRAIN x DRAFT table
  9_hard_rules:     rewritten and renumbered, then rule 11 added (item 14). PROPAGATION is now
                    rule 8. QR question cap moved into FMBOA process, body
                    shape rule left to BLOCK-FORMAT. new rule 9: no tool rule
                    inside a dimension file
  10_names_generic: GRAIN schema files SCHEMA.md / SCHEMA.excalidraw in
                    extensions/grain/, first column GRAIN (was TOPOS).
                    biopge_leak -> contract_leak, AUDIT checks the fields of
                    whichever D2 tool is in use. LICENSE and README.md leave
                    .draft/: method documentation lives in the DRAFT repo
  11_imposed_limit: FMBOA step 0 routes an imposed technical limit to an F
                    row, never to D3
procedure:
  1. keep the source: git tag draft-0-73-1, or a sibling folder.
  2. delete every line matching <!-- DRAFT ... -->, single or multi-line.
     where a marker named a block with no heading, add the heading first. keys
     a multi-line header marker carried beyond the header table
     (method-config, scope) move to PASSPORT or a Scope column.
  3. rename RSD-FMBOA.md -> SRS-FMBOA.md and retitle.
  4. git mv dimensions/D3-incarnation -> D3-fabrication, D4-experience ->
     D4-consumption. never copy.
  5. sweep every reference to the old names and to HARD_RULE numbers, header
     Dimension cells included. grep the whole repository.
  6. set the DRAFT v. cell and PASSPORT DRAFT-version to 0.74.0.
  7. verify: zero hits for "<!-- DRAFT", "RSD-", "incarnation", "experience"
     as folder names. entry counts unchanged before and after.
not_in_this_delta: FMBOA categories, BIOPGE fields, PROPAGATION tables,
                   SUB-SYSTEMS, the D0/D4 external rule. transported verbatim.
```

## Delta 0.74.0 -> 0.75.0

```yaml
nature: minor. D1 only: the FMBOA tool. no dimension, no other tool, no
        file name moves. light and extended merge into one form.
origin: author session 2026-11-16, field-tested on two light Matrices.
changes:
  1_srs_ieee:       SRS expands to "System Requirements Specification", the
                    ISO/IEC/IEEE 29148 name (SyRS there). sigle and file name
                    unchanged
  2_single_form:    one FMBOA form for every size. core columns ID, STATE,
                    ITEM, Verify, Dev, Test, Source, in this order. optional
                    columns declared by the file, between Test and Source.
                    size switches features on (50: Normative / Decisions
                    split, 200: index block), never a variant
  3_ascii_states:   TODO, SET, WIP, OK, KO. not adaptable. SET is the former
                    extended "frozen, awaiting D2"
  4_no_cost_flag:   "!" column removed. fatal = category M, contested = an A
                    row cited in Source
  5_template_shape: HEADER.md table, FRAME quote lines, collapsed legend, one
                    <details> per category (O open), optional closing
                    Blockers : Decision owner section
procedure:
  1. keep the source: git tag draft-0-74-0, or a sibling folder.
  2. retitle the D1 file "# SRS-FMBOA : System Requirements Specification".
  3. replace quote-line headers by the HEADER.md table. keep FRAME lines.
  4. states: light glyphs -> OK, KO, WIP, TODO. extended glyphs: untouched
     -> TODO, frozen -> SET, in progress -> WIP, verified -> OK,
     blocked -> KO. light TODO rows already settled -> SET.
  5. extended tables: State -> STATE, Item -> ITEM, add Verify, Dev, Test
     after ITEM. every other column kept verbatim as optional, moved
     between Test and Source.
  6. "!" column: a fatal row outside M or F is reclassified or flagged as a
     new A row. a contested row cites its A id in Source. then drop the
     column.
  7. wrap each category table in <details>, summary = category description.
  8. set the DRAFT v. cell and PASSPORT DRAFT-version to 0.75.0.
  9. verify: entry counts unchanged before and after. zero "| ! |" header,
     zero non-ASCII state.
not_in_this_delta: FMBOA categories and process, BIOPGE, every other tool,
                   PROPAGATION, SUB-SYSTEMS, layout. transported verbatim.
```
