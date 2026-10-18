"""
Retail Store Sales Analysis — cleaning + exploratory analysis
Run from the project root:
    python python/analyze_sales.py
Data is synthetic, created for portfolio practice.
"""
from pathlib import Path
import pandas as pd

ROOT = Path(__file__).resolve().parents[1]
raw_path = ROOT / "data" / "raw" / "retail_sales_raw.csv"
out_dir = ROOT / "data" / "cleaned"
out_dir.mkdir(parents=True, exist_ok=True)

df = pd.read_csv(raw_path)
print("Raw rows:", len(df))
print("Missing values before cleaning:\n", df.isna().sum())

df["city"] = df["city"].astype(str).str.strip().str.title()
df["payment_method"] = df["payment_method"].astype(str).str.strip().str.title()
df["product_name"] = df["product_name"].astype(str).str.strip()
df["discount_pct"] = pd.to_numeric(df["discount_pct"], errors="coerce").fillna(0)
df["order_date"] = pd.to_datetime(df["order_date"], errors="coerce")
for col in ["quantity", "list_price", "unit_selling_price", "unit_cost"]:
    df[col] = pd.to_numeric(df[col], errors="coerce")
df["quantity"] = df["quantity"].fillna(1).astype(int)
df = df.dropna(subset=["order_id", "order_date", "product_id"])
df = df.drop_duplicates()

df["gross_sales"] = df["quantity"] * df["list_price"]
df["net_sales"] = (df["quantity"] * df["unit_selling_price"]).round(2)
df["total_cost"] = (df["quantity"] * df["unit_cost"]).round(2)
df["profit"] = (df["net_sales"] - df["total_cost"]).round(2)
df["profit_margin_pct"] = (df["profit"] / df["net_sales"].replace(0, float("nan")) * 100).round(2)
df["order_month"] = df["order_date"].dt.to_period("M").astype(str)

clean_path = out_dir / "retail_sales_cleaned.csv"
df.to_csv(clean_path, index=False)
print("\nClean rows:", len(df))
print("Net sales:", round(df["net_sales"].sum(), 2))
print("Profit:", round(df["profit"].sum(), 2))
print("Unique orders:", df["order_id"].nunique())
print("\nSales by category:\n", df.groupby("category")["net_sales"].sum().sort_values(ascending=False))
print("\nSales by city:\n", df.groupby("city")["net_sales"].sum().sort_values(ascending=False))
print("\nMonthly trend:\n", df.groupby("order_month")["net_sales"].sum())
print(f"\nCleaned file saved to: {clean_path}")
