SELECT u.name
       , c.name
       , DATE_FORMAT(cu.joined_at, '%Y %m %d') AS joined_date
FROM chat_users cu 
     JOIN users u 
     ON cu.user_id = u.id 
        AND u.is_deleted = 0 
     JOIN chats c 
     ON cu.user_id = c.id 
        AND c.is_deleted = 0 
ORDER BY cu.joined_at;
