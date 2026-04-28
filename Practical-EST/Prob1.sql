SELECT DISTINCT city, product_category
FROM suppliers;


SELECT DISTINCT s.city, p.category
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id;