-- get firstname lastname of member in bandId 2
SELECT firstname, lastname 
FROM musicAssociate
WHERE userId IN 
(
	SELECT userId 
	FROM musician A, joint B
	WHERE A.userId = B.userId AND
	B.bandId = 2
);