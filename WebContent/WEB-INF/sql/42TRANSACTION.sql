USE mydb2;

DELETE FROM Reply WHERE board_id = 15;
-- ROLLBACK;
DELETE FROM Board
WHERE id = 15;
COMMIT;

SELECT * FROM Reply WHERE board_id = 16;