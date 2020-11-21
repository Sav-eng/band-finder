CREATE TRIGGER joinBandTrigger AFTER UPDATE ON joint
FOR EACH ROW 
UPDATE band SET band.numberOfMembers = band.numberOfMembers - 1 
WHERE band.bandId = NEW.bandId and NEW.endDate != null;