CREATE TABLE event(
  eventId INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  location VARCHAR(100) NOT NULL UNIQUE,
  ticketPrice FLOAT(24),
  description TEXT,
  dateTime DATETIME NOT NULL,
  PRIMARY KEY (eventId)
);