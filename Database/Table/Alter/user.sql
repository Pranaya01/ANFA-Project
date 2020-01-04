

ALTER TABLE `users` CHANGE `FirstName` `first_name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `LastName` `last_name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `username` `username` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `last_name` `last_name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `first_name` `first_name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `Email` `email` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `user_password` `user_password` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `user_id` `user_id` INT(11) NULL AUTO_INCREMENT;

/*Altering the Table */
ALTER TABLE users
ADD COLUMN createdDate date NULL,
ADD COLUMN createdBy VARCHAR(30) NULL,
ADD COLUMN modifiedDate date NULL,
ADD COLUMN modifiedBy VARCHAR(30) NULL,
ADD COLUMN isDeleted VARCHAR(30) NULL;