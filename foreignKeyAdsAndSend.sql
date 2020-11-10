ALTER TABLE advertisement ADD CONSTRAINT fk_advertisement_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdSend FOREIGN KEY (userIdSend) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdReceieve FOREIGN KEY (userIdReceieve) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_chatId FOREIGN KEY (chatId) REFERENCES chat(chatId);