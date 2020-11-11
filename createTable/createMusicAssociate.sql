CREATE TABLE musicAssociate(
  userId INT NOT NULL,
  firstName VARCHAR(20) NOT NULL,
  lastName VARCHAR(20) NOT NULL,
  description TEXT DEFAULT NULL,
  PRIMARY KEY (userId)
);