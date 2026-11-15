---
name: grain
description: Description grain G0-G6 of one System. Use to answer at the right grain ("zoom", "explique vite"), make a corpus readable ("rendre digeste"), or place DRAFT tools.
license: Apache-2.0
metadata:
  grain-version: "1.2.0"
---

# GRAIN

Axis of description grain for ONE System. Question answered: "at which
grain is this said, and is the grain below able to back it?"

## SCALE

Each rung is complete on its own and wrong in its own way: descending adds
mechanism and removes meaning. A rung merely shorter than the one below is a
summary, not a rung.

| G | Name | Says | Sacrifices | Anchor | Size | Test question |
|---|---|---|---|---|---|---|
| G0 | Analogy | what it is FOR, where the analogy breaks | all mechanism | none | 3 lines | can a newcomer say what it is for |
| G1 | Silhouette | actors, in/out, main flow, top blocks | internal names | none | 1 screen | who uses it, what goes in/out |
| G2 | Topology | masses, INTENT, OWNS, NOT, named FLUX | types, order | GRAIN schema | 3-12 blocks | what each block refuses to do |
| G3 | Requirement | what must hold | how | FMBOA / D1 | per entry | what makes it wrong |
| G4 | Contract | types, guaranties, errors | meaning, intent | BIOPGE / D2 | per block | can they write a test from it |
| G5 | Substrate | files, structure, wiring | the why | code or matter / D3 | per unit | where does G4 live |
| G6 | Execution | output, trace, measure | generality | D3 run, D4 | per run | can they reproduce it |

## RULES

1. Self-standing: each G is readable alone. A G is a projection, not a draft of the next.
2. Authority rises as grain descends. Conflict G(n) vs G(n+1) => G(n+1) wins, G(n) is fixed. G6 is the floor of truth.
3. Descent check: every claim at G(n) maps to >= 1 element at G(n+1). No match => decoration, delete or find its base.
4. Ascent check: every element at G(n+1) serves a claim at G(n). No match => orphan, record as finding.
5. Understanding the vaguer rung requires being able to enter the one below. A G0 the author cannot descend from is a slogan.
6. No silent skip. A reading may select rungs, but each rung not written is declared: "G<n>: backed by <source>" or "G<n>: empty, <reason>".
7. No half-steps. Finer detail inside a rung is more text at that rung. A needed in-between is a finding: a missing rung.
8. One grain per paragraph, one tag per block. Never mix.
9. One subject per descent. A rung that changes subject (problem -> method -> solution) is a cliff. The derivation ("how do you know") is a second descent, never interleaved.

## RULINGS (validated 2026-11-15)

| Id | Case | Ruling |
|---|---|---|
| R1 | standalone or GER instrument | Standalone. GER consumes it as its zoom-step format. An axis of one System serves several consumers |
| R2 | G3-G5 redundant with D1-D3 | No. D = production protocol, G = grain of a description. The anchor says where the authority lives |
| R3 | outside software | Applicable. G5 = whatever realises the contract, G6 = the operation observed. Rename the noun, keep the order |
| R4 | half-steps | Refused, rule 7 |
| R5 | versioning | `grain-version` semver. Rung added/removed/reordered = major. Wording/form/procedure = minor. Typo = patch. A doc citing GRAIN declares its version |

## USES

| Use | When | Where |
|---|---|---|
| 1 Discussion | answering at the right grain | below |
| 2 Doc standard | README, 42 subject, repo System | below |
| 3 DRAFT traversal | checking artefacts across D0-D4 | below |
| 4 Reader ladder | handing a dense corpus to someone who was not there | `references/ladder.md` |
| 5 GRAIN schema | composing G2 masses before contracts, DRAFT D1 -> D2 | `references/topology.md` |

### USE 1 - Discussion

1. Read the question's grain. Default G1 if unstated.
2. Answer at that grain only. Tag `[G<n>]`. Offer the next rung in one line, never pre-expand.
3. Question at G(n), reply at G(m): level confusion, restate at G(n).
4. "Explique vite" => G0 then G1. "Zoom" => next rung down. "Remonte" => rung up, rule 5 applies.

### USE 2 - Doc standard

```
page order = grain order, top is the fastest read
  G0  what it is for, metaphor, limit       (reader stops here if enough)
  G1  silhouette: picture or 5 lines
  G2  topology: block table, NOT per block
  G3..G6  links or sections, one per rung, never merged
```

- Top of page is G0, never an install command or a file tree.
- Each section ends with "backed at G(n+1): <where>".
- 42 subject: G0 what it teaches, G1 what is asked and graded, G2 solution blocks, G3 checked invariants, G4 function contracts, G5 code, G6 tests and runs.

### USE 3 - DRAFT traversal

GRAIN is the focal of DRAFT tools: G span per tool in DRAFT `DRAFT_tools/CATALOGUE.md`.
Ceiling per dimension: D0 not ruled (never interpolate), D1 G3, D2 G4, D3 G5 (runs G6), D4 G6.

1. Place each artefact at its G. Gaps = rungs with no artefact.
2. Descent check from G0 down, ascent check from G6 up.
3. Each gap: write it, or "empty, reason". Each conflict: fix the upper rung.
4. Output `G | artefact | present | descent | ascent | finding`. `N/A` with a reason, never blank.

## RELATIONS

| Store | Relation |
|---|---|
| abstraction-scale (not bundled) | different axis: positions Systems, Objects, Actions against each other. GRAIN describes one. Do not merge |
| compaction-semantique (not bundled) | inverse of USE 4: compacts for a reader who was there |
| draft (skill) | D0-D4 is the work sequence, G the description grain. GRAIN schema is a DRAFT tool, defined here |

## ANTI-GOALS

- Not a work protocol. Sequences nothing, closes nothing.
- Not a rewrite engine: a G is a projection under rule 2, never a new source.
- Does not invent a missing rung from memory: reads the lower rung first.
