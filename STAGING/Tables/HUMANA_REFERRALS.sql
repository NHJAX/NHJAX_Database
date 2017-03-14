﻿CREATE TABLE [dbo].[HUMANA_REFERRALS] (
    [ProviderName]         NVARCHAR (255) NULL,
    [ProviderName1]        NVARCHAR (255) NULL,
    [ProviderName2]        NVARCHAR (255) NULL,
    [PatientLastName]      NVARCHAR (255) NULL,
    [PatientFirstName]     NVARCHAR (255) NULL,
    [PatientDOB]           NVARCHAR (255) NULL,
    [SponsorSSN]           NVARCHAR (255) NULL,
    [AuthorizationNumber]  NVARCHAR (255) NULL,
    [SpecialtyDescription] NVARCHAR (255) NULL,
    [SpecialistName]       NVARCHAR (255) NULL,
    [SpecialistPhone]      NVARCHAR (255) NULL,
    [GroupName]            NVARCHAR (255) NULL,
    [GroupPhone]           NVARCHAR (255) NULL,
    [PlaceofTreatment ]    NVARCHAR (255) NULL,
    [FacilityName]         NVARCHAR (255) NULL,
    [FacilityPhone]        NVARCHAR (255) NULL,
    [ReferralDate]         NVARCHAR (255) NULL,
    [NumberofVisits]       NVARCHAR (255) NULL,
    [LastUpdateDate]       NVARCHAR (255) NULL,
    [DateofService]        NVARCHAR (255) NULL,
    [CHCSReferralNbr]      NVARCHAR (255) NULL,
    [OrderingProvider]     NVARCHAR (255) NULL,
    [OrderingProviderNPI]  NVARCHAR (255) NULL,
    [ReferringMTFName]     NVARCHAR (255) NULL,
    [ReportPeriodBegin]    NVARCHAR (255) NULL,
    [ReportPeriodEnd]      NVARCHAR (255) NULL
);
