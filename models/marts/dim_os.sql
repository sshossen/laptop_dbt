{{ config(materialized='table') }}

select
 md5(lower(trim(os_type))) as os_sk,
 lower(trim(os_type)) as os_name
 from {{ ref('stg_laptops_clean') }} 
 where os_type is not null and trim(os_type) <> ''
 group by os_name
 order by os_name
