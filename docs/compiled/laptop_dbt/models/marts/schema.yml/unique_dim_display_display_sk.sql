
    
    

select
    display_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_display"
where display_sk is not null
group by display_sk
having count(*) > 1


