﻿CREATE PROCEDURE [dbo].[upCreateIndexes_KG_CPT_EVALUATION_MANAGEMENT] AS
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ind_KG_CPT_EVALUATION_MANAGEMENT')
		DROP INDEX KG_CPT_EVALUATION_MANAGEMENT.ind_KG_CPT_EVALUATION_MANAGEMENT
                                                                
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_KG_CPT_EVALUATION_MANAGEMENT_KEY_KG_CPT_EVALUATION_MANAGEMENT')
		DROP INDEX KG_CPT_EVALUATION_MANAGEMENT.IX_KG_CPT_EVALUATION_MANAGEMENT_KEY_KG_CPT_EVALUATION_MANAGEMENT
		                                                                
	CREATE INDEX 	IX_KG_CPT_EVALUATION_MANAGEMENT_KEY_KG_CPT_EVALUATION_MANAGEMENT
	ON 			KG_CPT_EVALUATION_MANAGEMENT(KEY_KG_CPT_EVALUATION_MANAGEMENT)
	WITH 			FILLFACTOR = 100
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_KG_CPT_EVALUATION_MANAGEMENT_POINTER_TO_CPT_HCPCS_IEN')
		DROP INDEX KG_CPT_EVALUATION_MANAGEMENT.IX_KG_CPT_EVALUATION_MANAGEMENT_POINTER_TO_CPT_HCPCS_IEN
		                                                                
	CREATE INDEX 	IX_KG_CPT_EVALUATION_MANAGEMENT_POINTER_TO_CPT_HCPCS_IEN
	ON 			KG_CPT_EVALUATION_MANAGEMENT(POINTER_TO_CPT_HCPCS_IEN)
	WITH 			FILLFACTOR = 100