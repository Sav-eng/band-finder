ALTER TABLE advertisement ADD CONSTRAINT fk_advertisement_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdSend FOREIGN KEY (userIdSend) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_userIdReceive FOREIGN KEY (userIdReceive) REFERENCES user(userId);
ALTER TABLE send ADD CONSTRAINT fk_send_chatId FOREIGN KEY (chatId) REFERENCES chat(chatId) ON DELETE CASCADE;
ALTER TABLE admin ADD CONSTRAINT fk_admin_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE musicAssociate ADD CONSTRAINT fk_musicAssociate_userId FOREIGN KEY (userId) REFERENCES user(userId);
ALTER TABLE bandManager ADD CONSTRAINT fk_bandManager_userId FOREIGN KEY (userId) REFERENCES musicAssociate(userId);
ALTER TABLE band ADD CONSTRAINT fk_band_userId FOREIGN KEY (userId) REFERENCES bandManager(userId);
ALTER TABLE band ADD CONSTRAINT fk_band_performerId FOREIGN KEY (performerId) REFERENCES performer(performerId) ON DELETE CASCADE;
ALTER TABLE musician ADD CONSTRAINT fk_musician_userId FOREIGN KEY (userId) REFERENCES musicAssociate(userId);
ALTER TABLE musician ADD CONSTRAINT fk_musician_performerId FOREIGN KEY (performerId) REFERENCES performer(performerId) ON DELETE CASCADE;
ALTER TABLE musicianInstrument ADD CONSTRAINT fk_musicianInstrument_userId FOREIGN KEY (userId) REFERENCES musician(userId) ON DELETE CASCADE;
ALTER TABLE joint ADD CONSTRAINT fk_join_bandId FOREIGN KEY (bandId) REFERENCES band(bandId) ON DELETE CASCADE;
ALTER TABLE joint ADD CONSTRAINT fk_join_userId FOREIGN KEY (userId) REFERENCES musician(userId);
ALTER TABLE make ADD CONSTRAINT fk_make_userIdSend FOREIGN KEY (userIdSend) REFERENCES user(userId);
ALTER TABLE make ADD CONSTRAINT fk_make_userIdReceive FOREIGN KEY (userIdReceive) REFERENCES user(userId);
ALTER TABLE make ADD CONSTRAINT fk_make_transactionID FOREIGN KEY (transactionID) REFERENCES transaction(transactionId) ON DELETE CASCADE;
ALTER TABLE event ADD CONSTRAINT fk_event_userId FOREIGN KEY (userId) REFERENCES organizer(userId);
ALTER TABLE review ADD CONSTRAINT fk_review_performerId FOREIGN KEY (performerId) REFERENCES performer(performerId);
ALTER TABLE review ADD CONSTRAINT fk_review_userId FOREIGN KEY (userId) REFERENCES organizer(userId);
ALTER TABLE perform ADD CONSTRAINT fk_perform_performerId FOREIGN KEY (performerId) REFERENCES performer(performerId) ON DELETE CASCADE;
ALTER TABLE perform ADD CONSTRAINT fk_perform_eventId FOREIGN KEY (eventId) REFERENCES event(eventId) ON DELETE CASCADE;
ALTER TABLE musicGenre ADD CONSTRAINT fk_musicGenre_performerId FOREIGN KEY (performerId) REFERENCES performer(performerId) ON DELETE CASCADE;
ALTER TABLE location ADD CONSTRAINT fk_location_location FOREIGN KEY (location) REFERENCES event(location) ON DELETE CASCADE; 