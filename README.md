# Task 7: Basic Sales Summary using SQLite and Python

This project is part of a Data Analyst Internship where the objective is to perform a basic sales analysis by connecting Python to an SQLite database, running SQL queries, and visualizing the results using matplotlib.

## Objective

- Connect Python to a SQLite database sales_data.db
- Execute SQL queries to summarize sales data
- Display results in tabular form using pandas
- Plot revenue by product using a bar chart
- Explore additional insights using extended SQL queries

## Tools & Libraries Used

- Python
- SQLite3 (Python built-in)
- pandas
- matplotlib

## Dataset Description

The dataset contains a single table: `ales

| Column Name   | Type     | Description                            |
|---------------|----------|----------------------------------------|
| order_id      | INTEGER  | Unique order identifier                |
| product_name  | TEXT     | Name of the product                    |
| quantity      | INTEGER  | Number of units sold                   |
| price         | REAL     | Price per unit                         |
| total_sales   | REAL     | Total = quantity × price               |
| order_date    | TEXT     | Date of order (in YYYY-MM-DD format)   |

## SQL Summary Query Used

```sql
SELECT product_name, 
       SUM(CAST(quantity AS INTEGER)) AS total_qty, 
       SUM(CAST(quantity AS REAL) * CAST(price AS REAL)) AS revenue
FROM sales
GROUP BY product_name;
