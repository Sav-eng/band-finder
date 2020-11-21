CREATE TRIGGER joinBandTrigger AFTER INSERT ON joint
FOR EACH ROW 
UPDATE band SET band.numberOfMembers = band.numberOfMembers + 1 
WHERE band.bandId = NEW.bandId;

