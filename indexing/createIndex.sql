CREATE INDEX eventIndex USING BTREE ON event(dateTime);
CREATE INDEX locationIndex USING BTREE ON location(latitude, longitude);