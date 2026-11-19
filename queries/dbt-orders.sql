-- name: dbt orders
-- description: Reference model SQL; importing does not execute or verify it.
-- datasource: warehouse
-- source: dbt:models/orders.sql
select * from orders
