USE u937509157_omarb;

SELECT functionsTbl.ID, functionPrefixesTbl.Prefix, functionsTbl.Name as 'Func Name', functionsTbl.Definition
FROM prefixLanguageAssociationTbl
INNER JOIN functionsTbl
ON functionsTbl.languageID=prefixLanguageAssociationTbl.languageID
INNER JOIN functionPrefixesTbl
ON functionPrefixesTbl.ID=prefixLanguageAssociationTbl.prefixID;