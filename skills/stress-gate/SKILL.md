---
name: stress-gate
description: Heavy pre-commit gate for code: repeats, random campaigns, independent oracle, mutation, soak. Use on "stress-test", "bombarder de tests". Software instance of DRAFT STRESS-TEST.
license: Apache-2.0
metadata:
  audience: "machine"
---

# stress-gate

Author-written tests share the author's blind spots. The gate exists to find what they
cannot. Measured on a Rust TCP game server (2026-10-18): unit tests and 10M random actions all green,
yet a differential oracle found 2 real bugs, mutation found 2 test gaps, and a pipelined
send exposed a server bug that 3M request-response commands never touched.

## Gate, in order

```yaml
1 repeat:      full suite 20x, release mode. any failure = flaky, stop
2 heavy:       #[ignore] campaigns, millions of random actions, invariants checked
               after EACH action. assert the campaign reached every outcome
               (victory, death, completion...): a run that never hits a branch proves nothing
3 differential: independent oracle in another language (Python here), different
               algorithm on purpose, random inputs. compare category+subject sets, not
               message wording. generator must also produce VALID inputs, else the
               accept path is never compared. bias generators toward rare paths
               (handovers, joins) and count them
4 mutation:    break each rule once (assert-inside python replace, rebuild, test,
               restore). each mutation must fail >= 1 unit test; caught only by the
               differential -> add a unit test
5 soak:        real binary, 150 clients, minutes, all commands, abrupt disconnects.
               report p50/p99/max latency and RSS series of the SERVER pid
6 pipelined:   N commands in ONE send, count replies; one command split across two
               sends. request-response stress never exercises this
7 hygiene:     linter clean on own files, column limit, ASCII, doc links, banned
               references (private ids), no attribution trailer
```

Then: report the table, wait for the user's go, commit. Never push.

## Traps met

| Trap | Fix |
|---|---|
| `cd dir && server &` then `$!` | backgrounds the whole list: `$!` is a subshell, RSS flat at ~2 MB. Start the binary as its own statement |
| `pkill -f name` in the same command line | kills the calling shell. `pkill -x name` |
| Oracle disagrees | either side can be wrong: decide per case, fix both, rerun to 0 |
| Oracle/stress scripts in Python on a repo that bans it | keep them in the scratchpad, never in the repo |
| Lingering server from a previous run | bind fails, run tests a dead port. `pgrep -x` before each run |
| Go: gate files must not enter the repo | `go test -overlay ov.json` maps a scratchpad file to a package path: probes, campaigns and mutants run with the repo mounted read-only. One overlay dir per mutant |
| Wrapper/middleware has no second implementation | the oracle is the component unwrapped: same request to wrapped and bare, two instances so stateful limiters stay in step; compare status and headers, bodies except allowed rewrites |
| Fix proven on new code only | run the new test against the OLD file via overlay: it must fail on exactly the cases fixed. Same for the stress probe on `main` (worktree) |
| SQL path claimed fixed without a database | throwaway `postgres:<compose version>` on a private docker network, `TEST_DATABASE_URL`, integration suite `-p 1` |
