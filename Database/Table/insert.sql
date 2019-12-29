/* Inserting data into news */
INSERT INTO news (row_id, news_title, news_description, news_image, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted)
VALUES
(1, "Qatar Airways to sponsors ANFA fro 2019-20 Season", "The Qatar Airways 'A' Division Martyr's Memorial League is the biggest annual football event in Nepal starting from 14 December 2019 to 15 February 2020.
This is the first time that an international company has sponsored football tournament in Nepal.", "img.png", "","Pranaya Pradhan", "", "", "No");


/*Inserting data in tournament table*/
INSERT INTO Tournaments (row_id, tournament_id, tournament_name, season, title_sponsor, organizer, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) VALUES
(1,1,'Qatar Airways A Division League', '2019-20', 'Qatar Airways', 'ANFA', '2019-12-19', 'Pranaya Pradhan', '', '', 'No');

/* Inserting data in category table */
INSERT INTO category (row_id, category_id, category_title, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) 
VALUES 
(1, 1, 'user_type', '2019-12-16','Admin', '', '', 'No'),
(2, 2, 'news_type', '2019-12-16','Admin', '', '', 'No'),
(3,3, 'club_division', '2019-12-16', 'Pranaya Pradhan', '', '', 'No'),
(4,4, 'gender', '2019-12-16', 'Adminn', '', '', 'No'),
(5,5, 'country', '2019-12-16', 'Admin', '', '', 'No'),
(6,6, 'status', '2019-12-16', 'Admin', '', '', 'No'),
(7,7, 'tournament_type', '2019-12-16', 'Admin', '', '', 'No'),
(8,8, 'club_name', '2019-12-16', 'Admin', '', '', 'No'),
(9,9, 'position', '2019-12-16', 'Admin', '', '', 'No'),
(10,10, 'kit_brand', '2019-12-16', 'Admin', '', '', 'No'),
(11,11, 'venue', '2019-12-16', 'Admin', '', '', 'No');
(12,12, 'affiliation', '2019-12-16', 'Admin', '', '', 'No');

/*Inserting new category in row */
INSERT INTO category (row_id, category_id, category_title, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) 
VALUES (12,12, 'affiliation', '2019-12-16', 'Admin', '', '', 'No');



/* Inserting data into category value */
INSERT INTO category_value (row_id , cvalue_id, category_id, category_name, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) 
VALUES 
(1,100, 1, 'Admin', '2019-12-16', 'Admin','','','No'),
(2,101,1, 'Editor', '2019-12-16', 'Admin', '', '', 'No'),
(3,102,2, 'Competition', '2019-12-16', 'Admin', '', '', 'No'),
(4,103,2, 'ANFA', '2019-12-16', 'Admin', '', '', 'No'),
(5,104,2, 'Development', '2019-12-16', 'Admin', '', '', 'No'),
(6,105,2, 'Mens Football', '2019-12-16', 'Admin', '', '', 'No'),
(7,106,2, 'Womens Football', '2019-12-16', 'Admin', '', '', 'No'),
(8,107,3,'A Division', '2019-12-16', 'Admin', '', '', 'No'),
(9,108,3, 'B Division', '2019-12-16', 'Admin', '', '', 'No'),
(10,109,3, 'C Division', '2019-12-16', 'Admin', '', '', 'No'),
(11,110,4, 'Male', '2019-12-16', 'Admin', '', '', 'No'),
(12,111,4, 'Female', '2019-12-16', 'Admin', '', '', 'No'),
(13,112,4, 'Others', '2019-12-16', 'Admin', '', '', 'No'),
(15,113,5, 'Nepal', '2019-12-16', 'Admin', '', '', 'No'),
(16,114,5, 'India', '2019-12-16', 'Admin', '', '', 'No'),
(17,115,5, 'Bangladesh', '2019-12-16', 'Admin', '', '', 'No'),
(18,116,5, 'Sri Lanka', '2019-12-16', 'Admin', '', '', 'No'),
(19,117,5, 'Maldivies ', '2019-12-16', 'Admin', '', '', 'No'),
(20,118,5, 'Pakistan', '2019-12-16', 'Admin', '', '', 'No'),
(21,119,5, 'Bhutan', '2019-12-16', 'Admin', '', '', 'No'),
(22,120,5, 'Others', '2019-12-16', 'Admin', '', '', 'No'),
(23,121,6, 'Active', '2019-12-16', 'Admin', '', '', 'No'),
(24,122,6, 'Inactive', '2019-12-16', 'Admin', '', '', 'No'),
(25,123,7, 'League', '2019-12-16', 'Admin', '', '', 'No'),
(26,124,7, 'Knockout', '2019-12-16', 'Admin', '', '', 'No'),
(27,125,8, 'Armed Police Club', '2019-12-16', 'Admin', '', '', 'No'),
(28,126,8, 'Brigade Boys Club', '2019-12-16', 'Admin', '', '', 'No'),
(29,127,8, 'Chyasal Youth Club', '2019-12-16', 'Admin', '', '', 'No'),
(30,128,8, 'Friends Club', '2019-12-16', 'Admin', '', '', 'No'),
(31,129,8, 'Himalayan Sherpa Club', '2019-12-16', 'Admin', '', '', 'No'),
(32,130,8, 'Jawalakhel Youth Club', '2019-12-16', 'Admin', '', '', 'No'),
(33,131,8, 'Machindra Club ', '2019-12-16', 'Admin', '', '', 'No'),
(34,132,8, 'Manang Marsyangdi Club', '2019-12-16', 'Admin', '', '', 'No'),
(35,133,8, 'Nepal Police Club', '2019-12-16', 'Admin', '', '', 'No'),
(36,134,8, 'New Road Team', '2019-12-16', 'Admin', '', '', 'No'),
(37,135,8, 'Sankata Club', '2019-12-16', 'Admin', '', '', 'No'),
(38,136,8, 'Saraswati Youth Club', '2019-12-16', 'Admin', '', '', 'No'),
(39,137,8, 'Three Star Club', '2019-12-16', 'Admin', '', '', 'No'),
(40,138,8, 'Tribhuwan Army Club', '2019-12-16', 'Admin', '', '', 'No'),
(41,139,8, 'GoalKeeper', '2019-12-16', 'Admin', '', '', 'No'),
(42,140,9, 'Defender', '2019-12-16', 'Admin', '', '', 'No'),
(43,141,9, 'Midfielder', '2019-12-16', 'Admin', '', '', 'No'),
(44,142,9, 'Forward', '2019-12-16', 'Admin', '', '', 'No'),
(45,143,10, 'Kelme', '2019-12-16', 'Admin', '', '', 'No'),
(46,144,10, 'Adidas', '2019-12-16', 'Admin', '', '', 'No'),
(47,145,10, 'Attsh', '2019-12-16', 'Admin', '', '', 'No'),
(48,146,10, 'Nike', '2019-12-16', 'Admin', '', '', 'No'),
(49,147,10, 'Li Ning', '2019-12-16', 'Admin', '', '', 'No'),
(50,148,11, 'Dasarath Stadium, Tripureshwor', '2019-12-16', 'Admin', '', '', 'No'),
(51,149,11, 'ANFA Complex, Satdobato', '2019-12-16', 'Admin', '', '', 'No');

/* Inserting row in category value  */
INSERT INTO category_value (row_id , cvalue_id, category_id, category_name, createdDate, createdBy, modifiedDate, modifiedBy, isDeleted) 
VALUES 
(52,150,12, 'ANFA', '2019-12-16', 'Admin', '', '', 'No');







/* Inserting club detail */
INSERT INTO `club` (`row_id`, `club_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_division`, `club_affiliation`, `home_jersey_color`, `away_jersey_color`, `club_sponsor`, `kit_brand`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES ('1', '1', '125', 'The Armed Police Force Club, commonly known as the APF Club, is a departmental armed police sporting club of Nepal. They currently play in the top division of the country.\r\n', '2001 A.D.', 'Swoyanbhu, Kathmandu', 'computersection@apf.gov.np', '107', '149', 'Grey', 'White', 'Agni Mahindra', '142', 'apf.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('2', '2', '126', 'Brigade Boys Club is a Nepalese football club from Lalitpur that was established in 1987, which plays in the town of Kathmandu. They play in the Nepalese first division, the Nepal A- Division League.\r\n\r\n', '', 'Manbhawan, Lalitpur', NULL, '107', '149', 'Red', 'White', '', '142', 'bbc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('3', '3', '127', 'Founded in 1981 Chyasal Youth Club was established with a mission, Sports for health and fitness for the community and national pride. They Place in the A divison flight of Neapli A division league.\r\n\r\n', '1981', 'Chyasal, Lalitpur', NULL, '107', '149', 'Green', 'Blue', 'Himalayan College of Management, Grace International', '142', 'cyc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('4', '4', '128', 'Friends Club is situated in Kopundole Lalitpur. This club is known for nurturing young talent of Nepalese Football. Friends Club has produced more than 200 national football players till date. It remained only a football club that every now and then organized certain social activities.\r\n\r\n\r\n', '1972 A.D.', 'Kupondole, Lalitpur', 'friendsclubkopundole@gmail.com', '107', '149', 'Blue', 'Red', 'Nepal Investment Bank Limited', '142', 'fc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('5', '5', '129', 'Himalayan Sherpa Club is a topflight association football club from Nepal.. Himalayan Sherpa Club has won the title of Sindhu Gold Cup, Sayapatri Gold Cup, Butwol and 1st runners up in All Star Cup in Aabu Khaireni.\r\n', NULL, 'Hattigauda, Kathmandu', 'ktsherpa@gmail.com', '107', '149', 'Orange', 'White', 'Yeti Airlines', '142', 'hsc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('6', '6', '130', 'Established in 2029 B.S. Jawalakhel Youth Club is a social organization with focus on Sports and Social services. JYC is also social organization as it has been conducting various activities like Blood Donation, Health Camp, and Environment Awareness Program.\r\n', '1952 A.D.', 'Jawalakhel, Lalitpur', 'info@jyc.com.np', '107', '149', 'White', 'Blue', 'Prabhu Bank', '146', 'jyc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('7', '7', '131', 'Established in 1973, Machhindra FC is a top flight Nepali football team from the central Kathmandu neighborhood of Keltole. The club finished in 6th place in the 2005/06 Martyrs League.\r\n', '1973 A.D.', 'MasanGalli, Kathmandu', 'machhindraclub1973@gmail.com', '107', '149', 'Red', 'White', 'San Miguel, Pepe Pizza', '142', 'mc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('8', '8', '132', 'Manang Marshyangdi Club is based in Swayambhu, Kathmandu. They play in the Nepalese first division, the Nepal A- Division League. They are in top spot for winning National League Championships and hey have won 7 National Leagues Championships Title.\r\n', '1982 A.D.', 'Nayabazar, Kathmandu', 'manangmarshyangdi@gmail.com', '107', '149', 'Sky Blue', 'Green/White', 'Manang Trust', '142', 'mmc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('9', '9', '133', 'Nepal Police Club formerly known as Mahendra Police Club is departmental police football and cricket club of Nepal. They currently play in the top division of the country.\r\n\r\n', '1952 A.D.', 'Maharajgunj, Kathmandu', 'info@nepalpolice.gov.np', '107', '149', 'Red', 'Blue', 'Nepal Telecom', '142', 'npc.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, NULL), ('10', '10', '134', 'N.R.T. was established in 1991 BS (1934 AD). It has distinction to be a pioneer in the sport who has camouflaged a football team that mobilized youth against the autocratic Rana regime that ruled for 104 years.\r\n', '1934 A.D.', 'Tripureshwor, Kathmandu', 'kkm@nrt.org.np', '107', '149', 'Green ', 'Red', NULL, '142', 'nrt.png', '2019-12-16', 'Admin', 'current_timestamp()', NULL, '');
 
 /*Inserting data into user table */
 INSERT INTO `users` (`row_id`, `user_id`, `username`, `firstName`, `lastName`, `email`, `password`, `user_type`) VALUES ('1', '1', 'pranaya10', 'Pranaya', 'Pradhan', 'pradhanpranaya8@gmail.com', 'pranaya123', '100'), ('2', '2', 'ashiwin_joshi', 'Ashwini', 'Joshi', 'joshiashwini@gmail.com', 'ashwini123', '101'), ('3', '3', 'aayush_joshi', 'Aayush', 'Joshi', 'aayushj992@gmail.com\r\n', 'aayush123', '101');

INSERT INTO `digital_anfa`.`TABLE 8` (`row_id`, `match_id`, `tournament_id`, `club_1`, `club_2`, `matchDate`, `KickOffTime`, `venue`, `club_1_score`, `club_2_score`, `club_1_result`, `club_2_result`, `match_status`) 
VALUES (1, 1, 1, 131, 126, '12/14/2019', '15:00PM', 149, '2', '0', 'W', 'L', 151),
 (2, 2, 1, 138, 128, '12/16/2019', '12:30PM', 149, '2', '1', 'W', 'L', 151),
 (3, 3, 1, 135, 127, '12/16/2019', '13:00PM', 148, '0', '2', 'L', 'W', 151),
 (4, 4, 1, 136, 134, '12/17/2019', '13:00PM', 149, '0', '4', 'L', 'W', 151),
 (5, 5, 1, 133, 129, '12/17/2019', '15:00 PM', 148, '0', '0', 'D', 'D', 151),
 (6, 6, 1, 137, 130, '12/18/2019', '15:00PM', 148, '0', '0', 'D', 'D', 151),
 (7, 7, 1, 125, 132, '12/18/2019', '13:00PM', 148, '0', '2', 'L', 'W', 151),
 (8, 8, 1, 127, 131, '12/20/2019', '13:00 PM', 149, '1', '1', 'D', 'D', 151),
 (9, 9, 1, 126, 128, '12/20/2019', '15:00 PM', 148, '2', '0', 'W', 'D', 151),
 (10, 10, 1, 136, 130, '12/21/2019', '13:00 PM', 149, '0', '1', 'L', 'W', 151),
 (11, 11, 1, 135, 134, '12/21/2019', '15:00 PM', 148, '0', '1', 'L', 'W', 151),
 (12, 12, 1, 125, 129, '12/22/2019', '15:00 PM', 148, '0', '0', 'D', 'D', 151),
 (13, 13, 1, 138, 132, '12/23/2019', '13:00 PM', 149, '0', '1', 'L', 'W', 151),
 (14, 14, 1, 137, 133, '12/23/2019', '15:00 PM', 148, '1', '0', 'W', 'L', 151),
 (15, 15, 1, 131, 128, '12/25/2019', '13:00 PM', 149, '3', '0', 'W', 'L', 151),
 (16, 16, 1, 127, 134, '12/25/2019', '15:00 PM', 148, '0', '2', 'L', 'W', 151),
 (17, 17, 1, 126, 132, '12/26/2019', '13:00 PM', 149, '0', '1', 'L', 'W', 151),
 (18, 18, 1, 135, 130, '12/26/2019', '15:00 PM', 148, '1', '1', 'D', 'D', 151),
 (19, 19, 1, 138, 129, '12/27/2019', '13:00 PM', 149, '2', '0', 'W', 'L', 151),
 (20, 20, 1, 136, 133, '12/27/2019', '15:00 PM', 148, '0', '2', 'L', 'W', 151),
 (21, 21, 1, 125, 137, '12/28/2019', '15:00 PM', 148, '0', '1', 'L', 'W', 151),
 (22, 22, 1, 134, 131, '12/30/2019', '13:00 PM', 149, '', '', '', '', 152),
 (23, 23, 1, 128, 132, '12/31/2019', '15:00PM', 149, '', '', '', '', 152),
 (24, 24, 1, 127, 130, '12/31/2019', '13:00PM', 149, '', '', '', '', 152),
 (25, 25, 1, 126, 129, '1/1/2019', '15:00PM', 149, '', '', '', '', 152);

 /*Inserting data on match_club_detail*/
 INSERT INTO `digital_anfa`.`detail_match_stats` (`row_id`, `match_detail_stats_id`, `tournament_id`, `match_id`, `club_1_possession`, `club_2_possession `, `club_1_shot`, `club_2_shots`, `club_1_shots_on_target`, `club_2_shots_on_target`, `club_1_passes`, `club_2_passes `, `club_1_offside`, `club_2_offside`, `club_1_corners`, `club_2_corners`, `club_1_fouls`, `club_2_fouls`) VALUES (1, 1, 1, 1, '57%', '43%', '14', '16', '5', '3', '225', '168', '6', '1', '3', '2', '6', '12'),
 (2, 2, 1, 2, '60%', '40%', '18', '9', '5', '2', '261', '176', '5', '5', '4', '3', '10', '5'),
 (3, 3, 1, 3, '43%', '57%', '5', '4', '3', '2', '53', '70', '1', '3', '2', '3', '8', '4'),
 (4, 4, 1, 4, '33%', '', '', '', '', '', '', '', '', '', '', '', '', ''),
 (5, 5, 1, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
 (6, 6, 1, 6, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
 (7, 7, 1, 7, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
 (8, 8, 1, 8, '42%', '58%', '13', '12', '2', '12', '125', '174', '2', '3', '2', '2', '21', '9'),
 (9, 9, 1, 9, '58%', '42%', '21', '11', '5', '3', '212', '155', '3', '2', '4', '2', '16', '10'),
 (10, 10, 1, 10, '54%', '46%', '7', '12', '0', '3', '149', '126', '1', '3', '11', '10', '1', '3'),
 (11, 11, 1, 11, '48%', '52%', '12', '12', '6', '7', '155', '170', '1', '8', '7', '2', '12', '11'),
 (12, 12, 1, 12, '54%', '46%', '9', '17', '3', '5', '251', '216', '4', '1', '3', '6', '10', '9'),
 (13, 13, 1, 13, '63%', '37%', '9', '15', '4', '4', '220', '131', '2', '4', '9', '6', '22', '16'),
 (14, 14, 1, 14, '52%', '48%', '14', '9', '4', '3', '194', '179', '2', '5', '3', '5', '21', '17'),
 (15, 15, 1, 15, '65%', '35%', '18', '3', '10', '1', '381', '202', '6', '1', '11', '0', '11', '10'),
 (16, 16, 1, 16, '65%', '35%', '15', '12', '7', '5', '303', '164', '3', '0', '12', '3', '9', '19'),
 (17, 17, 1, 17, '56%', '44%', '7', '15', '1', '6', '267', '206', '2', '4', '2', '6', '11', '9'),
 (18, 18, 1, 18, '52%', '48%', '17', '13', '6', '5', '119', '108', '4', '3', '13', '6', '11', '15'),
 (19, 19, 1, 19, '58%', '42%', '10', '5', '3', '2', '185', '134', '2', '7', '4', '3', '22', '12'),
 (20, 20, 1, 20, '45%', '55%', '8', '16', '4', '8', '320', '385', '2', '5', '4', '6', '9', '5'),
 (21, 21, 1, 21, '54%', '46%', '7', '18', '2', '5', '275', '234', '1', '2', '2', '3', '14', '14');