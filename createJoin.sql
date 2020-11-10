CREATE TABLE join(
  bandId INT NOT NULL,
  userId INT NOT NULL,
  status VARCHAR(20) NOT NULL,
  startDate DATE_TIME,
  endDate DATE_TIME,
  PRIMARY KEY (bandId, userId)
);