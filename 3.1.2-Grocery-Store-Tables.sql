CREATE TABLE employees(
    employeeID INT NOT NULL AUTO_INCREMENT,
    employeeFN VARCHAR(50) NOT NULL,
    employeeLN VARCHAR(50) NOT NULL,
    employeeTitle VARCHAR(75),
    PRIMARY KEY(employeeID)
);

CREATE TABLE departments(
    deptID INT NOT NULL AUTO_INCREMENT,
    deptName VARCHAR(75),
    PRIMARY KEY(deptID)
);

CREATE TABLE deptEmployees(
    deptID INT,
    employeeID INT,
    PRIMARY KEY (deptID,employeeID),
    FOREIGN KEY (employeeID) REFERENCES employees(employeeID),
    FOREIGN KEY (deptID) REFERENCES departments(deptID)
);
