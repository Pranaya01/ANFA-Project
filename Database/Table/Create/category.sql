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