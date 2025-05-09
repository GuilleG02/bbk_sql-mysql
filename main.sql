
CREATE DATABASE my_company_database; 

CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birth_date DATE,
    gender VARCHAR(20),
    PRIMARY KEY (id)
);

ADD COLUMN salary DECIMAL(10,2),
ADD COLUMN title VARCHAR(100),
ADD COLUMN title_date DATE;

INSERT INTO employees (first_name, last_name, birth_date, gender, salary, title, title_date) VALUES
('Carlos', 'Pérez', '1985-03-12', 'Male', 25000.00, 'Ingeniero de Sistemas', '2020-06-15'),
('María', 'López', '1990-08-21', 'Female', 18000.00, 'Analista de Datos', '2019-04-10'),
('Juan', 'Gómez', '1978-11-30', 'Male', 5000.00, 'Técnico de Redes', '2020-01-12'),
('Ana', 'Martínez', '1995-05-19', 'Female', 12000.00, 'Diseñadora UX', '2021-07-20'),
('Luis', 'Rodríguez', '1983-09-14', 'Male', 45000.00, 'Gerente de Proyecto', '2020-09-01'),
('Carlos', 'Ramírez', '1988-04-05', 'Male', 17000.00, 'Programador', '2022-03-18'),
('Laura', 'Díaz', '1992-12-10', 'Female', 33000.00, 'Scrum Master', '2020-11-30'),
('Carlos', 'Mendoza', '1991-07-07', 'Male', 5200.00, 'Desarrollador Backend', '2023-01-25'),
('Sofía', 'Cruz', '1987-06-22', 'Female', 27000.00, 'Product Owner', '2020-05-10'),
('Andrés', 'Vega', '1996-10-01', 'Male', 22000.00, 'QA Tester', '2023-05-11'),
('Elena', 'Herrera', '1993-01-15', 'Female', 29000.00, 'DevOps Engineer', '2021-09-22'),
('Pedro', 'Sánchez', '1980-02-18', 'Male', 40000.00, 'Arquitecto de Software', '2020-08-14'),
('Valentina', 'Torres', '1989-03-25', 'Female', 31000.00, 'Especialista en Seguridad', '2019-12-03'),
('Javier', 'Ruiz', '1986-06-30', 'Male', 15000.00, 'Administrador de Base de Datos', '2022-06-06'),
('María', 'García', '1994-11-05', 'Female', 26000.00, 'Consultora TI', '2021-02-09');

UPDATE employees SET first_name = 'Juanito' WHERE id = 3;

SELECT * FROM employees WHERE salary > 20000;
SELECT * FROM employees WHERE salary < 10000;
SELECT * FROM employees WHERE salary BETWEEN 14000 AND 50000;
SELECT COUNT(*) AS number_de_employees FROM employees;
SELECT title FROM employees WHERE YEAR(title_date) = 2019;
SELECT UPPER(first_name) FROM employees;
SELECT DISTINCT first_name FROM employees;

DELETE FROM employees WHERE id = 5;
DELETE FROM employees WHERE salary > 20000;










