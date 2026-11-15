---
name: api-probe
description: Probe what a third-party API really returns before designing on it. Use on "sonde", "probe", "tester l'API". Privacy-safe, quota-paced. Software instance of DRAFT PROBE.
license: Apache-2.0
---

# api-probe

One probe = one closed list of questions, answered by the API itself.
Reference run: six probes on a school intranet API, 2026-11.

## Rules

1. The user runs probes holding secrets. The agent writes, syntax-checks and
   tests the jq logic on synthetic JSON, never reads the secret.
2. Secret in `~/.config/<project>/.env`, mode 600. Script sources it, never echoes.
3. Scripts live outside `/tmp`: the scratchpad is wiped on session restart.
   `~/.config/<project>/probeN.sh`, then a copy versioned in the repo.
4. Sequential, `sleep 1` between calls, under the measured per-second quota.
   Print rate-limit headers at the end. No threads.
5. Output = field NAMES, types, `X-Total`, enum values, aggregate stats
   (n, p10, median, p90). Never a login, email, comment or per-person value.
   Ids may be used in requests, never printed.
6. On non-200, print the first 200-300 bytes of the body: error messages name
   the missing scope or role.
7. Do not `set -e` across independent checks: one refused route must not hide
   the others. Empty arrays must not crash `jq` (`.[0] // {}`).
8. Test each hypothesis with the cheapest discriminating call (`page[size]=1`,
   read `X-Total`). Prefer server-side aggregate routes when they exist.

## Record

- Raw results: `docs/findings-g6.md`, one section per run, dated, absolute.
- Registry: `docs/discovery.md`, one row per data point and feature, status
  VERIFIED / PROBABLE / TO PROBE / BLOCKED / EXCLUDED, evidence = probe number.
- Update the registry row after every run; queue new questions as TO PROBE rows.
- Cross-project API behaviour goes to a shared knowledge store, if one exists.
