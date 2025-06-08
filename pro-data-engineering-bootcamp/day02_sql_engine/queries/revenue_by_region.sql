SELECT c.region, SUM(s.revenue) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.region;
