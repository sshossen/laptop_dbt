
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select display_sk
from "laptops_dw"."analytics"."dim_display"
where display_sk is null



  
  
      
    ) dbt_internal_test