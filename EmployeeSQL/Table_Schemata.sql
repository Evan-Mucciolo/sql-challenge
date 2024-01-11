-- DATA ENGINEERING------------------------

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

CREATE TABLE departments (
    dept_no varchar(30) PRIMARY KEY NOT NULL,
    dept_name varchar(30)   NOT NULL
    
     
);

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no varchar(30) NOT NULL,
    dept_emp_key varchar(30) PRIMARY KEY NOT NULL,
  	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    emp_no INT PRIMARY KEY NOT NULL,
    dept_no varchar(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)   
     
);

CREATE TABLE titles (
    title_id varchar(30) PRIMARY KEY NOT NULL,
    title varchar(30)   NOT NULL
    
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id varchar(30)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    sex varchar(30)   NOT NULL,
    hire_date DATE   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY NOT NULL,
    salary NUMERIC   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
