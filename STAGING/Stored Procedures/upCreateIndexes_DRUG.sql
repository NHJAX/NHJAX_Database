﻿CREATE PROCEDURE [dbo].[upCreateIndexes_DRUG] AS
	IF EXISTS(SELECT name FROM sysindexes WHERE name = 'ind_DRUG')
		DROP INDEX DRUG.ind_DRUG
	IF EXISTS(SELECT name FROM sysindexes WHERE name = 'IX_DRUG_KEY_DRUG')
		DROP INDEX DRUG.IX_DRUG_KEY_DRUG
		
	CREATE INDEX 	IX_DRUG_KEY_DRUG
	ON 			DRUG(KEY_DRUG)
	WITH 			FILLFACTOR = 100