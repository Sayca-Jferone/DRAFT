---
name: any-corpus-to-draft
description: Extract the Soul of a any Corpus (PDF, doc bundle, client asks, ...) into a fresh DRAFT Matrix for a system not yet drafted. Use when a source document is noisy, incomplete or contradictory and pre-fills multiple dimensions at once (D0 needs, D1 constraints, D2 requirements, D3 tech limits, D4 feedbacks... mixed together) instead of arriving as clean D0. Not for an already-drafted system (use draft-vX-XX-X directly).
---

# D0 polydimensional corpus extraction

Drafter for a system that has no Matrix yet: source document already mixes
several DRAFT voices. Job: split before classify, never classify raw.

## Why this exists

Normal DRAFT flow: D0 -> D1 -> D2 -> D3, sequential, each dimension corrected
by the one below it. A 42 subject (or any real-world brief) breaks that: one
paragraph can carry a D1 constraint, a D2 requirement and a D3 tech limit at
once, unmarked, sometimes contradictory. Feeding that straight into D1
FMBOA drafting inherits the contamination - a tech name (D3) gets frozen into
the contract (D2) by accident. This skill is the sas before the sas.

## The three voices

Every source item is exactly one of these. Tag before you file.

| Voice | Question it answers | Goes to |
|---|---|---|
| Pedagogical / contextual constraint | "what frame must this sit in" | D1 (FMBOA) |
| Result requirement | "what must be true/guaranteed of the outcome" | D2 (BIOPGE, behavior-level, no tech name) |
| Imposed technical limit | "what substrate am I forced onto" | D3 (only if it reshapes the contract, else stays D3-local) |

Reject a fourth bucket: "unclear/contradictory" items get flagged, not forced
into one of the three. Contradictions across the source are D1 material
(the retranslation the user already does by hand) - surface them, don't
resolve them silently.

## Procedure

1. **Ingest** the corpus (PDF, folder, brief). Read once for structure, not
   for classification yet.
2. **Item-by-item pass.** One sentence/requirement/constraint at a time.
   Tag with one voice from the table above. No batch-tagging by section
   heading - sections in these sources routinely mix voices.
3. **Tech-name check on every D2 candidate.** If the item names a
   language/library/framework and that name is not itself the graded
   constraint (42: sometimes the norm/language IS the point), strip the
   name, keep the behavior it was standing in for, route the name to D3.
4. **Contradiction flag.** Two items disagree or one is self-defeating ->
   mark both, do not silently pick a winner. Surface at end of pass for the
   user to arbitrate (that arbitration is real D1 authoring, not this
   skill's job).
5. **Emit three lists**, not a rewritten document: D1 candidates, D2
   candidates (behavior-only), D3 candidates. Plus a "contradictions /
   unclear" list.
6. **Handoff.** These lists are raw material for `draft-v0-72-0` - this
   skill does not write CONDITION.md or CONCEPTION.md itself. It stops at
   sorted candidates; drafting the actual FMBOA/BIOPGE blocks is the next
   skill's job, using this output as its D0.

## Scope boundary

- Source already a clean, single-voice D0 -> skip this, go straight to
  `draft-v0-72-0`.
- System already has a Matrix -> not this skill, use `draft-v0-72-0`
  directly (D3 audit or amendment).
- D4 material in the source (beta feedback) -> out of scope here, flag and
  leave aside.
