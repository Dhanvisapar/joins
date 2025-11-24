CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

-- inner join
SELECT
    Customers.customer_id,
    Customers.customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- left join
SELECT
    Customers.customer_id,
    Customers.customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- right join
SELECT
    Customers.customer_id,
    Customers.customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- full outer join
SELECT
    Customers.customer_id,
    Customers.customer_name,
    Orders.order_id,
    Orders.amount
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- full join using union
SELECT *
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

UNION

SELECT *
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- self join
SELECT A.customer_name AS Customer1,
       B.customer_name AS Customer2,
       A.city
FROM Customers A
JOIN Customers B
ON A.city = B.city AND A.customer_id <> B.customer_id;

-- cross join
SELECT *
FROM Customers
CROSS JOIN Orders;

-- natural join
SELECT *
FROM Customers
NATURAL JOIN Orders;



