CREATE TABLE deletedTracsaction(
	userId INT NOT NULL,
    transactionId INT NOT NULL,
    execTime DATETIME NOT NULL
);

CREATE TRIGGER deleteTracsantionTrigger AFTER DELETE ON transaction
FOR EACH ROW 
INSERT INTO deletedTransaction VALUES(USER(), NEW.transactionId, NOW());