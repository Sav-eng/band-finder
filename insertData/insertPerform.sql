INSERT INTO perform VALUES
(NULL, 123, 123, 999, false);


-- CREATE TABLE perform(
--   performId INT NOT NULL AUTO_INCREMENT,
--   performerId INT NOT NULL,
--   eventId INT NOT NULL,
--   cost INT NOT NULL,
--   PRIMARY KEY (performId)
--   FOREIGN KEY (performerId) REFERENCE performer(performerId),
--   FOREIGN KEY (eventId) REFERENCE event(eventId),
-- );