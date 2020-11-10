CREATE TABLE chat(
  chatId INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(640) NOT NULL,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (chatId)
);