# PASSPORT.md

```yaml
role: identity record. what stays true for the whole Version. a fact that changes
      without the version changing belongs in STATE.md, not here.
blocks:
  DRAFT: one passport block (BLOCK-FORMAT.md). mandatory rows System-name,
         System-version, System-type, System-license (SPDX),
         System-visibility (public|private|internal). optional System-desc,
         System-authors, System-contributors, System-state-file,
         System-stack (authored, comma-separated, true for the whole
         Version)
  PROTOCOLS: ["DRAFT: Systems addressable passport",
              "Method-version: created-with X.Y.Z | maintained-with X.Y.Z",
              other standards e.g. GIT, SPDX/REUSE]
  SUB-SYSTEMS: optional, omit if none. Parent-System pointer + child table
               (name, path, path to child STATE.md)
  SUBSTRATE: [Language + min version, Package manager, Invocation, Implementation
              root, Verbs / entry points]
  CONSTRAINTS: fixed for the whole Version. measured figures live in STATE.md
  ARTIFACT_RULES: substrate language/format/encoding/dependency rules, plus the
                  standing ban on BIOPGE leaking into the substrate
  LICENSE: SPDX block
method_version_semantics: a Matrix outlives the method version that made it.
                          created-with and maintained-with are distinct.
```
