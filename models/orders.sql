{{ config(materialized='table') }}

with source_data as (

    select * from {{ ref('raw_orders_data') }}
)

select *
from source_data
