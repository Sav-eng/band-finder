CREATE TABLE send(
  userIdSend INT NOT NULL ,
  userIdReceive INT NOT NULL,
  chatId INT NOT NULL,
  PRIMARY KEY (userIdSend, userIdReceive, chatId)
);