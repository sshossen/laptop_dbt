
with sub1 as (
select
cast(id as bigint) as laptop_id_nat,
lower(trim(company)) as company_name,
lower(trim(product)) as product_name,
lower(trim(type_name)) as type_name,
    inches,
    ram,
    weight,
    lower(trim(cpu_brand)) as cpu_brand,
    lower(trim(coalesce(cpu_generation::text,''))) as cpu_generation,
    lower(trim(os_type)) as os_type,
    lower(trim(gpu_brand)) as gpu_brand,
    lower(trim(gpu_type)) as gpu_type,
    lower(trim(coalesce(memory_hdd::text,''))) as memory_hdd,
    lower(trim(coalesce(memory_ssd::text,''))) as memory_ssd,
    lower(trim(coalesce(memory_hybrid::text,''))) as memory_hybrid,
    lower(trim(coalesce(memory_flash_storage::text,''))) as memory_flash_storage,
    ips,
    retina,
    touchscreen,
    resolution_x,
    resolution_y,
    cast(price as numeric) as price
    from "laptops_dw"."analytics"."stg_laptops_clean"
),
sub2 as(
select
 sub1.*,
 dc.company_sk,
 dp.product_sk,
 dcpu.cpu_sk,
 dgpu.gpu_sk,
 dos.os_sk,
 dd.display_sk,
 ds.storage_sk
from sub1
left join "laptops_dw"."analytics"."dim_company" dc
on dc.company_name = sub1.company_name
left join "laptops_dw"."analytics"."dim_product" dp
on dp.product_name = sub1.product_name and dp.type_name = sub1.type_name
left join "laptops_dw"."analytics"."dim_cpu" dcpu
on dcpu.cpu_brand = sub1.cpu_brand and dcpu.cpu_generation = sub1.cpu_generation
left join "laptops_dw"."analytics"."dim_gpu" dgpu
on dgpu.gpu_brand = sub1.gpu_brand and dgpu.gpu_type = sub1.gpu_type
left join "laptops_dw"."analytics"."dim_os" dos
on dos.os_name = sub1.os_type
left join "laptops_dw"."analytics"."dim_display" dd
on dd.inches = sub1.inches
and dd.resolution_x = sub1.resolution_x
and dd.resolution_y = sub1.resolution_y
and dd.ips::text = sub1.ips::text
and dd.retina::text = sub1.retina::text
and dd.touchscreen::text = sub1.touchscreen::text
left join "laptops_dw"."analytics"."dim_storage" ds
on ds.memory_hdd = sub1.memory_hdd
and ds.memory_ssd = sub1.memory_ssd
and ds.memory_hybrid  = sub1.memory_hybrid
and ds.memory_flash_storage = sub1.memory_flash_storage
)

select
 laptop_id_nat,
 company_sk,
 product_sk,
 cpu_sk,
 gpu_sk,
 os_sk,
 display_sk,
 storage_sk,
 price,
 ram,
 weight,
 inches,
 type_name,
 resolution_x,
 resolution_y,
 ips,
 retina,
 touchscreen
from sub2