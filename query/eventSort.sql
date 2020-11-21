SELECT organizerId,name, avgScore
FROM (
	SELECT 
		organizerId, 
		name, 
		avg(score) as avgScore
	FROM (
		select organizer.userId as organizerId,name
		FROM user, organizer
		WHERE user.userId = organizer.userId) as organizerUser
		LEFT OUTER JOIN review on organizerId = review.userId
	GROUP BY organizerId
	ORDER BY avg(score) DESC) as mapped
	LEFT OUTER JOIN advertisement on organizerId = advertisement.userId AND NOW() BETWEEN startDate AND endDate
ORDER BY price DESC;