select * from export_import_company.orders
where orders.ShippedDate between '1998-01-01 00:00:00.000' and '1998-05-05 00:00:00.000' ;

select products.ProductName , sum(`order details`.Discount) from products
JOIN `order details` on `order details`.ProductID = products.ProductID
group by products.ProductName;

alter table export_import_company.categories
change ï»¿CategoryID CategoryID text;

select categories.CategoryName , sum(products.UnitsInStock) as summary  from categories
inner join products on products.CategoryID = categories.CategoryID  
group by categories.CategoryName
having summary > 300 ;

select categories.CategoryName , products.ProductName , products.UnitPrice   from categories
join products on products.CategoryID = categories.CategoryID;
