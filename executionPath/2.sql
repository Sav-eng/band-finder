-- get firstname and lastname of member in bandId 1 or 2
(SELECT firstname, lastname 
FROM musicAssociate NATURAL JOIN musician NATURAL JOIN joint
WHERE bandId=1 AND status = 'joined')
UNION
(SELECT firstname, lastname 
FROM musicAssociate NATURAL JOIN musician NATURAL JOIN joint
WHERE bandId=2 AND status = 'joined')
;