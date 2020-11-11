INSERT INTO perform VALUES
(1, 1, 1, 999, false),
(2, 2, 2, 999, false),
(3, 3, 3, 999, false);


-- CREATE TABLE perform(
--   performId INT NOT NULL AUTO_INCREMENT,
--   performerId INT NOT NULL,
--   eventId INT NOT NULL,
--   cost INT NOT NULL,
--   PRIMARY KEY (performId)
--   FOREIGN KEY (performerId) REFERENCE performer(performerId),
--   FOREIGN KEY (eventId) REFERENCE event(eventId),
-- );