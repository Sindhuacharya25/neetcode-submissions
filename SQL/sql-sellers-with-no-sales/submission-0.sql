-- Write your query below
SELECT s.seller_name
FROM seller AS s
LEFT JOIN orders AS o
  ON s.seller_id = o.seller_id
  AND o.sale_date BETWEEN '2020-01-01' AND '2020-12-31'
WHERE o.seller_id IS NULL
ORDER BY seller_name ASC;

