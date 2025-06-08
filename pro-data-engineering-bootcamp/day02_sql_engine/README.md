# Day 02: SQL Analytics Engine 🚀

## 📌 Topics Covered
- Window Functions (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `LEAD`, `LAG`)
- Partitioning Data using `PARTITION BY`
- Revenue Analysis, Monthly Trends, and Best-Selling Products

## 🧠 Queries
- `window_function_practice.sql`: Rank, Lead/Lag Examples
- `total_revenue.sql`: Total revenue by category/month
- `best_selling.sql`: Top-selling products
- `monthly_trend.sql`: Revenue trend by month

## 🗃️ DB Used
- PostgreSQL (`pro_data_engineering`)

## ⚙️ How to Run
```bash
psql -U postgres -p 5431 -d pro_data_engineering -f window_function_practice.sql
