# Security Policy

> Applies to: `DRAFT Matrix` | repository [Sayca-Jferone/DRAFT](https://github.com/Sayca-Jferone/DRAFT)

## Current scope

At the present Version (`v0.68.0`), this repository's D3 (Incarnation) is entirely
documentary: `README.md`, `AI-skills/`, and the governance files at the repository root.
There is **no executable substrate** here - no runtime, no build, no dependency tree to
attack in the conventional sense.

This does not make the repository risk-free. In scope today:

- **AI-skill manipulation.** An [`AI-skills/`](AI-skills/) file is a prompt injected into
  an agent's context. A crafted issue, PR, or upstream content could attempt to make an
  AI-skill instruct an agent to bypass its own safety guardrails, exfiltrate data, or act
  outside a scope the user granted it. This is a prompt-injection / jailbreak vector
  introduced through the method's own operational form, and it is treated as a security
  issue, not a method disagreement.
- **Leaked credentials or private data** accidentally committed to the repository.
- **Supply-chain concerns**, if any tooling, CI, or dependency is introduced in the
  future. None exists at present.

Out of scope: disagreements about where the [`README.md`](README.md) `[ETHICS]` clause
draws the line, or about the [HARD_RULES] themselves - open a normal issue for those, per
[`SUPPORT.md`](SUPPORT.md).

## Scope will expand with D3

The moment this repository (or a System built on top of it) carries an executable
substrate - source code, a CLI, a build pipeline - standard software vulnerability
classes enter scope: injection, deserialization, dependency vulnerabilities, and so on.
This file will be revised at that point, following the [`README.md`](README.md)
`[PROPAGATION]` rule: a change to D3's nature triggers a re-check of this policy. Until
then, the scope above is exhaustive, not illustrative.

## Reporting a vulnerability

**Do not open a public issue for a security concern.**

Report privately to: <security@saycalabs.com>

Include:

- A description of the issue and its potential impact.
- Steps to reproduce, or the specific AI-skill / file / prompt sequence involved.
- Any suggested mitigation, if you have one.

## Response targets

| Step | Target |
| --- | --- |
| Acknowledgement | Within 7 days |
| Initial assessment and next steps | Within 30 days of acknowledgement |
| Credit | Offered to reporters who wish it, once a fix or mitigation is published |

These are targets for a single-maintainer, source-available project, not contractual
SLAs.

## Disclosure

Coordinated disclosure is expected: please allow a fix or public mitigation to be
published before discussing the issue publicly. There is no bug bounty program.

---

## [LICENSE]

> SPDX-FileCopyrightText: 2026 Sayca Jason FERONE <legal@saycalabs.com>

> SPDX-License-Identifier: Apache-2.0

> SPDX-FileName: SECURITY.md

> SPDX-FileType: DOCUMENTATION

> SPDX-FileComment: Responsible disclosure process for the DRAFT project.

> SPDX-FileNotice: Scope is documentary at v0.68.0 and will expand when D3 gains an executable substrate.
