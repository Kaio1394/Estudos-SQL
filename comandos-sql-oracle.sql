-- COncatenando valores da coluna. Usa-se '||'
select distinct first_name || ' ' || last_name as Name,
email, salary, salary*0.5 "contribuition"
from employees
where salary > 5000;

select first_name || ' ' || last_name as Name from employees
where department_id = 100;