
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cpu_sk
from "laptops_dw"."analytics"."dim_cpu"
where cpu_sk is null



  
  
      
    ) dbt_internal_test