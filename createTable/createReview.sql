CREATE TABLE review(
  reviewId INT NOT NULL AUTO_INCREMENT,
  performerId INT NOT NULL,
  userId INT NOT NULL,
  voteNumer INT NOT NULL,
  reviewMessage TEXT,
  score TINYINT NOT NULL,
  type VARCHAR(30) NOT NULL,
  timeDate DATETIME NOT NULL,
  PRIMARY KEY (reviewId)
);