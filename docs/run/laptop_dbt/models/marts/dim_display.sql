
  
    

  create  table "laptops_dw"."analytics"."dim_display__dbt_tmp"
  
  
    as
  
  (
    

with sub as(
 select
  nullif(trim(inches::text),'')::numeric as inches,
  nullif(trim(resolution_x::text),'')::int as resolution_x,
  nullif(trim(resolution_y::text),'')::int as resolution_y,
  coalesce(ips::text, '') as ips,
  coalesce(retina::text,'') as retina,
  coalesce(touchscreen::text, '') as touchscreen
  
  from "laptops_dw"."analytics"."stg_laptops_clean" 
)

select 
  md5(concat_ws('||',inches,resolution_x, resolution_y,
            ips, retina, touchscreen)) as display_sk,
	    inches, resolution_x,resolution_y,ips, retina, touchscreen	  from sub
  group by inches, resolution_x, resolution_y, ips, retina, touchscreen
  order by inches, resolution_y, resolution_y
  );
  