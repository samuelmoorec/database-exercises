USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
artist varchar(100) NOT NULL,
name varchar(100) NOT NULL,
release_date int(4) NOT NULL,
sales float DEFAULT NULL,
genre varchar(100) NOT NULL,
PRIMARY KEY (id)
);