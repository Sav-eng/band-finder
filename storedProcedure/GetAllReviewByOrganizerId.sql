DELIMITER $$

CREATE PROCEDURE getAllReviewByOrganizerId(
  IN organizerId INT
)
BEGIN
	SELECT *
	FROM review R
  WHERE R.userId = organizerId;
END$$

DELIMITER ;