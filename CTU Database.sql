CREATE DATABASE [CTU Database]

USE [CTU Database]
GO

CREATE SCHEMA Potchefstroom
GO

CREATE TABLE Potchefstroom.StudentInfo
(
	StudentID INT IDENTITY PRIMARY KEY,
	[Last Name] NVARCHAR(30) NOT NULL,
	[First Names] NVARCHAR(30) NOT NULL,
	[Student Number] NVARCHAR(20) NOT NULL,
	[ID Number] VARCHAR(13) NOT NULL,
	[Living Address] NVARCHAR(50) NOT NULL,
	[Email Address] NVARCHAR(30) NULL,
	[Contact Number] VARCHAR(10) NOT NULL
)

CREATE TABLE Potchefstroom.ParentInfo
(
	ParentID INT IDENTITY PRIMARY KEY,
	[Last Name] NVARCHAR(30) NOT NULL,
	[First Names] NVARCHAR(30) NOT NULL,
	[Living Address] NVARCHAR(50) NOT NULL,
	[Email Address] NVARCHAR(30) NULL,
	[Contact Number] VARCHAR(15) NOT NULL,
	StudentID_FK INT FOREIGN KEY REFERENCES Potchefstroom.StudentInfo(StudentID)
)

CREATE TABLE Potchefstroom.CourseInfo
(
	CourseID INT IDENTITY PRIMARY KEY,
	[Course Name] NVARCHAR(30) NOT NULL,
	[Course Description] NVARCHAR(MAX) NULL,
	[Course Duration] INT NOT NULL,
	CampusID_FK INT FOREIGN KEY REFERENCES dbo.Campuses(CampusID),
	FacilitatorID_FK INT FOREIGN KEY REFERENCES Potchefstroom.FacilitatorInfo(FacilitatorID)
)

CREATE TABLE Potchefstroom.FacilitatorInfo
(
	FacilitatorID INT IDENTITY PRIMARY KEY,
	[Last Name] NVARCHAR(30) NOT NULL,
	[First Names] NVARCHAR(30) NOT NULL,
	[Contact Number] VARCHAR(10) NOT NULL,
)

CREATE TABLE Potchefstroom.AssessmentInfo
(
	AssessmentID INT IDENTITY PRIMARY KEY,
	[Assessment Name] NVARCHAR(30) NOT NULL,
	[Assessment Type] NVARCHAR(30) NOT NULL,
	[Assessment Mark Achieved] INT NULL,
	CourseID_FK INT FOREIGN KEY REFERENCES Potchefstroom.CourseInfo(CourseID),
	StudentID_FK INT FOREIGN KEY REFERENCES Potchefstroom.StudentInfo(StudentID)
)

CREATE TABLE dbo.Campuses
(
	CampusID INT IDENTITY PRIMARY KEY,
	[Campus Name] NVARCHAR(30) NOT NULL
)