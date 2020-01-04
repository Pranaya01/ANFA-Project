/* Changing the name of the column after importing the data*/
ALTER TABLE `matches` CHANGE `COL 1` `row_id` INT(11) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 2` `match_id` INT(11) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 3` `club_1` INT(11) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 4` `club_2` INT(11) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 5` `match_date` VARCHAR(30) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 6` `kick_off_time` TIME(6) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 7` `venue` INT(11) NULL DEFAULT NULL;
ALTER TABLE `mmatches` CHANGE `COL 8` `club_1_score` INT(11) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 9` `club_2_score` INT(11) NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 10` `club_1_result` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 11` `club_2_result` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `matches` CHANGE `COL 12` `match_status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

ALTER TABLE matches
ADD COLUMN venue INT(11)
	AFTER KickOffTime,
ADD FOREIGN KEY (venue) REFERENCES category_value(cvalue_id);

ALTER TABLE matches
ADD COLUMN createdDate date
	AFTER match_status,
ADD COLUMN createdBy VARCHAR(30)
	AFTER createdDate,
ADD COLUMN modifiedDate date
	AFTER createdBy,
ADD COLUMN modifiedBy VARCHAR(30)
	AFTER modifiedDate,
ADD COLUMN isDeleted VARCHAR(30)
	AFTER modifiedBy;