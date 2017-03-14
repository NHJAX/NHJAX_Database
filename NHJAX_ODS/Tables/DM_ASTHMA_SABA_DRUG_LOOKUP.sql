﻿CREATE TABLE [dbo].[DM_ASTHMA_SABA_DRUG_LOOKUP] (
    [SABADrugId]    BIGINT        NOT NULL,
    [SABADrugDesc]  NVARCHAR (41) NOT NULL,
    [SABANDCNumber] NVARCHAR (15) NULL,
    [CreatedDate]   DATETIME      CONSTRAINT [DF_DM_ASTHMA_SABA_DRUG_LOOKUP_CreatedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DM_ASTHMA_SABA_DRUG_LOOKUP] PRIMARY KEY CLUSTERED ([SABADrugId] ASC)
);
