RENAME TABLE `digital_anfa`.`table 9` TO `digital_anfa`.`player_data`;

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

/*updating data of player */
UPDATE player_data SET clean_sheet = 3 WHERE player_id = 324
UPDATE player_data SET yellow_card = 2 WHERE player_id = 321
UPDATE player_data SET yellow_card = 1 WHERE player_id = 323
UPDATE player_data SET yellow_card = 1 WHERE player_id = 15
