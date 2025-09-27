
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select laptop_id_nat
from "laptops_dw"."analytics"."fact_laptop"
where laptop_id_nat is null



  
  
      
    ) dbt_internal_test