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
INSERT INTO `book-genre`(genre_name)
VALUES ('drama');
INSERT INTO book (
    name,
    description,
    image_url,
    active,
    units_in_stock,
    price,
    genre_id,
    date_created
  )
VALUES (
    'JavaScript - The Fun Parts',
    'Learn JavaScript',
    'assets/images/books/placeholder.png',
    1,
    100,
    19.99,
    1,
    NOW()
  );
INSERT INTO book (
    name,
    description,
    image_url,
    active,
    units_in_stock,
    price,
    genre_id,
    date_created
  )
VALUES (
    'Spring Framework Tutorial',
    'Learn Spring',
    'assets/images/books/placeholder.png',
    1,
    100,
    29.99,
    1,
    NOW()
  );
INSERT INTO book (
    name,
    description,
    image_url,
    active,
    units_in_stock,
    price,
    genre_id,
    date_created
  )
VALUES (
    'Kubernetes - Deploying Containers',
    'Learn Kubernetes',
    'assets/images/books/placeholder.png',
    1,
    100,
    24.99,
    1,
    NOW()
  );
INSERT INTO book (
    name,
    description,
    image_url,
    active,
    units_in_stock,
    price,
    genre_id,
    date_created
  )
VALUES (
    'Internet of Things (IoT) - Getting Started',
    'Learn IoT',
    'assets/images/books/placeholder.png',
    1,
    100,
    29.99,
    1,
    NOW()
  );
INSERT INTO book (
    name,
    description,
    image_url,
    active,
    units_in_stock,
    price,
    genre_id,
    date_created
  )
VALUES (
    'Norwegian Woods',
    'The bestseller from famous Japanese author Murakami',
    'assets/images/books/placeholder.png',
    1,
    100,
    499,
    2,
    NOW()
  );

select * from book;

'UPDATE book-genre
      SET genre_name="tech"
      WHERE id=1';

UPDATE `book-genre` SET genre_name='tech' WHERE id=1;
