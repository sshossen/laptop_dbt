
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    display_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_display"
where display_sk is not null
group by display_sk
having count(*) > 1



  
  
      
    ) dbt_internal_test