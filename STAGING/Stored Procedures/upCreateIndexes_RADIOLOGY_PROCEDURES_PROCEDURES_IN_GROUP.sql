﻿CREATE PROCEDURE [dbo].[upCreateIndexes_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP] AS
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ind_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP')
		DROP INDEX RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP.ind_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP
                                                                
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_KEY_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP')
		DROP INDEX RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP.IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_KEY_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP
		                                                                
	CREATE INDEX 	IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_KEY_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP
	ON 			RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP(KEY_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP)
	WITH 			FILLFACTOR = 100
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_KEY_RADIOLOGY_PROCEDURES')
		DROP INDEX RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP.IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_KEY_RADIOLOGY_PROCEDURES
		                                                                
	CREATE INDEX 	IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_KEY_RADIOLOGY_PROCEDURES
	ON 			RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP(KEY_RADIOLOGY_PROCEDURES)
	WITH 			FILLFACTOR = 100
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_PROCEDURE_IEN')
		DROP INDEX RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP.IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_PROCEDURE_IEN
		                                                                
	CREATE INDEX 	IX_RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP_PROCEDURE_IEN
	ON 			RADIOLOGY_PROCEDURES$PROCEDURES_IN_GROUP(PROCEDURE_IEN)
	WITH 			FILLFACTOR = 100