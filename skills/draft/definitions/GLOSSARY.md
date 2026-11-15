# GLOSSARY - DRAFT core vocabulary

```yaml
DRAFT:      the method. one, invariant, versioned in its own right. never possessed.
Matrix:     one instance of DRAFT bound to one System Version. materialised by .draft/.
System:     the tracked object, any domain. synonym in DRAFT prose "a Version".
substrate:  what the System is made of. code, build, process, organisation.
mutation:   Matrix under revision, constant method. opened by a change at any
            dimension, closed when all 5 are re-synced. a state, not an event.
            the version bump is its outcome.
migration:  Matrix moving between DRAFT method versions. the System may not change.
grammar-test: phrase takes a possessive or complement -> "Matrix". else -> "DRAFT".
block:      one structured body, table or fenced yaml, named by the heading
            above it. file-models/BLOCK-FORMAT.md
transition: a passage into a dimension, named by its verb. ? -> D0 Discover,
            D0 -> D1 Register ... D3 -> D4 Track, D4 -> next Version or fork
            Ascend. "?" is the world outside the System.
tool:       an instrument that could be substituted, carrying one transition,
            or an intake from outside the System into D0 (PROBE). FRAME,
            FMBOA, BIOPGE, SIMULATE, AUDIT, STRESS-TEST... see
            DRAFT_tools/CATALOGUE.md. names the file it produced, if any.
grain:      the description grain G0-G6 a tool reads and writes. skill `grain`.
anchor:     the grain where a dimension's authoritative artefact lives.
            D1 G3, D2 G4, D3 G5-G6, D4 G6. D0 has none.
dimension:  a view of the System (beacon). never holds a tool's rules.
role:       a fixed surface of the method with no alternative, passport,
            state, pending, the D0/D3/D4 journals.
body shape: table or yaml, chosen by the data, never by taste.
sigle:      the document kind a dimension file carries, SRS at D1, SLB at D2.
            the file is <SIGLE>-<TOOL>.md.
```
