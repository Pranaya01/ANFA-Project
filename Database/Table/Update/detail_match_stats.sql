/* Updating createdDate and created By of row 1*/
UPDATE `detail_match_stats` SET `createdDate` = '2019-12-20' WHERE `detail_match_stats`.`match_detail_stats_id` = 1;
UPDATE `detail_match_stats` SET `createdBy` = 'Admin' WHERE `detail_match_stats`.`match_detail_stats_id` = 1;

/*Updating createdDate and createdBy all row */
UPDATE `detail_match_stats` SET `createdDate` = '2019-12-20' AND `createdBy` = 'Admin' 
WHERE `match_detail_stats_id` IN (2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27);

/*Updating the data of row = 28 */
UPDATE `detail_match_stats` SET `row_id` = '28', `tournament_id` = '1', `match_id` = '28', `club_1_possession` = '54%', `club_2_possession` = '46%', `club_1_shots` = '11', `club_2_shots` = '14', `club_1_shots_on_target` = '6', `club_2_shots_on_target` = '7', `club_1_passes` = '340', `club_2_passes` = '295', `club_1_offside` = '1', `club_2_offside` = '6', `club_1_corners` = '2', `club_2_corners` = '5', `club_1_fouls` = '7', `club_2_fouls` = '13', `createdDate` = '2020-01-02' WHERE `detail_match_stats`.`match_detail_stats_id` = 28;


