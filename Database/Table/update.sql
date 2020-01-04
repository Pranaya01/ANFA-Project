//Updating data
UPDATE `club` SET `club_sponsor` = 'Jyoti Bikash Bank' WHERE `club`.`club_id` = 2;

UPDATE `club` SET `kit_sponsor` = 'Kelme' WHERE `club`.`club_id` = 2;

UPDATE `category` SET `createdBy` = 'Admin' WHERE `category`.`category_id` = 3;

UPDATE `category_value` SET `category_name` = 'ANFA ' WHERE `category_value`.`cvalue_id` = 149;

UPDATE `category_value` SET `category_name` = 'Training and Courses' WHERE `category_value`.`cvalue_id` = 103;

RENAME TABLE `digital_anfa`.`table 4` TO `digital_anfa`.`player_data`;

/*Updating the red card for Anjan rai */
Update player_data SET yellow_card = 0 AND red_card = 1 WHERE full_name = 'Anjan Rai'

/* Updating the card detail of Mbei Andre Ekwem */

Update player_data SET yellow_card = 1 WHERE full_name = 'Mbei Andre Ekwem';

Update player_data SET goal_scored = 1 WHERE full_name = "Suman Lama"

Update player_data SET goal_scored = 1 WHERE full_name = "Bhola Nath Silwal";

Update player_data SET goal_assist = 1 WHERE full_name = "Suman Lama"

Update player_data SET goal_assist = 1 WHERE full_name = "Ravi Shankar Paswan"

UPDATE player_data SET clean_sheet = 2 WHERE full_name = 'Shatrudhan Kumar Chaudhary'

/* Three Star Club Vs APF */
UPDATE player_data SET goal_scored = 1 WHERE full_name = 'Ananta Tamang';
UPDATE player_data SET goal_assist = 1 WHERE full_name = 'Dipesh Ghale'

/*updating username */
UPDATE `users` SET `username` = 'ashiwini_joshi' WHERE `users`.`user_id` = 2;
/*updating data of player */
UPDATE player_data SET clean_sheet = 3 WHERE player_id = 324
UPDATE player_data SET yellow_card = 2 WHERE player_id = 321
UPDATE player_data SET yellow_card = 1 WHERE player_id = 323
UPDATE player_data SET yellow_card = 1 WHERE player_id = 15


RENAME TABLE `digital_anfa`.`pla` TO `digital_anfa`.`player_data`;

RENAME TABLE `digital_anfa`.`table 7` TO `digital_anfa`.`matches`;

UPDATE `matches` SET `club_2_score` = '1', `club_1_result` = 'L', `club_2_result` = 'W', `match_status` = '151', `createdDate` = '2019-12-31', `createdBy` = 'Admin' WHERE `matches`.`match_id` = 22;

UPDATE `matches` SET `club_1_score` = '1', `club_2_score` = '1', `club_1_result` = 'D', `club_2_result` = 'D', `match_status` = '151', `createdDate` = '2019-12-31', `createdBy` = 'Admin' WHERE `matches`.`match_id` = 23;

UPDATE `matches` SET `club_2_score` = '2', `club_1_result` = 'L', `club_2_result` = 'W', `match_status` = '151', `createdDate` = '2019-12-31', `createdBy` = 'Admin' WHERE `matches`.`match_id` = 24;

UPDATE `matches` SET `club_1_score` = '1', `club_1_result` = 'W', `club_2_result` = 'L', `match_status` = '151', `createdDate` = '2020-01-01', `createdBy` = 'Admin' WHERE `matches`.`match_id` = 25;

