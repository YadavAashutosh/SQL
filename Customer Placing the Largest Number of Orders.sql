-- 586. Customer Placing the Largest Number of Orders

# Write your MySQL query statement below
select customer_number from Orders 
group by customer_number
having count(customer_number) = (select max(totalorder) from (select count(customer_number) as totalorder from Orders
group by customer_number)as a )
