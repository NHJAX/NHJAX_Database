﻿CREATE Procedure [dbo].[upCreateIndexes_MEDICAL_CENTER_DIVISION] AS
	IF EXISTS (SELECT NAME FROM SYSINDEXES WHERE NAME = 'ind_MEDICAL_CENTER_DIVISION')
		DROP INDEX MEDICAL_CENTER_DIVISION.ind_MEDICAL_CENTER_DIVISION

	IF EXISTS (SELECT NAME FROM SYSINDEXES WHERE NAME = 'IX_MEDICAL_CENTER_DIVISION_KEY_MEDICAL_CENTER_DIVISION')
		DROP INDEX MEDICAL_CENTER_DIVISION.IX_MEDICAL_CENTER_DIVISION_KEY_MEDICAL_CENTER_DIVISION
	
	CREATE INDEX IX_MEDICAL_CENTER_DIVISION_KEY_MEDICAL_CENTER_DIVISION
	ON			MEDICAL_CENTER_DIVISION(KEY_MEDICAL_CENTER_DIVISION)
	WITH			FILLFACTOR  = 100