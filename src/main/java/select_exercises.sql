USE codeup_test_db;
--     The name of all albums by Pink Floyd.
    SELECT 'albums by PINK FLOYD';
    SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
    SELECT 'YEAR OF RELEASE FOR LONELY HEARTS';
    SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

-- The genre for Nevermind
    SELECT 'GENRE FOR NEVERMIND';
    SELECT genre FROM albums WHERE name = "Nevermind";

-- Which albums were released in the 1990s

    SELECT 'ALL ALBUMS RELEASED IN 1990s';
    SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1998;

-- Which albums had less than 20 million certified sales
    SELECT 'LESS THAN 20 MILLION SALES';
    SELECT * FROM albums WHERE sales < 20.0;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
    SELECT 'ROCK GENRE';
    SELECT * FROM albums WHERE genre = 'Rock';
