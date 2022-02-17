--     - Create an "animals" table with columns for:
--             [species, name, age, was fed (yes/no), their favorite food]
CREATE TABLE "animals" (
"id" INTEGER,
"species" TEXT NOT NULL,
"name" 	TEXT NOT NULL,
"age" INTEGER NOT NULL,
"was_fed" INTEGER NOT NULL, 
"fav_food" TEXT,
PRIMARY KEY ("id")
);
--   - Populate the table with some animals you like
INSERT INTO animals 
(species, name, age, was_fed, fav_food)
VALUES ("Bear", "Baloo", 4, 1, "Honey")

INSERT INTO animals 
(species, name, age, was_fed, fav_food)
VALUES ("Puma", "Bagheera", 6, 0, "Chicken meat")

INSERT INTO animals 
(species, name, age, was_fed, fav_food)
VALUES ("Tiger", "Shere Khan", 10, 0, "Lamb meat")

INSERT INTO animals 
(species, name, age, was_fed, fav_food)
VALUES ("Monkey", "King Louie", 12, 1, "Banana")

INSERT INTO animals 
(species, name, age, was_fed, fav_food)
VALUES ("Elephant", "Winfried", 16, 0, "Hay")


--   - Update some properties of the animal - anything you like e.g. their age or if they were fed
UPDATE animals SET age=17 WHERE id = 5;
UPDATE animals SET fav_food="Nuts" WHERE id = 1;
UPDATE animals SET was_fed=0 WHERE id = 4;

--   - Remove one of the animals - they are being transfered to a different zoo 😦
DELETE FROM animals WHERE id = 1;
--   - Remove the column for their favourite_food, you don't need that information anymore (Note: if you run into issues running the command, feel free to skip this step)
--  Not working


--   - Start tracking where the animals are from. Call it origin and add a city for a couple animals.
ALTER TABLE animals ADD origin TEXT;

UPDATE animals SET origin="Brazil" WHERE id = 2;
UPDATE animals SET origin="South Africa" WHERE id = 3;
UPDATE animals SET origin="Argentina" WHERE id = 4;
UPDATE animals SET origin="India" WHERE id = 5;


-- Challenge
-- - Can you feed all the animals using just one command?
UPDATE animals SET was_fed = 1;