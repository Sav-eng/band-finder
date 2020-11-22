delimiter //

CREATE TRIGGER updateJoint AFTER UPDATE ON joint
FOR EACH ROW 
BEGIN
	IF OLD.status = 'joined' and NEW.status = 'left' THEN
		UPDATE band SET band.numberOfMembers = band.numberOfMembers - 1 WHERE band.bandId = NEW.bandID;
	ELSEIF OLD.status = 'pending' and NEW.status = 'joined' THEN
		UPDATE band SET band.numberOfMembers = band.numberOfMembers + 1 WHERE band.bandId = NEW.bandID;
	END IF;
END;//

delimiter ;