CREATE TABLE musicianInstrument(
  userId INT NOT NULL,
  instrument VARCHAR(20) NOT NULL,
  PRIMARY KEY (userId,instrument)
);