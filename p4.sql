INSERT INTO book (title) VALUES("The Pragmatic Programmer");
INSERT INTO member (name) VALUES("Pamela Guaman");
INSERT INTO checkout_item (member_id, book_id, movie_id) VALUES (
(SELECT id FROM member WHERE name="Pamela Guaman"),
(SELECT id FROM book WHERE title="The Pragmatic Programmer" ),
Null);
SELECT member.name FROM member, book, checkout_item 
WHERE member.id= checkout_item.member_id 
AND book.id=checkout_item.book_id 
AND book.title= "The Pragmatic Programmer";