# DATA-ANALYSIS-WITH-COMPLEX-QUERIES

*COMPANY*: CODETECH IT SOLUTIONS

*NAME*: HARSH SRIVASATAVA

*INTERN ID*: CT04DM1082

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

This Repository contains a report containing SQL queries of Window Function, Subqueries and CTE (Common Table Expressions) on the Table of Data named 'Sales'.
Completed as part of TASK-2 named DATA ANALYSIS WITH COMPLEX QUERIES.

SQL scripts to create a Sales Table, and then the Advanced Data is Analysed on the basisof Window Functions , Subqueries and CTE.

# FILES-INCLUDED

Files with thier specification as directed:


| File Name                                                                 | Description                                                                                  |
|---------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| `Data Analysis with Complex Queries TASK-2.sql`                           | SQL script containing all complex queries used in this task                                  |
| `Sales Table Output TASK-2.csv`                                           | Original data output from the sales table                                                    |
| `Row_number Window Function Table Output TASK-2.csv`                      | Result of applying `ROW_NUMBER()` window function                                            |
| `Rank Window Function Table Output TASK-2.csv`                            | Result of applying `RANK()` window function                                                  |
| `Dense_Rank Window Function Table Output TASK-2.csv`                      | Result of applying `DENSE_RANK()` window function                                            |
| `Lead Window Function Table Output TASK-2.csv`                            | Result of applying `LEAD()` window function                                                  |
| `Lag Window Function Table Output TASK-2.csv`                             | Result of applying `LAG()` window function                                                   |
| `Basic Way of Window Function Table Output TASK-2.csv`                    | Output using a basic implementation of window functions                                      |
| `Subquery Table Output TASK-2.csv`                                        | Result of executing nested and correlated subqueries                                         |
| `CTE (Common Table Expression) Table Output TASK-2.csv`                   | Result of queries using Common Table Expressions                                             |
| `Combined CTE & Window Function Table Output TASK-2.csv`                  | Output demonstrating the combination of CTEs and window functions for advanced analytics     |
| `Readme.MD`                                                               | The Overview document of this repository to understand the operations                        |


# TOOLS-USED

This project utilizes a variety of tools and technologies to facilitate the analysis of sales data. Below is a list of the primary tools used:

- Database Management System (DBMS):  
  - PostgreSQL: The primary database used for storing and querying the sales data. PostgreSQL supports advanced SQL features, including window functions and Common Table Expressions 
                    (CTEs).
  - MySQL: Alternatively, MySQL (version 8.0 and above) can be used, as it also supports window functions and CTEs.

- SQL Client Tools:  
  - pgAdmin: A popular open-source administration and development platform for PostgreSQL, used for executing SQL queries and managing the database.
  - MySQL Workbench: A unified visual tool for database architects, developers, and DBAs, used for MySQL database design and management.

- Data Visualization Tools:  
  - **Tableau**: For visualizing the results of the SQL queries and creating interactive dashboards to present sales trends and patterns.
  - **Microsoft Excel**: For exporting query results and performing additional analysis or visualization.

- Version Control:  
  - Git: Used for version control to track changes in the SQL scripts and documentation.
  - GitHub: The platform used to host the project repository, allowing for collaboration and sharing of the analysis.

- Documentation:  
  - Markdown: Used for writing the README file and documenting the SQL queries and analysis process in a clear and structured format.

These tools collectively enhance the ability to analyze sales data effectively, providing insights that can drive business decisions and strategies.


# Sales Data Analysis Report

This project showcases an advanced SQL report generated from a Sales table, demonstrating the powerful use of SQL window functions, Common Table Expressions (CTEs), and subqueries to analyze trends and patterns in sales data.

 Overview

The report uses the `Sales` table, which contains sales transaction data including `SaleID`, `ProductID`, `SaleDate`, `Quantity`, `SaleAmount`, and `CustomerID`. The goal is to provide valuable insights into sales performance, customer behavior, and product trends by employing advanced SQL techniques.

 Key Features

- Window Functions:  
  Utilize `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, and `LAG()` to:  
  - Assign sequential rankings to sales and products.  
  - Compare current sales data with previous and next transactions for trend analysis.  
  - Generate running totals and cumulative sales figures.

- Common Table Expressions (CTEs):  
  Organize complex queries for clarity and efficiency by defining intermediate result sets, such as:  
  - Calculating monthly sales aggregates.  
  - Combining rankings and cumulative metrics to analyze sales progression.  
  - Simplifying trend identification over time.

- Subqueries:  
  Extract targeted insights including:  
  - Identifying top customers and top-performing products based on total sales.  
  - Filtering sales data dynamically for deeper analysis.

# Sample Analyses Included

- Ranking sales by amount with different ranking behaviors (`RANK` vs `DENSE_RANK`).
- Running totals and cumulative sales over time.
- Monthly sales trend analysis showing increases, decreases, or stable sales.
- Comparing each sale against the previous and next sale to identify patterns.
- Highlighting top customers and products through subqueries with ranking.

 Benefits

- Learn how to leverage SQL window functions to perform advanced data analysis without complex application logic.
- Understand how CTEs improve query readability and maintainability.
- Use subqueries effectively to isolate and summarize data subsets.
- Gain insights into sales performance that help inform business decisions, marketing strategies, and inventory management.

 How to Use

1. Load your sales data into the `Sales` table with the necessary columns.
2. Execute the provided SQL queries to generate reports on trends and patterns.
3. Adjust query parameters as needed to customize analysis for your specific dataset.

 Technologies

- SQL (compatible with PostgreSQL, SQL Server, MySQL 8+, and other RDBMS supporting window functions and CTEs).

-This repository is an excellent resource for data analysts, business intelligence professionals, and developers aiming to enhance their SQL querying skills for robust sales analysis.

-Feel free to contribute or raise issues for improvements or additional analysis scenarios.

# Summary of Findings

Sales Ranking: The CTE provides a structured ranking of sales, allowing for easy identification of high-performing sales.

Cumulative Sales: The cumulative sales calculation offers insights into overall sales performance over time.

Trend Analysis: The use of LEAD and LAG functions reveals trends in sales, indicating whether sales are increasing or decreasing.

Top Products: The subquery identifies top-performing products based on total sales, enabling targeted marketing and inventory decisions.

# Report Summary

Total Sales per Product: The first query provides a summary of total sales and quantities sold for each product.

Running Total of Sales: The second query shows the cumulative sales amount over time, allowing for trend analysis.

Top Customers by Total Sales: The third query identifies the top 5 customers based on their total sales, which can help in targeting marketing efforts.

Sales Trends Analysis: The final query combines CTEs and window functions to analyze monthly sales trends, showing changes from the previous month.

# Conclusion

The Sales Data Analysis Report demonstrates the power of SQL in extracting meaningful insights from sales data through the use of advanced techniques such as window functions, Common Table Expressions (CTEs), and subqueries. By leveraging these tools, we can effectively analyze trends and patterns in sales performance, customer behavior, and product popularity.
This project serves as a valuable resource for data analysts and business intelligence professionals looking to enhance their SQL skills and apply them to real-world scenarios. By understanding and utilizing these advanced SQL techniques, users can unlock the full potential of their data, driving informed decision-making and fostering business growth.
We encourage users to explore the provided SQL queries, adapt them to their datasets, and continue building upon this foundational analysis to uncover even deeper insights into their sales data.
This task of Data Analysis with Complex Queries learned me so well about how to make datasets into Window Function, Subquery and CTE  operation to perform Data as anywhere I can use it for future references. Thanking CodeTech Solution for giving me this type Task for enhancing my Skills in SQL.
