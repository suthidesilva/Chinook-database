/* 1....
SELECT al.Title AS "Album Title", ar.Name AS "Artist"
FROM Album AS al
JOIN Artist ar ON al.ArtistId = ar.ArtistId
WHERE "Album Title" LIKE "C%";
*/

-- SELECT * FROM Customer LIMIT 5;
-- SELECT * FROM Employee LIMIT 5;

/* 2....
SELECT Cus.FirstName ||' '|| Cus.LastName AS Customer, Emp.FirstName ||' '|| Emp.LastName AS "Suppert Rep"
FROM Customer AS Cus JOIN Employee AS Emp ON Cus.SupportRepId = Emp.EmployeeId WHERE Cus.CustomerId IS NOT NULL OR Emp.EmployeeId IS NOT NULL ;
*/

-- .table
-- SELECT * FROM Employee LIMIT 5;

/*3...
SELECT Emp2.FirstName ||' '|| Emp2.LastName AS "Employee Name", Emp.FirstName ||' '|| Emp.LastName AS Boss
FROM Employee AS Emp2 LEFT JOIN Employee AS Emp ON Emp.EmployeeId = Emp2.ReportsTo ORDER BY Boss NULLS FIRST;
*/
