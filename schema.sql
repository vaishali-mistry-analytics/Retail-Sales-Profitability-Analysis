-- SQLite-compatible schema. For MySQL, change REAL to DECIMAL(12,2) if desired.
CREATE TABLE IF NOT EXISTS retail_sales (
    order_id TEXT,
    order_date DATE,
    customer_id TEXT,
    city TEXT,
    sales_channel TEXT,
    payment_method TEXT,
    product_id TEXT,
    product_name TEXT,
    category TEXT,
    quantity INTEGER,
    list_price REAL,
    discount_pct REAL,
    unit_selling_price REAL,
    unit_cost REAL,
    gross_sales REAL,
    net_sales REAL,
    total_cost REAL,
    profit REAL,
    profit_margin_pct REAL,
    order_month TEXT
);

-- Import data/cleaned/retail_sales_cleaned.csv into retail_sales using your SQL tool.
