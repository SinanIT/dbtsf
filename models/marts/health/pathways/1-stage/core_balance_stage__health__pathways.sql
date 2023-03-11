{{
config(
alias = 'core_balance_stage',
materialized = 'table'
)
}}

select distinct
administrator_code,
administrator_name;
admin_id
from {{ref('dim_balance__prep__health__pathways')}}