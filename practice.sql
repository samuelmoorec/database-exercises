USE ad_lister_db;

CREATE TABLE IF NOT EXISTS user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
  user_id INT UNSIGNED NOT NULL,
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user(id)
);

create TABLE IF NOT EXISTS category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  type VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads_category (
  ads_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (ads_id) REFERENCES ads(id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);

INSERT INTO user (email, password)
VALUES ('cordonBlu@yahoo.com','P@ssword12345');

INSERT INTO ads (user_id, title, description)
VALUES (1,'','Im currently looking to sell my vw, have title in hand');

INSERT INTO category (type)
VALUES ('Promotion');

INSERT INTO ads_category (ads_id, category_id)
VALUES (1,1);


SELECT user.email Username, category.type Category, ads.description Description
FROM user
JOIN ads ON ads.user_id = user.id
JOIN ads_category ON ads_category.ads_id = ads.id
JOIN category ON category.id = ads_category.category_id;







DROP TABLE ads_category;
DROP TABLE ads;
;

SHOW TABLES;