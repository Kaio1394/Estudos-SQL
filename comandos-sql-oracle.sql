-- Concatenando valores da coluna. Usa-se '||'
select distinct first_name || ' ' || last_name as Name,
email, salary, salary*0.5 "contribuition"
from employees
where salary > 5000;
 
-- Betweenv
select first_name || ' ' || last_name as Name, salary from employees
where (salary between 5000 and 10000) and DEPARTMENT_ID = 100;

-- order by 
--desc -> do maior para o menor
select first_name, DEPARTMENT_ID from employees order by first_name desc;
--asc -> do menor para o maior
select first_name, DEPARTMENT_ID from employees order by first_name desc;

-- o caracterer '&' solicita que o prompt do usuário digite algum valor na determinada variável
select first_name || ' ' || last_name as Name, salary from employees
where (salary between 5000 and 10000) and DEPARTMENT_ID = &dep_id;

-- define -> define uma variável
define employees_id = 100;

select first_name || ' ' || last_name as Name, salary from employees
where (salary between 5000 and 10000) and DEPARTMENT_ID = &employees_id;
-- remove o valor da variável
undefine employees_id;

select employee_id from employees where last_name = initcap(&param);

-- concat
select concat(first_name, last_nam) as Name, salary from employees
where (salary between 5000 and 10000) and DEPARTMENT_ID = 100;