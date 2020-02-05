CREATE TABLE aisles(
   aisleID INT NOT NULL AUTO_INCREMENT,
   aisleName VARCHAR(50) NOT NULL,
   refrigerated BOOLEAN DEFAULT 0,
   PRIMARY KEY (aisleID)
);

CREATE TABLE products(
   productID INT NOT NULL AUTO_INCREMENT,
   productName VARCHAR(25) UNIQUE,
   productInventory INT,
   productPrice FLOAT(5,2),
   expDate DATE DEFAULT '2020-12-31',
   aisleID INT,
   PRIMARY KEY (productID),
   FOREIGN KEY (aisleID) REFERENCES aisles(aisleID)
);

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
