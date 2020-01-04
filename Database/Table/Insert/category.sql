* Inserting data in category table */
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