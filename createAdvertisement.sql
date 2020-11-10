CREATE TABLE advertisement(
  advertisementId INT NOT NULL AUTO_INCREMENT,
  price FLOAT(24) NOT NULL,
  numberOfView INT NOT NULL,
  startDate DATETIME NOT NULL,
  endDate DATETIME NOT NULL,
  PRIMARY KEY (advertisementId)
);