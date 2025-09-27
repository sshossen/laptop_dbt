
    
    

select
    cpu_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_cpu"
where cpu_sk is not null
group by cpu_sk
having count(*) > 1


