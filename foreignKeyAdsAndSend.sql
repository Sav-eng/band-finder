ALTER TABLE advertisement ADD CONSTRAINT fk_advertisement_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdSend FOREIGN KEY (userIdSend) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdReceieve FOREIGN KEY (userIdReceieve) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_chatId FOREIGN KEY (chatId) REFERENCES chat(chatId) ON DELETE CASCADE;
ALTER TABLE admin ADD CONSTRAINT fk_admin_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE music_associate ADD CONSTRAINT fk_music_associate_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE band_manager ADD CONSTRAINT fk_band_manager_userId FOREIGN KEY (userId) REFERENCES music_associate(userId);
ALTER TABLE band ADD CONSTRAINT fk_band_userId FOREIGN KEY (userId) REFERENCES band_manager(userId)L;
ALTER TABLE musician ADD CONSTRAINT fk_musician_userId FOREIGN KEY (userId) REFERENCES music_associate(userId);
ALTER TABLE musician ADD CONSTRAINT fk_musician_performerId FOREIGN KEY (performerId) REFERENCES performer(performerId) ON DELETE CASCADE;
ALTER TABLE musician_instrument ADD CONSTRAINT fk_musician_instrument_userId FOREIGN KEY (userId) REFERENCES musician(userId) ON DELETE CASCADE;
ALTER TABLE musician_musicGenre ADD CONSTRAINT fk_musician_musicGenre_userId FOREIGN KEY (userId) REFERENCES musician(userId) ON DELETE CASCADE;
ALTER TABLE band_musicGenre ADD CONSTRAINT fk_band_musicGenre_bandId FOREIGN KEY (bandId) REFERENCES band(bandId) ON DELETE CASCADE;
ALTER TABLE join ADD CONSTRAINT fk_join_bandId FOREIGN KEY (bandId) REFERENCES band(bandId) ON DELETE CASCADE;
ALTER TABLE join ADD CONSTRAINT fk_join_userId FOREIGN KEY (userId) REFERENCES musician(userId);
ALTER TABLE make ADD CONSTRAINT fk_make_userIdSend FOREIGN KEY (userIdSend) REFERENCES user(userId);
ALTER TABLE make ADD CONSTRAINT fk_make_userIdReceive FOREIGN KEY (userIdReceive) REFERENCES user(userId);
ALTER TABLE make ADD CONSTRAINT fk_make_transactionID FOREIGN KEY (transactionID) REFERENCES transaction(transactionId) ON DELETE CASCADE;