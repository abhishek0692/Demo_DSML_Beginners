show databases;
show tables from world;
select * from world.city;
select count(*) from world.city;
show table status from world;
select count(distinct CountryCode) from world.city;

show create table world.city;

select * from farmers_market.product;

select p.product_id,p.product_name, pc.product_category_id,pc.product_category_name
	from farmers_market.product as p
		left join farmers_market.product_category as pc
			on p.product_category_id = pc.product_category_id;
            
select p.product_id,p.product_name, pc.product_category_id,pc.product_category_name
	from farmers_market.product as p
		left join farmers_market.product_category as pc
			on p.product_category_id = pc.product_category_id
union
select p.product_id,p.product_name, pc.product_category_id,pc.product_category_name
	from farmers_market.product as p
		right join farmers_market.product_category as pc
			on p.product_category_id = pc.product_category_id;
            
            
            
            
select p.product_id,p.product_name, pc.product_category_id,pc.product_category_name
	from farmers_market.product as p
		left join farmers_market.product_category as pc
			on p.product_category_id = pc.product_category_id
union all
select p.product_id,p.product_name, pc.product_category_id,pc.product_category_name
	from farmers_market.product as p
		right join farmers_market.product_category as pc
			on p.product_category_id = pc.product_category_id;
            
select c.*
from farmers_market.customer as c
left join farmers_market.customer_purchases as cp
on c.customer_id = cp.customer_id
where cp.customer_id is null;


select p.product_id,p.product_name, pc.product_category_id,pc.product_category_name
	from farmers_market.product_category as pc
		cross join farmers_market.product as p;
			#on p.product_category_id = pc.product_category_id;
            
select b.booth_number,b.booth_type,vba.market_date,v.vendor_name,v.vendor_type
from farmers_market.booth as b
left join farmers_market.vendor_booth_assignments as vba
on b.booth_number = vba.booth_number
join farmers_market.vendor as v
on v.vendor_id = vba.vendor_id
order by b.booth_number,vba.market_date;

select v1.vendor_name , v2.vendor_name
from farmers_market.vendor as v1
join farmers_market.vendor as v2
on v1.vendor_name = v2.vendor_name;

select * from farmers_market.vendor;
