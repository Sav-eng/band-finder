CREATE TABLE perform(
  performerId INT NOT NULL,
  eventId INT NOT NULL,
  cost INT NOT NULL,
  isPerformerPerformed BOOLEAN DEFAULT FALSE NOT NULL,
  PRIMARY KEY (performId),
  PRIMARY KEY (eventId)
);