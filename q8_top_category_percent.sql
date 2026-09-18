WITH cat_rev AS (
    SELECT
        t.product_category_name_english AS category,
        SUM(oi.price) AS revenue
    FROM olist_order_items_dataset oi
    JOIN olist_products_dataset p ON oi.product_id = p.product_id
    JOIN product_category_name_translation t
        ON p.product_category_name = t.product_category_name
    GROUP BY category
),
tot AS (
    SELECT SUM(revenue) AS total_rev FROM cat_rev
)
SELECT
    c.category,
    c.revenue,
    ROUND((c.revenue / t.total_rev) * 100, 2) AS pct_of_total
FROM cat_rev c
CROSS JOIN tot t
ORDER BY pct_of_total DESC
LIMIT 1;