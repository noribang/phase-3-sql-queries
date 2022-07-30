-- http://www.sqlclauses.com/sql+aggregate+functions
-- https://zetcode.com/db/sqlite/select/


-- OPEN DB INS SQLITE3
sqlite3 pets_database.db

-- SELECT ALL COLUMNS IN CATS TABLE
SELECT * FROM cats;

-- FORMATTING:
-- .headers on      # output the name of each column
-- .mode column     # now we are in column mode, enabling us to run the next two .width commands
-- .width auto      # adjusts and normalizes column width
-- # or
-- .width NUM1, NUM2 # customize column width

-------------
-------------
-- MODIFIERS
-------------
-------------


-------------
-- ORDER BY
-------------
-- SELECT column_name FROM table_name ORDER BY column_name ASC|DESC;
-- E.G. SELECT * FROM cats ORDER BY age;

-------------
-- LIMIT
-------------
-- SELECT * FROM cats ORDER BY age DESC LIMIT 1;
-- SELECT * FROM cats ORDER BY age DESC LIMIT 2;

-------------
-- BETWEEN
-------------
-- SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
-- e.g. SELECT name FROM cats WHERE age BETWEEN 1 AND 3;

-------------
-- NULL
-------------
-- e.g. INSERT INTO cats (name, age, breed) VALUES (NULL, NULL, "Tabby");
-- e.g. SELECT * FROM cats WHERE name IS NULL;



-------------
-- AGGREGATE FUNCTION:
---------------------
---------------------
-- COUNT
-------------
-- SELECT COUNT([column name]) FROM [table name] WHERE [column name] = [value]
-- e.g. SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;


-------------
-- GROUP BY
-------------
-- e.g. SELECT breed, COUNT(breed) FROM cats GROUP BY breed;
-- e.g. SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;



-------------
-- SELECT
-------------
-- tableName.columnName
-- e.g. SELECT name FROM cats;
-- e.g. SELECT cats.name FROM cats;

-- e.g.
-- CREATE TABLE dogs (
--   id INTEGER PRIMARY KEY,
--   name TEXT
-- );

-- INSERT INTO dogs (name) VALUES ("Clifford");

-- SELECT cats.name, dogs.name FROM cats, dogs;





