{{ config(materialized='table') }}

with sub as (
 select
	lower(trim(product)) as product_name,
   	lower(trim(type_name)) as type_name
 	
 from {{ ref('stg_laptops_clean') }}
 where product is not null and trim(product) <>''

)
select
	md5(concat_ws('||', product_name, type_name)) as product_sk,
	product_name,
	type_name
from sub
group by product_name, type_name
order by product_name, type_name
