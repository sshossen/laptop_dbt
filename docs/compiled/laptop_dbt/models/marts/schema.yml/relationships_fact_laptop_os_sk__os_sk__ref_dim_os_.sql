
    
    

with child as (
    select os_sk as from_field
    from "laptops_dw"."analytics"."fact_laptop"
    where os_sk is not null
),

parent as (
    select os_sk as to_field
    from "laptops_dw"."analytics"."dim_os"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


