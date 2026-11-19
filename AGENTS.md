# context

This repo holds the company's analytics as code: metrics, schema, knowledge,
verified queries, notebooks and permissions. If you use a coding agent
to finish the migration, have it read this file first.

## Where things live

Folders appear when unshackle (or you) first write to them.

| Folder | What it holds | Format |
| --- | --- | --- |
| `semantic/` | Metrics and the semantic layer | Apache Ossie YAML (`*.ossie.yaml`); MetricFlow YAML too in dbt projects |
| `catalog/<datasource>/<schema>/<table>.yml` | Tables, columns, descriptions | YAML, one file per table |
| `knowledge/` | Glossary, business rules, AI context | Markdown with frontmatter |
| `queries/` | Verified queries | SQL or Python with a comment header |
| `notebooks/` | Dashboards as notebooks | Jupyter `.ipynb` (SQL + Altair) |
| `policies/` | Who can see or query what | Cedar + `row_filters.*.yml` |
| `evals/` | Question -> expected answer, written by `unshackle verify` for passing parity cases | YAML |
| `data/` | Data copied out of the BI tool (`--with-data`), git-ignored | Parquet |
| `migration/` | Written by unshackle only: raw exports, report, lock, skills, parity cases | - |

## Migrating from a BI tool

This repo was set up with unshackle. To finish or
re-run a migration, load `migration/skills/migrate/SKILL.md` and follow it.
TODOs written as `TODO(unshackle)` point at skills like `skills/translate-metrics`:
those live under `migration/skills/`, and the structure is documented in
`migration/spec/layout.md`. `unshackle todo` lists what's left and
`migration/report.md` has the full picture. After upgrading unshackle, refresh the
skills with `unshackle init --update-skills`.

## Rules for agents

1. Prefer a metric in `semantic/` over writing new aggregation SQL.
2. Prefer a verified query in `queries/` over writing a new one for the same question.
3. Treat knowledge files with `context: always` as standing guidance when working in this repo.
4. Review `policies/` before running queries. These files describe intended access rules; this repo does not enforce them by itself.
5. Charts are Altair (Vega-Lite). Keep notebooks saved without outputs (they can contain data).
6. Anything marked `TODO(unshackle)` was not migrated faithfully yet. Don't trust it until it's resolved.
