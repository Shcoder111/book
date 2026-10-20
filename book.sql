CREATE TABLE IF NOT EXISTS book (
    book_id        INTERGER  PRIMARY KEY,
    title          TEXT      NOT NULL,
    genre          TEXT      NOT NULL,
    reviews        REAL      NOT NULL,
    number_of_pages   INTEGER   NOT NULL,
    publish_yr     INTEGER   NOT NULL
);

INSERT INTO book VALUES (1, 'The Alchemist — Paulo Coelho', 'Philosophical fiction', 3.9, 208, 1988);
INSERT INTO book VALUES (2, 'Atomic Habits — James Clear', 'Self-help / Productivity', 4.3, 320, 2018);
INSERT INTO book VALUES (3, 'Harry Potter and the Philosopher Stone — J.K. Rowling', 'Fantasy' , 4.5, 223, 1997);
INSERT INTO book VALUES (4,	'The Hobbit — JRR Tolkien','Fantasy / Adventure', 4.3, 310, 1937);
INSERT INTO book VALUES (5, '1984 — George Orwell', 'Dystopian fiction', 4.2, 328, 1949);
INSERT INTO book VALUES (6,	'The Psychology of Money — Morgan Housel', 'Personal finance', 4.3, 256, 2020);
INSERT INTO book VALUES (7, 'The Da Vinci Code — Dan Brown', 'Mystery / Thriller', 3.9, 489, 2003);
INSERT INTO book VALUES (8,	'Sapiens: A Brief History of Humankind — Yuval Noah Harari', 'History / Nonfiction'	,4.4, 443,	2011);

SELECT title, reviews FROM book ORDER BY reviews ASC;

SELECT title, reviews FROM book ORDER BY reviews DESC;

SELECT title, reviews, genre FROM book ORDER BY genre ASC, rating DESC;

SELECT title, reviews FROM book ORDER BY reviews DESC LIMIT 3;

SELECT title, publish_yr FROM book ORDER BY publish_yr ASC LIMIT 5;

SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre;

SELECT genre, SUM(pages) AS total_pages, AVG(reviews) AS avg_rating
FROM book
GROUP BY genre;

SELECT genre, COUNT(*) AS book_count
FROM book
GROUP BY genre
HAVING count(*) > 2;

SELECT genre, AVG(reviews) AS avg_reviews
FROM book