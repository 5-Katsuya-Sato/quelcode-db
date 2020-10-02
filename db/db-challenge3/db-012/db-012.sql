BEGIN;
UPDATE chats 
SET is_sendable=0
    , modified_by=1 
WHERE is_deleted=0 
      AND is_sendable=1 
      AND id NOT IN (SELECT chat_id from chat_users WHERE user_id=1);
COMMIT;
