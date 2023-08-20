SELECT a.id, a.title,
#     (SELECT c.content FROM comments c WHERE c.article_id = a.id order by ID limit 1) AS first_comment
    (SELECT GROUP_CONCAT(c.id) FROM comments c WHERE c.article_id = a.id order by ID) AS comment_ids
FROM articles a