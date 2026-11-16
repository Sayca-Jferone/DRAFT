# USE 4 - Reader ladder

Absorbed from skill epistemic-ladder, 2026-11-15. A dense corpus made
enterable by a human who was not there, without weakening it. Human descends,
machine ascends, same artefact. A ladder serving only the human is a summary,
and summaries rot.

```yaml
rungs: GRAIN rungs, selected. default G0 G1 G2 G4. every rung not written is
       declared (rule 6): "G3: backed by D1_SRS-FMBOA.md"
flow:  "how it circulates" is FLUX at G2, never a rung of its own (rule 7)
subject: one per ladder (rule 9). ladder A = the thing ("what am I building").
       ladder B = its derivation ("how do you know", "why this and not
       that"), optional. A alone must be enough to work from
```

## Mechanics

```yaml
one_rung_one_diagram: a rung needing three diagrams is three rungs, or the
       wrong grain
load_bearing: each rung from G2 down carries one sentence that, deleted, makes
       the rung decorative. written before the diagram.
       e.g. "the prisoner never acts, it only asks"
diagram: ASCII in a fenced block. readable by cat, grep, a diff, an agent with
       no renderer. mermaid only for temporal sequences where ASCII collapses
vocabulary: concrete nouns in the ladder (prisoner, warden, the wire), real
       identifiers in the source. correspondence obvious, never spelled out
last_rung: G4/G5 decays into a worksite. group coarsely, never enumerate
       units. each group gets a falsifiable "done when". point at the source
       for detail. decay that cannot be removed is reported, not sold
```

## Authority clause

Stated inside the produced file, near the top:

> This file carries no authority. It projects `[source]`. Where this file and
> the source disagree, the source is right and this file is a bug. Nothing here
> may be cited as a requirement.

## Placement

```yaml
never: inside the corpus it projects. adjacency grants normative status
DRAFT Matrix: .draft/extensions/ladder/SCALE.md. never at .draft/ root
              (REPO-LAYOUT rule_fixed_path), never under a D<n>_ prefix
otherwise: beside the corpus root
close_with: a routing table, what the reader wants -> which file holds it
```

## Procedure

1. Name the subject of ladder A in one line. Two subjects -> two ladders.
2. Pick the rungs, declare the others with their backing source.
3. G0/G1: one paragraph, no diagram, no jargon.
4. From G2: load-bearing sentence, one diagram, at most two paragraphs.
5. Re-read each rung: same subject as G0? A no is a cliff.
6. Ladder B only if the derivation is contestable and the reader may contest.
7. Authority clause and routing table.
8. Report the weakest rung by name. There is always one.

## Anti-goals

| Symptom | Means |
|---|---|
| source rewritten in friendlier words | a fork, not a ladder |
| rungs differing only in length | a summary |
| no diagram below G1 | nothing to hold |
| completeness at the last rung | audit belongs to the source |
| no authority clause | a rival truth |
