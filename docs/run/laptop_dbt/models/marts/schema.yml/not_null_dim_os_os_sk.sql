
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select os_sk
from "laptops_dw"."analytics"."dim_os"
where os_sk is null



  
  
      
    ) dbt_internal_test