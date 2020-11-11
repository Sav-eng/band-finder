DELIMITER $$

CREATE PROCEDURE GetPerformerMostRecentEvent(
  IN performerId INT
)
BEGIN
	SELECT E.name, E.date, E.location
	FROM event E, perform PF
  WHERE PF.performerId = performerId and E.eventId = PF.eventId
  ORDER BY E.date ASC
  LIMIT 1;
END$$

DELIMITER ;