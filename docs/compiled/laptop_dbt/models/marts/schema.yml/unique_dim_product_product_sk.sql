
    
    

select
    product_sk as unique_field,
    count(*) as n_records

from "laptops_dw"."analytics"."dim_product"
where product_sk is not null
group by product_sk
having count(*) > 1


