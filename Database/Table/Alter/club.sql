/*Making category_id foreign key in club table */
ALTER TABLE club
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE `club` CHANGE `category_id` `cvalue_id` INT(128) NOT NULL 
FOREIGN KEY (cvalue_id) REFERENCES catagory_value(cvalue_id);


/* Changing the name of the column */
ALTER TABLE `club` CHANGE `row_id` `row_id` INT(11) NULL;
ALTER TABLE `club` CHANGE `COL 2` `club_id` INT(11) NOT NULL;
ALTER TABLE `club` CHANGE `COL 3` `club_name` INT(11) NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 4` `club_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 5` `club_founded_date` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 6` `club_address` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 7` `club_email` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 8` `club_division` INT(11) NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 9` `club_affiliation` INT(11) NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 10` `home_jersey_colour` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 11` `away_jersey_colour` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 12` `club_sponsor` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 14` `club_logo` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 15` `createdDate` DATE NULL DEFAULT NULL;
ALTER TABLE `club` CHANGE `COL 16` `createdBy` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;


/*Updating the created Date*/
UPDATE club
SET createdDate = '2019-12-16'
WHERE createdDate = '0000-00-00';

ALTER TABLE club
ADD COLUMN modifiedDate date
	AFTER createdBy,
ADD COLUMN modifiedBy VARCHAR(30)
	AFTER modifiedDate,
ADD COLUMN isDeleted VARCHAR(30)
	AFTER modifiedBy;