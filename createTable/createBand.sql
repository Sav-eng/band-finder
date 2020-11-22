CREATE TABLE band(
  bandId INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  performerId INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL,
  description TEXT,
  startDate DATETIME NOT NULL,
  endDate DATETIME DEFAULT NULL,
  numberOfMembers INT NOT NULL,
  PRIMARY KEY (bandId)
);