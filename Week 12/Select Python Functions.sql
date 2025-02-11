USE u937509157_omarb;

SELECT functionsTbl.Name, functionsTbl.Definition, purposesTbl.Purpose
FROM purposesTbl
INNER JOIN functionsTbl
ON purposesTbl.ID = functionsTbl.purposeID AND functionsTbl.languageID = 1;
