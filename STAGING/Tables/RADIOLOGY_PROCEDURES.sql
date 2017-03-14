﻿CREATE TABLE [dbo].[RADIOLOGY_PROCEDURES] (
    [KEY_SITE]                 NUMERIC (5)     NULL,
    [KEY_RADIOLOGY_PROCEDURES] NUMERIC (10, 3) NULL,
    [NAME]                     VARCHAR (60)    NULL,
    [CODE]                     VARCHAR (5)     NULL,
    [TYPE_]                    VARCHAR (30)    NULL,
    [COST_OF_PROCEDURE]        NUMERIC (15, 5) NULL,
    [CPT_CODE_IEN]             NUMERIC (21, 3) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_RADIOLOGY_PROCEDURES]
    ON [dbo].[RADIOLOGY_PROCEDURES]([KEY_SITE] ASC, [KEY_RADIOLOGY_PROCEDURES] ASC);
