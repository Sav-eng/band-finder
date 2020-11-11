CREATE TABLE musician_musicGenre(
  userId INT NOT NULL,
  musicGenre VARCHAR(20) NOT NULL,
  PRIMARY KEY (userId,musicGenre)
);