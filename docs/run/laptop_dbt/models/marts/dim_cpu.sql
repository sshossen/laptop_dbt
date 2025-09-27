
  
    

  create  table "laptops_dw"."analytics"."dim_cpu__dbt_tmp"
  
  
    as
  
  (
    

with s as(

 select 
  lower(trim(cpu_brand)) as cpu_brand,
  lower(trim(coalesce(cpu_generation, ''))) as cpu_generation
  from "laptops_dw"."analytics"."stg_laptops_clean"
)
 select
  md5(concat_ws('||', cpu_brand, cpu_generation)) as cpu_sk,
  cpu_brand,
  cpu_generation
  from s
  group by cpu_brand, cpu_generation
  order by cpu_brand, cpu_generation
  );
  