INSERT INTO perform VALUES
(NULL, 1234, 12345, 999);


-- CREATE TABLE perform(
--   performanceId INT NOT NULL AUTO_INCREMENT,
--   performerId INT NOT NULL,
--   eventId INT NOT NULL,
--   cost INT NOT NULL,
--   PRIMARY KEY (performanceId)
--   FOREIGN KEY (performerId) REFERENCE performer(performerId),
--   FOREIGN KEY (eventId) REFERENCE event(eventId),
-- );