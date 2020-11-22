DELIMITER $$

CREATE PROCEDURE getPerformerMostRecentEvent(
  IN performerId INT
)
BEGIN
	SELECT E.name, E.dateTime, E.location
	FROM event E, perform PF
  WHERE PF.performerId = performerId and E.eventId = PF.eventId
  ORDER BY E.dateTime DESC
  LIMIT 1;
END$$

DELIMITER ;