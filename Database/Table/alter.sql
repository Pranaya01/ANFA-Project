ALTER TABLE News 
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

/*Making category_id foreign key in club table */
ALTER TABLE club
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

/*Dropping the columns name natinality in players table*/
ALTER TABLE player
    DROP COLUMN nationality;

ALTER TABLE `club` CHANGE `category_id` `cvalue_id` INT(128) NOT NULL 
FOREIGN KEY (cvalue_id) REFERENCES catagory_value(cvalue_id);

/* Changing the datatype of club_founded_date' to VARCHAR from date*/
ALTER TABLE `club` CHANGE `club_founded_date` `club_founded_date` VARCHAR(50) NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `FirstName` `first_name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `LastName` `last_name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `username` `username` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `last_name` `last_name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `first_name` `first_name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `Email` `email` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `user_password` `user_password` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

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

/*Alter the column of player data*/
ALTER TABLE player_data
ADD UNIQUE (row_id),
ADD PRIMARY KEY (player_id),
ADD FOREIGN KEY (club_id) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (gender) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (position) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (country) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (status) REFERENCES category_value(cvalue_id);





/*Updating the created Date*/
UPDATE club
SET createdDate = '2019-12-16'
WHERE createdDate = '0000-00-00';

/*Adding column in club table */

ALTER TABLE club
ADD COLUMN modifiedDate date
	AFTER createdBy,
ADD COLUMN modifiedBy VARCHAR(30)
	AFTER modifiedDate,
ADD COLUMN isDeleted VARCHAR(30)
	AFTER modifiedBy;


/* Changing the name of the column after importing the data*/

ALTER TABLE `player_data` CHANGE `COL 1` `row_id` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 2` `player_id` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 3` `club_id` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 4` `first_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 5` `last_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 6` `full_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 7` `date_of_birth` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 8` `place_of_birth` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 9` `gender` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 10` `position` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 11` `country` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 12` `status` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 13` `image` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 14` `goal_score` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 15` `goal_assist` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 16` `clean_sheet` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 17` `red_card` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 18` `yellow_card` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 19` `createdDate` DATE NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `COL 20` `createdBy` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

ALTER TABLE `player_data` CHANGE `position` `player_position` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `country` `player_country` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `status` `player_status` INT(11) NULL DEFAULT NULL;


ALTER TABLE player_data
ADD UNIQUE(row_id);
ALTER TABLE player_data
ADD PRIMARY KEY(player_id);
ALTER TABLE player_data
ADD FOREIGN KEY (club_id) REFERENCES club(club_id);

ALTER TABLE player_data
ADD FOREIGN KEY (player_position) REFERENCES category_value(cvalue_id);

ALTER TABLE player_data
ADD FOREIGN KEY (player_country) REFERENCES category_value(cvalue_id);

ALTER TABLE player_data
ADD FOREIGN KEY (player_status) REFERENCES category_value(cvalue_id);



/*Adding Column in player table */
ALTER TABLE player_data
ADD COLUMN modifiedDate date
	AFTER createdBy,
ADD COLUMN modifiedBy VARCHAR(30)
	AFTER modifiedDate,
ADD COLUMN isDeleted VARCHAR(30)
	AFTER modifiedBy;

/*Changing the data type of season to varhar from date*/
ALTER TABLE `tournaments` CHANGE `season` `season` VARCHAR(30) NULL DEFAULT NULL;

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


/*Adding Column in match detail table */
ALTER TABLE `matches` ADD UNIQUE(`row_id`);

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

ALTER TABLE `users` CHANGE `user_id` `user_id` INT(11) NULL AUTO_INCREMENT;
