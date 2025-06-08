-- Create the sales table
CREATE TABLE sales (
    id INT PRIMARY KEY,
    region VARCHAR(50),
    revenue DECIMAL(10, 2),
    sale_date DATE
);
-- Insert sample data
INSERT INTO sales (id, region, revenue, sale_date) VALUES
(1, 'North', 1000.00, '2025-01-10'),
(2, 'South', 1500.00, '2025-01-12'),
(3, 'East', 800.00, '2025-02-05'),
(4, 'North', 1200.00, '2025-02-20'),
(5, 'West', 900.00, '2025-03-15'),
(6, 'South', 1100.00, '2025-04-01');

SELECT region, SUM(revenue) as total_revenue
from sales
group by region;



CREATE TABLE sales (
    id INT PRIMARY KEY,
    category VARCHAR(50),
    revenue DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO sales (id, category, revenue, sale_date) VALUES
(1, 'Electronics', 1200.00, '2025-01-01'),
(2, 'Electronics', 1400.00, '2025-01-02'),
(3, 'Electronics', 1100.00, '2025-01-03'),
(4, 'Electronics', 1300.00, '2025-01-04'),
(5, 'Electronics', 1700.00, '2025-01-05'),
(6, 'Electronics', 1600.00, '2025-01-06'),
(7, 'Furniture', 900.00, '2025-01-07'),
(8, 'Furniture', 1050.00, '2025-01-08'),
(9, 'Furniture', 980.00, '2025-01-09'),
(10, 'Furniture', 1020.00, '2025-01-10'),
(11, 'Clothing', 800.00, '2025-01-11'),
(12, 'Clothing', 1100.00, '2025-01-12'),
(13, 'Clothing', 1150.00, '2025-01-13'),
(14, 'Clothing', 1200.00, '2025-01-14'),
(15, 'Clothing', 1300.00, '2025-01-15'),
(16, 'Clothing', 1250.00, '2025-01-16');

SELECT category, COUNT(*) as num_sales
FROM sales
WHERE revenue > 1000
GROUP BY category
HAVING COUNT(*) > 5;
