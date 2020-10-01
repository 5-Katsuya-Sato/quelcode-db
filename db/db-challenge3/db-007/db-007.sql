SELECT id
       , name
       , summary
       , CASE is_sendable 
            WHEN 1 THEN "許可"  
            WHEN 0 THEN "禁止" 
       END AS is_sendable
       , is_directchat
       , is_deleted
       , created_at
       , created_by
       , modified_at
       , modified_by 
FROM chats 
WHERE is_deleted = 0 
      AND summary LIKE "%ダイレクトチャット" 
ORDER BY id;
