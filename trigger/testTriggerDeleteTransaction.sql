INSERT INTO user VALUES
(999, 'Team:)@chula.co.th', 'ProfilePicture', 'Password', 'creditCardNumber', 'telephoneNumber', FALSE);
INSERT INTO transaction VALUES
(999, 10, 'Tamoad Bank', NOW(), 'Payment', '1');
DELETE FROM transaction WHERE transactionID = 999;
SELECT * FROM deletedTransaction