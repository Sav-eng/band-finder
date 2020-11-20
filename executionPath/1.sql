-- get firstname lastname of member in bandId 2
SELECT firstname, lastname 
FROM musicAssociate NATURAL JOIN musician NATURAL JOIN joint
WHERE bandId=2;