CREATE TABLE Transaction(
  transactionId INT NOT NULL AUTO_INCREMENT,
  refNumber INT NOT NULL,
  bank VARCHAR(20) NOT NULL,
  date DATETIME NOT NULL,
  type VARCHAR(20) NOT NULL,
  amount VARCHAR(20) NOT NULL,
  PRIMARY KEY (transactionId)
);