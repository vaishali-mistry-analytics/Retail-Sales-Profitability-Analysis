-- 1. Overall KPI summary
SELECT COUNT(DISTINCT order_id) AS total_orders,
       COUNT(DISTINCT customer_id) AS unique_customers,
       SUM(quantity) AS units_sold,
       ROUND(SUM(net_sales), 2) AS net_sales,
       ROUND(SUM(profit), 2) AS total_profit,
       ROUND(100.0 * SUM(profit) / NULLIF(SUM(net_sales), 0), 2) AS profit_margin_pct
FROM retail_sales;

-- 2. Monthly sales and profit trend
SELECT order_month,
       ROUND(SUM(net_sales), 2) AS net_sales,
       ROUND(SUM(profit), 2) AS profit
FROM retail_sales
GROUP BY order_month
ORDER BY order_month;

-- 3. Category performance
SELECT category,
       ROUND(SUM(net_sales), 2) AS net_sales,
       ROUND(SUM(profit), 2) AS profit,
       SUM(quantity) AS units_sold
FROM retail_sales
GROUP BY category
ORDER BY net_sales DESC;

-- 4. City performance
SELECT city, ROUND(SUM(net_sales), 2) AS net_sales,
       ROUND(SUM(profit), 2) AS profit
FROM retail_sales
GROUP BY city
ORDER BY net_sales DESC;

-- 5. Best-selling products by units
SELECT product_name, SUM(quantity) AS units_sold,
       ROUND(SUM(net_sales), 2) AS net_sales
FROM retail_sales
GROUP BY product_name
ORDER BY units_sold DESC
LIMIT 5;

-- 6. Sales channel comparison
SELECT sales_channel, COUNT(DISTINCT order_id) AS orders,
       ROUND(SUM(net_sales), 2) AS net_sales,
       ROUND(SUM(profit), 2) AS profit
FROM retail_sales
GROUP BY sales_channel;

-- 7. Payment method mix
SELECT payment_method, COUNT(DISTINCT order_id) AS orders,
       ROUND(SUM(net_sales), 2) AS net_sales
FROM retail_sales
GROUP BY payment_method
ORDER BY net_sales DESC;

-- 8. Low-margin product watchlist (under 15% weighted margin)
SELECT product_name, category,
       ROUND(SUM(net_sales), 2) AS net_sales,
       ROUND(SUM(profit), 2) AS profit,
       ROUND(100.0 * SUM(profit) / NULLIF(SUM(net_sales), 0), 2) AS margin_pct
FROM retail_sales
GROUP BY product_name, category
HAVING SUM(net_sales) > 0
   AND 100.0 * SUM(profit) / SUM(net_sales) < 15
ORDER BY margin_pct ASC;
