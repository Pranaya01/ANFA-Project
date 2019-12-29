/* Creating Database */
CREATE DATABASE DigitalANFA;

/*Creating table categoery */
CREATE TABLE If NOT Exists category(
    row_id INT NOT NULL,
    category_id INT(30) AUTO_INCREMENT,
    category_title VARCHAR(30) NOT NULL,
    createdDate date NOT NULL,
    createdBy VARCHAR(30),
    modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(30),
    isDeleted VARCHAR(30),
    UNIQUE (row_id),
    PRIMARY KEY (category_id)
);  
/*Creating table categoery value */

CREATE TABLE If NOT Exists category_value(
    row_id INT NOT NULL,
    cvalue_id INT(11) AUTO_INCREMENT,
    category_id INT(11),
    category_name VARCHAR(30) NOT NULL,
    createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(30),
    modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(30),
    isDeleted VARCHAR(30),
    UNIQUE (row_id),
    PRIMARY KEY (cvalue_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);


CREATE TABLE If NOT Exists club(
     row_id INT(11) NOT NULL,
     club_id INT(11) NOT NULL AUTO_INCREMENT,
     club_name INT(11) NOT NULL,
     club_description TEXT NOT NULL,
     club_founded_date VARCHAR(30),
     club_address VARCHAR(50),
     club_email VARCHAR(30),
     club_division INT(11) NOT NULL,
     club_affiliation INT(11) NOT NULL,
     home_jersey_color VARCHAR(30) NOT NULL,
     away_jersey_color VARCHAR(30) NOT NULL,
     club_sponsor VARCHAR(30),
     kit_brand INT(11) NOT NULL, 
     club_logo VARCHAR(30),
     createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
     createdBy VARCHAR(30),
     modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
     modifiedBy VARCHAR(30),
     isDeleted VARCHAR(30),
     UNIQUE (row_id),
     PRIMARY KEY (club_id),
     FOREIGN KEY (club_name) REFERENCES category_value(cvalue_id),
     FOREIGN KEY (club_division) REFERENCES category_value(cvalue_id),
     FOREIGN KEY (club_affiliation) REFERENCES category_value(cvalue_id),
     FOREIGN KEY (kit_brand) REFERENCES category_value(cvalue_id)
);

CREATE TABLE If NOT Exists player
( 
    row_id INT(11) NOT NULL, 
    player_id INT(11) NOT NULL, 
    club_id INT(11) NOT NULL, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    full_name VARCHAR(50), 
    date_of_birth date, 
    place_of_birth VARCHAR(50),
    position VARCHAR(50),
    country VARCHAR(50),
    gender INT(11),
    status VARCHAR(50),
    player_image VARCHAR(50), 
    goal_scored INT(11),
    goal_assists INT(11),
    clean_sheet INT(11),
    red_card INT(11),
    yellow_card INT(11),
    createdDate date NOT NULL, 
    createdBy VARCHAR(256)
  );

CREATE TABLE tournaments(
    row_id INT NOT NULL,
    tournament_id INT(11) AUTO_INCREMENT,
    tournament_name VARCHAR(50),
    season date,
    tournament_type INT(11) NOT NULL,
    title_sponsor VARCHAR(50), 
    supported_by VARCHAR(50),
    organizer VARCHAR(50),
    createdDate date,
    createdBy VARCHAR(256),
    modifiedDate date, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (tournament_id),
    FOREIGN KEY (tournament_type) REFERENCES category_value(cvalue_id)

);

CREATE TABLE If NOT Exists users
    ( 
    row_id INT(11), 
    user_id INT AUTO_INCREMENT,
    username VARCHAR(256),
    firstName VARCHAR(256),
    lastName VARCHAR(256),
    email VARCHAR(256),
    password VARCHAR(256),
    user_type INT(11) NOT NULL,
    PRIMARY KEY (user_id), 
    UNIQUE(row_id), 
    FOREIGN KEY (user_type) REFERENCES category_value(cvalue_id)
);
CREATE TABLE IF NOT EXISTS `digital_anfa`.`TABLE 7` 
(`COL 1` int(3), 
`COL 2` int(3), `
COL 3` int(2), 
`COL 4` varchar(25), 
`COL 5` varchar(21), 
`COL 6` varchar(43), 
`COL 7` varchar(10), 
`COL 8` varchar(15), 
`COL 9` int(3),
`COL 10` varchar(4), 
`COL 11` int(3),
`COL 12` int(3), 
`COL 13` varchar(30), 
`COL 14` varchar(1), 
`COL 15` varchar(1), 
`COL 16` varchar(1), 
`COL 17` varchar(1), 
`COL 18` varchar(1), 
`COL 19` varchar(11),
 `COL 20` varchar(9))
  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `digital_anfa`.`TABLE 7`
 (`COL 1` varchar(2), 
 `COL 2` varchar(2), 
 `COL 3` varchar(3), 
 `COL 4` varchar(3), 
 `COL 5` varchar(10),
  `COL 6` varchar(8), 
  `COL 7` varchar(16), 
  `COL 8` varchar(1), 
  `COL 9` varchar(1), 
  `COL 10` varchar(1), 
  `COL 11` varchar(1), 
  `COL 12` varchar(6), 
  `COL 13` varchar(10), 
  `COL 14` varchar(10), 
  `COL 15` varchar(10), 
  `COL 16` varchar(10),
   `COL 17` varchar(10), 
   `COL 18` varchar(10)
   ) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE If NOT Exists matches(
    row_id INT NOT NULL,
    match_id INT(128) NOT NULL AUTO_INCREMENT,
    tournament_id INT(128), 
    club_1 INT(11), 
    club_2 INT(11), 
    matchDate VARCHAR(30) NOT NULL,
    KickOffTime time(6),
    club_1_score INT(128) NOT NULl,
    club_2_score INT(128) NOT NULl,
    club_1_result VARCHAR(256) NOT NULL,
    club_2_result VARCHAR(256) NOT NULL,
    match_status INT(11) NOT NULL,
    UNIQUE (row_id),
    PRIMARY KEY (match_id),
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id),
    FOREIGN KEY (club_1) REFERENCES category_value(cvalue_id),
    FOREIGN KEY (club_2) REFERENCES category_value(cvalue_id),
    FOREIGN KEY (match_status) REFERENCES category_value(cvalue_id)

);
CREATE TABLE If NOT Exists detail_match_stats(
    row_id INT NOT NULL,
    match_detail_stats_id INT(128) NOT NULL AUTO_INCREMENT,
    tournament_id INT(128), 
    match_id INT(128), 
    club_1_possession VARCHAR(20),
    club_2_possession VARCHAR(20),
    club_1_shots INT(11),
    club_2_shots INT(11),
    club_1_shots_on_target INT(11),
    club_2_shots_on_target INT(11),
    club_1_passes INT(11),
    club_2_passes INT(11),
    club_1_offside INT(11),
    club_2_offside INT(11),
    club_1_corners INT(11),
    club_2_corners INT(11),
    club_1_fouls INT(11),
    club_2_fouls INT(11),
    UNIQUE (row_id),
    PRIMARY KEY (match_detail_stats_id),
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id),
    FOREIGN KEY (match_id) REFERENCES matches(match_id)

);

