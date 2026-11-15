# SIMULATE - D2 -> D3, before AUDIT

Absorbed from skill simulate-contract, 2026-11-15. G4 -> G4: runs the contract,
not the substrate.

A specification is prose until something runs it. Reading a contract confirms
it is well formed; executing it is what shows two blocks claiming the same
action.

Scope: the model is thrown away. It is written to fail, not to ship.

## WHEN

```yaml
use:  a multi-block contract exists, blocks reference each other, and the
      source carries a reference output the contract claims to reproduce
skip: one block, or no cross-block reference. nothing to contradict
never: as a substitute for tests on real code. this runs the SPEC
```

## PROCESS

Four passes, in order. Later passes are worthless if an earlier one fails.

```yaml
1. edges      : rebuild the declared graph from each block's own Inputs and
                Outputs. report a target that does not exist
2. sequences  : walk each command's Process against a model of the
                environment built ONLY from stated requirements. reproduce
                the source's reference output
3. adversarial: for each error path, ask which block owns it and whether two
                blocks answer differently for the same trigger
4. end-to-end : run the full flow. the reference output must come out
                identical
```

Pass 3 is the one that pays. Passes 1, 2 and 4 confirm; pass 3 contradicts.

## WHAT PASS 3 ASKS

```yaml
ownership   : do two blocks both claim to emit the same action? a Boundary
              disclaiming what the Process then does is the signal
same_trigger: does one errno, one condition, one signal map to different
              outcomes in different blocks? if so, it is deliberate or it is
              a defect, and the contract must say which
precondition: does a step assume something no prior step guarantees?
platform    : does the stated behaviour require a flag the contract never
              names? a blocking call returning EINTR needs SA_RESTART cleared
```

## MODEL RULES

```yaml
build_from  : the requirement file only. never the substrate, never what an
              implementation happens to do
language    : whatever is fastest to throw away. not the target language
assertions  : the source's reference output, byte for byte where it exists
lifetime    : the scratchpad. it is never committed and never referenced again
```

Building the model from the substrate makes the simulation agree with the
code by construction, which is the failure this unit exists to avoid.

## OUTPUT

```yaml
defect     : a contradiction inside the contract -> amend the contract NOW,
             before code. name the block and the two clauses
trap       : the contract is consistent but an implementation would plausibly
             get it wrong -> write the warning INTO the contract, as a
             Process step or an Errors clause
choice     : the contract picks one reading where another was defensible ->
             record it as a decision with its reason, never leave it implicit
false_positive: the model was wrong, not the contract. say so and fix the
             model. a simulator stricter than the format is noise
```

## GUARANTY

- No substrate file is written or edited.
- Every defect reported names the block and the clauses that conflict.
- A contract amended here is amended before implementation, never after.

## EVIDENCE

tree_nity, 2026-09-20. Four passes over a 13-block D2 contract before writing
the remaining blocks. Pass 1 produced 16 warnings, all false positives: the
model demanded bidirectional edges where the format states an edge written
from one side IS the edge. Pass 3 found one real defect - a block whose
Boundary disclaimed owning the commit while its Process emitted it - plus
three traps and one undocumented choice. The defect would have produced two
owners for one action in code.
