-- create table pizza_sales(
-- 	pizza_id int,
-- 	order_id int,
-- 	pizza_name_id text,
-- 	quantity int,
-- 	order_date date,
-- 	order_time text,
-- 	unit_price float,
-- 	total_price float,
-- 	pizza_size text,
-- 	pizza_category text,
-- 	pizza_ingredients text,
-- 	pizza_name text
-- );

-- copy pizza_sales 
-- FROM 'D:/data analytics/Projects/sql+power bi/pizza_sales.csv' 
-- WITH (FORMAT csv, HEADER true, DELIMITER ',');

select * from pizza_sales;

-- A.KPI

select sum(total_price) as total_revenue 
from pizza_sales;

select sum(total_price) / count(DISTINCT order_id) as average_order
from pizza_sales;

select sum(quantity) as total_pizza_sold 
from pizza_sales; 

select count(distinct order_id) as total_orders 
from pizza_sales;

select sum(quantity)/count(distinct order_id)
as avg_pizza_per_order
from pizza_sales;

-- B.Daily Trend for Total Orders 

select TO_CHAR(order_date, 'DAY') as order_day,
count(distinct order_id) as total_orders
from pizza_sales
group by order_day
order by total_orders desc;


-- C. Monthly Trend for Orders

select TO_CHAR(order_date, 'MONTH') as order_month,
count(distinct order_id) as total_orders
from pizza_sales
group by order_month
order by total_orders desc;

-- D. % of Sales by Pizza Category

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category;

-- E. % of Sales by Pizza Size

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size;

-- F. Total Pizzas Sold by Pizza Category

select pizza_category,sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_category
order by total_pizza_sold desc;

-- Top 5 Pizzas by Revenue

select pizza_name,sum(total_price) as total_revenue
from pizza_sales 
group by pizza_name
order by total_revenue desc 
limit 5;

-- H. Bottom 5 Pizzas by Revenue

select pizza_name,sum(total_price) as total_revenue
from pizza_sales 
group by pizza_name
order by total_revenue 
limit 5;

-- I. Top 5 Pizzas by Quantity

select pizza_name,sum(quantity) as total_quantity
from pizza_sales 
group by pizza_name
order by total_quantity desc
limit 5;

-- J. Bottom 5 Pizzas by Quantity

select pizza_name,sum(quantity) as total_quantity
from pizza_sales 
group by pizza_name
order by total_quantity 
limit 5;

-- K. Top 5 Pizzas by Total Orders

select pizza_name,count(distinct order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders desc
limit 5;

--  L. Bottom 5 Pizzas by Total Orders

select pizza_name,count(distinct order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders 
limit 5; 
















