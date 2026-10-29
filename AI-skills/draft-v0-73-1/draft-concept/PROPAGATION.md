# PROPAGATION

```yaml
axiom: the 5 dimensions are one entangled Version, not a pipeline.
trigger: ANY injection or modification at ANY dimension, published or not.
kinds: [correction, addition, external input (customer request, terrain
        observation, audit finding)]
optional: no. deferred to "next version": no. applies to the current Version
          until that Version is explicitly closed, in STATE.md or in the declared tracker.
error_driven:
  D3 formal error:          fix in place
  D3 logic error:           D2 amend block -> re-validate -> resume D3
  D3 contract contradicted: D2 amend SLB-BIOPGE.md -> resume D3
  D3 requirement misread:   D1 amend RSD-FMBOA.md -> cascade D2 -> resume D3
  D3 systemic incoherence:  full D1 -> full D2 -> D3
  D4 terrain feedback:      D0, for current-version fixes or the next iteration
addition_driven:
  D0 addition:  recheck D1 -> D2 -> D3 -> D4
  D4 feedback:  recheck D0 -> D1 -> D2 -> D3   # full cascade
  D1 amendment: recheck D2 -> D3
  D2 amendment: recheck D3
stop_condition: all 5 re-synchronised, or Version explicitly closed.
```

```yaml
substrate_replaced:
  amendment: 0.73.1, 2026-10-29, from tree_nity (C++ to Go, the whole code).
  trigger: the language or the stack of the substrate changes.
  D1: one O row records the decision, with date and who decided. rows tied to the
      old stack are marked void under it (a C++ standard, a test framework).
      every state resting on a run falls back to settled: the run was against
      the old substrate.
  D2: the contracts stay when the behaviour stays. the `unit` pointers, the
      library names and the process steps are rewritten. a unit with no
      counterpart in the new substrate stays, and its AUDIT line says absent.
  D3: the audit is replayed in full on the new substrate, and its annex
      rewritten, not appended.
  old Matrix: stays in git history. do not keep a parallel copy in the tree.
```
