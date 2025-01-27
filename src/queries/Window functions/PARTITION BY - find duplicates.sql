with users_and_emails as (select *,
                                 ROW_NUMBER() OVER (partition by email) AS email_order
                          from users)
select *
from users_and_emails
where email_order > 1;
