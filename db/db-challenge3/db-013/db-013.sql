BEGIN;
UPDATE users 
SET is_deleted=1 
WHERE number_work IS NULL 
      AND number_private IS NULL 
      AND is_deleted=0;
COMMIT;
