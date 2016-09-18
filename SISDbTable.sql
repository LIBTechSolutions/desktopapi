/*Schemas.*/
 create schema FinanceRecords;
create schema Admission;
create schema SubjectRecords

/*Parents Record*/
CREATE TABLE Admission.Parent_Records
(
ParentID int identity Primary key,
StudentID AS 'S100'+ Right('000' + CAST(ParentID AS VARCHAR(10)), 6) PERSISTED,
Father_LastName nvarchar(50),
Father_FirstName varchar(50),
Father_MiddleName varchar(50),
Father_Address varchar(50),
Father_Phone nvarchar(50),
Father_Nationality nvarchar(50),
Mother_LastName nvarchar(50),
Mother_FirstName varchar(50),
Mother_MiddleName varchar(50),
Mother_Address varchar(50),
Mother_Phone nvarchar(50),
Mother_Nationality nvarchar(50),
Guardian_LastName nvarchar(50),
Guardian_FirstName varchar(50),
Guardian_MiddleName varchar(50),
Guardian_Address varchar(50),
Guardian_Phone nvarchar(50), 
Guardian_Nationality nvarchar(50),

) 

/*Subject Table*/
CREATE TABLE OfficeRecords.Subjects
(
SubjectID int identity Primary key,
TeacherID AS 'T100'+ Right('000' + CAST(SubjectID AS VARCHAR(10)), 6) PERSISTED,
Subjects nvarchar(50),
ClassID varchar(50),
Day varchar(50),
Times varchar(50),
Division nvarchar(50),

) 

FeesPayment Table
USE [School_Information_System]
GO

/****** Object:  Table [FinanceRecords].[FeesPayment]    Script Date: 09/10/2016 14:16:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [FinanceRecords].[FeesPayment](
	[PaymentID] [int] NOT NULL,
	[StudentID]  AS ('S100'+right('000'+CONVERT([varchar](10),[PaymentID],0),(6))) PERSISTED,
	[ReceiptNo]  AS ('R100'+right('000'+CONVERT([varchar](10),[PaymentID],0),(6))) PERSISTED,
	[DigitalSignature] [uniqueidentifier] NULL,
	[Transaction_Date] [datetime] NULL,
	[AmountPaid] [money] NULL,
	[SemseterBalance] [money] NULL,
	[YearlyBalance] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



	  


