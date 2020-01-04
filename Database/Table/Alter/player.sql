/*Dropping the columns name natinality in players table*/
ALTER TABLE player
    DROP COLUMN nationality;


/*Alter the column of player data*/
ALTER TABLE player_data
ADD UNIQUE (row_id),
ADD PRIMARY KEY (player_id),
ADD FOREIGN KEY (club_id) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (gender) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (position) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (country) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (status) REFERENCES category_value(cvalue_id);

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

ALTER TABLE `player_data` CHANGE `goal_score` `goal_score` INT(11) NULL DEFAULT NULL;
ALTER TABLE `player_data` CHANGE `goal_assist` `goal_assist` INT(11) NULL DEFAULT NULL;



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
ADD FOREIGN KEY (gender) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (position) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (country) REFERENCES category_value(cvalue_id),
ADD FOREIGN KEY (status) REFERENCES category_value(cvalue_id);





/*Adding Column in player table */
ALTER TABLE player_data
ADD COLUMN createdDate date NULL,
ADD COLUMN createdBy VARCHAR(30) NULL,
ADD COLUMN modifiedDate date NULL,
ADD COLUMN modifiedBy VARCHAR(30) NULL,
ADD COLUMN isDeleted VARCHAR(30) NULL;