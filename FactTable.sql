CREATE DATABASE Fact_Dimension

USE Fact_Dimension

CREATE TABLE FactTable
(
	ID INT IDENTITY PRIMARY KEY,
	Campus NVARCHAR(50) NULL,
	[Student ID] VARCHAR(13) NULL,
	[Course Name] NVARCHAR(50) NULL,
	[Facilitator ID] INT,
	[Assessment Type] NVARCHAR(50) NULL,
	[Assessment Name] NVARCHAR(50) NULL,
	[Assessment Mark Achieved] VARCHAR(3) NULL
)