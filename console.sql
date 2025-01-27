select *,
       ROW_NUMBER() OVER (partition by email) AS email_order
from users;