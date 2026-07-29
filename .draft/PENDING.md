# PENDING # System open items

> Dynamic to-do list. What is decided but not done, and what is open and owed a decision.
> Nothing else. State lives in `STATE.md`, identity in `PASSPORT.md`, rationale in the
> dimension files this list points back to.

**System** : **DRAFT** `0.69` | **Author** : @sayca-jferone

**LAST FILE UPDATE:** 2026-07-29 (v0.69.0 session 3: cost axis, internal/external, derived `overall`, `Method-version`)

---

## [RELEASE]

*Nothing pending. v0.69.0 is closed and tagged; the next entry opens with the composition
cycle.*

---

## [METHOD]

*Changes to the DRAFT method itself. Each one is owed a full D0->D1->D2 pass, never an
in-place edit.*

- [ ] Settle `PERMALOG`'s evidentiary status, then reintroduce it. Withdrawn from the
      method at v0.69.0 (M33/A10) because "not a secured file" and "legal proof" cannot
      both hold. Reintroduction needs either external anchoring (signed commits,
      third-party timestamping, git-reflog derivation) or a stated non-evidentiary scope.
      The regime criterion that separated it from `DEVJOURNAL.md` is archived in D0 and
      returns with it
- [ ] Write the migration **procedure** (A13, partially resolved). Its nature and safety
      conditions are settled (M42 additive, M43 report, M44 vocabulary); the procedure
      itself is not. Intended shape: feed the LLM the delta between two retained
      AI-skills and let it touch only what the delta implies. Deliberately written
      against a real 0.69 -> 0.70 migration rather than invented in the abstract - same
      discipline as the orchestrator, plain reader first
- [ ] Watch M17 for a second case. A8 was closed by fixing the D4 heading, not by
      amending M17 - the "block is a pure projection" premise was left standing on the
      strength of a single counter-example. A second instance where the machine layer is
      more precise than the prose reopens it with evidence

---

## [COMPOSITION]

- [ ] Open the composition cycle in D0: manifest format, master-table shape, and whether
      the workspace root carries a `.draft-compose/` (D1/O10, A5 - the owner's own open
      question, deliberately left unresolved at v0.69.0)
- [ ] Write the `[DRAFT-COMPOSE]` README section. `README.md` already forward-references
      it from the `[DRAFT-STATE]` block; the reference is currently dangling
- [ ] Express sibling composition. `[SUB-SYSTEMS]` lives in `PASSPORT.md` and covers
      parent/child subtrees only; `DRAFT` and `DRAFT-compose` are siblings, both
      truthfully `Parent-System: None`, with a relation nothing can currently declare
- [ ] Decide where the `draft-compose` orchestrator System lives (new repository, per O6)
- [ ] Build `draft-compose` as a plain reader first - scan `.draft/`, read the blocks,
      render the table. The protocol is specified afterwards, against what real reads
      break. `DRAFT-STATE` has been instantiated once and never read (D4 `null`);
      specifying further on one instance is the vibe-specing this method exists to prevent

---

## [MAINTENANCE]

- [ ] Confirm whether GitHub Discussions is enabled (referenced by `SUPPORT.md`); adjust
      the link or disable the reference if not
- [ ] Install `pipx` (or accept the current fallback) to actually exercise `make spell`
      and the `lychee`-based half of `make links`
- [ ] Re-run the D1/D2 propagation check at the next version bump, and again if
      `[SUB-SYSTEMS]` gains a real child System in this repository
- [ ] At every commit, check the `DRAFT-STATE` block's `updated:` against `STATE.md`'s
      `LAST FILE UPDATE:` - both are written by hand from the same fact and can drift
      silently
- [ ] At every commit, check the message names its change (M32). No bare `update`/`fix`,
      no `Update <file>` web-editor default, no version-number-only subject. If the
      message can only be "update", split the commit instead

---

## [CLOSED]

*Kept until the version is closed, then dropped.*

- [x] Provision `security@saycalabs.com` - live and receiving; placeholder removed from
      `SECURITY.md`. Routing mechanism deliberately not documented here (public
      repository)
- [x] A8 - the `STATE.md` template can now express "not eligible" without asserting a
      percentage. This file's own D4 heading is the first corrected instance
- [x] A9 - `README.md` realigned: map ASCII shows `dimensions/` and `PENDING.md`, and the
      contract-surface rule is stated. The tree no longer leads its specification
- [x] A10 - closed by withdrawal (M33). Carried forward as a reintroduction item under
      `[METHOD]`, not as an unresolved ambiguity
- [x] A11 - generalised into M36: declining an optional element is conformant use when the
      refusal is recorded with its rationale
- [x] A12 - `DRAFT Matrix` and `Mutation` defined in `README.md`; the glossary now quotes
      it instead of inventing
- [x] A13 - a Matrix is conformant to the version it declares in `maintained-with`,
      indefinitely; migration is never obligatory (M45/M46). Only the procedure remains,
      carried under `[METHOD]` as work owed a real migration
- [x] Visibility - `System-visibility` added to the `PASSPORT.md` template (M34), stating
      intent and never enforcement (M35). D0 material written before deciding
- [x] Split the `[Unreleased]` CHANGELOG section; tag the past releases retroactively
      (`v0.65.0`, `v0.66.0`, `v0.68.0`)
- [x] Close v0.69.0: `[Unreleased]` promoted to `## [0.69.0] - 2026-07-29`, tagged and
      pushed with the three retroactive tags

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: .draft/PENDING.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Open-item register for the DRAFT passport, extracted from STATE.md so the state file stays a pure snapshot.

> SPDX-FileNotice: Created 2026-07-28. Holds the accumulative items STATE.md carried until v0.69.0.
