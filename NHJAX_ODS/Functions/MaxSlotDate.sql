﻿
CREATE FUNCTION [dbo].[MaxSlotDate]()
RETURNS datetime AS  
BEGIN 
	DECLARE @maxDate	datetime;
	SELECT @maxDate = MAX(DATE_TIME) 
		FROM [nhjax-cache].STAGING.dbo.SCHEDULABLE_ENTITY$SCHEDULE_DATE_TIMES TIMES
	RETURN @maxDate;
END
