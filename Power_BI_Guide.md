# Power BI Dashboard Build Guide

## Import
1. Open Power BI Desktop.
2. Get Data → Text/CSV → select `data/cleaned/retail_sales_cleaned.csv`.
3. Confirm `order_date` is Date; sales/profit/cost fields are Decimal Number; quantity is Whole Number.
4. Create the measures in `DAX_Measures.dax`.

## One-page report layout
- KPI cards: Total Sales, Total Profit, Total Orders, Profit Margin %.
- Line chart: `order_month` on X-axis, Total Sales and Total Profit as values.
- Bar chart: `category` on axis, Total Sales as value; sort descending.
- Bar chart: `city` on axis, Total Sales as value.
- Column/bar chart: `product_name` on axis, Units Sold as value; Top N = 5.
- Donut chart: `sales_channel` as legend, Total Sales as values.
- Slicers: order_date, city, category, sales_channel, payment_method.

## Business questions to answer
1. Which category contributes the most net sales and profit?
2. Which city contributes the most revenue?
3. Are sales increasing or decreasing month by month?
4. Which five products sell the most units?
5. Does Online or In-store generate more sales and profit?
6. Which products have relatively low profit margins?

## Important
This project uses synthetic practice data, not a real company's confidential data. State that clearly in your portfolio.
