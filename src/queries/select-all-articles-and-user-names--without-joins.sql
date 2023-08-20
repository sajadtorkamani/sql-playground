SELECT a.title, (SELECT u.name FROM users u WHERE u.id = a.user_id) AS user
FROM articles a