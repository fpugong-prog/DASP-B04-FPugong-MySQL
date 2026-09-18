# Olist SQL Analysis — Mini Capstone Project

## Overview
This project analyzes the Olist Brazilian E‑Commerce dataset using MySQL.  
The database contains nine tables:

- `olist_orders_dataset`
- `olist_order_items_dataset`
- `olist_order_payments_dataset`
- `olist_order_reviews_dataset`
- `olist_customers_dataset`
- `olist_products_dataset`
- `olist_sellers_dataset`
- `olist_geolocation_dataset`
- `product_category_name_translation`

These tables represent real e‑commerce operations including orders, items, payments, customers, sellers, products, reviews, and geolocation data.

## Business Questions
1. Top 10 customers by total spend  
2. Monthly revenue trend  
3. Month‑over‑month revenue change  
4. Revenue by product category  
5. Top 3 products per category  
6. Customer spend segmentation  
7. Repeat vs one‑time buyers  
8. % of revenue from top category  

## Key Findings
- Revenue is concentrated in a few categories, especially **health_beauty**, **bed_bath_table**, and **computers_accessories**.  
- Monthly revenue shows consistent patterns with noticeable MoM fluctuations.  
- A small group of customers contributes disproportionately to total revenue.  
- Many customers are one‑time buyers, indicating retention opportunities.

## Recommendations
- Diversify marketing toward mid‑tier categories to reduce dependency on top categories.  
- Launch retention campaigns targeting one‑time buyers (email, discounts, bundles).  
- Promote high‑revenue products within top categories to maximize conversion.

## Tools & Skills
- MySQL Workbench  
- SQL Joins, Aggregations, Window Functions  
- CTEs, Ranking, Segmentation  
- Insight communication  

## Files
- q1_top_customers.sql  
- q2_monthly_revenue.sql  
- q3_mom_revenue_change.sql  
- q4_revenue_by_category.sql  
- q5_top_products_per_category.sql  
- q6_customer_spend_tiers.sql  
- q7_repeat_vs_onetime.sql  
- q8_top_category_percent.sql  
- insight_summary.md