﻿CREATE PROCEDURE [dbo].[upCreateIndexes_EXAMINATION_STATUS] AS
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ind_EXAMINATION_STATUS')
		DROP INDEX EXAMINATION_STATUS.ind_EXAMINATION_STATUS
                                                                
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_EXAMINATION_STATUS_KEY_EXAMINATION_STATUS')
		DROP INDEX EXAMINATION_STATUS.IX_EXAMINATION_STATUS_KEY_EXAMINATION_STATUS
		                                                                
	CREATE INDEX 	IX_EXAMINATION_STATUS_KEY_EXAMINATION_STATUS
	ON 			EXAMINATION_STATUS(KEY_EXAMINATION_STATUS)
	WITH 			FILLFACTOR = 100