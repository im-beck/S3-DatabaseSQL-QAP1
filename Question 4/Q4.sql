CREATE DATABASE "Company"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- Create the Department table
CREATE TABLE public."Department" (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);

-- Set the owner of the "Department" table to 'postgres'
ALTER TABLE public."Department"
OWNER TO postgres;

-- Create the Employee table
CREATE TABLE IF NOT EXISTS public."Employee" (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    department_id INT REFERENCES public."Department"(department_id)
);

-- Set the owner of the "Employee" table to 'postgres'
ALTER TABLE public."Employee"
OWNER TO postgres;

-- Insert data into the Department table
INSERT INTO public."Department" (department_name)
VALUES
    ('HR'),
    ('IT'),
    ('Finance');

-- Insert data into the Employee table
INSERT INTO public."Employee" (employee_name, department_id)
VALUES
    ('John Doe', 1),  -- Employee in HR department
    ('Jane Smith', 2), -- Employee in IT department
    ('Bob Johnson', 3); -- Employee in Finance department
	('Alice Johnson', 2),  -- Employee in IT department
    ('Charlie Brown', 1),  -- Employee in HR department
    ('Eva White', 3);      -- Employee in Finance department
