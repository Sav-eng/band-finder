INSERT INTO review VALUES
(NULL, 1, 1234, 3, 'review message', 123, 'sometype', CURRENT_DATE);

-- CREATE TABLE review(
--   reviewId INT NOT NULL AUTO_INCREMENT,
--   performerId INT NOT NULL,
--   userId INT NOT NULL,
--   voteNumer INT NOT NULL,
--   reviewMessage VARCHAR(500) NOT NULL,
--   score INT NOT NULL,
--   type VARCHAR(20) NOT NULL,
--   timeDate DATETIME NOT NULL,
--   PRIMARY KEY (reviewId),
--   FOREIGN KEY (performerId) REFERENCE performer(performerId),
--   FOREIGN KEY (userId) REFERENCE organizer(userId),
-- );