# Glossary

> Version: `DRAFT v0.69.0`

> Source of truth: [`README.md`](README.md). Every entry below is extracted from it (or
> from [`AI-skills/DRAFT-v0-69-0.md`](AI-skills/DRAFT-v0-69-0.md) where the README has no
> equivalently condensed form). On any discrepancy, `README.md` prevails - this file is a
> lookup aid, not a second source of definitions.

> **Maintenance:** this file is a projection of `README.md`, under the same rule as the
> `DRAFT-STATE` block - it creates no information, and a divergence from the README is a
> bug in this file, never in the README. Re-check it at every method version bump.

This glossary does not reinterpret the method. Where a term is defined verbatim in
`README.md`, that definition is quoted, with its anchor linked. Where a definition is
assembled from several README passages, it says so.

---

## DRAFT

> DRAFT is a 5-dimensional invariant matrix.
>
> It tracks any System across its 5 dimensions: emergence, condition, conception,
> incarnation, experience.
> It replaces ad-hoc documentation with a single traceable contract, auditable by humans
> or AI without loss of logical content.
>
> Within DRAFT, you can create ; audit ; build ; retro-engineer... everything. Any real or
> future "System".

Source: [`README.md`](README.md), `### a) "DRAFT" definition`.

---

## DRAFT Matrix (of a System)

> DRAFT is the method : one, invariant, versioned in its own right.
> The DRAFT Matrix of a System is an instance of it, carried by one precise versioned
> individual, and materialised by that System's .draft/ folder.
>
> The method contains ; the Matrix is possessed.

Source: [`README.md`](README.md), `### a-bis) "DRAFT" vs "DRAFT Matrix"`.

The test is grammatical: if the phrase takes a possessive or a complement - *its* Matrix,
the Matrix *of Pan Bagnat v2* - the word is **Matrix**. Otherwise it is **DRAFT**: a DRAFT
repository, the DRAFT method, the DRAFT protocol.

The distinction is load-bearing for [mutation](#mutation): DRAFT does not change when a
System moves from v1 to v2 - that System's own Matrix does.

---

## Mutation

> Mutation is the state of a Matrix under revision : opened by a change at any dimension,
> closed when all five are re-synchronised.
>
> It is a state, not an event. The version bump is its outcome, not the mutation itself.

Source: [`README.md`](README.md), `### a-ter) "Mutation" definition`.

Restated: the state of a Matrix under revision - opened by a change at any dimension, closed when all
five are re-synchronised. It is a state, not an event - the version bump is its outcome,
not the mutation itself. See [PROPAGATION](#propagation), which holds "until the Version is
explicitly closed": that open interval is the mutation.

---

## Internal and external dimensions

> D1, D2, D3 are internal: bounded by the System, therefore measurable, therefore
> carrying a percentage. They can be completed.
> D0 and D4 are external: incoming matter and lived experience, outside the System's
> control. They float permanently and carry no percentage at all.

Source: [`README.md`](README.md), `### Internal and external dimensions`.

This is why `D0: null` and `D4: null` are the only correct values for those two fields in
the [DRAFT-STATE block](#draft-state-block), and why [`overall`](#cost-axis-why-d0-to-d4) is computed
over the internal three alone.

---

## Cost axis (why D0 to D4)

> The numbering is not an order of execution. It is the cost of creating, modifying or
> refactoring at that dimension: D0 none, D1 minimal, D2 moderate, D3 high, D4 extreme -
> a fault reaching your clients costs the supplier's credibility.

Source: [`README.md`](README.md), `### Why 0 to 4 : the cost axis`.

Two consequences: [PROPAGATION](#propagation) repairs at the dimension a fault belongs to
because **repairing is descending the cost axis**; and `overall` weights the internal
dimensions `1-2-4` for the same reason - an unfinished D3 costs more to finish than an
unfinished D1.

---

## System (/ Version)

> Within DRAFT, your project is called a "System", or a "Version". It is your any-domain
> versionned object to dev within DRAFT.
>
> - A living Business, or an original one to create ?
> - A customer blur idea, an existant system to fork ?
> - A Software project ? An exotic domain System, or retro-engineered, maybe a simply
>   audited one ?
>
> Every System can be injected into the DRAFT Matrix... even DRAFT has its own DRAFT
> Passport.

Source: [`README.md`](README.md), `### b) "System" definition`.

---

## The five dimensions (D0-D4)

Source: [`README.md`](README.md) `[OVERVIEW]` table.

| Dimension | State | Content | Format |
| --- | --- | --- | --- |
| **D0** Emergence | Emergent | Raw ideas, materials and perpetual questions | Any-format notes/schemas/docs |
| **D1** Condition | Conditional | System's rules, single source of truth | Markdown FMBOA journal |
| **D2** Conception | Conceptual | System's specification, logic phase | Markdown BIOPGE schema |
| **D3** Incarnation | Functional | System's substrate, build, while dev/fix phases | Markdown Journal + System itself |
| **D4** Experience | Empirical | System's living state, perpetual usage feedback | Any-format feedbacks for next version |

> You can start from any starting dimension, spread to all others and bypass any
> unnecessary dimension -> caution to over-engineering low complexity Systems.

Source: [`README.md`](README.md), `[OVERVIEW]`.

### D0 - Discover : System emergence

- Collect. Do not filter.
- Note. Do not commit.
- No structured file is required at this stage.
- Zero classification. Zero FMBOA. Zero BIOPGE.

> D0 is a permanent floating plane, not a gate. It is where raw creativity and
> intellectual matter come from, mostly human intuition. Same plane as D4 (real, lived
> experience), but without the System yet in place.
>
> D0 is invoked only for non-existent Systems, or brainstorms for upgrades.

Source: [`README.md`](README.md), `[D0] Discover : System emergence`.

### D1 - Register : System condition

- Decompose. Do not architect.
- Classify. Do not resolve.
- Flag ambiguities. Do not resolve them silently.
- Zero code (D3). Zero file structure (D3). Zero BIOPGE (D2).

Produces `CONDITION.md`, organized into the five [FMBOA](#fmboa) categories.

Source: [`README.md`](README.md), `[D1] Register : System condition`.

### D2 - Articulate : System conception

- Specify. Do not implement.
- Validate logical consistency. Do not explore.
- Zero code. Zero language syntax. Zero idioms.

Produces `CONCEPTION.md`, one [BIOPGE](#biopge) block per logical unit.

Source: [`README.md`](README.md), `[D2] Articulate : System conception`.

### D3 - Fabricate : System incarnation

- Translate the contract into the target substrate. Do not redesign it.
- Fix form in place. Do not refactor architecture on the fly.
- Flag logic errors -> return to D2.
- Flag systemic incoherence -> escalate to D1.

> The substrate is whatever the System is made of: source code, a physical build, an
> organizational rollout, a manual process. D3 is where the D2 contract stops being an
> abstract plan and starts existing.

Governed by the [formal / logic / systemic incoherence](#formal-error--logic-error--systemic-incoherence)
distinction.

Source: [`README.md`](README.md), `[D3] Fabricate : System incarnation`.

### D4 - Terrain : System experience

- Observe. Do not re-architect from a single anecdote.
- Collect friction and feedback from real use. Do not filter it into D1 yet.
- Zero code. Zero BIOPGE. This layer feeds D0 for the next cycle, it does not bypass
  D1/D2 directly.

> D4 is the System alive, seen as something lived-in or used rather than as an open
> machine. Same plane as D0, but with the System now in place.

Source: [`README.md`](README.md), `[D4] Terrain : System experience`.

---

## FMBOA

The five fixed categories used to structure `CONDITION.md` at D1.

Source: [`README.md`](README.md), `[D1] Register : System condition` -> `### The 5 FMBOA categories`.

| ID | Category | Definition |
| --- | --- | --- |
| **F-XX** | Formats | Language, version, norms, constraints, deliverables, repo structure, CLI. |
| **M-XX** | Mandatory | Explicitly required. Project invalid without them. |
| **B-XX** | Bonus | Optional. Indicate if targeted / skipped + rationale. |
| **O-XX** | Open Points | Choices left to the developer. Decision + rationale mandatory. |
| **A-XX** | Ambiguities | Grey areas. Resolve via QR or mark `[ASSUMED]` + rationale. |

**D0/D1 audit clause:** an artifact injected at D0 is hypothetical by nature. Its "audit"
is the D1 classification itself: FMBOA extraction IS the audit act. No separate Audit
mode applies before D2/D3 exist. (Source: same section.)

---

## BIOPGE

The six fixed fields used to structure each logical unit in `CONCEPTION.md` at D2.

Source: [`README.md`](README.md), `[D2] Articulate : System conception` -> `### The "BIOPGE" block`.

| Field | Content |
| --- | --- |
| **Boundary** | Name, kind of object (file, folder, ...), optional author, scope. What the unit owns AND what it does NOT own. |
| **Inputs** | Typed parameters. Name, type, valid range/format. Zero ambiguity. |
| **Outputs** | Typed returns or side effects. |
| **Process** | Numbered steps: `1. step -> 2. step -> 3. step`. No prose. |
| **Guaranty** | Falsifiable post-conditions. Verifiable invariants after execution. |
| **Errors** | Each failure mode: trigger -> behavior. Exception names if applicable. |

Each block closes with `> Covers : F-X, M-Y, A-Z`, tracing it back to the D1 items it
satisfies.

Forbidden outside `.draft/2-conception/CONCEPTION.md` (i.e. inside the substrate itself):
BIOPGE tables, `Boundary:`-style sections, `# BIOPGE block` tags. Any leak into the
substrate's own documentation is a documentary violation to flag.

Source: [`README.md`](README.md), `[D2]` and `[D3]` -> `### Critical rule : BIOPGE outside the substrate`.

---

## Formal error / Logic error / Systemic incoherence

The D3 diagnostic distinction for how to respond to a defect found while fabricating the
substrate.

Source: [`README.md`](README.md), `[D3] Fabricate : System incarnation` -> `### Critical rule : formal vs logic error`.

| Type | Definition | Response |
| --- | --- | --- |
| **Formal** | A defect in how the contract is expressed in the substrate: a typo, a wrong cast, a misapplied step order, a local execution slip. What the unit does is unaffected. | Fix in place. Stay in D3. |
| **Logic** | The substrate's behavior does not honor the D2 contract: wrong flow, impossible guarantee, missing case. | STOP. Return D2. Amend block. Re-validate. |
| **Systemic incoherence** | The entire architecture is untenable, multiple blocks need rewriting. | STOP. Escalate D1. Cascade D2. Resume D3 only when both upstream layers are clean. |

**Diagnostic checklist** (same section):

1. Does fixing this imply changing what the unit *does*? -> Logic -> D2.
2. Does fixing this only change *how* it is expressed in the substrate? -> Formal -> in place.
3. Did the error exist in the contract itself? -> Yes -> D2.
4. Does the fix cascade across multiple blocks? -> Systemic -> D1.

---

## PROPAGATION

> Entry point is arbitrary. Exit point is arbitrary. The 5 dimensions are one entangled
> Versioned System, not a pipeline.
>
> Any injection or modification at ANY dimension (D0, D1, D2, D3, or D4) triggers a
> propagation check across ALL other dimensions of that same Version - published or not.

This holds whether the change is a correction, an addition, or external (customer
request, terrain observation, audit finding). Propagation is not optional and not
deferred to "next version" by default.

**Error-driven propagation** (for existing D3 substrates):

```
D3 - formal error           -> fix in place
D3 - logic error            -> D2 : amend block -> re-validate -> resume D3
D3 - contract contradicted  -> D2 : amend CONCEPTION.md -> resume D3
D3 - requirement misread    -> D1 : amend CONDITION.md -> cascade D2 -> resume D3
D3 - systemic incoherence   -> full D1 -> full D2 -> D3
D4 - terrain feedback       -> D0 : for actual version fixes, or for next versions/iterations
```

**Addition-driven propagation** (new material, any dimension):

```
D0 addition  -> re-check D1 (new FMBOA items?) -> D2 (new BIOPGE units?) -> D3 (build impact?) -> D4 (feedback loop closed?)
D4 feedback  -> re-check D0 (reinjection) -> D1 -> D2 -> D3 (full cascade)
D1 amendment -> re-check D2 (blocks still cover?) -> D3 (substrate still compliant?)
D2 amendment -> re-check D3 (substrate still compliant?)
```

> Propagation stops only when all 5 dimensions are re-synchronized, or when the Version is
> explicitly closed (see STATE.md).

Source: [`README.md`](README.md), `[PROPAGATION]`.

---

## HARD_RULES

> Humans or AIs, whatever : You must NEVER

- Write code, build, or act before a BIOPGE block is defined (except D2 gate <=1 interface)
- Produce architecture without a validated Reference checklist
- Resolve an ambiguity silently without flagging it
- Reclassify a logic error as formal to avoid friction
- Write more than 3 consecutive questions in a QR
- Rephrase the human's subject without having done D1
- Ignore an injected artifact (checklist, schema, code, object) without auditing it
- Skip D1/D2 discipline on the ground that the object is not software. DRAFT is
  domain-agnostic; the gates apply identically.
- Update any single dimension (D0-D4) without triggering the [PROPAGATION](#propagation)
  check across the other 4, unless the Version is explicitly closed.

Source: [`README.md`](README.md), `[HARD_RULES]`.

---

## PASSPORT.md

> Identity record. What stays true for the whole version. If a fact changes without the
> version changing, it belongs in `STATE.md`, not here.

Static reference for a System: name, version, type, description, authors, contributors,
license, protocols followed, substrate (language, package manager, invocation root),
constraints, and artifact rules. Structure defined in full in [`README.md`](README.md),
`[PASSPORT.md] Static reference : System identity record`.

---

## STATE.md

> This file MUST be updated before any commit+push and at the end of any work session.
> Lean dashboard. Detail lives in the linked files, not here. Identity lives in
> `.PASSPORT`.

Living reference tracking, per System: overall progression and per-dimension (D0-D4)
progression percentages, pointers to the corresponding artifact for each dimension,
current phase, measured figures against budget, and an immediate to-do list. Structure
defined in full in [`README.md`](README.md), `[STATE.md] Living reference : System state`.

---

## DRAFT-STATE block

> In case of disagreement between the block and the prose, the prose is authoritative
> and the block is a bug.

Optional HTML comment a `STATE.md` may carry, holding the System's name, version,
`overall` and the internal dimensions in a form readable without parsing prose.
Exists so that an orchestrator can enumerate many Systems at once; a System that is
never composed with others stays fully conformant without it. Carries no information
absent from the prose below it, **except `overall`, which is derived**:
`(D1x1 + D2x2 + D3x4) / 7`, rounded, never authored. D0 and D4 are always `null` -
they are [external dimensions](#internal-and-external-dimensions) and carry no
percentage. Structure defined in full in [`README.md`](README.md),
`[DRAFT-STATE] Optional reference : machine-readable state block`.

---

## Workspace layout (Software System example)

Source: [`README.md`](README.md), collapsible section right after `[OVERVIEW]`.

```
v1/
  src/*              <- System's content if it's a Software [DRAFT Dimension D3]
  .draft/
    LICENSE          <- DRAFT's license
    PASSPORT.md      <- active system reference
    README.md        <- DRAFT's reference
    STATE.md         <- active system up-to-date 5-axis state
    PENDING.md       <- open items : decided-but-not-done, open-and-owed-a-decision
    dimensions/      <- the five, and only the five
      0-emergence/   <- raw notes, PDF, customer's requests, brainstorms, ...
      1-condition/   <- source of truth : the problem readable in 60 seconds
      2-conception/  <- logical contract : traceable, debuggable without touching the substrate
      3-incarnation/ <- build log : dev journal, in-progress news, refactors
      4-experience/  <- FEEDBACKS.md, serves for actual version fixes or next versions
    extensions/      <- optional folder containing workflow extensions
      cognitions/*   <- DRAFT-related cognitive packs for artificial intelligences
      knowledge/*    <- artifacts and engineering claims to avoid system weakness
      habits/*       <- free folder addition
v2/
  (same structure for the next Version, Fork, Branch, ...)
```

This layout is an example for Software Systems specifically - other System types adapt
the `.draft/` contents to their own substrate (see [`README.md`](README.md) `[D3]`: "The
substrate is whatever the System is made of").



---

## HERITAGE

> DRAFT does not rely on any specific agent to remain readable. Any dimension (D0 to D4)
> can be transmitted to a third party, whether human or artificial, without any loss of
> logical content, provided the corresponding file exists.

Source: [`README.md`](README.md), `[HERITAGE]`.

---

## ETHICS

> DRAFT is a formal method. Neutral tool, not neutral usage.
>
> **DRAFT must NEVER be used to:**
>
> - Reverse-engineer a System's behavioral flaws for exploitation
> - Circumvent safety guardrails of any System, human or artificial
> - Support activities illegal or harmful under applicable jurisdiction
>
> Auditing a System's logic (D2/D3) to document, understand, or improve it within its
> provider's terms is legitimate use. Auditing it to bypass its safeguards is not,
> regardless of framing.

Source: [`README.md`](README.md), `[ETHICS]`.

---

## QR

Shorthand used at D1 for a clarifying-question exchange run against ambiguities that
could invalidate D2 downstream (see [FMBOA](#fmboa), `A-XX`). Bound by
[HARD_RULES](#hard_rules): never more than 3 consecutive questions in a QR. Not otherwise
expanded or separately defined in `README.md`.

---

## Related, not defined in README.md

The following terms appear in this repository's governance files
([`CONTRIBUTING.md`](.github/CONTRIBUTING.md), [`CLA.md`](.github/CLA.md)) but are process vocabulary, not
DRAFT method vocabulary - listed here only to avoid confusion:

- **Method amendment** - a Pull Request category in `CONTRIBUTING.md`: any change to the
  Matrix itself (dimensions, FMBOA, BIOPGE, propagation, hard rules).
- **DRAFT declaration** - the propagation-check block `CONTRIBUTING.md` requires in every
  non-trivial Pull Request, modeled directly on [PROPAGATION](#propagation).

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: GLOSSARY.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Centralized glossary of DRAFT vocabulary, extracted verbatim from README.md.

> SPDX-FileNotice: On any discrepancy, README.md prevails.
