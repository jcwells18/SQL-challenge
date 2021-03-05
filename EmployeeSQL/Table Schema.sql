--table schema
--creating tables
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	primary key (emp_no)
);

select * from employees

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30) NOT NULL,
	primary key (dept_no)
);

select * from departments

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

select * from dept_emp

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
); 

select * from dept_manager

CREATE TABLE salaries(
	emp_no INT,
	salary BIGINT,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);

select * from titles