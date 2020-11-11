CREATE TABLE band(
  bandId INT NOT NULL AUTO_INCREMENT,
  userId INT,
  performerId INT,
  name VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL,
  description TEXT,
  startDate DATE_TIME NOT NULL,
  endDate DATE_TIME,
  numberOfMembers INT NOT NULL,
  PRIMARY KEY (bandId)
);