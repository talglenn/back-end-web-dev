/*Display spring semester*/
Select a.courseID, a.courseName, a.crn, a.section, a.day, a.time, a.location, a.instructor, b.courseID, b.courseName, b.crn, b.section, b.day, b.time, b.location, b.instructor
FROM courses a, spring b
Where a.courseID = b.courseID;

/*Display all available art class semester*/
Select a.courseID, a.courseName, a.crn, a.section, a.day, a.time, a.location, a.instructor, b.courseID, b.courseName, b.crn, b.section, b.day, b.time, b.location, b.instructor
FROM courses a, art b
Where a.courseID = b.courseID;

/*Display all instructors with their respective courses from the fall semester*/
Select a.courseID, a.courseName, a.crn, a.instructor, b.courseID, b.courseName, b.crn, b.instructor
FROM courses a, fall b
Where a.courseID = b.courseID;