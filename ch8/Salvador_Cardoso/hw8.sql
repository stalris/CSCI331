use Northwinds2024Student;

DROP TABLE IF EXISTS dbo.Customers;

CREATE TABLE dbo.Customers
(
  CustomerID    INT           NOT NULL PRIMARY KEY,
  CompanyName   NVARCHAR(40)  NOT NULL,
  Country       NVARCHAR(40)  NOT NULL,
  Region        NVARCHAR(15)  NULL,
  City          NVARCHAR(15)  NOT NULL
);


