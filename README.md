<h1 align="center">DRAFT</h1>

<p align="center">
  <b>D</b>iscover - <b>R</b>egister - <b>A</b>rticulate - <b>F</b>abricate - <b>T</b>rack<br>
  <i>a method to think, specify, build and learn from any System</i>
</p>
<p align="center">
  <a href="CHANGELOG.md"><img alt="version" src="https://img.shields.io/badge/DRAFT-v0.74.0-4A6CF7?labelColor=0A0D12"></a>
  <a href="skills/draft/SKILL.md"><img alt="agent skill" src="https://img.shields.io/badge/agent%20skill-SKILL.md-4A6CF7?labelColor=0A0D12"></a>
  <a href="LICENSE"><img alt="Apache 2.0 for code" src="https://img.shields.io/badge/code_license-Apache%202.0-4A6CF7?labelColor=0A0D12"></a>
  <a href="LICENSE"><img alt="CC BY 4.0 for docs" src="https://img.shields.io/badge/docs_license-CC%20BY%204.0-4A6CF7?labelColor=0A0D12"></a>
</p>

## In one minute

**What it is for.** DRAFT keeps everything you know about a System - an app, a
company, a course, a contract, a game mod - in five separate views, so that every
idea, rule, design decision, build step and piece of user feedback has exactly one
place, and every mistake can be traced back to where it was cheapest to fix.

**Think of it as** an architect's set of plans: the brief, the regulations, the
blueprints, the building site and the residents' complaints are kept apart, yet a
crack in a wall can always be followed back to the plan that caused it.

**Where the comparison stops.** Plans are drawn once, before building. DRAFT runs
in a loop: what users report becomes raw material for the next version.

**Who it is for.** A human working alone, a human with AI assistants, or a team.
DRAFT is a method, not a program: you read it, or you give it to your AI as skills.

## The picture

Five views of the System (D0 to D4), joined by tools. Each tool moves knowledge
from one view to the next. Each verb of the name is the step into a view.

```mermaid
flowchart LR
  W(("?<br>the world")) -- "Discover<br>PROBE" --> D0["D0 Emergence<br>ideas"]
  D0 -- "Register<br>FRAME, FMBOA" --> D1["D1 Condition<br>rules"]
  D1 -- "Articulate<br>BIOPGE" --> D2["D2 Conception<br>logic"]
  D2 -- "Fabricate<br>AUDIT" --> D3["D3 Fabrication<br>the thing"]
  D3 -- "Track<br>STRESS-TEST" --> D4["D4 Consumption<br>real use"]
  D4 -- "Ascend<br>VERSION ASCENSION" --> N(["next version<br>or fork"])
  N -.-> D0
```

| View | Name | Holds | Cost of a change here |
|---|---|---|---|
| **D0** | Emergence | ideas, sources, open questions | none |
| **D1** | Condition | the rules, numbered and sourced: the single source of truth | minimal |
| **D2** | Conception | the logic: one contract per unit, written before it is built | moderate |
| **D3** | Fabrication | the thing itself: code, document, process, object | high |
| **D4** | Consumption | what real use reports back | extreme: it already reached someone |

The numbers rank **cost**, not order: start wherever your material is. Fixing a
problem means walking back to the cheapest view that explains it, and going back is
never a failure.

## The tools

A DRAFT tool is replaceable: it does one step, and another tool could do it
instead. The default ones:

| Step | Tool | What it does |
|---|---|---|
| Discover: world -> D0 | **PROBE** | measures an unverified fact (an API, a material, a rule) before you design on it |
| Register: D0 -> D1 | **FRAME** | writes what the System is for and its outline, before any rule |
| Register: D0 -> D1 | **FMBOA** | sorts every requirement into Formats, Mandatory, Beyond, Open points, Ambiguities |
| Articulate: D1 -> D2 | **BIOPGE** | one contract per unit: Boundary, Inputs, Outputs, Process, Guaranty, Errors |
| Articulate: D1 -> D2 | GRAIN schema | optional map of the System's large blocks, before contracts |
| Fabricate: D2 -> D3 | SIMULATE | optional dry run of the contracts, to find contradictions before building |
| Fabricate: D2 -> D3 | **AUDIT** | checks the built thing against its contracts |
| Track: D3 -> D4 | **STRESS-TEST** | confronts the thing with simulated real use before real users do |
| Ascend: D4 -> next | **VERSION ASCENSION** | compares what users did with what the System was for |

### The zoom: GRAIN

Every piece of knowledge also sits at a level of detail, from G0 (an analogy) to G6
(a measured run). DRAFT is read through this scale, called GRAIN:

| G0 | G1 | G2 | G3 | G4 | G5 | G6 |
|---|---|---|---|---|---|---|
| Analogy | Silhouette | Topology | Requirement | Contract | Substrate | Execution |
| what it is for | who uses it, what goes in and out | the large blocks | what must hold | what each unit guarantees | the thing itself | what a run shows |

Each view has a home level: rules live at G3, contracts at G4, the built thing at G5
and G6. A view never holds anything finer than its home level: no code inside the
rules, no code inside the contracts. The full map of which tool writes at which
level is in [`skills/draft/DRAFT_tools/CATALOGUE.md`](skills/draft/DRAFT_tools/CATALOGUE.md).

## Use it

| You are | Do this |
|---|---|
| **A human reader** | Read this page, then [`METHOD.md`](METHOD.md) |
| **Claude Code** | `/plugin marketplace add Sayca-Jferone/DRAFT`, then `/plugin install draft@saycalabs-draft` |
| **claude.ai** | Download `draft.zip` and `grain.zip` from the [latest release](https://github.com/Sayca-Jferone/DRAFT/releases/latest), upload each as a custom skill in your settings |
| **Any other AI** | Download `DRAFT-<version>.md` from the [latest release](https://github.com/Sayca-Jferone/DRAFT/releases/latest) and attach it to your conversation |
| **Manual install** | Clone this repository and copy or link `skills/draft/` and `skills/grain/` into your agent's skills folder |

Optional, for software work: the `draft-instances` plugin (or `stress-gate.zip` and
`api-probe.zip`) gives code-specific versions of STRESS-TEST and PROBE.

Each release is archived. A project written under an older version is read with
that version: nothing you wrote expires. Versions up to 0.73.1 are also kept in
[`AI-skills/`](AI-skills/).

### What to ask your AI

> "Start a DRAFT Matrix for this repository. Collect what already exists into D0 before writing any rule."

> "Here is the subject PDF. Write the FRAME, then the D1 requirements: every ambiguity named, nothing resolved silently."

> "Audit `src/` against the D2 contracts and tell me which defects are formal and which are logic errors."

> "A user reported this bug. Which view does it really belong to?"

## What a project's DRAFT folder looks like

A project using DRAFT keeps its views in a `.draft/` folder, called its Matrix:

```txt
.draft/
  PASSPORT.md                        identity: name, version, license, DRAFT version
  STATE.md                           optional: where each view stands (or use your issue tracker)
  PENDING.md                         optional: decided-not-done, and open questions
  dimensions/
    D0-emergence/IDEATION.md
    D1-condition/SRS-FMBOA.md        FRAME at the head, then F M B O A rules
    D2-conception/SLB-BIOPGE.md      one contract per unit
    D3-fabrication/DEVJOURNAL.md
    D4-consumption/FEEDBACKS.md
```

A D1 rule is one row: an ID, a state, the requirement, how to verify it, whether it
is built and tested, and where it came from:

| ID | STATE | ITEM | Verify | Dev | Test | Source |
|---|---|---|---|---|---|---|
| M1 | ⚫ | The container restarts on crash. | kill it, watch it return | ⚫ | ⚫ | subject p. 7 |

A D2 contract is one table per unit, written before the unit is built:

| BIOPGE | Content |
|---|---|
| **B**oundary | `io.c` - owns disk reads and JSON validation. NOT argument parsing, NOT business logic |
| **I**nputs | `path: str`, existing readable file |
| **O**utputs | `list`, side effect: none |
| **P**rocess | 1. open fd -> 2. parse JSON -> 3. check outer type is a list -> 4. return it |
| **G**uaranty | fd always closed; output parseable by `json.loads` |
| **E**rrors | missing file -> `FileNotFoundError`, propagated; caller exits 1 |

No count or percentage is stored where a reader can compute it, so the Matrix cannot
drift from itself. The Matrix is plain Markdown: a human or an AI reads it, no
special software is needed.

## What it actually produced

One traced cycle, not a benchmark: one System, one author, no control group.

**Inception** (42 school, Docker / WordPress / MariaDB / NGINX), D0 to D3, July to
September 2026:

| View | Outcome |
|---|---|
| D1 | 266 rules, 58 mandatory, 27 terminal clauses with the observation that would expose each violation |
| D2 | 11 contracts derived from D1 with zero new questions to the author |
| D3 | 882 lines, 6 defects, all formal, zero logic errors |

No contract described the wrong thing. Two of the six defects passed every runtime
test and were only caught by auditing the build against its contracts. The cost: six
weeks of D1 before the first line of substrate. A System too small to have a
specification problem will not repay that.

Details and what is deliberately not claimed: [`METHOD.md`](METHOD.md), section
*What DRAFT actually produced*.

## Rules it follows

- **Nothing is built before its contract exists**, except a unit with at most one interface.
- **No ambiguity is resolved silently.** It is resolved by a question, or marked `[ASSUMED]` with a reason.
- **A logic error is never reclassified as formal** to avoid friction.
- **Any change triggers a propagation check** across the four other views, until the version is closed.
- **No view holds detail finer than its home level**: no code in the rules, no code in the contracts.
- **Any view can be handed to a third party**, human or AI, without loss of logical content.
- **Neutral tool, not neutral use.** DRAFT is never used to exploit a System's flaws or bypass its
  safeguards. See [`METHOD.md`](METHOD.md), section *Ethics*.

## Break this method

DRAFT is a single-author v0.x method, and its strongest claims are its least tested.
The most useful contribution is a concrete case where it fails:

- a System that does not fit the five views, or fits only by forcing it;
- a contract that cannot be written for a real component;
- a project where the method cost more than it saved;
- a propagation that loops without converging.

Open an issue with the **Destruction report** template. Contribution rules are in
[`.github/`](.github/).

## Go deeper

| File | Holds |
|---|---|
| [`METHOD.md`](METHOD.md) | The full method: definitions, every view's discipline and exit gates, propagation, sub-systems |
| [`GLOSSARY.md`](GLOSSARY.md) | Every term, one definition each |
| [`CHANGELOG.md`](CHANGELOG.md) | What changed per version, and why |
| [`skills/`](skills/) | The method as agent skills: `draft`, `grain`, and the software instances |
| [`skills/draft/DRAFT_tools/`](skills/draft/DRAFT_tools/) | Every tool, its rules and its catalogue |

The public version does not include the `Dε` view, upstream of D0, and its WTNE
engine (Wished Theoretical Non-Existents simulation tables).

## AI usage

DRAFT is about traceability, so it declares its own tools.

**What is the author's.** The method itself. DRAFT is the author's own working
methodology, refined and opened: the sequence by which a System is approached,
specified and composed, as practised before any agent wrote a line of it. That covers
the definitions, the five views, the tools, the formats, the hard rules and every
version decision. Agents helped write it down; they did not originate it.

**What AI agents do.** Anthropic Claude models, through Claude Code and claude.ai,
work as tools under the author's review:

- drafting and restructuring text from decisions already made: changelog, glossary,
  the skills in `skills/`, governance files in `.github/`;
- quality passes over the method itself, whose findings the author accepts or rejects;
- version migrations of a Matrix, verified afterwards by counting entries per category;
- conformity audits of a build against its D2 contracts;
- external critique: an independent instance is asked to attack a draft, and its
  objections enter D0 as raw material, never as decisions.

**How it is controlled.** Agents are bound by the same hard rules as humans: no
silent resolution of an ambiguity, no build before its contract. Nothing an agent
returns is recorded before the author has reviewed it: on a measured delegation, six
units returned with passing tests still held six defects, none flagged by the agent
itself.

**Attribution.** Every commit is authored by the author. Five commits of 2026-09-26
carry a `Co-Authored-By: Claude` trailer, from before this declaration replaced
trailers; they are kept as they are rather than rewriting public history. A run made
by an agent with no human review would be signed by that agent.

## License

Author: Sayca Jason FERONE (`@sayca-jferone`) under **Sayca Labs** signature.

Code and skills: `Apache 2.0`. Docs: `CC BY 4.0`.

See [`LICENSE`](LICENSE) and [`NOTICE`](NOTICE). Cite it with [`CITATION.cff`](CITATION.cff).

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>
>
> SPDX-License-Identifier: Apache-2.0
>
> DOCS-License-Identifier: CC BY 4.0
