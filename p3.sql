SELECT title
FROM book
WHERE id NOT IN
(SELECT book_id
FROM checkout_item c, book b
WHERE c.book_id = b.id) 
UNION
SELECT title
FROM movie
WHERE id NOT IN
(SELECT movie_id
FROM checkout_item c, movie m
WHERE c.movie_id = m.id) 
