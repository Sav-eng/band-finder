SELECT name, score
FROM (
	SELECT 
		userId, 
		name, 
		score 
	FROM user, organizer
		LEFT OUTER JOIN review
	WHERE user.userId = organizer.userId
	GROUP BY userId
	ORDER BY sum(score) DESC) as mapped,
	advertisement
WHERE mapped.userId = advertisement.userId AND CURRENT_DATE BETWEEN startDate AND endDate
GROUP BY userId
ORDER BY price DESC;
