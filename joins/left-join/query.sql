select * from (
select t1.customer_name, count(t2.order_id) cnt from customer t1 left outer join "order" t2 on t1.customer_id=t2.customer_id GROUP BY customer_name
) t3 where cnt=0;