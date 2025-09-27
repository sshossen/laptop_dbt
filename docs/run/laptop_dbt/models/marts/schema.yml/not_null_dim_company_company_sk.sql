
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select company_sk
from "laptops_dw"."analytics"."dim_company"
where company_sk is null



  
  
      
    ) dbt_internal_test