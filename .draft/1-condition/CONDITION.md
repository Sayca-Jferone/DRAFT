# CONDITION.md - DRAFT Matrix (reflexive System)

| DRAFT D1 | Author: @sayca-jferone | Subject: DRAFT Matrix governance layer / v0.68.0 | Date: 2026-07-26 |
|---|---|---|---|

<details>
  <summary>1. FORMAT</summary>

| # | Element | Value | Source |
|---|---|---|---|
| F1 | Language | Markdown (GitHub-flavored) | existing repo convention |
| F2 | Licence | Apache-2.0, single licence for the whole repo | `LICENSE`, README `[LICENSE]` |
| F3 | Governance model | BDFL strict (single maintainer, `@sayca-jferone`) | user decision, 2026-07-26 |
| F4 | Repo structure | Flat root + `.github/` + `.draft/`, no `src/` (documentary System) | existing repo + this cycle |
| F5 | SPDX/REUSE headers | `## [LICENSE]` block at end of every top-level doc file | existing README convention |

</details>

<details>
  <summary>2. Mandatory</summary>

| # | Item | Source |
|---|---|---|
| M1 | `CLA.md` must not contradict `LICENSE` (Apache 2.0, OSI, commercial use allowed) | user, correcting inherited Pan Bagnat content |
| M2 | `CLA.md` grants the owner a re-licensing right without transferring contributor copyright | user decision: "Apache-cohérent + re-licence" |
| M3 | `CONTRIBUTING.md` must reflect BDFL strict governance | user decision |
| M4 | `CONTRIBUTING.md` must define DRAFT-specific contribution types (method amendment, AI-skill, terrain feedback, etc.) | user decision |
| M5 | `CONTRIBUTING.md` must require a D0-D4 propagation declaration on non-trivial PRs | user decision + README `[PROPAGATION]` |
| M6 | `CONTRIBUTING.md` must define versioning rules (major/minor/patch) and SPDX obligations | user decision |
| M7 | `CONTRIBUTING.md` must restate the `[ETHICS]` boundary from the README | README `[ETHICS]`, applies to contributions |
| M8 | Community files: `CODE_OF_CONDUCT.md`, `SECURITY.md` | external Sonnet instance proposal, accepted as "quasi-standard" |
| M9 | `.github/ISSUE_TEMPLATE/` (bug, method amendment, terrain feedback) + `PULL_REQUEST_TEMPLATE.md` with the propagation-declaration block | external proposal + M5 |
| M10 | `CHANGELOG.md` reflecting real git history (v0.65 -> v0.68.0), not invented entries | external proposal, constrained by actual `git log` |
| M11 | `NOTICE` file (Apache 2.0 §4d) | external proposal, accepted as directly relevant since repo is already Apache 2.0 |
| M12 | `.draft/` built for the DRAFT repository itself, following the README's own Software workspace example, adapted for a documentary substrate | user: "on doit créer un DRAFT pour DRAFT" |
| M13 | A `Makefile` with lint targets (SPDX presence, Markdown style, spelling, links) must actually pass, not just exist | user-added `Makefile`; `spdx-check`/`markdown` found real gaps that were then fixed |
| M14 | README `[SUB-SYSTEMS]` addition (parent/child System subdivision) must propagate into this System's own D1/D2/D3, per `[PROPAGATION]` | README changed externally by the user; addition-driven propagation rule applies (D0 addition -> D1 -> D2 -> D3 -> D4) |

</details>

<details>
  <summary>3. Bonus</summary>

| # | Item | Targeted? | Source |
|---|---|---|---|
| B1 | `.github/CODEOWNERS` | yes | user decision (kept) |
| B2 | `SUPPORT.md` | yes | user decision (kept) |
| B3 | `GOVERNANCE.md` | no - deferred | user decision: redundant with `CONTRIBUTING.md` under BDFL strict |
| B4 | `FUNDING.yml` | no - deferred | user decision: no active sponsoring account |
| B5 | `.editorconfig` | no - skipped | not applicable, no code in repository |

</details>

<details>
  <summary>4. Open Points</summary>

| # | Item | Decision | Rationale |
|---|---|---|---|
| O1 | NOTICE content depth | Minimal placeholder, ready for future attributions | No third-party code/content currently bundled; user chose "NOTICE minimal (Recommandé)" |
| O2 | v0.67.0 changelog entry | Recorded as "unreleased as a tagged version" | git log shows a "Pre-0.67.0" commit but no standalone public release commit distinct from v0.66.0 -> v0.68.0; do not fabricate release notes for it |
| O3 | Discussions link in `SUPPORT.md` | Included, flagged as unverified in `STATE.md` to-do | Cannot confirm from the repo alone whether GitHub Discussions is enabled on the remote |
| O4 | Depth of `.draft/2-conception/CONCEPTION.md` for this System | Light-gate BIOPGE (units = files/templates, not code functions) | Substrate is documentary; full BIOPGE (Inputs/Outputs typed params) does not map cleanly onto Markdown files - method allows a gate decision per D2 discipline |
| O5 | Does "DRAFT Matrix" (this reflexive System) register itself as a child System of anything, or gain child Systems, under the new `[SUB-SYSTEMS]` block? | No - top-level System, zero children at this time | Nothing in this repository currently subdivides into a disjoint child `.draft/`; `PASSPORT.md`'s new `[SUB-SYSTEMS]` block is filled with "None" rather than omitted, so the fact is recorded rather than silently absent |

</details>

<details>
  <summary>5. Ambiguities</summary>

| # | Question | Resolution | Source |
|---|---|---|---|
| A1 | Does "governance files" include GOVERNANCE.md and FUNDING.yml? | `[ASSUMED]` no, per explicit user answer in the follow-up clarification round | AskUserQuestion, 2026-07-26 |
| A2 | Should `.draft/` mirror the README's Software example exactly (with `src/`, `lints/`, etc.)? | `[ASSUMED]` no - adapted: no `src/` (no code), `extensions/` omitted as not yet needed, dimension folders kept | inferred from "System's content if it's a Software" wording in README - this System is not software |
| A3 | Is this `.draft/` meant to track the *repository's governance work* or the *DRAFT method's own content*? | `[ASSUMED]` both, scoped as one System: "DRAFT Matrix" - the method's content (README, AI-skills) is the substrate (D3), the governance layer is this cycle's D3 delivery | no explicit user answer; consistent with README's "even DRAFT has its own DRAFT Passport" |
| A4 | Who authored the `[SUB-SYSTEMS]` README addition, and is it final or still in progress? | `[ASSUMED]` user-authored, direct README edit outside the PR/CLA workflow (repo owner is exempt from `CONTRIBUTING.md`'s own process by definition) | detected via `git diff README.md`; not explicitly confirmed by the user beyond "rescan and report" |

</details>

### D1 exit if

- [x] 5 categories filled
- [x] All ambiguities resolved or ASSUMED + rationale
- [x] All Open Points with decision + rationale
- [x] No open question can invalidate D2
- [x] Dense, readable in 60 seconds

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/1-condition/CONDITION.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: D1 condition record for the DRAFT repository governance cycle.

> SPDX-FileNotice: First reflexive D1 pass on the DRAFT project itself.
