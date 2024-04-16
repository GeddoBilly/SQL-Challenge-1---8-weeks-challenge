-- Selecting columns and calculating the total sales for each customer
SELECT
    a.customer_id,            -- Selecting the customer ID from the 'sales' table
    SUM(price) AS total_sales -- Calculating the sum of prices for each customer's purchases
                               -- and aliasing it as 'total_sales'
-- Retrieving data from the 'sales' table and joining it with the 'menu' table
FROM
    dbo.sales a
LEFT JOIN
    dbo.menu b 
ON (a.product_id = b.product_id) -- Joining 'sales' and 'menu' tables on the 'product_id' column
-- Grouping the results by customer ID to aggregate sales data
GROUP BY
    customer_id;