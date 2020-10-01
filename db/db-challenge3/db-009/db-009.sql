SELECT count(*) AS 投稿数
       , c.name 
FROM posts p
     , chats c
     , users u 
WHERE p.chat_id=c.id 
      AND p.created_by = u.id 
      AND u.is_deleted = 0 
      AND p.is_deleted = 0 
GROUP BY p.chat_id 
ORDER BY 投稿数 DESC;
