# CONCEPTION.md - DRAFT Matrix (reflexive System)

| DRAFT D2 | Author: @sayca-jferone | Based on: CONDITION.md (2026-07-26) | Date: 2026-07-26 |
|---|---|---|---|

---

## GLOBAL VIEW

Gate applied: **light BIOPGE**. The substrate is a set of Markdown documents, not
executable code - "Inputs/Outputs" become "audience and trigger", "Process" stays
numbered steps, "Guaranty" becomes a falsifiable statement about the document's content
or the workflow it enforces. Each unit below is one governance file or template group.
Entry point for a human or agent is `README.md`; entry point for a contributor is
`CONTRIBUTING.md`.

---

## LOGICAL VIEW

<details>
  <summary><code>CLA.md</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root file. Owns: the legal grant a contributor makes. Does NOT own: the repository's own licence terms (that's `LICENSE`), governance process (that's `CONTRIBUTING.md`). |
  | **Trigger** | Read by a contributor before submitting; referenced by `CONTRIBUTING.md` §Legal notice. |
  | **Content contract** | Contributor keeps copyright; grants perpetual/irrevocable/re-licensable licence to the owner; patent grant mirroring Apache §3; ethics scope mirrors README `[ETHICS]`. |
  | **Process** | 1. State definitions -> 2. Confirm contributor keeps copyright -> 3. Grant licence incl. re-licensing -> 4. Patent grant -> 5. Representations -> 6. Ethical scope -> 7. Governance/no-obligation -> 8. Trademarks -> 9. Acceptance. |
  | **Guaranty** | No clause contradicts `LICENSE` (Apache-2.0, OSI, commercial use allowed). No clause claims ownership transfer. |
  | **Errors** | Ambiguity between CLA and LICENSE on re-licensing scope -> LICENSE (Apache §5, contribution auto-licensed) is the floor; CLA only adds the re-licensing delta, never subtracts from Apache 2.0 rights. |

  > Covers : M1, M2, F2
</details>

<details>
  <summary><code>CONTRIBUTING.md</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root file. Owns: contribution workflow, governance statement, contribution taxonomy, propagation-declaration requirement, versioning/SPDX rules, ethics restatement. Does NOT own: the legal grant itself (CLA.md), code of conduct enforcement (CODE_OF_CONDUCT.md). |
  | **Trigger** | Read before opening an issue or PR; linked from `PULL_REQUEST_TEMPLATE.md` and `ISSUE_TEMPLATE/*`. |
  | **Content contract** | BDFL governance statement; issue-before-PR workflow; 7-row contribution-type table; propagation-declaration block (mirrors README `[PROPAGATION]`); versioning table (major/minor/patch) + SPDX header template; ethics restatement; legal notice summarizing CLA. |
  | **Process** | 1. State governance -> 2. State workflow (issue first) -> 3. Define contribution types -> 4. Define propagation block -> 5. Define versioning/SPDX -> 6. State quality bar -> 7. Restate ethics -> 8. Legal notice -> 9. Communication norms. |
  | **Guaranty** | Every non-typo PR is required to declare its D0-D4 propagation impact before merge is considered. |
  | **Errors** | Propagation block missing/hand-waved -> PR closed without review (stated explicitly in the file). |

  > Covers : M3, M4, M5, M6, M7
</details>

<details>
  <summary><code>CODE_OF_CONDUCT.md</code> / <code>SECURITY.md</code> / <code>SUPPORT.md</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root files. Owns: behavioural standard (CoC), vulnerability disclosure process (Security), question-vs-issue routing (Support). Does NOT own: contribution workflow itself. |
  | **Trigger** | CoC: any project space. Security: a security concern, privately by email. Support: a question, before opening an issue. |
  | **Content contract** | CoC: Contributor Covenant v2.1 adapted for single-maintainer enforcement. Security: scope limited to AI-skill prompt-injection/jailbreak vectors and leaked credentials (repo has no runtime); private disclosure to `legal@saycalabs.com`; 7-day ack / 30-day assessment. Support: routes questions to Discussions, bugs/amendments to issue templates, security to SECURITY.md. |
  | **Process** | Each file: state scope -> state channel -> state response expectation. |
  | **Guaranty** | No public issue is the correct channel for a security report (stated explicitly, cross-referenced in `SUPPORT.md` and `.github/ISSUE_TEMPLATE/config.yml`). |
  | **Errors** | Off-topic security report (e.g. disagreement with `[ETHICS]` scope) -> redirected to a normal issue, not treated as a vulnerability. |

  > Covers : M8
</details>

<details>
  <summary><code>.github/ISSUE_TEMPLATE/*</code> + <code>PULL_REQUEST_TEMPLATE.md</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | `.github/` folder. Owns: structured intake forms. Does NOT own: the rules themselves (they only reference `CONTRIBUTING.md`). |
  | **Trigger** | GitHub UI, on new issue / new PR. `config.yml` disables blank issues and redirects questions/security elsewhere. |
  | **Content contract** | `bug_report.md` (method inconsistency), `method_amendment.md` (Matrix change proposal, explicitly blocks PRs until maintainer response), `terrain_feedback.md` (D4, no PR expected), `PULL_REQUEST_TEMPLATE.md` (contribution-type checklist + mandatory propagation-declaration block, mirroring `CONTRIBUTING.md` exactly). |
  | **Process** | 1. Contributor picks a template -> 2. Fills structured fields -> 3. For amendments, waits for maintainer go -> 4. Opens PR using the matching template fields. |
  | **Guaranty** | The propagation-declaration block in the PR template is byte-for-byte structurally identical to the one specified in `CONTRIBUTING.md`, so there is exactly one canonical shape for it. |
  | **Errors** | Blank issue attempted -> disabled by `config.yml`, contributor redirected to Discussions or Security policy. |

  > Covers : M9, M5
</details>

<details>
  <summary><code>CHANGELOG.md</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root file. Owns: version history of the method itself. Does NOT own: a given downstream System's state (that's each System's own `.draft/STATE.md`). |
  | **Trigger** | Read to understand what changed between method versions; updated on each release. |
  | **Content contract** | Keep a Changelog format; entries for v0.65.0, v0.66.0, v0.67.0 (marked untagged), v0.68.0, plus an `[Unreleased]` section for this governance-layer cycle. |
  | **Process** | 1. Reconstruct from `git log --reverse` -> 2. Group by version boundary commits -> 3. Mark unverifiable/untagged versions explicitly rather than inventing content. |
  | **Guaranty** | No entry states a fact not observable in git history. |
  | **Errors** | Version with no clear release commit (v0.67.0) -> marked "unreleased as a tagged version" rather than fabricated. |

  > Covers : M10
</details>

<details>
  <summary><code>NOTICE</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root file. Owns: third-party attribution per Apache 2.0 §4(d). Does NOT own: the licence grant itself (`LICENSE`). |
  | **Trigger** | Read when redistributing the project, per Apache 2.0 obligations. |
  | **Content contract** | Copyright line; pointer to LICENSE; explicit "no third-party content at this time" statement; placeholder for future attributions. |
  | **Process** | 1. State copyright -> 2. State licence pointer -> 3. State current attribution status. |
  | **Guaranty** | File never claims an attribution that does not exist. |
  | **Errors** | Future third-party content added without updating NOTICE -> flagged as a D1/M-item at the next propagation check touching that content. |

  > Covers : M11
</details>

<details>
  <summary><code>.draft/*</code> (this reflexive injection)</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | New folder. Owns: DRAFT applied to the DRAFT repository itself (PASSPORT, STATE, D0-D4 files). Does NOT own: the method's normative content (that stays in `README.md`); does NOT own AI-skill definitions (`AI-skills/`). |
  | **Trigger** | Any future change to this repository's governance or method content should update this folder per the `[PROPAGATION]` rule, exactly as `CONTRIBUTING.md` now requires of external contributors. |
  | **Content contract** | `PASSPORT.md` (identity, adapted: documentary substrate, no package manager/build), `STATE.md` (dashboard, this cycle at D3 close-out), `0-emergence/IDEATION.md`, `1-condition/CONDITION.md`, `2-conception/CONCEPTION.md` (this file), `3-incarnation/DEVJOURNAL.md`, `4-experience/FEEDBACKS.md` (empty, opens on first real terrain input). |
  | **Process** | Mirrors the README's own D0->D1->D2->D3 sequence, applied to "ship a governance layer" as the D3 deliverable of this cycle. |
  | **Guaranty** | Every M-item in `CONDITION.md` is covered by at least one block above or by a file's own existence. D4 is honestly marked not-yet-eligible rather than filled with placeholder feedback. |
  | **Errors** | Drift between `.draft/` and the real repository state -> caught at next commit via the `STATE.md` "MUST be updated before any commit+push" rule. |

  > Covers : M12, O4, A2, A3
</details>

<details>
  <summary><code>Makefile</code> + <code>.markdownlint-cli2.jsonc</code> (incl. <code>AI-skills/.markdownlint-cli2.jsonc</code>)</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root files (+ one directory-level override). Owns: repository maintenance commands (`help`, `license`/`spdx-check`, `markdown`, `links`, `spell`, `lint`, `all`, `clean`). Does NOT own: CI/CD - no workflow file exists or is planned while D3 stays documentary (see `SECURITY.md`). |
  | **Trigger** | Run on demand by any contributor or maintainer before a commit; no automation invokes it yet. |
  | **Content contract** | All tools resolved ephemerally via `pipx`/`npx`, nothing pre-installed. `license` is an alias for `spdx-check` (a DRAFT-aware substitute, not `reuse lint`, since `reuse` cannot parse this project's blockquote-style SPDX blocks). `.markdownlint-cli2.jsonc` disables exactly the rules that contradict formatting already load-bearing in `README.md`/`CLA.md`/`CONTRIBUTING.md` (details/summary, unaligned tables, long BIOPGE/FMBOA lines, SPDX blockquote spacing, etc.), each with an inline rationale comment - not a blanket bypass. `AI-skills/.markdownlint-cli2.jsonc` extends this locally to exempt one bare URL in normative method content, which this tooling does not reformat outside the "AI-skill" contribution workflow. |
  | **Process** | 1. `spdx-check`: grep every tracked `.md` for `SPDX-License-Identifier:` -> 2. `markdown`: run `markdownlint-cli2` against the repo, directory configs applying by inheritance -> 3. `spell`/`links`: best-effort, non-blocking (`\|\| true`) -> 4. `lint` = license + markdown + spell -> 5. `all` = lint + links. |
  | **Guaranty** | `make lint` passes with a clean exit code on the current tree - re-verified after every content change described in this file. `license` never reports success without having actually checked SPDX presence (the earlier `reuse`-first version could exit 0 having checked nothing; that failure mode is closed). |
  | **Errors** | Missing SPDX block -> `spdx-check` names the exact file and exits non-zero. `npx`/Node.js absent -> `ensure_npx` fails fast with an install pointer, rather than a cryptic `npx: command not found`. |

  > Covers : M13
</details>

<details>
  <summary>README <code>[SUB-SYSTEMS]</code> addition - propagation into this System</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Not a new file - a method amendment to `README.md` (new `[SUB-SYSTEMS]` section, new optional block in the `PASSPORT.md` template) made directly by the repository owner, outside the CLA/PR workflow that applies to external contributors. |
  | **Trigger** | Detected via `git diff README.md` during a repository rescan; `[PROPAGATION]` requires any D0-D4 change to trigger a re-check across the other dimensions of every affected System - including this reflexive one. |
  | **Content contract** | A System may optionally subdivide into disjoint child Systems, each a full independent DRAFT injection (own `.draft/`), registered in the parent's `PASSPORT.md` via a `[SUB-SYSTEMS]` table (child name, path, pointer to its `STATE.md`). Nesting `.draft/` inside `.draft/` is explicitly not the mechanism - children live in sibling subtrees. |
  | **Process** | 1. Confirm "DRAFT Matrix" (this System) has no parent and no children today -> 2. Record that fact explicitly in `.draft/PASSPORT.md`'s new `[SUB-SYSTEMS]` block rather than omitting it -> 3. Log the amendment here and in `DEVJOURNAL.md` -> 4. No D3 substrate change needed (no code, no new folder) since there is nothing to subdivide yet. |
  | **Guaranty** | `.draft/PASSPORT.md` never silently drifts from what `README.md` says a Passport should contain - the field exists even when its value is "None." |
  | **Errors** | If a child System is created later without updating `PASSPORT.md`'s `[SUB-SYSTEMS]` table -> `STATE.md` "MUST be updated before any commit+push" rule is the catch; flag as a logic error in the next `DEVJOURNAL.md` audit if missed. |

  > Covers : M14, O5, A4
</details>

---

### D2 exit

- [x] Gate applied and decision recorded (light BIOPGE, documentary substrate)
- [x] All blocks complete
- [x] `> Covers :` filled for every block
- [x] Cross-block consistency: no two files claim ownership of the same rule (CLA = grant,
      CONTRIBUTING = process, CoC/Security/Support = channel-specific, templates = intake
      shape only, mirroring CONTRIBUTING's canonical text)
- [x] Zero code written

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/2-conception/CONCEPTION.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: D2 conception record for the DRAFT repository governance cycle.

> SPDX-FileNotice: Light-gate BIOPGE, adapted for a documentary substrate.
