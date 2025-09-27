-- Use the `ref` function to select from other models

select *
from "laptops_dw"."analytics"."my_first_dbt_model"
where id = 1