INSERT INTO perform VALUES
(999, 1, 1, 10000, FALSE);

DELETE FROM perform WHERE performID = 999;
SELECT * FROM deletedPerform;              