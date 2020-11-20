CREATE TABLE joint(
  bandId INT NOT NULL,
  userId INT NOT NULL,
  status VARCHAR(20) NOT NULL,
  startDate DATETIME,
  endDate DATETIME,
  PRIMARY KEY (bandId, userId)
);