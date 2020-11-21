SELECT name, score
FROM (
	SELECT 
		userId, 
		name, 
		score 
	FROM (
		select userId,name
		FROM user, organizer
		WHERE user.userId = organizer.userId)
		LEFT OUTER JOIN review
	GROUP BY userId
	ORDER BY avg(score) DESC) as mapped,
	advertisement
WHERE mapped.userId = advertisement.userId AND CURRENT_DATE BETWEEN startDate AND endDate
GROUP BY userId
ORDER BY price DESC;
