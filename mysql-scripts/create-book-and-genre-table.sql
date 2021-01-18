-- -----------------------------------------------------
-- Schema online-book-store
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `online-book-store`;
CREATE SCHEMA `online-book-store`;
USE `online-book-store`;
-- -----------------------------------------------------
-- Table `online-book-store`.`book-genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `online-book-store`.`book-genre` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1;
-- -----------------------------------------------------
-- Table `online-book-store`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `online-book-store`.`book` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `price` DECIMAL(13, 2) DEFAULT NULL,
  `genre_id` BIGINT(20) NOT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`genre_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`genre_id`) REFERENCES `book-genre` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1;
-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
INSERT INTO `book_genre`(genre_name) VALUES ('Action & Adventure');
INSERT INTO `book_genre`(genre_name) VALUES ('Comics & Manga');
INSERT INTO `book_genre`(genre_name) VALUES ('Crime, Thriller & Mystery');
INSERT INTO `book_genre`(genre_name) VALUES ('Indian Writing');
INSERT INTO `book_genre`(genre_name) VALUES ('Regional Books');
INSERT INTO `book_genre`(genre_name) VALUES ('Science & Technology');
INSERT INTO `book_genre`(genre_name) VALUES ('Sports & Games');

INSERT INTO book (name, description, image_url, active, units_in_stock, price, genre_id, date_created) 
VALUES (
    'Mother',
    'Famous novel by Maxim Gorky',
    'assets/images/books/placeholder.png',
    1,
    100,
    189,
    2,
    NOW()
  );

select * from book;

'UPDATE book-genre
      SET genre_name="tech"
      WHERE id=1';

UPDATE `book` SET image_url='assets/images/books/placeholder.png' WHERE id=8;

DELETE FROM `book` WHERE id=8;
