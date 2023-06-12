-- select all the computers from the products table:
-- using the products table and the categories table, return the product name and the category name */
SELECT * FROM products as p
inner join categories as c
on p.categoryID = c.categoryID
WHERE p.categoryID = 1;
 -- find all product names, product prices, and products ratings that have a rating of 5 */ 
SELECT p.name, p.price, r.rating FROM products as p
inner join reviews as r
on p.ProductID = r.productID
WHERE r.rating = 5;
-- find the employee with the most total quantity sold.  use the sum() function and group by 
SELECT e.FirstName, SUM(s.quantity) AS total_quantity_sold
FROM sales as s
inner Join employees as e
on s.EmployeeID = e.EmployeeID 
GROUP BY e.EmployeeID
ORDER BY total_quantity_sold DESC;
-- find the name of the department, and the name of the category for Appliances and Games
SELECT d.Name FROM departments as d
inner join categories as c 
on d.DepartmentID = c.DepartmentID
WHERE c.Name = 'Appliances' or c.name = 'Games';
-- find the product name, total # sold, and total price sold,
-- for Eagles: Hotel California --You may need to use SUM()
 SELECT p.productID, SUM(s.quantity) as total_quantity_sold, SUM(s.PricePerUnit * s.Quantity) as Total_Price_Sold
 FROM products as p 
 inner join sales as s 
 on p.ProductID = s.ProductID
 WHERE p.ProductID = 97;
