IF NOT EXISTS articles
(
    id    INT AUTO_INCREMENT
        PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS comments
(
    id         INT AUTO_INCREMENT
        PRIMARY KEY,
    content    TEXT NOT NULL,
    article_id INT  NOT NULL,
    CONSTRAINT comments_articles_id_fk
        FOREIGN KEY (article_id) REFERENCES articles (id)
);

CREATE TABLE IF NOT EXISTS users
(
    id   INT AUTO_INCREMENT
        PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

