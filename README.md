<h1 align="center">⬠ DRAFT ⬠</h1>

<p align="center">
  <b>A five-dimension space with many tools, that keeps any project from forgetting why it was built the way it was.</b><br>
  For humans, AI copilots and autonomous agents working on the same System.<br>
  Ideas, rules, design, build and field feedback live in one <code>.draft/</code> folder that any reader
  can audit, and every change travels back to the cheapest place to fix it.
</p>

<p align="center">
  <a href="METHOD.md"><img alt="version" src="https://img.shields.io/badge/DRAFT-v0.73.0-4A6CF7?labelColor=0A0D12"></a>
  <a href="AI-skills/draft-v0-73-0/SKILL.md"><img alt="agent skill" src="https://img.shields.io/badge/agent%20skill-SKILL.md-4A6CF7?labelColor=0A0D12"></a>
  <a href="CODE_LICENSE"><img alt="Apache 2.0 for code" src="https://img.shields.io/badge/license-Apache%202.0-4A6CF7?labelColor=0A0D12"></a>
  <a href="DOCS_LICENSE"><img alt="CC BY 4.0 for docs" src="https://img.shields.io/badge/license-CC%20BY%204.0-4A6CF7?labelColor=0A0D12"></a>
</p>

## Install

DRAFT is a method, built on its formal 5D "pentaspace", **not a program**: installing it means giving your agent the skill, or reading the method yourself.

| Reader | Install |
|---|---|
| **Claude Code** | `git clone https://github.com/Sayca-Jferone/DRAFT` then `ln -s "$PWD/DRAFT/AI-skills/draft-v0-73-0" ~/.claude/skills/draft-v0-73-0` |
| **claude.ai** | Zip `AI-skills/draft-v0-73-0/` and upload it as a custom skill ([how](https://support.claude.com/en/articles/12512180-using-skills-in-claude)) |
| **Any other agent** | Point it at [`AI-skills/draft-v0-73-0/SKILL.md`](AI-skills/draft-v0-73-0/SKILL.md): it loads the rest on demand |
| **A human** | Read the [Dimensions](#the-five-dimensions) below, then the full method in [`METHOD.md`](METHOD.md) |

Older skill versions stay in [`AI-skills/`](AI-skills/) as a record. A Matrix is read with the version it
declares, so nothing you wrote under an older version expires.

## Try it

> Start a DRAFT Matrix for this repository. Collect what already exists into D0 before writing any rule.

> Here is the subject PDF. Build the D1 checklist: every requirement, every ambiguity, nothing resolved silently.

> Audit `src/` against the D2 contracts and tell me which defects are formal and which are logic errors.

> A user reported this bug. Propagate it: which dimension does it really belong to?

The agent starts at whichever dimension your material is in, and works the same way every time:

1. collect raw material without judging it (D0);
2. turn it into numbered, sourced rules, with every ambiguity named (D1);
3. write one contract per unit: what it owns, takes, does, guarantees, and how it fails (D2);
4. build against those contracts, and audit the build against them (D3);
5. record what reality says back (D4), and send each finding to the dimension that owns it.

## The five dimensions

| DRC factors | Dimension | What lives there | DRAFT Tools examples |
|---|---|---|---|
| **D0** | Emergence | Raw ideas, sources, open questions | `TOPO` low-res system schematics |
| **D1** | Condition | The rules: single source of truth | `FMBOA` specs & requirements |
| **D2** | Conception | The logic: one contract per unit | `BIOPGE` system logical blueprint |
| **D3** | Incarnation | The thing itself: code, a business, a document | Whatever the System is, itself |
| **D4** | Experience | What use and failure taught | Feedback journals & logs |

**D-factor numbers are the "dimension refactor cost factor", not an order of "where to start".** Changing D0 costs nothing in production; changing D4 means a fault already
reached someone in real system usage. A bug found in the build is sent back to the cheapest dimension that explains it: repairing
is descending the axis, so going back is never a failure.

**DRAFT is domain-agnostic.** Software, a company, a course, a legal file, a game mod: if it has rules and a
build, it has a Matrix. DRAFT carries its own, in [`.draft/`](.draft/).

## What an average Matrix looks like

```txt
.draft/
  PASSPORT.md                        identity: name, version, license, method version
  STATE.md                           where each dimension stands, session by session
  PENDING.md                         temporary file, decided-not-done, and open questions owed a decision
  dimensions/
    D0-emergence/IDEATION.md
    D1-condition/RSD-FMBOA.md        F formats, M mandatory, B bonus, O open, A ambiguous
    D2-conception/SLB-BIOPGE.md      one contract per unit
    D3-incarnation/DEVJOURNAL.md
    D4-experience/FEEDBACKS.md
```

A D1 rule is one row: an ID, a cost flag, a state, the full text, its source.

```markdown
<!-- DRAFT:FMBOA category=M -->
| ID | ! | State | Item | Source |
|---|---|---|---|---|
| M1 | 💀 | 🔵 | The container restarts on crash. | subject p. 7 |
```

A D2 contract is one block per unit, written before the unit is built:

| BIOPGE | Content |
|---|---|
| **B**oundary | `io.c` - owns disk reads and JSON validation. NOT argument parsing, NOT business logic |
| **I**nputs | `path: str`, existing readable file |
| **O**utputs | `list`, side effect: none |
| **P**rocess | 1. open fd -> 2. parse JSON -> 3. check outer type is a list -> 4. return it |
| **G**uaranty | fd always closed; output parseable by `json.loads` |
| **E**rrors | missing file -> `FileNotFoundError`, propagated; caller exits 1 |

Every structured table is a block a tool can read and rewrite. No count or percentage is stored where a
reader can compute it, so the Matrix cannot drift from itself.

## What it actually produced

One traced cycle, not a benchmark: one System, one author, no control group.

**Inception** (42 school, Docker / WordPress / MariaDB / NGINX), full D0 -> D3, July to September 2026:

| Dimension | Outcome |
|---|---|
| D1 | 266 rules, 58 mandatory, 27 terminal clauses with the observation that would expose each violation |
| D2 | 11 contracts derived from D1 with zero new questions to the author |
| D3 | 882 lines, 6 defects, all formal, zero logic errors |

No contract described the wrong thing. Two of the six defects passed every runtime test and were only caught
by auditing the build against its contracts. The cost: six weeks of D1 before the first line of substrate.
A System too small to have a specification problem will not repay that.

Details and what is deliberately not claimed: [`METHOD.md`](METHOD.md), section *What DRAFT actually produced*.

## Rules it follows

- **Nothing is built before its contract exists**, except a unit with at most one interface.
- **No ambiguity is resolved silently.** It is resolved by a question, or marked `[ASSUMED]` with a reason.
- **A logic error is never reclassified as formal** to avoid friction.
- **Any change triggers a propagation check** across the four other dimensions, until the version is closed.
- **Any dimension can be handed to a third party**, human or AI, without loss of logical content.
- **Neutral tool, not neutral use.** DRAFT is never used to exploit a System's flaws or bypass its
  safeguards. See [`METHOD.md`](METHOD.md), section *Ethics*.

## Break this method

DRAFT is a single-author v0.x method, and its strongest claims are its least tested. The most useful
contribution is a concrete case where it fails:

- a System that does not fit the five dimensions, or fits only by forcing it;
- a contract that cannot be written for a real component;
- a project where the protocol cost more than it saved;
- a propagation that loops without converging.

Open an issue with the **Destruction report** template. Contribution rules are in [`.github/`](.github/).

## Go deeper

| File | Holds |
|---|---|
| [`METHOD.md`](METHOD.md) | The full method: definitions, every dimension's discipline and exit gates, propagation, sub-systems |
| [`GLOSSARY.md`](GLOSSARY.md) | Every term, one definition each |
| [`CHANGELOG.md`](CHANGELOG.md) | What changed per version, and why |
| [`AI-skills/`](AI-skills/) | The method as agent skills, current and past versions |

## AI usage

DRAFT is about traceability, so it declares its own tools.

**What is the author's.** The method itself. DRAFT is the author's own working
methodology, refined and opened: the sequence by which a System is approached, specified
and composed, as practised before any agent wrote a line of it. That covers the
definitions, the five dimensions, the formats, the hard rules, every version decision,
and every arbitration recorded in this repository's Matrix (each resolved `O-XX` and
`A-XX`). Agents helped write it down; they did not originate it.

**What AI agents do.** Anthropic Claude models (Opus, Sonnet), through Claude Code and
claude.ai, work as tools under the author's review:

- drafting and restructuring text from decisions already made: changelog, glossary, the
  skill folders in `AI-skills/`, governance files in `.github/`;
- version migrations of a Matrix, verified afterwards by counting entries per category;
- conformity audits of a build against its D2 contracts;
- external critique: an independent instance is asked to attack a draft, and its
  objections enter D0 as raw material, never as decisions.

**How it is controlled.** Agents are bound by the same hard rules as humans: no silent
resolution of an ambiguity, no build before its contract. Nothing an agent returns is
recorded before the author has reviewed it: on a measured delegation, six units
returned with passing tests still held six defects, none flagged by the agent itself.
This repository's own journal
([`DEVJOURNAL.md`](.draft/dimensions/D3-incarnation/DEVJOURNAL.md)) states, entry by
entry, which changes were the author's and which were the agent's.

**Attribution.** Every commit is authored by the author. Five commits of 2026-09-26
carry a `Co-Authored-By: Claude` trailer, from before this declaration replaced
trailers; they are kept as they are rather than rewriting public history. A run made by
an agent with no human review would be signed by that agent.

## License

Apache 2.0, see [`LICENSE`](LICENSE) and [`NOTICE`](NOTICE). Cite it with [`CITATION.cff`](CITATION.cff).
Author: Sayca Jason FERONE (`@sayca-jferone`).

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>
>
> SPDX-License-Identifier: Apache-2.0
