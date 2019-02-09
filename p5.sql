SELECT member.name 
FROM checkout_item, member 
WHERE checkout_item.member_id = member.id 
GROUP BY member_id 
HAVING COUNT(*)>1;
