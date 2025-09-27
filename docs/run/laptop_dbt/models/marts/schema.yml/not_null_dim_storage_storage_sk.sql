
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select storage_sk
from "laptops_dw"."analytics"."dim_storage"
where storage_sk is null



  
  
      
    ) dbt_internal_test