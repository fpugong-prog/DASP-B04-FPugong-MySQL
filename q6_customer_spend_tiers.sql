WITH totals AS (
    SELECT
        c.customer_id,
        SUM(p.payment_value) AS total_spent
    FROM olist_customers_dataset c
    JOIN olist_orders_dataset o ON c.customer_id = o.customer_id
    JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    total_spent,
    CASE
        WHEN total_spent < 100 THEN 'Low'
        WHEN total_spent BETWEEN 100 AND 500 THEN 'Medium'
        ELSE 'High'
    END AS spend_tier
FROM totals;