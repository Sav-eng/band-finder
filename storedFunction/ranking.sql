DELIMITER $$
CREATE FUNCTION ranking(score float)
	RETURNS VARCHAR(10)
	DETERMINISTIC
BEGIN
	DECLARE lvl varchar(10);
	IF score > 8 THEN
		SET lvl = 'DIAMOND';
	ELSEIF (score <=8 and score >6) THEN
		SET lvl = 'PLATINUM';
	ELSEIF (score <=6 and score >4) THEN
		SET lvl = 'GOLD';
	ELSEIF (score <=4 and score >2) THEN
		SET lvl = 'SILVER';
	ELSEIF score <=2 THEN
		SET lvl = 'BRONZE';
	END IF;
	RETURN (lvl);
END $$
DELIMITER ;