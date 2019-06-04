USE codeup_test_db;


update albums
SET sales = sales * 10;

select * from albums;

update albums
SET release_date = 1800
WHERE release_date < 1980;

select * FROM albums where release_date = 1800;

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select artist FROM albums where artist = 'Peter Jackson';