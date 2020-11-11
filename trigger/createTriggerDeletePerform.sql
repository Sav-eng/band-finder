CREATE TABLE deletedPerform(
    username VARCHAR(20),
    performerId INT NOT NUll,
    eventId INT NOT NULL,
    execTime DATETIME NOT NULL
);

CREATE TRIGGER deletePerformTrigger AFTER DELETE ON perform
FOR EACH ROW 
INSERT INTO deletedPerform VALUES(USER(), OLD.performerId, OLD.eventId, NOW());