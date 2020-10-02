BEGIN;
UPDATE users 
SET is_deleted=1 
WHERE (number_work IS NULL OR number_work="")
      AND
      (number_private IS NULL OR number_private="")
      AND is_deleted=0;
COMMIT;
