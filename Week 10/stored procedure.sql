USE u937509157_omarb;

DELIMITER //

-- names the procedure selectYoungPlayerNames
CREATE PROCEDURE selectYoungPlayerNames()
BEGIN
-- gets the first and last names from the youngPlayers Table
SELECT firstName, lastName FROM youngPlayers;  
END //  -- ends the procedure
DELIMITER ;

DELIMITER //

-- names the procedure selectAdultPlayerNames
CREATE PROCEDURE selectAdultPlayerNames()
BEGIN
-- gets the first and last names from the adultPlayers Table
SELECT firstName, lastName FROM adultPlayers;
END// -- ends the procedure
DELIMITER ;