# Library Management System - MySQL Query Project

## Project Overview
This repository contains a series of MySQL queries designed to manage and analyze data for a library management system. The queries address various business requirements such as retrieving book information, employee details, customer activity, and branch statistics.

## Queries and Descriptions

### 1. Retrieve the Book Title, Category, and Rental Price of All Available Books
This query fetches details of all available books, including their titles, categories, and rental prices, helping the library track currently rentable books.

### 2. List the Employee Names and Their Respective Salaries in Descending Order of Salary
Displays the names and salaries of all employees, ordered by salary in descending order. This helps in identifying the highest-paid employees.

### 3. Retrieve the Book Titles and the Corresponding Customers Who Have Issued Those Books
Provides a list of book titles along with the names of customers who have issued those books, useful for tracking book borrowings.

### 4. Display the Total Count of Books in Each Category
Shows the total number of books available in each category, aiding in inventory management and analysis of popular genres.

### 5. Retrieve the Employee Names and Their Positions for the Employees Whose Salaries Are Above Rs.50,000
Lists the names and positions of employees earning more than Rs.50,000, assisting in identifying senior or high-performing staff.

### 6. List the Customer Names Who Registered Before 2022-01-01 and Have Not Issued Any Books Yet
Identifies customers who registered before January 1, 2022, but have not issued any books, helping in targeted customer engagement.

### 7. Display the Branch Numbers and the Total Count of Employees in Each Branch
Shows the number of employees in each branch, which helps in managing staff distribution across branches.

### 8. Display the Names of Customers Who Have Issued Books in the Month of June 2023
Retrieves the names of customers who issued books in June 2023, useful for monthly activity tracking and customer engagement.

### 9. Retrieve Book Titles from the Book Table Containing "History"
Fetches all book titles that include the word "History," helping to quickly identify books in the history category.

### 10. Retrieve the Branch Numbers Along with the Count of Employees for Branches Having More Than 5 Employees
Lists branches with more than five employees, aiding in understanding branch staffing levels and resource allocation.

### 11. Retrieve the Names of Employees Who Manage Branches and Their Respective Branch Addresses
Displays the names of branch managers along with the addresses of their respective branches, useful for administrative purposes.

### 12. Display the Names of Customers Who Have Issued Books with a Rental Price Higher Than Rs. 25
Lists customers who have issued books with a rental price above Rs. 25, helping to identify high-value transactions.


## Dataset Structure
The database contains the following primary tables:
- **Books**: Stores details about the books, including titles, categories, and rental prices.
- **Employees**: Contains information about employees, including names, salaries, and positions.
- **Customers**: Holds customer details, including registration dates and activity.
- **Branches**: Stores information about library branches, including branch numbers and addresses.
- **Issues**: Tracks the issuance of books to customers, including dates and rental prices.

## Conclusion
This project demonstrates various SQL queries for managing and analyzing library data. These queries provide insights into book availability, employee management, customer activity, and branch statistics, contributing to the effective operation of the library management system.


---


