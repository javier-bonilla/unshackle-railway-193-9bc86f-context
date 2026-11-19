# Migration report

| Tool | Tables | Semantic models | Metrics | Dashboards | Queries | Knowledge | Permissions | Row filters |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| dbt | 1 | 1 | 1 | 0 | 1 | 0 | 0 | 0 |
| warehouse | 10 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

## This run

- 0 files written, 3 unchanged.

## Still to translate (0)

Nothing marked TODO(unshackle).

## Warnings (2)

| Tool | Severity | Item | Message |
| --- | --- | --- | --- |
| dbt | warn | datasource warehouse | warehouse type unknown, so semantic expressions are labelled ANSI_SQL; set [datasources.warehouse] type in unshackle.toml and re-run build |
| warehouse | info | datasource warehouse | warehouse type 'postgres' taken from the warehouse export; set [datasources.warehouse] type in unshackle.toml to override |
