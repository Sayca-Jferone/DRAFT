# PASSPORT.md

```yaml
role: identity record. what stays true for the whole Version. a fact that changes
      without the version changing belongs in STATE.md, not here.
title: "# SYSTEM PASSPORT". generic since v0.73.0: the system name lives in the
       body, never in the title, so the title never drifts from the facts
body: fenced yaml, one block per section (BLOCK-FORMAT.md `Body shape`).
      flat key to value is the yaml case by definition
sections:
  System:      <!-- DRAFT:passport -->
  Development: <!-- DRAFT:passport type=PROTOCOLS -->
  Production:  <!-- DRAFT:passport type=SUBSTRATE -->
  optional:    type=SUB-SYSTEMS, type=CONSTRAINTS, omitted when empty rather
               than left as an empty shell
keys:
  System:      System-name, System-type, System-stack, System-version,
               System-license, System-authors, System-description
  Development: Dev-protocols, GIT-visibility, GIT-repository,
               DRAFT-description, DRAFT-version, DRAFT-created-with,
               DRAFT-license,
               DRAFT-repository, DRAFT-configuration
  Production:  Language, Package-manager, Invocation, Implementation-root,
               Entry-points
writing:
  case:   kebab-case. a key carrying a space does not survive a yaml reader
  lists:  bracketed inline sequences, ["a", "b"]. bare `a, b` parses as one
          string and silently loses the structure
  tabs:   forbidden in indentation. yaml rejects them, and the failure is
          invisible in a text editor
  value:  the value alone. the reasoning behind it belongs to the D1 entry
          that settled it, never to a passport cell
DRAFT-configuration: what this Matrix runs. show-only names the files in play,
                     mode names the working posture. a Matrix that uses only
                     some dimensions says so here rather than leaving a reader
                     to infer it from what is missing
method_version_semantics: a Matrix outlives the method version that made it.
                          created-with and maintained-with are distinct.
                          DRAFT-version is maintained-with, the version the
                          Matrix obeys today. DRAFT-created-with, optional,
                          keeps the version that first wrote it; absent, the
                          two are equal.
