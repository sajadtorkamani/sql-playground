SELECT a.id article_id, u.id user_id
FROM articles a
         LEFT JOIN users u ON u.id = a.user_id