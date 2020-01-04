*Creating table categoery value */

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
