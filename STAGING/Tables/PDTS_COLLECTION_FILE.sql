﻿CREATE TABLE [dbo].[PDTS_COLLECTION_FILE] (
    [KEY_SITE]                     NUMERIC (5)     NULL,
    [KEY_PDTS_COLLECTION_FILE]     NUMERIC (14, 3) NULL,
    [PDTS_PRESCRIPTION_NUMBER]     NUMERIC (18, 3) NULL,
    [ORDER_NUMBER_IEN]             NUMERIC (21, 3) NULL,
    [PRESCRIPTION_IEN_IEN]         NUMERIC (21, 3) NULL,
    [PRESCRIPTION_FILL_NUMBER]     NUMERIC (16, 3) NULL,
    [PATIENT_IEN]                  NUMERIC (21, 3) NULL,
    [COLLECTION_FILE_FRWD_PTR_IEN] NUMERIC (21, 3) NULL,
    [COLLECTION_FILE_BKWD_PTR_IEN] NUMERIC (21, 3) NULL,
    [DATE_TIME_API_CALLED_GIS]     DATETIME        NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_PDTS_COLLECTION_FILE]
    ON [dbo].[PDTS_COLLECTION_FILE]([KEY_SITE] ASC, [KEY_PDTS_COLLECTION_FILE] ASC);
