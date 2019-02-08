SELECT COUNT(*)
FROM member
WHERE member.id NOT IN
	(SELECT member_id 
	FROM checkout_item 
	GROUP BY member_id);