CREATE TABLE user(
  userId INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(20) NOT NULL,
  profilePicture VARCHAR(20) NOT NULL,
  password VARCHAR(256) NOT NULL,
  creditCardNumber VARCHAR(256) DEFAULT NULL,
  telephoneNO VARCHAR(15) NOT NULL,
  isDeleted BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (userId)
);