/*news query */
Select n.news_id, cv.category_value, n.news_title, n.news_description, n.news_image 
FROM news n
JOIN category_value cv
USING(cvalue_id);
/* news query with Where Clause */
    Select n.news_id, cv.category_value, n.news_title, n.news_description, n.news_image 
    FROM news n
    JOIN category_value cv
    USING(cvalue_id) 
    WHERE cv.category_value="Competition";


SELECT club_name, club_description, club_founded_date, club_address, club_email, club_affiliation, cv.category_value, home_jersey_color, away_jersey_color, club_sponsor, kit_sponsor, club_logo
FROM CLUB 
JOIN category_value cv
USING(cvalue_id);

/*Club Query */
SELECT c.club_name, c.club_description, c.club_founded_date, c.club_address, c.club_email, c.club_affiliation, c.home_jersey_colour, c.away_jersey_colour, c.club_sponsor, c.kit_sponsor, c.club_logo 
FROM club c 
JOIN category_value cv ON c.club_name = cv.cvalue_id,
JOIN category_value cv ON c.club_affiliation = cv.cvalue_id,
JOIN category_value cv ON c.kit_sponsor = cv.cvalue_id;



