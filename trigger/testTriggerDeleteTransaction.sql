INSERT INTO user VALUES
(999, 'Team:)@chula.co.th', 'ProfilePicture', 'Password', 'creditCardNumber', 'telephoneNumber');
INSERT INTO transaction VALUES
(999, 10, 'Tamoad Bank', NOW(), 'Payment', '1');
DELETE FROM transaction WHERE transactionID = 999;
DELETE FROM user WHERE userId = 999;
SELECT * FROM deletedTransaction