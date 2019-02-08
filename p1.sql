SELECT member.name FROM member, book, checkout_item 
WHERE member.id= checkout_item.member_id 
AND book.id=checkout_item.book_id 
AND book.title= "The Hobbit";
