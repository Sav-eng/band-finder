SELECT name, score
FROM (
	SELECT 
		userId, 
		name, 
		score 
	FROM user
		NATURAL JOIN organizer
		LEFT OUTER JOIN review
	GROUP BY userId
	ORDER BY sum(score) DESC)
	NATURAL JOIN advertisement
WHERE CURRENT_DATE BETWEEN startDate AND endDate
GROUP BY userId
ORDER BY price DESC;
