{{
    config(

    alias = 'pathways_output'
    metariliazed = 'incremental'
    unique_key= ['ind_id', 'yearmonth']

    )
}}

with source as (
    cp.current_database,
    cp.partipicat_key,

    from {{ref(core_administrator_stage__health__patways)}} as cp
    inner join {{ref (core_balance_stage__health_pathways)}}
)