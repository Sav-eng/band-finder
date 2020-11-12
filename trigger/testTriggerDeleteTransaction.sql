INSERT INTO transaction VALUES
(999, 1, 'Tamoad Bank', NOW(), 'Payment', 5000.50);
DELETE FROM transaction WHERE transactionID = 999;
SELECT * FROM deletedTransaction;