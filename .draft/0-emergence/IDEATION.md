# IDEATION - DRAFT Matrix (reflexive System)

> D0. Collect, do not filter. No structure required beyond chronology.

## 2026-07-26 - governance gap noticed

- The repo shipped `CLA.md` and `CONTRIBUTING.md` copy-pasted from a friend's project
  ("Pan Bagnat"). Content was theirs, structure/intent was worth keeping, but the legal
  substance contradicted this repo's own Apache 2.0 licence (non-OSI clauses, ownership
  transfer, commercial-use prohibition).
- Question raised: what should CLA/CONTRIBUTING actually say for a project that is (a)
  Apache 2.0, (b) BDFL-governed, (c) a *method* rather than software?

## 2026-07-26 - second pass, from an external Sonnet instance

- A list of "standard" community files was proposed: CODE_OF_CONDUCT, SECURITY,
  ISSUE_TEMPLATE/, PULL_REQUEST_TEMPLATE, CHANGELOG, CODEOWNERS, GOVERNANCE, SUPPORT,
  FUNDING, .editorconfig, NOTICE.
- Observation, from the human: "we need to build a DRAFT for DRAFT... in `.draft/`."
  I.e. the repository defining the method does not yet apply the method to itself.
  Flagged as the more interesting gap of the two.

## Open questions carried into D1

- Which of the "nice to have" files are actually warranted for a single-maintainer,
  code-free, method-only repository? (resolved in D1/CONDITION - GOVERNANCE.md and
  FUNDING.yml dropped, CODEOWNERS and SUPPORT.md kept)
- Does DRAFT's own `.draft/` need to look like the Software example in the README, or
  should it be adapted since the substrate here is documentary, not code? (resolved in
  D2/CONCEPTION - light-gate BIOPGE, substrate = Markdown files themselves)

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/0-emergence/IDEATION.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: D0 raw notes for the DRAFT repository governance cycle.

> SPDX-FileNotice: D0 requires no structured file; this block is metadata only, not a classification.
