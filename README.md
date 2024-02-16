# Chinook SQLite Queries

This repository contains examples of SQLite queries for various database operations. Below are the explanations and examples of each query:

## Employee Queries

1. **Select All Employees:**
   ```sql
   SELECT * FROM Employee LIMIT 5;
   ```

2. **Select Employees' First Name, Last Name, Address, and Postal Code of Customers from Paris:**
   ```sql
   SELECT FirstName, LastName, Address, PostalCode FROM Customer WHERE city = "Paris";
   ```

3. **Select Top 3 Employees' First Name, Last Name, Title, and Birth Date, Ordered by Birth Date:**
   ```sql
   SELECT FirstName, LastName, Title, BirthDate FROM Employee ORDER BY BirthDate LIMIT 3;
   ```

4. **Select Top 5 Employees' First Name, Last Name, Title, and Hire Date, Ordered by Hire Date (Descending):**
   ```sql
   SELECT FirstName, LastName, Title, HireDate FROM Employee ORDER BY HireDate DESC LIMIT 5;
   ```

## Album Queries

1. **Select Album Titles by Artist ID 152:**
   ```sql
   SELECT Title FROM Album WHERE ArtistId = "152";
   ```

2. **Select Albums with Titles Starting with "C" and Their Respective Artists:**
   ```sql
   SELECT al.Title AS "Album Title", ar.Name AS "Artist"
   FROM Album AS al
   JOIN Artist ar ON al.ArtistId = ar.ArtistId
   WHERE "Album Title" LIKE "C%";
   ```

## Customer Queries

1. **Select Top 5 Customers:**
   ```sql
   SELECT * FROM Customer LIMIT 5;
   ```

2. **Select Customer Name and Their Support Representative:**
   ```sql
   SELECT Cus.FirstName || ' ' || Cus.LastName AS Customer, Emp.FirstName || ' ' || Emp.LastName AS "Support Rep"
   FROM Customer AS Cus JOIN Employee AS Emp ON Cus.SupportRepId = Emp.EmployeeId WHERE Cus.CustomerId IS NOT NULL OR Emp.EmployeeId IS NOT NULL;
   ```

## Additional Queries

More queries and examples are available in the repository.
