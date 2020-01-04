ALTER TABLE detail_match_stats
ADD COLUMN createdDate date NULL,
ADD COLUMN createdBy VARCHAR(30) NULL,
ADD COLUMN modifiedDate date NULL,
ADD COLUMN modifiedBy VARCHAR(30) NULL,
ADD COLUMN isDeleted VARCHAR(30) NULL;