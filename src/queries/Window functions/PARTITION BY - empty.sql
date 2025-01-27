select e.name,
       e.salary,
       d.name               as department,
       ROW_NUMBER() OVER () as ranking
from employees e
         inner join department d on d.id = e.department_id
;
