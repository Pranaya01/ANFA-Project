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
