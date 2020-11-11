CREATE TABLE event(
  eventId INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL
  name VARCHAR(20) NOT NULL,
  location VARCHAR(100) NOT NULL,
  ticketPrice FLOAT(24),
  description TEXT NOT NULL,
  date DATETIME NOT NULL,
  PRIMARY KEY (eventId),
  FOREIGN KEY (userId) REFERENCE organizer(userId) ON DELETE CASCADE
);