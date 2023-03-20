{{ config(materialized='table') }}

with source_data as (

    select * from {{ ref('raw_customer_data') }}
)

select *
from source_data
