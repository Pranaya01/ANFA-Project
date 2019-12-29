/*Droping these columns because there were in wrong place */    
ALTER TABLE club
DROP COLUMN modifiedDate date,
DROP COLUMN modifiedBy VARCHAR(30),
DROP COLUMN isDeleted VARCHAR(30);

