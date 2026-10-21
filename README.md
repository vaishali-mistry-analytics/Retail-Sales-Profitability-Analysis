# Retail Store Sales & Profitability Analysis

An end-to-end retail data analysis project using Python, SQL, and Power BI to explore sales performance, profitability, product trends, and sales channels.

## Business Problem

A retail business wants to understand its sales and profit performance across different cities, product categories, and sales channels. The goal is to identify trends, evaluate profitability, and support data-driven business decisions.

## Tools & Technologies

- **Python:** Pandas for data analysis and data processing
- **SQL:** Data querying and business analysis
- **Power BI:** Dashboard visualization
- **Dataset:** Synthetic retail sales data for practice and portfolio development

## Dataset Overview

The project dataset represents six months of retail transactions.

- 468 transaction-line records
- 320 distinct orders
- 137 distinct customers
- 12 products across 5 categories
- 6 cities
- Online and in-store sales channels
- Period: January–June 2026

The dataset is synthetic and does not represent actual company transactions.

## Project Files

| File | Description |
|---|---|
| `retail_sales_cleaned.csv` | Cleaned retail sales dataset |
| `analyze_sales.py` | Python analysis script |
| `schema.sql` | SQL table schema |
| `analysis_queries.sql` | SQL business analysis queries |
| `Retail_Store_Sales_PBI.pbix` | Power BI dashboard file |
| `Dashboard.png` | Dashboard preview image |
| `README.md` | Project documentation |

## Project Workflow

1. **Data Preparation:** Reviewed and cleaned retail transaction data.
2. **Python Analysis:** Used Pandas to analyze sales, costs, profit, and business trends.
3. **SQL Analysis:** Prepared queries to evaluate sales by category, city, month, and channel.
4. **Power BI Visualization:** Used the provided Power BI project file to explore retail performance through KPI cards and charts.
5. **Business Insights:** Examined sales and profitability patterns to support business recommendations.

## Business Questions

- What are the total sales and total profit?
- Which product categories generate the highest sales?
- Which cities perform best in terms of sales and profitability?
- How do sales and profit change month by month?
- Which products sell the most units?
- How do online and in-store channels contribute to sales?
- Which areas may need improvement in profitability?

## Dashboard KPIs

The dashboard is intended to track:

- Total Sales
- Total Profit
- Total Orders
- Profit Margin %
- Monthly Sales and Profit Trends
- Category-wise Sales
- City-wise Sales
- Product Performance
- Sales Channel Distribution

## How to Run

### Python

Install the required library:

```bash
pip install pandas
```

Run the Python script from the project directory:

```bash
python analyze_sales.py
```

If the script uses a relative file path, run it from the directory expected by the script.

### SQL

1. Open your SQL tool.
2. Execute `schema.sql` to create the table.
3. Import the cleaned CSV into the table.
4. Run `analysis_queries.sql` to explore the business questions.

### Power BI

1. Open `Retail_Store_Sales_PBI.pbix` in Power BI Desktop.
2. Confirm that the dataset path is correct.
3. Refresh the data if required.
4. Check the KPI values, charts, and filters.

## Key Learning Outcomes

- Data cleaning and analysis using Python
- Writing SQL queries for business reporting
- Understanding sales and profitability metrics
- Building and reviewing interactive business dashboards
- Translating analytical results into business insights

## Project Links

- [GitHub Repository](https://github.com/vaishali-mistry-analytics/Retail-Sales-Profitability-Analysis)

## Disclaimer

This project uses synthetic data for learning and portfolio purposes. Business findings apply only to this practice dataset and should not be interpreted as actual company results.

## Author

Vaishali Mistry

Aspiring Data Analyst | Python | SQL | Power BI | Excel
