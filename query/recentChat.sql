SELECT 	
	organizerID,
    userIdReceive AS recentReceiverId,
    recentSendTime
FROM(
    SELECT 
		senderId AS organizerID, 
		max(dateTime) AS recentSendTime
	FROM(
		SELECT 
			sender.userId AS senderId, 
			receiver.userId AS receiverId, 
			chatId
		FROM(
			SELECT userId 
			FROM user NATURAL JOIN organizer
		) AS sender
		,(
			SELECT userId 
			FROM user NATURAL JOIN musicAssociate
		) AS receiver
		,send
		WHERE sender.userId = userIdSend 
			AND receiver.userId = userIdReceive
	) AS organizerToMusicAssociate NATURAL JOIN chat
	GROUP BY senderId
) AS recentOrganizerChat JOIN (send NATURAL JOIN chat) ON recentSendTime = dateTime AND organizerID = userIdSend;