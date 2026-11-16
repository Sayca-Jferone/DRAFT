# FMBOA - D0 -> D1

Turns raw material into numbered, sourced, classified rules. One form, from
the smallest System to the largest: `SRS-FMBOA.template.md`, copied as-is. Size
switches features on, never a variant (since 0.75.0, light and extended merged).

## Core

```yaml
output: SRS-FMBOA.md, in D1 (REPO-LAYOUT)
grain:  ? -> G3. input is D0, whose grain is not ruled (skill grain USE 3).
        size changes volume and traceability, never grain
categories:
  F: Formats     # language, version, norms, constraints, deliverables, repo structure, CLI
  M: Mandatory   # explicitly required. System invalid without them
  B: Beyond      # optional, bonus. state targeted / skipped + rationale
  O: Open Points # left to the developer. decision + rationale mandatory
  A: Ambiguities # grey areas between F/M/B/O. resolve via QR, or mark [ASSUMED] + rationale
process:
  F: FRAME first, if no purpose is written (DRAFT_tools/FRAME.md)
  0: split voices before classifying, when the source is noisy or mixed (see below)
  1: read subject in full, flag gaps and contradictions immediately
  2: extract every requirement, explicit and implicit. one row = one requirement.
     each row serves >= 1 FRAME claim
  3: classify into exactly one category
  4: surface hidden assumptions
  5: run QR on any open question able to invalidate D2 downstream. max 3
     consecutive questions per QR
  6: build an ambiguity resolution trace if A count > 10
  7: verify no remaining ambiguity can break the architecture
ID: [A-Z][0-9]+, category letter first, no bold
audit_clause: an artifact injected at D0 is hypothetical. its audit IS the D1
              classification.
```

### Step 0 - voice split (noisy corpus)

One paragraph of a real brief can carry a D1 constraint, a D2 requirement and a
D3 tech limit at once. Classifying raw freezes a tech name into the contract.

| Voice | Question it answers | Goes to |
|---|---|---|
| Contextual constraint | what frame must this sit in | D1 |
| Result requirement | what must be true of the outcome | D2 candidate, behavior only, no tech name |
| Imposed technical limit | what substrate am I forced onto | D1 F row. never inside a D2 contract |
| Contradictory or unclear | - | flagged as A, never forced into a voice |

```yaml
rules:
  - item by item, never by section heading. sections mix voices
  - a D2 candidate naming a language or library: strip the name, keep the
    behavior, route the name to an F row. a limit chosen rather than imposed
    is not a rule: it waits for D3
  - two items disagreeing: flag both, never pick a winner
  - D4 material in the source (beta feedback): flag and leave aside
output: three candidate lists (D1, D2, D3) + contradictions. then steps 1-7
```

## Form

```yaml
form:    DRAFT_tools/SRS-FMBOA.template.md, copied as-is. ASCII only
header:  the HEADER.md table, then FRAME quote lines (Purpose, Silhouette)
sections: one <details> per category, its summary carries the category
         description. O stays open, legend collapsed. nothing hidden from a grep
columns:
  core:     ID, STATE, ITEM, Verify, Dev, Test, Source. always, in this order,
            in every category table
  ID:       [A-Z][0-9]+, category letter first
  STATE:    per entry, never per dimension
  ITEM:     full text, never truncated: no second copy holds it
  Verify:   how the entry is proven (test, review, answer awaited for O and A)
  Dev_Test: authored per-entry observations of the build and the test, not
            derived values. written by whoever built or tested the entry.
            may stay empty on O and A rows
  Source:   origin: page, section, or derivation. links the entry to D0
  optional: declared by the file, kept verbatim by a reader, inserted between
            Test and Source, never reordering the core (Decision, Reasoning,
            Kind, Pts, Path, Provenance...)
no_cost_flag: no "!" column. fatal is what M means: a non-fatal M row is a
            misfiled B. contested is what A means: the contested row cites
            its A id in Source
states:    # the five distinctions are not adaptable
  TODO: not started, not yet examined   -> needs attention
  SET:  settled in D1, awaiting D2      -> nominal
  WIP:  in progress, D2 or D3 started   -> needs attention
  OK:   built AND verified              -> nominal
  KO:   bad results, blocked or failing -> needs attention
blockers:  optional last section. one row per open O or A, what it blocks,
           who decides, by when. order = decision order
derived_rule: exception lists, counts, D2/D3 coverage are derived, so never
              written. a stored projection drifts.
forbidden: deriving a dimension percentage by counting markers. a dimension
           figure stays authored.
```

```markdown
## M : Mandatory

<details><summary>Necessary features</summary>

| ID | STATE | ITEM | Verify | Dev | Test | Source |
|----|-------|------|--------|-----|------|--------|
| M1 | SET | Full text of the requirement. | test name | TODO | TODO | p. 7 |

</details>
```

```yaml
size_features:   # thresholds switch features on, the form stays one
  past_50_entries: split in two, collapse both. Normative (full text) and
         Decisions (reasoning behind O and A)
  past_200_entries: an index block of ID ranges at the head, so a reader
         addresses a theme by range. measured on tree_nity: a targeted range
         read cost 841 bytes against 47137 for the file
annex: optional traceability annex for statements that bind work but are
       neither M nor B (recommendations, mechanical consequences). every entry
       names the FMBOA item it binds, and carries no authority of its own,
       else it has become a sixth category. promoting an entry into M or O is
       a D1 amendment -> PROPAGATION
from_0_74: states: OK, KO, WIP, TODO kept; light glyphs and extended glyphs
       map to them, extended "frozen" becomes SET. light file: TODO rows
       already settled become SET. extended file: State -> STATE,
       Item -> ITEM, add Verify, Dev, Test, keep every other column as
       optional. "!" column dropped: a fatal row not in M or F is
       reclassified or flagged as A, a contested row cites its A in Source.
       entry count unchanged (MIGRATION 0.74.0 -> 0.75.0)
```
