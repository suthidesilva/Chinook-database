-- -- 1.
-- SELECT Title FROM Album Where ArtistId = (SELECT ArtistId FROM Artist WHERE Name = "Led Zeppelin");

-- -- 2.
-- SELECT Email FROM Customer WHERE  SupportRepId = ( SELECT EmployeeId FROM Employee WHERE (FirstName,LastName) = ("Steve","Johnson")) ORDER BY Email;

-- -- 3.
-- SELECT FirstName , LastName FROM Employee WHERE EmployeeId IN (SELECT ReportsTo FROM Employee) ;

-- -- 4.
-- SELECT FirstName , LastName FROM Employee WHERE EmployeeId NOT IN (SELECT ReportsTo FROM Employee WHERE ReportsTo NOT NULL) ;

-- -- 5.
-- INSERT INTO Employee(FirstName , LastName , HireDate , Email) VALUES ("Dave", "Rosoff", "2023-03-13 07:00:00" , "drosoff@yotes.collegeofidaho.edu");

-- -- 6.
-- UPDATE Employee SET 
--   Title = (SELECT Title FROM Employee WHERE (FirstName, LastName) = ("Steve","Johnson")),
--   ReportsTo = (SELECT ReportsTo FROM Employee WHERE (FirstName, LastName) = ("Steve","Johnson"))
--   WHERE (FirstName, LastName) = ("Dave","Rosoff");

-- -- 7.
-- UPDATE Customer SET 
--   SupportRepId = (SELECT EmployeeId FROM Employee WHERE (FirstName, LastName) = ("Dave","Rosoff"))
--   WHERE SupportRepId = (SELECT EmployeeId FROM Employee WHERE (FirstName, LastName) = ("Steve","Johnson"));



-- SELECT * FROM Customer;
.schema
.table
