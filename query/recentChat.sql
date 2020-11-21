SELECT 	
	organizerID,
    userIdReceive AS recentRecieverId,
    recentSendTime
FROM(
    SELECT 
		senderId AS organizerID, 
		max(dateTime) AS recentSendTime
	FROM(
		SELECT 
			sender.userId AS senderId, 
			reciever.userId AS recieverId, 
			chatId
		FROM(
			SELECT userId 
			FROM user NATURAL JOIN organizer
		) AS sender
		,(
			SELECT userId 
			FROM user NATURAL JOIN musicAssociate
		) AS reciever
		,send
		WHERE sender.userId = userIdSend 
			AND reciever.userId = userIdReceive
	) AS organizerToMusicAssociate NATURAL JOIN chat
	GROUP BY senderId
) AS recentOrganizerChat JOIN (send NATURAL JOIN chat) ON recentSendTime = dateTime;