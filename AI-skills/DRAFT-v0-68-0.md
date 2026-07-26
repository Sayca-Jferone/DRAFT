---
name: DRAFT-v0-68-0
description: Multi-dimensional D0-D4 working protocol (DRAFT Matrix v0.68.0, Open-Source by @sayca-jferone). Use for feasibility questions (D0), requirement decomposition into FMBOA checklists (D1), logical architecture in BIOPGE blocks (D2), auditing an existing object against a D2 contract (D3 audit mode), or terrain feedback processing (D4). D3 fabrication/writing is preferred for code CLIs (example: Claude Code or Dispatch), never executed on claude.ai except in audit mode, documentary reference or explicitly asked.
---

# DRAFT Matrix v0.68.0

## Principle

DRAFT is an invariant 5-dimensional spatial matrix (D0-D4). Every project
(called "System") are injected and tracked into these 5 dimensions.
Entry and exit points are arbitrary: you can start anywhere
and bypass unnecessary dimensions, with caution against over-engineering
low-complexity Systems.

## Dimension selector

- **D0 Discover**: raw, hypothetical material. Collect, do not filter.
  Zero classification, zero FMBOA, zero BIOPGE. Not a gate.
- **D1 Register**: decompose into an FMBOA checklist. Do not architect,
  do not resolve ambiguities silently.
- **D2 Articulate**: specify in BIOPGE blocks. Do not implement, zero
  code or language syntax.
- **D3 Fabricate**: translate the D2 contract into the substrate (code,
  build, process). On claude.ai: documentary reference or Audit mode
  only (existing object compared against CONCEPTION.md). Actual
  substrate writing stays reserved for Claude Code CLI / Claude
  Dispatch.
- **D4 Terrain**: observe, collect real-use feedback without
  re-architecting from a single anecdote. Re-injected into D0 for the
  next cycle.

## D1: FMBOA (5 categories, fixed names)

| ID | Category | Definition |
|---|---|---|
| F-XX | **F**ormats | Language, version, norms, constraints, deliverables, repo structure, CLI |
| M-XX | **M**andatory | Explicitly required, project invalid without them |
| B-XX | **B**onus | Optional, targeted or skipped + rationale |
| O-XX | **O**pen Points | Choices left to the developer, decision + rationale mandatory |
| A-XX | **A**mbiguities | Grey areas, resolved via QR or `[ASSUMED]` + rationale |

Expected output: `CONDITION.md`.

**D0/D1 audit clause**: an artifact injected at D0 is hypothetical by
nature. Its "audit" is the D1 classification itself - no separate
Audit mode exists before D2/D3.

## D2: BIOPGE (6 fields, fixed names)

| Field | Content |
|---|---|
| **B**oundary | Name, kind of object, what it owns AND does NOT own |
| **I**nputs | Typed parameters, zero ambiguity |
| **O**utputs | Typed returns or side effects |
| **P**rocess | Numbered steps, no prose |
| **G**uaranty | Falsifiable post-conditions |
| **E**rrors | Each failure mode: trigger -> behavior |

Expected output: `CONCEPTION.md`, one BIOPGE block per logical unit,
`> Covers : F-X, M-Y, A-Z` for D1 traceability.

## D3: formal vs logic vs systemic incoherence

- **Formal** (typo, wrong cast, local step-order slip): fix in place,
  stay in D3.
- **Logic** (the substrate does not honor the D2 contract): STOP,
  return D2, amend the block, re-validate.
- **Systemic incoherence** (architecture untenable, multiple blocks to
  rewrite): STOP, escalate D1, cascade D2, resume D3.

Audit mode (pre-existing object): verify each BIOPGE field
(Boundary/Inputs/Process/Guaranty/Errors/Covers) PASS/FAIL, verdict
COMPLIANT/NON-COMPLIANT. Systematically verify the absence of BIOPGE
leaking into the substrate's own documentation (forbidden: BIOPGE
tables, `Boundary:` sections, `# BIOPGE block` tags).

## PROPAGATION

Entry and exit points are arbitrary. The 5 dimensions form one
entangled System, not a pipeline. Any injection or modification on ONE
dimension triggers a propagation check across the other 4, as long as
the Version is not explicitly closed - whether the change is a
correction, an addition, or an external artifact.

Error direction (D3 -> D2/D1): formal stays in place; logic escalates
to D2; contradicted contract escalates to D2; misread requirement
escalates to D1 + cascades D2; systemic incoherence = full D1 -> full
D2 -> D3.
D4 terrain feedback -> re-injected into D0.

Addition direction (any dimension): D0 addition checks D1 -> D2 -> D3
-> D4; D4 feedback checks D0 -> D1 -> D2 -> D3 (full cascade); D1
amendment checks D2 -> D3; D2 amendment checks D3.

## HARD_RULES

1. Never write code/build/act before a BIOPGE block is defined (except
   D2 gate <=1 interface).
2. Never produce architecture without a validated reference checklist.
3. Never resolve an ambiguity silently - always flag it.
4. Never reclassify a logic error as formal to avoid friction.
5. Never write more than 3 consecutive questions in a QR.
6. Never rephrase the subject without having done D1.
7. Never ignore an injected artifact without auditing it.
8. Never skip D1/D2 discipline on the ground that the object is not
   software - DRAFT is domain-agnostic, the gates apply identically.
9. Never update one dimension without triggering the PROPAGATION check
   across the other 4, unless the Version is explicitly closed.

## ETHICS

Neutral tool, not neutral usage. Never use DRAFT to reverse-engineer a
System's behavioral flaws for exploitation, circumvent the safety
guardrails of any System (human or artificial), or support illegal
activities. Auditing a System's logic to document or improve it within
its provider's terms is legitimate; auditing it to bypass its
safeguards is not, regardless of framing.

## System reference files

- `PASSPORT.md`: static identity (what stays true for the whole
  Version - name, type, substrate, constraints, artifact rules).
- `STATE.md`: living dashboard, updated before any commit+push,
  5-dimension progression in %.
- `PERMALOG.md`: optional raw logs, AI/agentic-generated.

## Fidelity note

Link: https://github.com/Sayca-Jferone/DRAFT/

This skill is an operative condensate of the canonical DRAFT git repo.
On any discrepancy, the public repo's README.md prevails; correct this
skill accordingly before real D1/D2/D3 usage.

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: AI-skills/DRAFT-v0-68-0.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Operative condensate of the DRAFT Matrix method for agentic use.

> SPDX-FileNotice: Fidelity note above governs precedence; this block is metadata only, not a method change.
