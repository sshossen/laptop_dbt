
    
    

select
    company_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_company"
where company_sk is not null
group by company_sk
having count(*) > 1


