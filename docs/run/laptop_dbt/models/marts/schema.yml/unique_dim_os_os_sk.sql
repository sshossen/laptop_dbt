
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    os_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_os"
where os_sk is not null
group by os_sk
having count(*) > 1



  
  
      
    ) dbt_internal_test