CREATE TABLE perform(
  performanceId INT NOT NULL,
  performerId INT NOT NULL,
  eventId INT NOT NULL,
  cost INT NOT NULL,
  isPerformerPerformed BOOLEAN DEFAULT FALSE NOT NULL,
  PRIMARY KEY (performanceId)
  FOREIGN KEY (performerId) REFERENCE performer(performerId),
  FOREIGN KEY (eventId) REFERENCE event(eventId),
);