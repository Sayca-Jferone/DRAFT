# CONCEPTION.md - DRAFT Matrix (reflexive instance)

| DRAFT D2 | Author: @sayca-jferone | Based on: CONDITION.md (2026-07-26, extended 2026-07-28) | Date: 2026-07-26, extended 2026-07-28 |
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
  | **Boundary** | `.github/` file. Owns: the legal grant a contributor makes. Does NOT own: the repository's own licence terms (that's `LICENSE`), governance process (that's `CONTRIBUTING.md`). |
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
  | **Boundary** | `.github/` file. Owns: contribution workflow, governance statement, contribution taxonomy, propagation-declaration requirement, versioning/SPDX rules, ethics restatement. Does NOT own: the legal grant itself (CLA.md), code of conduct enforcement (CODE_OF_CONDUCT.md). |
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
  | **Boundary** | `.github/` files. Owns: behavioural standard (CoC), vulnerability disclosure process (Security), question-vs-issue routing (Support). Does NOT own: contribution workflow itself. |
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
  | **Process** | 1. Confirm "DRAFT" (this System) has no parent and no children today -> 2. Record that fact explicitly in `.draft/PASSPORT.md`'s new `[SUB-SYSTEMS]` block rather than omitting it -> 3. Log the amendment here and in `DEVJOURNAL.md` -> 4. No D3 substrate change needed (no code, no new folder) since there is nothing to subdivide yet. |
  | **Guaranty** | `.draft/PASSPORT.md` never silently drifts from what `README.md` says a Passport should contain - the field exists even when its value is "None." |
  | **Errors** | If a child System is created later without updating `PASSPORT.md`'s `[SUB-SYSTEMS]` table -> `STATE.md` "MUST be updated before any commit+push" rule is the catch; flag as a logic error in the next `DEVJOURNAL.md` audit if missed. |

  > Covers : M14, O5, A4
</details>

<details>
  <summary>README <code>[DRAFT-STATE]</code> - machine-readable state block (v0.69.0)</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | A new normative section in `README.md`, plus its reflexive application to `.draft/STATE.md`. Owns: the read contract between a `STATE.md` and any orchestrator. Does NOT own: how a workspace discovers Systems (deferred, O7), the master table's shape (deferred, O10), or any orchestrator implementation (a separate System entirely, O6). |
  | **Trigger** | Written by the human or agent updating `STATE.md`, under the existing "before any commit+push" rule (M20). Read by an orchestrator enumerating Systems. Absent on a System that is never composed - which stays fully conformant (M16). |
  | **Content contract** | An HTML comment opening with `DRAFT-STATE v1`, placed after the `# STATE # System state` title and before the first blockquote. Carries `system`, `version`, `overall`, `D0`-`D4`, `updated`. Percentages are bare integers `0`-`100` with no `%` sign; `null` marks a dimension whose question does not yet arise. |
  | **Process** | 1. Declare the block optional and state what makes it required -> 2. Fix its placement -> 3. Give the literal template -> 4. Justify HTML comment over front matter -> 5. State the no-new-information rule and name the prose as authoritative -> 6. Table the fields -> 7. Separate `null` from `0` with a worked example -> 8. State format versioning -> 9. State the maintenance rule. |
  | **Guaranty** | Every field restates a value already present in the prose below it; the block introduces no fact of its own. On divergence the prose wins and the block is a defect, so the System never carries two competing authorities for one figure (M17). `overall` is transported verbatim from the authored `## Overall` heading and is never derived from D0-D4 (M18). |
  | **Errors** | Block disagrees with the prose -> the block is wrong by construction; correct the block, never the prose. Unknown block version -> the orchestrator declines to read rather than guessing (M21). `D4: 0` written where `null` was meant -> a young System misreads as failing rather than as not-yet-eligible (M19); the distinction is stated with an example in the spec because it is the field most likely to be filled carelessly. |

  **Amended 2026-07-29:** `overall` is no longer transported but **derived** -
  `(D1x1 + D2x2 + D3x4) / 7`, rounded, over the internal dimensions only. D0 and D4 are
  external and always `null`. The block therefore carries one value the prose does not
  independently assert, so M17's "pure projection" is now stated with that single stated
  exception rather than being quietly false. Percentages may fall, and a fall cascades by
  re-verification rather than recomputation, so D2/D3 stay authored facts.

  > Covers : M15, M16, M17, M18, M19, M20, M21, M37, M38, O8, O9, O10, A5, A6, A7
</details>

<details>
  <summary><code>AI-skills/DRAFT-v0-69-0.md</code> - reissued skill</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | New file alongside `AI-skills/DRAFT-v0-68-0.md`, which is kept unmodified. Owns: the operational skill form of the method at v0.69.0. Does NOT own: the normative method text (`README.md` remains the source). |
  | **Trigger** | Loaded into an agentic tool by a user working at v0.69.0. The v0.68.0 file stays loadable for anyone pinned to that version. |
  | **Content contract** | The v0.68.0 skill's content, plus the `DRAFT-STATE` block: its optionality, its placement, the field list, and the prose-is-authoritative rule. |
  | **Process** | 1. Copy the v0.68.0 skill verbatim -> 2. Bump every version reference -> 3. Insert the block into the `STATE.md` guidance -> 4. Leave the v0.68.0 file untouched. |
  | **Guaranty** | Filename tracks the method version it implements, per `[ARTIFACT_RULES]`. No prior skill version is destroyed by a version bump, so a port between versions stays diffable. |
  | **Errors** | Skill and README disagreeing on the block -> README is normative; the skill is a projection of it, exactly as the block is a projection of the prose. |

  > Covers : M22

</details>

<details>
  <summary><code>.draft/</code> root - contract surface rule</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: which files sit at the root of `.draft/` and why. Does NOT own: the naming of the dimension folders, nor the content of any file it places. |
  | **Trigger** | Any file added to `.draft/`, and any orchestrator resolving a System's state without prior knowledge of its layout. |
  | **Content contract** | Root = contract surface: fixed paths, read by an orchestrator (`PASSPORT.md`, `STATE.md`, `PENDING.md`). Subfolders = content, free paths, read by humans and by agents already working the System (`dimensions/` closed at exactly five, `extensions/` open and unbounded). |
  | **Process** | 1. Ask whether an external reader must find the file without being told where -> 2. If yes, root; if no, subfolder -> 3. If it is one of D0-D4, `dimensions/`; if it is a free addition, `extensions/`. |
  | **Guaranty** | Discovery by scan (O7) stays possible with no indirection: no file whose location must first be learned from another file. `dimensions/` being closed and `extensions/` open is legible from the tree alone. |
  | **Errors** | A contract file placed in a subfolder -> the orchestrator must be taught its path, and a passport pointing at a missing state file becomes a failure class that does not exist today. A free folder placed at the root -> the contract surface stops being self-evident and the rule decays. |

  > Covers : M24

</details>

<details>
  <summary><code>.draft/PENDING.md</code> - open-item register</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: what is decided-but-not-done, and what is open and owed a decision. Does NOT own: state (`STATE.md`), identity (`PASSPORT.md`), or the rationale behind any item - which stays in the dimension that produced it. |
  | **Trigger** | An item is opened, closed, or carried at any commit or session close, under the same rule that governs `STATE.md`. |
  | **Content contract** | A to-do list and nothing more. Items are grouped `[RELEASE]` / `[METHOD]` / `[COMPOSITION]` / `[MAINTENANCE]` / `[CLOSED]`, each pointing back to the D1 O/A that owns its reasoning. `[CLOSED]` is emptied when the version closes. |
  | **Process** | 1. Item arises in a dimension -> 2. Recorded there with its rationale -> 3. Listed here as one line with a back-reference -> 4. Ticked and moved to `[CLOSED]` when done. |
  | **Guaranty** | `STATE.md` becomes the pure snapshot its own header claims to be: state is rewritten wholesale, open items accumulate, and the two no longer share a file. `[PROPAGATION]`'s cross-dimension check gains a place where its outstanding results are visible in one read. |
  | **Errors** | Rationale written here instead of a back-reference -> the file grows into a second journal and the dimension loses its authority over its own reasoning. An item closed here but left open in its dimension -> the dimension is authoritative, exactly as the prose is authoritative over the block. |

  > Covers : M23

</details>

<details>
  <summary>Matrix migration - judgement task, made verifiable</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: the safety conditions under which a Matrix may be carried from one DRAFT version to another. Does NOT own: the migration procedure itself (open, A13), nor whether staying on an old version is conformant. |
  | **Trigger** | A Matrix written under one DRAFT version is to be maintained under a newer one. |
  | **Content contract** | The operation is a **judgement task**: no algorithm produces it, only a LLM or a human with a great deal of time. Two conditions make it safe. **Additive** (M42): the source stays at `.draft-<old-version>/`, the new Matrix is written beside it, deletion only once trusted. **Reported** (M43): every item is classified transported / transformed / abandoned (with reason) / created. `Migration` is not `mutation` (M44). |
  | **Process** | 1. Copy the source aside -> 2. Produce the new Matrix from it -> 3. Emit the report -> 4. Human reads the report, not the diff -> 5. Source deleted only after acceptance. |
  | **Guaranty** | The result is checkable without redoing the work: the source still exists to compare against, and losses are named rather than absent. Same lever as the D2 Guaranty for generated code - delegate execution, keep verification. |
  | **Errors** | Overwriting the source -> nothing left to verify against, and M43's report becomes unfalsifiable. Silent abandonment -> an unresolved `A-XX` or a dropped `O-XX` vanishes inside a large diff, which is precisely the epistemic degradation DRAFT exists to catch, entering through the door the method itself opened. A LLM given no method-diff -> it reinterprets the whole Matrix instead of applying a bounded delta, and reclassifies in silence, which D1 forbids. |

  > Covers : M42, M43, M44, A13

</details>

<details>
  <summary>Cost axis + <code>Method-version</code> - the numbering and the Matrix's own age</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: what the D0-D4 numbering means, and how a Matrix records which DRAFT produced it. Does NOT own: what to do when the method changes under a Matrix - open as A13. |
  | **Trigger** | Read when deciding where to repair a fault, and when a Matrix is read by a DRAFT version other than the one that wrote it. |
  | **Content contract** | The numbering is an axis of **cost of modification**: D0 none, D1 minimal, D2 moderate, D3 high, D4 extreme (a fault reaching clients costs the supplier's credibility). `PASSPORT.md` carries `Method-version: created-with X.Y.Z \| maintained-with X.Y.Z`. |
  | **Process** | 1. A fault appears -> 2. Identify the dimension it belongs to -> 3. Repair there, not in place -> 4. Cascade forward. For the Matrix: record `created-with` once, update `maintained-with` on migration. |
  | **Guaranty** | `[PROPAGATION]`'s "going back is not a failure" becomes a measurable claim: going back is going cheaper. And no Matrix is orphaned from the method version that produced it - a fact that cannot be recovered after the fact. |
  | **Errors** | Numbering read as an execution order -> contradicts "entry point is arbitrary", and pushes users to finish D0 before starting, which M40 forbids since D0 never closes. `Method-version` absent -> a Matrix migrated across method versions leaves no trace of the transition, which is the epistemic degradation DRAFT exists to catch, applied to DRAFT itself. |

  > Covers : M39, M40, M41, A13

</details>

<details>
  <summary><code>README.md</code> realignment - the four debts</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: bringing `README.md` back level with what the method actually specifies. Does NOT own: the composition format, which O10/A5 leave deliberately open. |
  | **Trigger** | A structural or vocabulary decision has landed in the tree or the glossary ahead of the README. |
  | **Content contract** | Four corrections in one pass, because all four touch the same file: the workspace map gains `dimensions/` and `PENDING.md` and the contract-surface rule (A9); the D4 heading may drop its percentage when a dimension is not eligible (A8); `PERMALOG` is withdrawn from map, section, glossary and current AI-skill (A10/M33); `DRAFT` vs `DRAFT Matrix` and `Mutation` are defined, becoming the glossary's source (A12). |
  | **Process** | 1. Map and root rule -> 2. D4 heading -> 3. PERMALOG removal -> 4. definitions -> 5. re-point the glossary at the new anchors -> 6. verify every relative link still resolves. |
  | **Guaranty** | No projection outruns its source: the glossary quotes the README rather than inventing, and the tree matches the map. A8, A9, A10 and A12 close together, as one mutation rather than four. |
  | **Errors** | Closing them separately -> four D0->D1->D2 passes over one file, each invalidating the last. Closing A12 by deleting the glossary entries instead -> normative vocabulary left undefined while already in use across D1 and D3. |

  > Covers : A8, A9, A10, A12, M33

</details>

<details>
  <summary><code>System-visibility</code> - declared intent</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: stating who a `.draft/` is meant to be readable by. Does NOT own: enforcing it - no mechanism here, and none possible in plain text. |
  | **Trigger** | Written once per System in `PASSPORT.md`; read by a human deciding what to write into D0/D4, and by an orchestrator deciding what it may render. |
  | **Content contract** | `System-visibility: public \| private \| internal`. The value states the author's intent, never a technical guarantee. An orchestrator reading `private` must not render that System into a public output. The README additionally warns that a `.draft/` inherits its repository's visibility, and that D0 and D4 - the dimensions the method asks to fill unfiltered - are the least safe to publish. |
  | **Process** | 1. Choose visibility before writing into `.draft/` -> 2. Declare it in `PASSPORT.md` -> 3. An orchestrator reads it before aggregating. |
  | **Guaranty** | The question is asked before D0 and D4 accumulate content, which is the only moment it is cheap to answer. O11 had to be decided ad hoc for want of this. |
  | **Errors** | Read as a protection -> false confidence: git has no visibility granularity below the repository, there is no private subtree, and objects pushed to a public remote stay reachable by SHA after deletion. Per-dimension visibility was considered and declined for exactly that reason - it would promise granularity the substrate cannot deliver. |

  > Covers : M34, M35

</details>

<details>
  <summary>Repository root - contract surface rule</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: which files sit at the repository root. Does NOT own: the content of any file it places, nor the internal layout of `.github/` and `.draft/`. |
  | **Trigger** | Any file added at the root, and any reader or platform resolving a project file without being told where it is. |
  | **Content contract** | Root carries only what a platform or tool resolves by exact path - `README.md` (rendered landing page), `LICENSE` (licence detection, SPDX/REUSE scanners), `NOTICE` (Apache 2.0 §4d), `CITATION.cff` (root-only, the "Cite this repository" button reads nowhere else), `Makefile` (invocation point), `.markdownlint-cli2.jsonc` (tool config) - plus `CHANGELOG.md` by convention. Contribution surface descends to `.github/`. |
  | **Process** | 1. Ask whether a platform or tool resolves the file by exact path -> 2. If yes, root -> 3. If it belongs to the contribution surface, `.github/` -> 4. Otherwise a content folder. |
  | **Guaranty** | Every platform behaviour is preserved by the move: GitHub resolves community health files from root, `.github/` or `docs/` equally, so the Contributing link, Security tab and CoC banner render unchanged. Root drops from 14 entries to 8. |
  | **Errors** | `CITATION.cff` moved -> the citation button silently disappears, with no error anywhere; it is the one file here with no fallback location. A governance file moved without fixing its relative links -> broken links inside `.github/`, which is why all 18 root-pointing links were rewritten and verified. |

  > Covers : O13, F4

</details>

<details>
  <summary><code>GLOSSARY.md</code></summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Root file. Owns: a lookup index of DRAFT vocabulary. Does NOT own: any definition - every entry is quoted from `README.md`, which stays the sole source. |
  | **Trigger** | Read by a human or agent looking up one term without loading the whole README. |
  | **Content contract** | Quoted definitions with anchors back to `README.md`, plus a stated maintenance rule: it creates no information, a divergence from the README is a bug in this file, and it is re-checked at every method version bump. |
  | **Process** | 1. Term defined in `README.md` -> 2. Quoted here verbatim with its anchor -> 3. Re-verified at each version bump. |
  | **Guaranty** | Same discipline as the `DRAFT-STATE` block (M17): a projection with the projected source authoritative. Previously absent, which is how the file came to announce v0.68.0 against a v0.69.0 repository. |
  | **Errors** | Glossary corrected against the tree instead of against the README -> the projection disagrees with what it projects. This is live: the workspace-layout map reproduces the README's pre-refactor `.draft/` and is deliberately left as-is, flagged in place, pending A9. |

  > Covers : M28

</details>

<details>
  <summary>Git history - commit message discipline</summary>

  | Field | Content |
  |---|---|
  | **Boundary** | Owns: what a commit message must state, from v0.69.0 forward. Does NOT own: the pre-v0.69.0 history (kept as-is, O14), nor release naming - that is the tag's job, and version history is `CHANGELOG.md`'s. |
  | **Trigger** | Every commit on this repository. |
  | **Content contract** | The message names the change. Forbidden: bare `update`/`fix`, the `Update <file>` web-editor default, and messages carrying only a version number. Non-trivial commits take a body: what changed, and what it leaves open. A commit whose message can only be "update" is not ready to be made. |
  | **Process** | 1. State the change in the subject -> 2. If it spans several decisions, list them in the body -> 3. Name the debts it leaves open -> 4. If none of that is possible, split the commit. |
  | **Guaranty** | `git log --oneline` between two tags reads as a list of changes, not of events. Three tags already make the ranges navigable; the message is what makes them legible. |
  | **Errors** | Rule applied retroactively -> a rewrite would erase the abandoned `Pre-0.67.0` and the ETHICS iterations, which are the visible evidence that `[PROPAGATION]`'s "going back is not a failure" was practised, and would invert M10 by making `CHANGELOG.md` assert versions no longer observable in `git log`. Declined as O14, on merit rather than on the usual force-push objection - which was checked and found not to apply (0 forks, 0 network). |

  > Covers : M32, O14

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
