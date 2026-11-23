# PROBE - ? -> D0 (Discover)

Measures a fact of the outside world a design is about to rest on, before
designing on it. Domain-agnostic. Software instance: skill `api-probe`.

```yaml
when:    a D1 rule or a D2 contract would rest on an unverified fact (an API
         field, a material limit, a regulation, a quota, a user behaviour)
grain:   ? -> G6, written into D0. the only tool whose output enters
         at the finest grain of the coarsest dimension
output:  dated findings in D0, plus a registry row per fact: VERIFIED,
         PROBABLE, TO PROBE, BLOCKED, EXCLUDED. evidence = probe id
never:   design inside the probe. a probe answers a closed list of questions
```

```yaml
steps:
  1 questions:  a closed list, written before the probe. one probe, one list
  2 cheapest:   the cheapest discriminating measure per question
  3 safe:       no secret, no personal value in the output. names, types,
                counts, aggregates (n, p10, median, p90)
  4 paced:      under the measured limits of what is probed. no burst
  5 failure:    a refusal is data. record its message, it names the missing
                right, scope or condition
  6 record:     findings dated and absolute, registry updated, new questions
                queued as TO PROBE
```

| Domain | Probe |
|---|---|
| Software | API calls, `api-probe` |
| Physical object | sample measured on a bench |
| Organisation, process | one real case walked end to end |
| Market, users | a small fielded question, aggregates only |
| Law, norm | the text itself, cited, not a summary of it |
