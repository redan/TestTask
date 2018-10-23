CREATE DATABASE IF NOT EXISTS library;
USE library;
CREATE TABLE IF NOT EXISTS authors(
    id INT PRIMARY KEY,
    author_name VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS books(
    id INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
);
CREATE TABLE IF NOT EXISTS auth_books(
    author_id INT NOT NULL,
    book_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);
INSERT INTO authors (id, author_name)
    VALUE (1, "Аркадий Стругацкий");
INSERT INTO authors (id, author_name)
    VALUE (2, "Борис Стругацкий");
INSERT INTO authors (id, author_name)
    VALUE (3, "Рэй Брэдбери");
INSERT INTO books (id, title)
    VALUE (1, "Отель «У Погибшего Альпиниста»");
INSERT INTO books (id, title)
    VALUE (2, "Понедельник начинается в субботу");
INSERT INTO books (id, title)
    VALUE (3, "Пикник на обочине");
INSERT INTO books (id, title)
    VALUE (4, "451 градус по Фаренгейту");
INSERT INTO books (id, title)
    VALUE (5, "Марсианские хроники");
INSERT INTO books (id, title)
    VALUE (6, "Вино из одуванчиков");
INSERT INTO auth_books(author_id, book_id)
    VALUES (1,1);
INSERT INTO auth_books(author_id, book_id)
    VALUES (2,1);
INSERT INTO auth_books(author_id, book_id)
    VALUES (1,2);
INSERT INTO auth_books(author_id, book_id)
    VALUES (2,2);
INSERT INTO auth_books(author_id, book_id)
    VALUES (1,3);
INSERT INTO auth_books(author_id, book_id)
    VALUES (2,3);
INSERT INTO auth_books(author_id, book_id)
    VALUES (3,4);
INSERT INTO auth_books(author_id, book_id)
    VALUES (3,5);
INSERT INTO auth_books(author_id, book_id)
    VALUES (3,6);
-- Запрос (выводит имена авторов которые написали менее 7 книг и количество книг у каждого) --
select a.author_name, COUNT(c.title)
from authors a
join auth_books b
on a.id=b.author_id
join books c
on c.id=b.book_id
group by a.author_name
having count(c.title)  < 7;
-- Вариант вывода только именb автора
select a.author_name
from authors a
join auth_books b
on a.id=b.author_id
group by a.author_name
having count(*) <7