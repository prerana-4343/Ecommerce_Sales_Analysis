create database Ecommerce

select * from Clean_Ecommerce

--total sales
select sum(Net_Amount) as Total_Sales
from Clean_Ecommerce

--top product
select 
Product, sum(Net_Amount) as sales
from Clean_Ecommerce
group by Product
order by sales desc

--top cities
select
City, sum(Net_Amount) as sales
from Clean_Ecommerce
group by City
order by sales desc

--Monthly sales
select
Product,
sum(Profit) as profit
from Clean_Ecommerce
group by product
order by profit desc

--Highest profit products
select
product,
sum(profit) as profit
from Clean_Ecommerce
group by product
order by profit desc

--Payment mode distrubition
select
payment_mode,
count(*) as total_orders
from Clean_Ecommerce
group by payment_mode

--Cancelled orders
select *
from Clean_Ecommerce
where order_status = 'cancelled'

