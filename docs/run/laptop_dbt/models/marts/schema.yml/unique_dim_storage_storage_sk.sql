
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    storage_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_storage"
where storage_sk is not null
group by storage_sk
having count(*) > 1



  
  
      
    ) dbt_internal_test