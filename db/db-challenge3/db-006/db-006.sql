SELECT id
       , mail
       , password
       , name
       , self_introduction
       , number_work
       , number_private
       , is_deleted
       , created_at
       , modified_at 
FROM users 
WHERE is_deleted IS NOT NULL 
ORDER BY id;
