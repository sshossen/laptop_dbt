
  create view "laptops_dw"."analytics"."stg_laptops_clean__dbt_tmp"
    
    
  as (
    
select
*
from "laptops_dw"."public"."stg_laptops"
  );