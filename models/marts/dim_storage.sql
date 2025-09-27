{{ config(materialized='table') }}

with sub as (
 select
  lower(trim(coalesce(memory_hdd::text,''))) as memory_hdd,
  lower(trim(coalesce(memory_ssd::text,''))) as memory_ssd,
  lower(trim(coalesce(memory_hybrid::text,''))) as memory_hybrid,
  lower(trim(coalesce(memory_flash_storage::text,''))) as memory_flash_storage
  from {{ ref('stg_laptops_clean') }}
)
 select
  md5(concat_ws('||', memory_hdd, memory_ssd, memory_hybrid, memory_flash_storage)) as storage_sk,
  memory_hdd, memory_ssd, memory_hybrid, memory_flash_storage

  from sub
  group by memory_hdd, memory_ssd, memory_hybrid, memory_flash_storage
  order by memory_hdd, memory_ssd, memory_hybrid, memory_flash_storage
