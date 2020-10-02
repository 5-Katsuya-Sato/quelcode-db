BEGIN;
UPDATE tasks 
SET is_completed=1 
    ,modified_by=1 
WHERE is_deleted = 0 
      AND is_completed = 0 
      AND created_at BETWEEN '2020-04-26 09:00:00.00000' AND '2020-04-26 11:30:00.00000';
COMMIT;
