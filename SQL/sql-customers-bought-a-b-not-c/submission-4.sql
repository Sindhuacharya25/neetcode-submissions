-- Write your query below
select c.customer_id , c.customer_name 
  from customers as c
  left join orders as o
  on c.customer_id=o.customer_id
  group by c.customer_id,c.customer_name
  having SUM(CASE WHEN product_name = 'A' THEN 1 ELSE 0 END) > 0 and 
  SUM(CASE WHEN product_name = 'B' THEN 1 ELSE 0 END) > 0 and 
  SUM(CASE WHEN product_name = 'C' THEN 1 ELSE 0 END) = 0
 order by c.customer_name