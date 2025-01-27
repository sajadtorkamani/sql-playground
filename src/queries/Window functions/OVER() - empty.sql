select name, salary, ROW_NUMBER() OVER () as position
from employees;