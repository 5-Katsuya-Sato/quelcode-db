SELECT u.name
       , c.name
       , CAST(cu.joined_at AS DATE) AS joined_date 
FROM chat_users cu 
     JOIN users u 
     ON cu.user_id = u.id 
        AND u.is_deleted = 0 
     JOIN chats c 
     ON cu.user_id = c.id 
        AND c.is_deleted = 0 
WHERE substring(cu.joined_at, 1, 10)
ORDER BY cu.joined_at;
