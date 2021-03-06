CREATE TABLE deletedTransaction(
	username VARCHAR(64),
    transactionId INT NOT NULL,
    refNumber VARCHAR(20) NOT NULL,
    bank VARCHAR(20) NOT NULL,
    execTime DATETIME NOT NULL
);

CREATE TRIGGER deleteTransaction AFTER DELETE ON transaction
FOR EACH ROW 
INSERT INTO deletedTransaction VALUES(USER(), OLD.transactionId, OLD.refNumber, OLD.bank, NOW());