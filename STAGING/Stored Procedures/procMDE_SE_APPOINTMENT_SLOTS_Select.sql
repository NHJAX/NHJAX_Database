﻿CREATE PROCEDURE [dbo].[procMDE_SE_APPOINTMENT_SLOTS_Select]
(
	@key numeric(7,3),
	@keyse numeric(11,3),
	@dkey numeric(22,7)
)
AS
	SET NOCOUNT ON;


SELECT     
	KEY_SCHEDULABLE_ENTITY,
	KEY_SCHEDULABLE_ENT$SCHEDULE_DATE_T$APPOINTMENT_SL,
	KEY_SCHEDULABLE_ENTITY$SCHEDULE_DATE_TIMES,
	ISNULL(APPOINTMENT_SLOT,'0'),
	APPOINTMENT_TYPE_IEN,
	CLINIC_IEN,
	APPT_SLOT_STATUS,
	PROVIDER_IEN
FROM SCHEDULABLE_ENT$SCHEDULE_DATE_T$APPOINTMENT_SLOTS
WHERE (KEY_SCHEDULABLE_ENTITY = @keyse
	AND KEY_SCHEDULABLE_ENT$SCHEDULE_DATE_T$APPOINTMENT_SL = @key
	AND KEY_SCHEDULABLE_ENTITY$SCHEDULE_DATE_TIMES = @dkey)