# SUB-SYSTEMS

```yaml
optional: on both ends. a System may have no parent, no children, or either.
          subdivision is a design choice, never a gate.
placement: disjoint sibling subtrees under a common parent path.
           NEVER a .draft/ inside another .draft/.
registration: the parent lists known children in its own PASSPORT [SUB-SYSTEMS].
              a child needs no parent pointer to be valid on its own.
scope: each System keeps its own D0-D4 and its own PROPAGATION scope. a change in a
       child does NOT propagate into the parent, or the reverse, unless the parent
       explicitly re-injects the child's D4 or D1 as its own D0 material.
```
