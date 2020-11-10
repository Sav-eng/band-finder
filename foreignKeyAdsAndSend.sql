ALTER TABLE advertisement ADD CONSTRAINT fk_advertisement_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdSend FOREIGN KEY (userIdSend) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdReceieve FOREIGN KEY (userIdReceieve) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_chatId FOREIGN KEY (chatId) REFERENCES chat(chatId);
ALTER TABLE send ADD CONSTRAINT fk_admin_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_music_associate_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_band_manager_userId FOREIGN KEY (userId) REFERENCES music_associate(userId);
ALTER TABLE send ADD CONSTRAINT fk_band_userId FOREIGN KEY (userId) REFERENCES band_manager(userId);