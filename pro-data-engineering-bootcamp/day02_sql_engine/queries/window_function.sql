CREATE TABLE baby_names (
  gender VARCHAR(5),
  name VARCHAR(50),
  number INT);

 INSERT INTO baby_names (gender, name, number) VALUES
 ('Girl', 'Ava', 95),
 ('Girl', 'Emma', 106),
 ('Boy', 'Ethan', 115),
 ('Boy', 'Jacob', 101),
 ('Boy', 'Liam', 84),
 ('Boy', 'Logan', 73),
 ('Boy', 'Noah', 120),
 ('Girl', 'Olivia', 100),
 ('Girl', 'Sophia', 88);

-- view the table
SELECT * FROM baby_names;

-- operations on function part
SELECT gender, name, number,
	ROW_NUMBER() OVER(ORDER BY number DESC) AS row_num,
	RANK() OVER(ORDER BY number DESC) AS rank_num,
	DENSE_RANK() OVER(ORDER BY number DESC) AS dense_rank_num,
    LEAD(gender) OVER(ORDER BY number DESC) AS aage_wale,
    LAG(gender) OVER(ORDER BY number DESC) AS pichw_wale,
    SUM(number) OVER(PARTITION BY gender) AS gender_total
FROM baby_names;

-- operations on window part
SELECT gender, name, number,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY number DESC) AS Popularity
FROM baby_names;

SELECT * FROM (
  SELECT gender, name, number,
    ROW_NUMBER() OVER(PARTITION BY gender ORDER BY number DESC) AS Popularity
    FROM baby_names) as pop
WHERE Popularity <= 3;