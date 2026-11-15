# FMBOA - D0 -> D1

Turns raw material into numbered, sourced, classified rules. Two variants
share one core: **light** (default, `SRS-FMBOA.template.md`, copied as-is) and
**extended** (below, for large or contested subjects).

## Core

```yaml
output: SRS-FMBOA.md, in D1 (REPO-LAYOUT)
grain:  ? -> G3. input is D0, whose grain is not ruled (skill grain USE 3).
        light and extended differ in volume and traceability, not in grain
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

## Light

```yaml
form:    DRAFT_tools/SRS-FMBOA.template.md, copied as-is
columns: ID, STATE, ITEM, Verify, Dev, Test, Source
states:  ✅ confirmed, 📛 bad results, 🟠 in progress, ⚫ not started
Dev_Test: authored per-entry observations of the build and the test, not
          derived values. written by whoever built or tested the entry
header:  the quote lines stand for the HEADER.md table (System, Version,
         Authors, DRAFT) and carry FRAME (Purpose, Silhouette)
to_extended: state mapping when a light file outgrows its form.
         ⚫ -> ⚫, 🟠 -> 🟡, ✅ -> 🟢, 📛 -> 🔴. 🔵 (settled, awaiting D2) has
         no light equivalent: light ⚫ rows already decided become 🔵
```

## Extended

```yaml
columns:
  ID:     mandatory
  "!":    mandatory, may be empty. 💀 fatal, ⚔️ contested at review
  State:  mandatory. per entry, never per dimension
  Source: recognised when present. origin: page, section, or derivation.
          links the entry to D0
  other:  free per category (Item, Decision, Reasoning...). kept verbatim
state_markers:   # glyphs adaptable, distinctions are not
  untouched:   ⚫ not yet examined        -> needs attention
  frozen:      🔵 settled, awaiting D2    -> nominal
  in_progress: 🟡 D2 or D3 started        -> needs attention
  verified:    🟢 built AND verified      -> nominal
  blocked:     🔴 blocked or failing      -> needs attention
derived_rule: exception lists, counts, D2/D3 coverage are derived, so never
              written. a stored projection drifts.
forbidden: deriving a dimension percentage by counting markers. a dimension
           figure stays authored.
```

```markdown
## M : Mandatory

| ID | ! | State | Item | Source |
|---|---|---|---|---|
| M1 | 💀 | 🔵 | Full text of the requirement. | p. 7 |
```

```yaml
past_50_entries: split in two, collapse both. Normative (full text) and
       Decisions (reasoning behind O and A)
past_200_entries: an index block of ID ranges at the head, so a reader
       addresses a theme by range. measured on tree_nity: a targeted range
       read cost 841 bytes against 47137 for the file
chaptering: <details> around the index, the legend, the entry tables and the
       audit. navigation without scrolling, nothing hidden from a grep
annex: optional traceability annex for statements that bind work but are
       neither M nor B (recommendations, mechanical consequences). every entry
       names the FMBOA item it binds, and carries no authority of its own,
       else it has become a sixth category. promoting an entry into M or O is
       a D1 amendment -> PROPAGATION
```
