SELECT * from band;

INSERT INTO joint VALUES
(2, 5, 'joined', NOW(), NULL);

SELECT * from band;

UPDATE joint SET status = 'left' where status = 'joined' and bandId = 1;
UPDATE joint SET status = 'joined' where status = 'pending' and bandId = 2;

SELECT * FROM band;


