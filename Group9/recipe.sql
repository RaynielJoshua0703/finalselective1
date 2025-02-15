CREATE DATABASE recipe_repository;

CREATE TABLE recipe_repository.user_accounts(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	user_fname VARCHAR(100) NOT NULL,
	user_lname VARCHAR(100) NOT NULL,
	user_email VARCHAR(255) NOT NULL,
	user_pass VARCHAR(255) NOT NULL,
    user_image LONGBLOB NOT NULL,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE recipe_repository.recipes(
	food_id INT AUTO_INCREMENT PRIMARY KEY,
	food_name VARCHAR(100) NOT NULL,
	cuisine_type VARCHAR(100) NOT NULL,
	ingredients VARCHAR(255) NOT NULL,
	instructions VARCHAR(255) NOT NULL,
    image_path VARCHAR(255) NOT NULL
);

CREATE TABLE `recipe_repository`.`favorites` (
  `idfavorites` INT NOT NULL AUTO_INCREMENT,
  `idrecipe` INT NOT NULL,
  `iduser` INT NOT NULL,
  PRIMARY KEY (`idfavorites`));