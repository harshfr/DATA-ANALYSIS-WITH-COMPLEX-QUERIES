--Creating a table named Sales 
--for operating Advanced Data Analysis

create table Sales(
 SaleID INT ,
 ProductID INT ,
 SaleDate DATE,
 Quantity INT,
 SaleAmount DECIMAL(10,2),
 CustomerID INT,
 primary key (SaleID, ProductID, CustomerID)
 
)

--Inserting Values on Sales

insert into Sales(SaleID, ProductID, SaleDate, Quantity, SaleAmount, CustomerID)
values
(1, 101,'2023-01-01', 2, 200.00, 1),
(2, 102,'2023-01-02', 1, 150.00, 2),
(3, 101,'2023-01-03', 3, 300.00, 1),
(4, 103,'2023-01-04', 5, 500.00, 3),
(5, 102,'2023-01-05', 2, 300.00, 2),
(6, 101,'2023-01-06', 1, 100.00, 1),
(7, 103,'2023-01-07', 4, 400.00, 3),
(8, 102,'2023-01-08', 3, 450.00, 2);

--Verifying Sales Table

select * from Sales;

--Operating Window Functions like 
-- Row_Number,Rank(), Dense_rank(),
-- -- Lead(), Lag() 

--(1) Row Number() as window function

 SELECT 
    SaleID,
    ProductID,
    SaleDate,
    SaleAmount,
    ROW_NUMBER() OVER (ORDER BY SaleDate) AS RowNum
FROM 
    Sales;

------This query assigns a unique sequential number 
---to each sale based on the SaleDate. The earliest 
----sale gets RowNum 1, the next gets RowNum 2, and so on.

--(2)RANK() as window function

SELECT 
    SaleID,
    ProductID,
    SaleDate,
    SaleAmount,
    RANK() OVER (ORDER BY SaleAmount DESC) AS SaleRank
FROM 
    Sales;

-- This query ranks the sales based on the SaleAmount
--in descending order. If two sales have the same amount,
--they receive the same rank, and the next rank is skipped.

--(3)DENSE_RANK() as window function

SELECT 
    SaleID,
    ProductID,
    SaleDate,
    SaleAmount,
    DENSE_RANK() OVER (ORDER BY SaleAmount DESC) AS DenseSaleRank
FROM 
    Sales;
	
--Similar to RANK, but DENSE_RANK does not
--skip any ranks when there are ties. This means
--if two sales are tied for rank 1, the next rank will be 2.

--(4)Lead() as Window Function

SELECT 
    SaleID,
    ProductID,
    SaleDate,
    SaleAmount,
    LEAD(SaleAmount) OVER (ORDER BY SaleDate) AS NextSaleAmount
FROM 
    Sales;

--This query retrieves the SaleAmount of the next sale
--in chronological order. This is useful for comparing 
-----------current sales with future sales.

--(5)Lag() as Window Function

SELECT 
    SaleID,
    ProductID,
    SaleDate,
    SaleAmount,
    LAG(SaleAmount) OVER (ORDER BY SaleDate) AS PreviousSaleAmount
FROM 
    Sales;


--(6) Basic way of using a Window function

SELECT 
    SaleID,
    SaleDate,
    SaleAmount,
    SUM(SaleAmount) OVER (ORDER BY SaleDate) AS RunningTotal
FROM 
    Sales
ORDER BY 
    SaleDate;

--Taking SUM()function as window by hovering
--OVER() as Running Total ordering in SaleDate


--Operating Subquery and using 
--to finding the top customers 
------by total sales

SELECT 
    CustomerID,
    TotalSaleAmount
FROM (
    SELECT 
        CustomerID,
        SUM(SaleAmount) AS TotalSaleAmount
    FROM 
        Sales
    GROUP BY 
        CustomerID
) AS CustomerSales
ORDER BY 
    TotalSaleAmount DESC
LIMIT 5;

--This subquery calculates total sales for each
--product and ranks them. It filters for products
--with total sales exceeding a specified threshold,
--------highlighting the top performers.

--Operating CTE(Common Table Expressions)
-- to calculate Total Sales per product

WITH TotalSales AS (
    SELECT 
        ProductID,
        SUM(SaleAmount) AS TotalSaleAmount,
        SUM(Quantity) AS TotalQuantity
    FROM 
        Sales
    GROUP BY 
        ProductID
)
SELECT * FROM TotalSales;

--Combining CTE and Window Functions 
--to Analyze Sales Trends

WITH MonthlySales AS (
    SELECT 
        DATE_TRUNC('month', SaleDate) AS SaleMonth,
        SUM(SaleAmount) AS TotalSaleAmount
    FROM 
        Sales
    GROUP BY 
        SaleMonth
),
SalesTrend AS (
    SELECT 
        SaleMonth,
        TotalSaleAmount,
        LAG(TotalSaleAmount) OVER (ORDER BY SaleMonth) AS PreviousMonthSales
    FROM 
        MonthlySales
)
SELECT 
    SaleMonth,
    TotalSaleAmount,
    PreviousMonthSales,
    TotalSaleAmount - COALESCE(PreviousMonthSales, 0) AS ChangeFromPreviousMonth
FROM 
    SalesTrend
ORDER BY 
    SaleMonth;

--(1)This CTE aggregates sales data by month, 
--calculating the total sales amount and
----total quantity sold for each month.

--(2)The DATE_TRUNC('month', SaleDate) function is used to group sales by month.

--(3)The SUM function with the OVER clause calculates cumulative sales up to the current month.

--(4)The final query selects the month, total sales amount, previous and next month sales, cumulative sales, and a trend indicator.


	
	


	


	