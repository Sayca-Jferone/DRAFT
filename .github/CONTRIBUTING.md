# Contributing to DRAFT

> Version: `DRAFT v0.68.0` | 2026-07-26

> Licence: `Apache 2.0` | Open-Source - see [`LICENSE`](../LICENSE)

> Contributor agreement: see [`CLA.md`](CLA.md)

Thank you for your interest in DRAFT.

DRAFT is not a library. It is a **formal method**: a 5-dimensional invariant matrix
(D0-D4) that must stay internally coherent to be worth anything. A contribution here
does not add a feature - it amends a contract. That single fact shapes every rule below.

DRAFT is open-source under Apache 2.0, with **centralised governance**: contributions are
welcome, decisions are not distributed.

---

## Before anything : read the method

Contributing to DRAFT without knowing DRAFT produces noise. Minimum reading:

1. [`README.md`](../README.md) - the full method, in particular `[OVERVIEW]`,
   `[PROPAGATION]` and `[HARD_RULES]`
2. [`CLA.md`](CLA.md) - what you grant by submitting
3. [`AI-skills/`](../AI-skills/) - the condensed operational form of the method

---

## Governance

- The project owner (`@sayca-jferone`) is the **sole maintainer and sole decision-maker**.
- Pull Requests are reviewed and merged solely by the owner.
- Approval is discretionary. A refusal is not a judgement on the work's quality - most
  often it is a coherence call on the Matrix.
- Contributing grants no governance rights (see [`CLA.md`](CLA.md) §7).
- Merged contributions are credited in git history.

---

## Workflow

**Open an issue before opening a Pull Request.**

This is not bureaucracy. A PR that touches the method without prior discussion is almost
always wasted work, because it propagates across dimensions you may not have mapped.

```
1. Open an issue    -> describe the problem, the dimension(s) touched, the intent
2. Wait for a go    -> the owner confirms the direction, or closes with a rationale
3. Fork + branch    -> one branch per contribution, named after the intent
4. Open the PR      -> fill the declaration below
5. Review           -> expect requests for changes on coherence, not only on form
```

- All contributions MUST be submitted via Pull Request.
- Direct commits to `main` are not allowed.
- One contribution per PR. A PR that mixes a typo fix and a method amendment gets
  refused on principle.

---

## Types of contribution

DRAFT accepts several natures of contribution, each with its own bar.

| Type | What it is | Bar |
| --- | --- | --- |
| **Method amendment** | Change to the Matrix itself: dimensions, FMBOA, BIOPGE, propagation, hard rules | Highest. Issue mandatory. Must justify why the current form is insufficient, not merely different. |
| **AI-skill** | New or updated skill in [`AI-skills/`](../AI-skills/) | High. Must be faithful to the README version it claims, and must not silently fork the method. |
| **Usage example** | Worked example of a System injected into the Matrix | Medium. Must be a real case, not a toy. Must show at least two dimensions. |
| **Terrain feedback (D4)** | Field report: where the method held, where it broke | Open. This is the most valuable contribution type and the least formal. Open an issue, no PR needed. |
| **Documentation / clarity** | Rewording, structure, readability of existing content | Medium. Must not change meaning. If it changes meaning, it is a method amendment. |
| **Translation** | Method translated to another language | Medium. English remains the reference. A translation must state which version it tracks. |
| **Typo / formatting** | Spelling, markdown, links | Low. No issue needed. Keep the PR minimal. |

Anything that changes what the method *means* is a **method amendment**, whatever its
size. A three-word change to `[HARD_RULES]` is a method amendment.

---

## Propagation rule (D0-D4)

DRAFT applies to DRAFT. The `[PROPAGATION]` section of the [`README.md`](../README.md) is
not advisory for contributors - it is the review criterion.

Any Pull Request that touches the method MUST declare its propagation check. Copy this
block into the PR description:

```markdown
## DRAFT declaration

- Dimension(s) touched: [D0 / D1 / D2 / D3 / D4]
- Nature: [correction / addition / external input]
- Propagation check:
  - D0: [impact, or "none - rationale"]
  - D1: [impact, or "none - rationale"]
  - D2: [impact, or "none - rationale"]
  - D3: [impact, or "none - rationale"]
  - D4: [impact, or "none - rationale"]
- Ambiguities raised: [list, or "None."]
- Version impact: [none / patch / minor / major]
```

Rules:

- "none" is an acceptable answer. **"none" without a rationale is not.**
- Ambiguities must be flagged, never resolved silently (`[HARD_RULES]`).
- A PR whose propagation check is missing or hand-waved is closed without review.
- If the propagation check reveals a cascade you cannot complete, say so and open the
  issue anyway. A well-described incomplete propagation is useful. A hidden one is not.

Typo and formatting PRs are exempt from this block.

---

## Versioning and SPDX

### Versioning

DRAFT is versioned `vX.Y.Z` (currently `v0.68.0`).

| Bump | When |
| --- | --- |
| **Major** | The Matrix itself changes: dimensions added/removed/redefined |
| **Minor** | A dimension's discipline, categories, or rules change |
| **Patch** | Clarification, wording, examples, fixes with no change of meaning |

- **Do not bump the version in your PR.** Declare the version impact in the DRAFT
  declaration block; the owner performs the bump and the release.
- An AI-skill file is named after the version it tracks
  (`AI-skills/DRAFT-v0-68-0.md`). A skill targeting a new version comes with the method
  change, not before it.

### SPDX

DRAFT follows SPDX/REUSE. Every new documentation file carries a `[LICENSE]` section at
its end, consistent with the one in [`README.md`](../README.md):

```markdown
## [LICENSE]

> SPDX-FileCopyrightText: [year] [author] <[email]>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: [path/from/repo/root]

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: [one-line purpose of the file]

> SPDX-FileNotice: [context notice, or omit if none applies]
```

- Do not remove or alter existing SPDX headers.
- Keep `SPDX-License-Identifier: Apache-2.0` on every file in this repository.
- You may add your own `SPDX-FileContributor:` line to files you contribute to.

---

## Quality

- Keep changes focused and minimal.
- Follow the existing structure, tone, and formatting. DRAFT's README uses collapsible
  `<details>` sections and tables deliberately - match them.
- Coherence and long-term maintainability have priority over completeness.
- The method must stay readable by a human **and** by an artificial agent without loss of
  logical content (`[HERITAGE]`). If your wording is only parseable by one of the two, it
  is not ready.
- No dependency, no tooling, no build step is to be introduced without prior discussion.
  DRAFT is plain Markdown by design.

---

## Ethics

The `[ETHICS]` section of the [`README.md`](../README.md) applies to contributions, and is a
hard filter in review.

Contributions will be refused, without further discussion, if they are intended to:

- reverse-engineer a System's behavioural flaws for exploitation;
- circumvent safety guardrails of any System, human or artificial;
- support activities illegal or harmful under applicable jurisdiction.

Auditing a System's logic (D2/D3) to document, understand, or improve it within its
provider's terms is legitimate use, and welcome. Auditing it to bypass its safeguards is
not, regardless of framing.

This applies identically whatever the nature of the contributing agent: human, artificial,
or hybrid.

---

## Legal notice

By submitting a Pull Request, you agree that:

- your contribution is submitted under the [Contributor License Agreement](CLA.md);
- **you keep the copyright on your contribution** - there is no transfer of ownership;
- you grant the project owner a perpetual, worldwide, irrevocable licence including the
  right to re-license your contribution, including under commercial terms;
- your contribution is published in this repository under Apache 2.0.

If you do not agree with these terms, please do not submit contributions. You remain
welcome to open issues.

---

## Communication

Be respectful and constructive. Disagreement on the method is legitimate and useful -
DRAFT exists to be corrected. Bad faith is not.

The owner may close discussions or Pull Requests that do not align with the project
direction, with a rationale.

Contact: <legal@saycalabs.com>

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .github/CONTRIBUTING.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Contribution rules and governance for the DRAFT project.

> SPDX-FileNotice: DRAFT applies to DRAFT - contributions follow the propagation rule.
