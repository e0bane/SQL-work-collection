USE u937509157_omarb;


SELECT functionsTbl.ID AS "function's ID", languagesTbl.Language AS "programming lang", functionsTbl.Name AS "function's name"
FROM functionsTbl
LEFT JOIN languagesTbl
ON languagesTbl.ID = functionsTbl.languageID
WHERE functionsTbl.purposeID = 2;