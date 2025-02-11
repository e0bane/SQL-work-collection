USE u937509157_omarb;

CREATE VIEW youngPlayers AS
SELECT * FROM playersTbl
-- selects the players that are under 18
WHERE age < 18;

CREATE VIEW adultPlayers AS
SELECT * FROM playersTbl
-- selects the players that are 18 and older
WHERE age >= 18;