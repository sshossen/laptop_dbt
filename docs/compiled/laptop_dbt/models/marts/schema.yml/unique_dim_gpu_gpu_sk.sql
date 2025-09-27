
    
    

select
    gpu_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_gpu"
where gpu_sk is not null
group by gpu_sk
having count(*) > 1


