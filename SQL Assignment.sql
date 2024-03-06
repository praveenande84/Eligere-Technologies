
-- Create EmployeeInfo table
/*
CREATE TABLE EmployeeInfo (
    EmpID INTEGER,
    EmpFname VARCHAR(200),
    EmpLname VARCHAR(200),
    Department VARCHAR(200),
    Project VARCHAR(200),
    Address VARCHAR(200),
    DOB DATE,
    Gender VARCHAR(20)
);
*/

-- Insert data into EmployeeInfo table
/*
INSERT INTO 
	EmployeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender)
VALUES 
	(1, 'Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad', '1976-12-01', 'M'),
	(2, 'Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', '1968-05-02', 'F'),
	(3, 'Rohan', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)', '1980-01-01', 'M'),
	(4, 'Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad', '1992-05-02', 'F'),
	(5, 'Ankit', 'Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '1994-07-03', 'M');
*/   


-- Create EmployeePosition table
/*
CREATE TABLE EmployeePosition (
    EmpID INTEGER,
    EmpPosition VARCHAR(200),
    DateOfJoining DATE,
    Salary INTEGER
);
*/

-- Insert data into EmployeePosition table
/*
INSERT INTO EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary)
VALUES 
(1, 'Manager', '2022-05-01', 500000),
(2, 'Executive', '2022-05-02', 75000),
(3, 'Manager', '2022-05-01', 90000),
(2, 'Lead', '2022-05-02', 85000),
(1, 'Executive', '2022-05-01', 300000);
*/

-- Query 1
SELECT 
	EmployeeInfo.EmpFname as firstname, 
    EmployeeInfo.EmpLname as lastname, 
    EmployeeInfo.Department as department,
    EmployeePosition.EmpPosition as position
	FROM 
    	EmployeeInfo JOIN EmployeePosition
        	ON EmployeeInfo.EmpID = EmployeePosition.EmpID;

-- Query 2
SELECT Project, COUNT(EmpID) AS EmployeeCount
FROM EmployeeInfo
GROUP BY Project;

-- Query 3 
SELECT EmpPosition, COUNT(EmpID) AS EmployeeCount
	FROM EmployeePosition
GROUP BY EmpPosition;

--- Query 4 
SELECT EmpID, Salary
FROM EmployeePosition
WHERE Salary = (SELECT MAX(Salary) FROM EmployeePosition)
   OR Salary = (SELECT MIN(Salary) FROM EmployeePosition);