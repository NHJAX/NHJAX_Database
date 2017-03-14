﻿create PROCEDURE [dbo].[upCreateIndexes_RADIOLOGY_REPORTS] AS
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ind_RADIOLOGY_REPORTS')
		DROP INDEX RADIOLOGY_REPORTS.ind_RADIOLOGY_REPORTS
                                                                
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_RADIOLOGY_REPORTS_KEY_RADIOLOGY_REPORTS')
		DROP INDEX RADIOLOGY_REPORTS.IX_RADIOLOGY_REPORTS_KEY_RADIOLOGY_REPORTS
		                                                                
	CREATE INDEX 	IX_RADIOLOGY_REPORTS_KEY_RADIOLOGY_REPORTS
	ON 			RADIOLOGY_REPORTS(KEY_RADIOLOGY_REPORTS)
	WITH 			FILLFACTOR = 100