SELECT u.name
       , m.last
       , m.name 
FROM users u
     , chats ch
     , posts p 
JOIN 
     (SELECT c.id
             , c.name
             , max(p.created_at) AS last 
      FROM chats c
           , posts p
           , users u 
      WHERE c.id=p.chat_id 
            AND u.is_deleted = 0 
            AND p.is_deleted = 0 
      GROUP BY c.id, c.name) AS m 
ON m.last = p.created_at 
WHERE m.id=ch.id 
      AND u.id=p.created_by;
