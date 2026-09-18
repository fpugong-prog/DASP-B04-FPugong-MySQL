SELECT
    COUNT(*) AS one_time_buyers,
    SUM(CASE WHEN order_count > 1 THEN 1 ELSE 0 END) AS repeat_buyers
FROM (
    SELECT
        customer_id,
        COUNT(order_id) AS order_count
    FROM olist_orders_dataset
    GROUP BY customer_id
) AS x;