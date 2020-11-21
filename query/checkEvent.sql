SELECT userId as musicianId, name as eventName, dateTime as eventDateTime
FROM (SELECT musician.userId, event.name, dateTime
	FROM musician
	NATURAL JOIN performer
	NATURAL JOIN perform
	,EVENT
	WHERE perform.eventId = event.eventId AND NOW() < dateTime
	UNION
	SELECT musician.userId, event.name, dateTime
	FROM musician
	NATURAL JOIN joint
	,band
	NATURAL JOIN performer
	NATURAL JOIN perform
	,event
	WHERE joint.bandId = band.bandId AND joint.status = "joined" AND perform.eventId = event.eventId AND NOW() < dateTime
	) as T
order by userId;