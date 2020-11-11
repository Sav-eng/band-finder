CREATE TABLE deletedPerform(
	userId INT NOT NULL,
    performerId INT NOT NUll,
    eventId INT NOT NULL,
    execTime DATETIME NOT NULL
);

CREATE TRIGGER deletePerformTrigger AFTER DELETE ON perform
FOR EACH ROW 
INSERT INTO deletedPerform VALUES(performId, performerId, eventId, NOW());