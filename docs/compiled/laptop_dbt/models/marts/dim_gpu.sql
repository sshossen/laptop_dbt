

with s as(
 select
  lower(trim(gpu_brand)) as gpu_brand,
  lower(trim(gpu_type)) as gpu_type
  from "laptops_dw"."analytics"."stg_laptops_clean"
  where gpu_brand is not null and gpu_type is not null
)
 select
  md5(concat_ws('||', gpu_brand, gpu_type)) as gpu_sk,
  gpu_brand,
  gpu_type
  from s
  group by gpu_brand, gpu_type
  order by gpu_brand, gpu_type