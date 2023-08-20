SELECT a.id,
       a.title,
       (SELECT name
        FROM users u
        WHERE u.id IN
              (SELECT GROUP_CONCAT(c.commenter_id)
               FROM comments c
               WHERE c.article_id = a.id
               ORDER BY c.id)) AS commenter_names
FROM articles a