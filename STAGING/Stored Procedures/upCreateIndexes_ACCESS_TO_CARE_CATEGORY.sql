﻿create PROCEDURE [dbo].[upCreateIndexes_ACCESS_TO_CARE_CATEGORY] AS
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ind_ACCESS_TO_CARE_CATEGORY')
		DROP INDEX ACCESS_TO_CARE_CATEGORY.ind_ACCESS_TO_CARE_CATEGORY
                                                                
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ACCESS_TO_CARE_CATEGORY_KEY_ACCESS_TO_CARE_CATEGORY')
		DROP INDEX ACCESS_TO_CARE_CATEGORY.IX_ACCESS_TO_CARE_CATEGORY_KEY_ACCESS_TO_CARE_CATEGORY
		                                                                
	CREATE INDEX 	IX_ACCESS_TO_CARE_CATEGORY_KEY_ACCESS_TO_CARE_CATEGORY
	ON 			ACCESS_TO_CARE_CATEGORY(KEY_ACCESS_TO_CARE_CATEGORY)
	WITH 			FILLFACTOR = 100