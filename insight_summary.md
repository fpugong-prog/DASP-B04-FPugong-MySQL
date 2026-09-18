# Insight Summary — Olist SQL Capstone

## Data Overview
The Olist dataset consists of nine relational tables: orders, order items, payments, reviews, customers, products, sellers, geolocation, and category translations.  
Each table has a clear grain — for example, `olist_orders_dataset` contains one row per order, while `olist_order_items_dataset` contains one row per item within an order.  
The dataset spans multiple years of Brazilian e‑commerce activity and includes real‑world messiness such as missing values, inconsistent timestamps, and varied product categories.

## Insight 1 — Revenue Concentration
Analysis of `olist_order_items_dataset` joined with `olist_products_dataset` and `product_category_name_translation` shows that a small number of categories (health_beauty, bed_bath_table, computers_accessories) generate a large share of total revenue.  
This concentration exposes the business to risk if demand in these categories declines.

**Recommendation:** Diversify marketing and product promotion toward mid‑tier categories to reduce dependency on the top three.

## Insight 2 — Customer Spend Distribution
Using `olist_orders_dataset` and `olist_order_payments_dataset`, customer spending was aggregated and segmented.  
A small group of high‑value customers contributes a large portion of total revenue, while most customers fall into the low‑spend tier.

**Recommendation:** Create targeted loyalty programs for high‑value customers and personalized promotions for medium‑tier customers to increase retention.

## Insight 3 — Buyer Behavior
Grouping customers in `olist_orders_dataset` shows that a significant portion are one‑time buyers.  
Repeat buyers represent a smaller but more valuable segment, indicating untapped retention potential.

**Recommendation:** Implement post‑purchase engagement strategies (email follow‑ups, discount codes, bundles) to convert one‑time buyers into repeat customers.