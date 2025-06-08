SELECT DATE_TRUNC('month', sale_date) AS month, SUM(revenue) AS total_revenue
FROM sales
GROUP BY month
