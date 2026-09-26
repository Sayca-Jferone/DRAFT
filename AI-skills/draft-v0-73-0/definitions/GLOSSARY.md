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
block:      one marker line then one body, table or fenced yaml. the only part
            of a Matrix a tool reads or rewrites. file-models/BLOCK-FORMAT.md
marker:     <!-- DRAFT:<type> key=value -->. its type names what the block is.
tool:       an instrument that could be substituted, FMBOA, BIOPGE, TOPOS.
            UPPERCASE in a marker, and the suffix of the file it produced.
role:       a fixed surface of the method with no alternative, passport,
            state, pending, condition, conception, ... lowercase in a marker.
body shape: table or yaml, chosen by the data, never by taste.
sigle:      the document kind a dimension file carries, SRS at D1, SDD at D2.
            the file is <SIGLE>-<TOOL>.md.
```
