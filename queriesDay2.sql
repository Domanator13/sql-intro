CompanyDatabase

-- Explorer Mode Steps (1-15) Done!

-- Step 1
createdb CompanyDatabase

-- Step 2
pgcli CompanyDatabase

-- Step 3
CREATE TABLE "Departments" ("Id" SERIAL PRIMARY KEY, "DepartmentName" TEXT, "Building" TEXT);

-- Step 4
ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

-- Step 5
CREATE TABLE "Products" ("Id" SERIAL PRIMARY KEY, "Price" DECIMAL (18,2), "Name" TEXT, "Description" TEXT, "QuantityInStock" INT);

-- Step 6
CREATE TABLE "Orders" ("Id" SERIAL PRIMARY KEY, "OrderNumber" TEXT, "DatePlaced" TIMESTAMP, "Email" TEXT);

-- Step 7
CREATE TABLE "ProductOrders" ("Id" SERIAL PRIMARY KEY, "ProductId" INTEGER REFERENCES "Products" ("Id"), "OrderId" INTEGER REFERENCES "Orders" ("Id"), "OrderQuantity" INT);

-- Step 8 (Part 1)
INSERT INTO "Departments" ("DepartmentName", "Building") 
VALUES ('Development', 'Main');

-- Step 8 (Part 2)
INSERT INTO "Departments" ("DepartmentName", "Building") 
VALUES ('Marketing', 'North');

-- Step 9 (Step 1)
INSERT INTO "Employees" ("FullName", "Salary",	"JobPosition", "PhoneExtension",	"IsPartTime",	"DepartmentId") 
VALUES ('Tim Smith',	40000,	'Programmer',	123,	FALSE,	1);

-- Step 9 (Step 2)
INSERT INTO "Employees" ("FullName",	"Salary",	"JobPosition",	"PhoneExtension",	"IsPartTime",	"DepartmentId") 
VALUES ('Barbara Ramsey',	80000,	'Manager',	234,	FALSE,	1);

-- Step 9 (Step 3)
INSERT INTO "Employees" ("FullName",	"Salary",	"JobPosition",	"PhoneExtension",	"IsPartTime",	"DepartmentId") 
VALUES ('Tom Jones',	32000,	'Admin',	456,	TRUE,	2);

-- Step 10 (Part 1)
INSERT INTO "Products" ("Price",	"Name",	"Description",	"QuantityInStock") 
VALUES (12.45,	'Widget',	'The Original Widget',	100);

-- Step 10 (Part 2)
INSERT INTO "Products" ("Price",	"Name",	"Description",	"QuantityInStock") 
VALUES (99.99,	'Flowbee',	'Perfect for haircuts',	3);

-- Step 11
INSERT INTO "Orders" ("OrderNumber",	"DatePlaced",	"Email") 
VALUES ('X529',	'2020-01-01 16:55:00',	'person@example.com');

-- Step 12 (Part 1)
INSERT INTO "ProductOrders" ("OrderID", "ProductId","OrderQuantity") VALUES (1,1,3);

-- Step 12 (Part 2)
INSERT INTO "ProductOrders" ("OrderID", "ProductId","OrderQuantity") VALUES (1,2,2);

-- Step 13 (Part 1)
SELECT "Departments"."Building", "Departments"."DepartmentName", "Employees"."FullName"
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = 'North Side';

-- Step 13 (Step 2)
SELECT "Departments"."Building", "Departments"."DepartmentName", "Employees"."FullName"
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = 'East';

-- Step 14
SELECT "Orders"."OrderNumber", "Products"."Name", "Products"."Id", "ProductOrders"."OrderQuantity"
FROM "Orders"
JOIN "ProductOrders" ON "Orders"."Id" = "ProductOrders"."OrderId"
JOIN "Products" ON "ProductOrders"."ProductId" = "Products"."Id"
WHERE "ProductOrders"."ProductId" = 2;

-- Step 15
SELECT "ProductOrders"."OrderQuantity"
FROM "ProductOrders"
JOIN "Orders" ON "ProductOrders"."OrderID"="Orders"."Id"
JOIN "Products"ON "ProductOrders"."ProductId"="Products"."Id"
WHERE "Products"."Name"='FlowBee' AND "Orders"."OrderNumber"='X529';