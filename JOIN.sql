SELECT C.[Campus Name], CI.[Course Name], FI.FacilitatorID, SI.StudentID, AI.AssessmentID, AI.[Assessment Type], AI.[Assessment Name], AI.[Assessment Mark Achieved]
FROM Potchefstroom.CourseInfo AS CI
INNER JOIN Potchefstroom.FacilitatorInfo AS FI
ON CI.FacilitatorID_FK = FI.FacilitatorID
INNER JOIN Potchefstroom.AssessmentInfo AS AI
ON AI.CourseID_FK = CI.CourseID
INNER JOIN Potchefstroom.StudentInfo AS SI
ON SI.CourseID_FK = CI.CourseID
INNER JOIN dbo.Campuses AS C
ON SI.CampusID_FK = C.CampusID
ORDER BY AI.[Assessment Mark Achieved] DESC