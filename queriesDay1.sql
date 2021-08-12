CompanyDatabase

-- Explorer Mode Steps (1-10) Done!

-- Step 1
createdb CompanyDatabase

-- Step 2
pgcli CompanyDatabase

-- Step 3
CREATE TABLE "Employees" ("FullName" TEXT, "Salary" DECIMAL (18,2), "JobPosition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOL);

-- Step 4 (Part 1)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Brown', '1267.00', 'Professional A-hole', '1234', false);

-- Step 4 (Part 2)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Cena', '9.00', 'Wrestler', '8723', true);

-- Step 4 (Part 3)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Doe', '400.00', 'Cook', '7234', true);

-- Step 4 (Part 4)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Johnson', '30000.00', 'Doctor', '6661', true);

-- Step 4 (Part 5)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Krasinski', '3948900000.12', 'Jim', '9873', true);

-- Step 4 (Part 6)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Law', '999999999999999.99', 'Lawyer', '1254', false);

-- Step 4 (Part 7)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Legend', '5554443334.44', 'Singer', '4361', false);

-- Step 4 (Part 8)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Smith', '6000.00', 'Track Star', '4321', false);

-- Step 4 (Part 9)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Wayne', '9998887776.66', 'Batman', '9991', true);

-- Step 4 (Part 10)
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John Wick', '600000000.12', 'Hitman', '(Null)', true);

-- Step 5
SELECT * FROM "Employees";

-- Step 6
SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = false;

-- Step 7
INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('John McAfee', '450.00', 'Software Developer', '1023', true);

-- Step 8
UPDATE "Employees" SET "Salary" = '500.00' WHERE "JobPosition" = 'Cook';

-- Step 9
DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry'

-- Step 10
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);

-- Adventure Mode Steps (1 & 2) Done!

-- Step 1 (Part 1)
ALTER TABLE "Employees" ALTER COLUMN "FullName" SET NOT NULL;

-- Step 1 (Part 2)
ALTER TABLE "Employees" ALTER COLUMN "Salary" SET NOT NULL;

-- Step 1 (Part 3)
ALTER TABLE "Employees" ALTER COLUMN "JobPosition" SET NOT NULL;

-- Step 1 (Part 4)
ALTER TABLE "Employees" ALTER COLUMN "IsPartTime" SET NOT NULL;

-- Step 2
ALTER TABLE "Employees" ADD COLUMN "Id" SERIAL PRIMARY KEY;

-- Epic Mode Steps (1 & 2) Done!

-- Step 1
CREATE TABLE "Departments"("Name"  TEXT, "BuildingNumber"  INt NOT NULL "Id" SERIAL PRIMARY KEY);

-- Step 2
ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");