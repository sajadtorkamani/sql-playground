select name, salary, ROW_NUMBER() OVER (order by salary desc) as position
from employees;