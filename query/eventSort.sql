SELECT name
FROM (select userId, name, score 
	FROM user
		NATURAL JOIN organizer
		LEFT OUTER JOIN review
	ORDER BY sum(score) DESC)
	NATURAL JOIN advertisement
WHERE CURRENT_DATE BETWEEN startDate AND endDate
ORDER BY price DESC;
