DELIMITER $$
CREATE FUNCTION bandAge(startDate DATETIME,endDate DATETIME)
	RETURNS VARCHAR(256)
	DETERMINISTIC
BEGIN
	DECLARE y int;
    DECLARE m int;
    DECLARE d int;
    DECLARE h int;
    DECLARE min int;
    DECLARE s int;
	IF endDate is NULL THEN
		SET endDate = now();
	END IF;
    SET s = TIMESTAMPDIFF(SECOND,startDate,endDate)%60;
    SET min = TIMESTAMPDIFF(MINUTE,startDate,endDate)%60;
    SET h = TIMESTAMPDIFF(HOUR,startDate,endDate)%24;
    SET d = TIMESTAMPDIFF(DAY,startDate,endDate)%30;
    SET m = TIMESTAMPDIFF(MONTH,startDate,endDate)%12;
    SET y = TIMESTAMPDIFF(YEAR,startDate,endDate);
    
	RETURN (CONCAT(y,'Y',m,'M',d,'D',h,'hr',min,'min',s,'sec'));
END $$
DELIMITER ;