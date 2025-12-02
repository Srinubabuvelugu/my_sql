CREATE TABLE employees_str (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50), 
    last_name VARCHAR(40),
    department VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO employees_str (
    emp_id, first_name, last_name, department, city, phone, email
) VALUES
(101, 'John', 'Smith', 'Sales', 'New York', '9876543210', 'john.smith@salescorp.com'),
(102, 'Alice', 'Johnson', 'HR', 'Los Angeles', '9123456780', 'alice.johnson@hrdept.org'),
(103, 'Robert', 'Brown', 'IT', 'San Francisco', '9988776655', 'robert.brown@techworld.io'),
(104, 'Maria', 'Davis', 'Marketing', 'Chicago', '9090909090', 'maria.davis@marketplus.com'),
(105, 'Samuel', 'Thomas', 'IT', 'Seattle', '9345678901', 'samuel.thomas@cloudhub.io'),
(106, 'Julia', 'Roberts', 'Finance', 'Chicago', '9001122334', 'julia.roberts@finserve.net'),
(107, 'Amit', 'Sharma', 'Sales', 'Boston', '9800765432', 'amit.sharma@salescorp.com'),
(108, 'Priya', 'Nair', 'IT', 'Austin', '9988001122', 'priya.nair@cloudhub.io'),
(109, 'Dev', 'Patel', 'Support', 'Denver', '9112233445', 'dev.patel@supportcare.com'),
(110, 'Sara', 'Wilson', 'Admin', 'Detroit', '9556677889', 'sara.wilson@admindesk.com');
