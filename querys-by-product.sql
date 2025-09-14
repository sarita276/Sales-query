use productsales;
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM 
    order_items oi
JOIN 
    orders o ON oi.order_id = o.order_id
JOIN 
    products p ON oi.product_id = p.product_id
WHERE 
    o.order_date BETWEEN '2025-01-01' AND '2025-03-31' 
GROUP BY 
    p.product_name
ORDER BY 
    total_revenue DESC;
    
-- querys by product
 SELECT  
    p.product_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM 
    order_items oi
JOIN 
    orders o ON oi.order_id = o.order_id
JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.product_name
ORDER BY 
    total_revenue DESC;
   





