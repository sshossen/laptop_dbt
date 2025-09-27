
    
    

select
    laptop_id_nat as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."fact_laptop"
where laptop_id_nat is not null
group by laptop_id_nat
having count(*) > 1


