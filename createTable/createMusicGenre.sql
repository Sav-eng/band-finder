CREATE TABLE musicGenre (
  performerId INT NOT NULL,
  musicGenre VARCHAR(50) NOT NULL,
  PRIMARY KEY (performerId, musicGenre)
);