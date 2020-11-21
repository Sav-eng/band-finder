CREATE TABLE make(
  userIdSend INT NOT NULL,
  userIdReceive INT NOT NULL,
  transactionID INT NOT NULL,
  PRIMARY KEY (userIdSend, userIdReceive, transactionID)
);