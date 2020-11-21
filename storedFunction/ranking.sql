DELIMITER $$
CREATE FUNCTION ranking(score float)
	RETURNS VARCHAR(10)
	DETERMINISTIC
BEGIN
	DECLARE lvl varchar(10);
	IF score > 4 THEN
		SET lvl = 'DIAMOND';
	ELSEIF (score <=4 and score >3) THEN
		SET lvl = 'PLATINUM';
	ELSEIF (score <=3 and score >2) THEN
		SET lvl = 'GOLD';
	ELSEIF (score <=2 and score >1) THEN
		SET lvl = 'SILVER';
	ELSEIF score <=1 THEN
		SET lvl = 'BRONZE';
	END IF;
	RETURN (lvl);
END $$
DELIMITER ;