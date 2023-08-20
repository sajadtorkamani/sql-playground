SELECT a.title, u.name AS author, c.content AS comment
FROM articles a
         LEFT JOIN users u ON u.id = a.user_id
         LEFT JOIN comments c ON c.article_id = a.id