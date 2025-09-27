{{ config(materialized='view') }}
select
*
from {{ source('base', 'stg_laptops') }}
