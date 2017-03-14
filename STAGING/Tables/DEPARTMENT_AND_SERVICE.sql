﻿CREATE TABLE [dbo].[DEPARTMENT_AND_SERVICE] (
    [KEY_SITE]                   NUMERIC (5)     NULL,
    [KEY_DEPARTMENT_AND_SERVICE] NUMERIC (9, 3)  NULL,
    [NAME]                       VARCHAR (34)    NULL,
    [DEPARTMENT_IEN]             NUMERIC (21, 3) NULL,
    [ABBREVIATION]               VARCHAR (5)     NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_DEPARTMENT_AND_SERVICE]
    ON [dbo].[DEPARTMENT_AND_SERVICE]([KEY_SITE] ASC, [KEY_DEPARTMENT_AND_SERVICE] ASC);
