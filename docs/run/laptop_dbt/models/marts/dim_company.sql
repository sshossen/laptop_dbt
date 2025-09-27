
  
    

  create  table "laptops_dw"."analytics"."dim_company__dbt_tmp"
  
  
    as
  
  (
    

with sub as(
 select
  lower(trim(company)) as company_name
  from "laptops_dw"."analytics"."stg_laptops_clean"
  where company is not null
    and trim(company) <> ''
)
select
 md5(company_name) as company_sk,
 company_name
 from sub
 group by company_name
 order by company_name
  );
  