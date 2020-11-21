CREATE TRIGGER leaveBandTrigger AFTER UPDATE ON joint
FOR EACH ROW 
UPDATE band SET band.numberOfMembers = band.numberOfMembers - 1 
WHERE band.bandId = NEW.bandId and OLD.status = 'joined' and NEW.status = 'left';