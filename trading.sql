SELECT products.ProductName , sum(order_details.Quantity) FROM products
LEFT JOIN order_details ON products.ï»¿ProductID  = order_details.ProductID
GROUP  BY ProductName ;




SELECT  orders.ï»¿OrderID , customers.CompanyName , orders.OrderDate  , SUM(order_details.Quantity)  from orders
LEFT JOIN customers ON customers.ï»¿CustomerID = orders.CustomerID
LEFT JOIN order_details ON orders.ï»¿OrderID = order_details.OrderID
WHERE orders.OrderDate > '1998-05-05'
GROUP BY orders.ï»¿OrderID ; 




