create database School_Information_System
use School_Information_System
go

create table Administration.Login_Details
(
UserID_Number nvarchar(15)not null,
UserName nvarchar(25) not null,
UserPassword nvarchar(15) not null,
UserRole nvarchar(30) not null,
)
Go

create table Admission.Registration_Details
(
Reg_NO int identity(1,1),
RegistrationID AS 'Reg-0000-' + Right('0211' + CAST(Reg_NO  AS nVARCHAR(15)), 6) PERSISTED primary key,
LastName nvarchar(15)not null,
MiddleName nvarchar(25) not null,
FirstName nvarchar(15) not null, 
Previous_Class_Attended nvarchar(15)  null,
Previous_School_Attended varchar(50)  null,
Previous_School_Address nvarchar(30)null,
Class_Seeking_Admission_For nvarchar(30) not null,
Gender nvarchar(7) not null constraint chk_defGender default 'Male',
Phone nvarchar(20) constraint Chk_ApplicantPhone check(Phone like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')not null,
Email varchar(350) not null,
Residential_Address nvarchar(30) not null,
City nvarchar(30)null,
County nvarchar(30)null constraint chk_defCounty default'Montserrado' ,
Nationality nvarchar (30)not null constraint chk_defNationality default'Liberian' ,
Date_Of_Birth date not null,
Place_Of_Birth nvarchar(30) null ,
Country_Of_Origin nvarchar(25) not null constraint chk_Country_Of_Origin default'Liberia',
Emergency_Contact_Name nvarchar (40) not null,
Emergency_Contact_Phone NVARCHAR(20) constraint Chk_Phone check(Emergency_Contact_Phone like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')not null,
Emergency_Contact_Address nvarchar(30)not null
)

Go

create table Admission.StudentRecords
(
Stud_NO int identity(1,1),
StudentID AS 'S300-' + Right('0125' + CAST(Stud_NO  AS nVARCHAR(15)), 6) PERSISTED primary key,
RegistrationID nvarchar(15)not null constraint frk_RegistrarionID references Admission.Registration_Details(RegistrationID),
ParentID int not null,
StudentPhoto image not null,  
Current_Class nvarchar(10) not null,
Current_School_Year date not null,
Division nvarchar(15) not null,
Last_Year_In_Previous_School date not null,
EnrollmentStatus nvarchar(25)not null,
EnrollmentDate datetime not null

)
go
