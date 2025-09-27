
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    laptop_id_nat as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."fact_laptop"
where laptop_id_nat is not null
group by laptop_id_nat
having count(*) > 1



  
  
      
    ) dbt_internal_test