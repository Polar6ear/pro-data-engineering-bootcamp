INSERT INTO products(name, category) VALUES
('Laptop', 'Electronics'),
('Mobile', 'Electronics'),
('Shirt', 'Clothing'),
('Shoes', 'Footwear');

INSERT INTO customers (name, region) VALUES
('Nitin', 'North'),
('Akash', 'South'),
('Riya', 'East'),
('Priya', 'West');


INSERT INTO sales (product_id, customer_id, sale_date, quantity, revenue) VALUES
(1, 1, '2024-06-01', 1, 50000),
(2, 2, '2024-06-02', 2, 30000),
(3, 3, '2024-06-03', 3, 4500),
(4, 4, '2024-06-04', 1, 3000),
(1, 1, '2024-06-10', 1, 52000),
(3, 2, '2024-06-12', 2, 3000);