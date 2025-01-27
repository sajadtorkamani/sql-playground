CREATE TABLE IF NOT EXISTS articles
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
    id    INT AUTO_INCREMENT
        PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);


create table if not exists department
(
    id   int auto_increment
        primary key,
    name varchar(255) not null
);

create table if not exists employees
(
    id            int auto_increment
        primary key,
    name          varchar(255) not null,
    salary        int          not null,
    department_id int          not null,
    constraint employees_department_id_fk
        foreign key (department_id) references department (id)
);

CREATE TABLE transactions
(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount         DECIMAL(5, 2),
    customer_id    INT,
    order_date     DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

INSERT INTO transactions
VALUES (1000, 4.99, 3, "2023-01-01"),
       (1001, 2.89, 2, "2023-01-01"),
       (1002, 3.38, 3, "2023-01-02"),
       (1003, 4.99, 1, "2023-01-02"),
       (1004, 1.00, NULL, "2023-01-03"),
       (1005, 2.49, 4, "2023-01-03"),
       (1006, 5.48, NULL, "2023-01-03");