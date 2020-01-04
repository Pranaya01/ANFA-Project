Create TABLE If NOT Exists news(
    news_id INT AUTO_INCREMENT,
    news_title VARCHAR(256) NOT NULL,
    news_description TEXT NOT NULL,
    news_type INT(11),
    news_image VARCHAR(256) NOT NULL,
    createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(256),
    modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    PRIMARY KEY (news_id),
    FOREIGN KEY (news_type) REFERENCES category_value(cvalue_id)
);