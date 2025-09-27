
    
    

select
    os_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_os"
where os_sk is not null
group by os_sk
having count(*) > 1


