SELECT category_value FROM category_value WHERE category_id = 1

SELECT * FROM users u JOIN category_value cv ON u.user_type = cv.cvalue_id WHERE username= 'aayush_joshi' AND password = 'aayush123'
