WITH ranked AS (
    SELECT
        t.product_category_name_english AS category,
        p.product_id,
        SUM(oi.price) AS revenue,
        ROW_NUMBER() OVER (
            PARTITION BY t.product_category_name_english
            ORDER BY SUM(oi.price) DESC
        ) AS rn
    FROM olist_order_items_dataset oi
    JOIN olist_products_dataset p ON oi.product_id = p.product_id
    JOIN product_category_name_translation t
        ON p.product_category_name = t.product_category_name
    GROUP BY category, p.product_id
)
SELECT *
FROM ranked
WHERE rn <= 3
ORDER BY category, rn;