CREATE TABLE deleteTracsaction(
	userId INT NOT NULL,
    performerId INT NOT NUll,
    eventId INT NOT NULL,
    execTime DATETIME NOT NULL
);

CREATE TRIGGER deletePerformTrigger AFTER DELETE ON perform
FOR EACH ROW 
INSERT INTO deletePerformTrigger VALUES(USER(), NEW.performerId, NEW.eventId, NOW());