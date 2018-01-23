/*Talmadge Glenn*/


-- create and select the database
DROP DATABASE IF EXISTS semesterDB;
CREATE DATABASE semesterDB;
USE semesterDB;

-- create the tables for the database
CREATE TABLE semester (
  semesterID      INT           NOT NULL,
  semesterName    VARCHAR(60)   NOT NULL
);

CREATE TABLE spring (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE summer (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE fall (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);


CREATE TABLE courses (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE art (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE computerScience (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE history (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE math (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE geology (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE chemistry (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE criminalJustice (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE english (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);

CREATE TABLE psychology (
  courseID    INT            NOT NULL AUTO_INCREMENT,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section), 
  UNIQUE INDEX crn (crn)
);


CREATE TABLE instructor (
  instructorID      INT            NOT NULL AUTO_INCREMENT,
  firstName         VARCHAR(255)   NOT NULL,
  lastName          VARCHAR(255)   NOT NULL,
  PRIMARY KEY (instructorID)
);

-- Insert data into the tables
INSERT INTO semester (semesterID, semesterName) VALUES
(1, 'Spring Semester'),
(2, 'Summer Semester'),
(3, 'Fall Semester');


INSERT INTO courses (courseID, courseName, crn, section, day, time, location, instructor) VALUES
/*SPRING*/

/*ART*/
(1, 'Art Appreciation', 21026, 01, 'TR', '3:00PM - 4:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
(2, 'Intro to History of Art I', 20121, 01, 'MW', '9:00AM - 10:15AM', 'Front Ave 993 Seabo 019', 'Claire McCoy'),
(3, 'Intro to History of Art II', 20458, 01, 'MW', '4:00PM - 5:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
/*CPSC*/
(4, 'Computer Science I', 20303, 02, 'TR', '1:30PM - 2:45PM', 'CCT 409', 'Aurelia Smith'),
(5, 'Computer Science II', 23173, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 409', 'Wayne Summers'),
(6, 'Computer Organization', 22178, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 406', 'Suk Lee'),
/*HIST*/
(7, 'History Convocation', 20509, 01, 'F', '3:00PM - 4:30PM', 'Stanley Hall 203', 'Tompson Douglas'),
(8, 'World History to 1500', 22413, 01, 'MW', '3:00PM - 4:15PM', 'Carpenters Building 218', 'Ryan Lynch'),
(9, 'U.S History to 1865', 20561, 01, 'TR', '9:30AM - 10:45AM', 'Howard Hall 218', 'Donald Cope'),

/*SUMMER*/

/*MATH*/
(10, 'Preparatory Algebrea', 50320, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
(11, 'Found for Coll Alg', 50299, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
(12, 'Intro to Mathematical Modeling', 50447, 01, 'MTWR', '8:00AM - 9:55AM', 'University Hall 248', 'William Muse'),

/*GEOL*/
(13, 'Natural Disasters', 50769, 02, 'TR', '11:00AM - 2:30PM', 'LeNoir Hall 210', 'David Schwimmer'),
(14, 'Oceanography(Graduate)', 50117, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),
(15, 'Oceanography(Undergraduate)', 50118, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),

/*CHEM*/
(16, 'Survey of Chemistry I', 50062, 01, 'MTWR', '10:00AM - 11:55AM', 'Howard Hall 103', 'Rajeev Dabke'),
(17, 'Survey of Chemistry II', 50617, 01, 'MTWR', '1:00PM - 2:55PM', 'Howard Hall 103', 'Samuel Abegaz'),
(18, 'Principles of Chemistry I', 50064, 01, 'MTWR', '2:00AM - 3:55AM', 'Howard Hall 203', 'Anil Banerjee'),

/*FALL*/

/*CRJU*/
(19, 'Intro to Criminal Justice', 80170, 01, 'MWF', '8:00AM - 8:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
(20, 'Criminology', 80172, 01, 'MWF', '10:00AM - 10:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
(21, 'Survey of Corrections', 80173, 01, 'TR', '8:00AM - 9:15AM', 'Howard Hall 211', 'Bridget Downs'),

/*ENGL*/
(22, 'English Compostion I', 80537, 02, 'MW', '2:00PM - 2:50PM', 'Arnold Hall 109', 'Robert Norwood'),
(23, 'English Composition II', 80447, 17, 'MWF', '9:00AM - 9:50AM', 'Arnold Hall 104', 'Sundi Rose-Holt'),
(24, 'World Literature I', 80739, 02, 'TR', '11:00AM - 12:15AM', 'CCT 308', 'Shannon Godlove'),

/*PSYC*/
(25, 'General Psychology', 80528, 01, 'MW', '7:30PM - 8:45PM', 'Health and Wellness 217', 'John Roop'),
(26, 'Lifespan Dev Psych', 80502, 01, 'TR', '11:00AM - 12:15PM', 'Arnold Hall 113', 'Diana Riser'),
(27, 'Abnormal Psychology', 82792, 01, 'TR', '7:30PM - 8:45PM', 'CCT 208', 'Michael Osborne');


INSERT INTO spring (courseID, courseName, crn, section, day, time, location, instructor) VALUES
/*ART*/
(1, 'Art Appreciation', 21026, 01, 'TR', '3:00PM - 4:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
(2, 'Intro to History of Art I', 20121, 01, 'MW', '9:00AM - 10:15AM', 'Front Ave 993 Seabo 019', 'Claire McCoy'),
(3, 'Intro to History of Art II', 20458, 01, 'MW', '4:00PM - 5:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
/*CPSC*/
(4, 'Computer Science I', 20303, 02, 'TR', '1:30PM - 2:45PM', 'CCT 409', 'Aurelia Smith'),
(5, 'Computer Science II', 23173, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 409', 'Wayne Summers'),
(6, 'Computer Organization', 22178, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 406', 'Suk Lee'),
/*HIST*/
(7, 'History Convocation', 20509, 01, 'F', '3:00PM - 4:30PM', 'Stanley Hall 203', 'Tompson Douglas'),
(8, 'World History to 1500', 22413, 01, 'MW', '3:00PM - 4:15PM', 'Carpenters Building 218', 'Ryan Lynch'),
(9, 'U.S History to 1865', 20561, 01, 'TR', '9:30AM - 10:45AM', 'Howard Hall 218', 'Donald Cope');

INSERT INTO summer (courseID, courseName, crn, section, day, time, location, instructor) VALUES
/*MATH*/
(10, 'Preparatory Algebrea', 50320, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
(11, 'Found for Coll Alg', 50299, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
(12, 'Intro to Mathematical Modeling', 50447, 01, 'MTWR', '8:00AM - 9:55AM', 'University Hall 248', 'William Muse'),

/*GEOL*/
(13, 'Natural Disasters', 50769, 02, 'TR', '11:00AM - 2:30PM', 'LeNoir Hall 210', 'David Schwimmer'),
(14, 'Oceanography(Graduate)', 50117, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),
(15, 'Oceanography(Undergraduate)', 50118, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),

/*CHEM*/
(16, 'Survey of Chemistry I', 50062, 01, 'MTWR', '10:00AM - 11:55AM', 'Howard Hall 103', 'Rajeev Dabke'),
(17, 'Survey of Chemistry II', 50617, 01, 'MTWR', '1:00PM - 2:55PM', 'Howard Hall 103', 'Samuel Abegaz'),
(18, 'Principles of Chemistry I', 50064, 01, 'MTWR', '2:00AM - 3:55AM', 'Howard Hall 203', 'Anil Banerjee');

INSERT INTO fall (courseID, courseName, crn, section, day, time, location, instructor) VALUES
/*CRJU*/
(19, 'Intro to Criminal Justice', 80170, 01, 'MWF', '8:00AM - 8:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
(20, 'Criminology', 80172, 01, 'MWF', '10:00AM - 10:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
(21, 'Survey of Corrections', 80173, 01, 'TR', '8:00AM - 9:15AM', 'Howard Hall 211', 'Bridget Downs'),

/*ENGL*/
(22, 'English Compostion I', 80537, 02, 'MW', '2:00PM - 2:50PM', 'Arnold Hall 109', 'Robert Norwood'),
(23, 'English Composition II', 80447, 17, 'MWF', '9:00AM - 9:50AM', 'Arnold Hall 104', 'Sundi Rose-Holt'),
(24, 'World Literature I', 80739, 02, 'TR', '11:00AM - 12:15AM', 'CCT 308', 'Shannon Godlove'),

/*PSYC*/
(25, 'General Psychology', 80528, 01, 'MW', '7:30PM - 8:45PM', 'Health and Wellness 217', 'John Roop'),
(26, 'Lifespan Dev Psych', 80502, 01, 'TR', '11:00AM - 12:15PM', 'Arnold Hall 113', 'Diana Riser'),
(27, 'Abnormal Psychology', 82792, 01, 'TR', '7:30PM - 8:45PM', 'CCT 208', 'Michael Osborne');


/*Art*/
INSERT INTO art (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(1, 'Art Appreciation', 21026, 01, 'TR', '3:00PM - 4:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
(2, 'Intro to History of Art I', 20121, 01, 'MW', '9:00AM - 10:15AM', 'Front Ave 993 Seabo 019', 'Claire McCoy'),
(3, 'Intro to History of Art II', 20458, 01, 'MW', '4:00PM - 5:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston');

/*CPSC*/
INSERT INTO computerScience (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(4, 'Computer Science I', 20303, 02, 'TR', '1:30PM - 2:45PM', 'CCT 409', 'Aurelia Smith'),
(5, 'Computer Science II', 23173, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 409', 'Wayne Summers'),
(6, 'Computer Organization', 22178, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 406', 'Suk Lee');

/*HIST*/
INSERT INTO history (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(7, 'History Convocation', 20509, 01, 'F', '3:00PM - 4:30PM', 'Stanley Hall 203', 'Tompson Douglas'),
(8, 'World History to 1500', 22413, 01, 'MW', '3:00PM - 4:15PM', 'Carpenters Building 218', 'Ryan Lynch'),
(9, 'U.S History to 1865', 20561, 01, 'TR', '9:30AM - 10:45AM', 'Howard Hall 218', 'Donald Cope');

/*MATH*/
INSERT INTO math (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(10, 'Preparatory Algebrea', 50320, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
(11, 'Found for Coll Alg', 50299, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 104', 'Hassan Hassani'),
(12, 'Intro to Mathematical Modeling', 50447, 01, 'MTWR', '8:00AM - 9:55AM', 'University Hall 248', 'William Muse');

/*GEOL*/
INSERT INTO geology (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(13, 'Natural Disasters', 50769, 02, 'TR', '11:00AM - 2:30PM', 'LeNoir Hall 210', 'David Schwimmer'),
(14, 'Oceanography(Graduate)', 50117, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),
(15, 'Oceanography(Undergraduate)', 50118, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer');

/*CHEM*/
INSERT INTO chemistry (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(16, 'Survey of Chemistry I', 50062, 01, 'MTWR', '10:00AM - 11:55AM', 'Howard Hall 103', 'Rajeev Dabke'),
(17, 'Survey of Chemistry II', 50617, 01, 'MTWR', '1:00PM - 2:55PM', 'Howard Hall 103', 'Samuel Abegaz'),
(18, 'Principles of Chemistry I', 50064, 01, 'MTWR', '2:00AM - 3:55AM', 'Howard Hall 203', 'Anil Banerjee');

/*CRJU*/
INSERT INTO criminalJustice (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(19, 'Intro to Criminal Justice', 80170, 01, 'MWF', '8:00AM - 8:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
(20, 'Criminology', 80172, 01, 'MWF', '10:00AM - 10:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
(21, 'Survey of Corrections', 80173, 01, 'TR', '8:00AM - 9:15AM', 'Howard Hall 211', 'Bridget Downs');

/*ENGL*/
INSERT INTO english (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(22, 'English Compostion I', 80537, 02, 'MW', '2:00PM - 2:50PM', 'Arnold Hall 109', 'Robert Norwood'),
(23, 'English Composition II', 80447, 17, 'MWF', '9:00AM - 9:50AM', 'Arnold Hall 104', 'Sundi Rose-Holt'),
(24, 'World Literature I', 80739, 02, 'TR', '11:00AM - 12:15AM', 'CCT 308', 'Shannon Godlove');

/*PSYC*/
INSERT INTO psychology (courseID, courseName, crn, section, day, time, location, instructor) VALUES
(25, 'General Psychology', 80528, 01, 'MW', '7:30PM - 8:45PM', 'Health and Wellness 217', 'John Roop'),
(26, 'Lifespan Dev Psych', 80502, 01, 'TR', '11:00AM - 12:15PM', 'Arnold Hall 113', 'Diana Riser'),
(27, 'Abnormal Psychology', 82792, 01, 'TR', '7:30PM - 8:45PM', 'CCT 208', 'Michael Osborne');


/*Teachers*/
INSERT INTO instructor (instructorID, firstName, lastName) VALUES
(1, 'Barbara', 'Johnston'),
(2, 'Claire', 'McCoy'),
(3, 'Aurelia', 'Smith'),
(4, 'Wayne', 'Summers'),
(5, 'Suk', 'Lee'),
(6, 'Tompson', 'Douglas'),
(7, 'Ryan', 'Lynch'),
(8, 'Donald', 'Cope'),
(9, 'Hassan', 'Hassani'),
(10, 'William', 'Muse'),
(11, 'David', 'Schwimmer'),
(12, 'Rajeev', 'Dabke'),
(13, 'Samuel', 'Abegaz'),
(14, 'Anil', 'Banerjee'),
(15, 'Sung-Hun', 'Byun'),
(16, 'Bridget', 'Downs'),
(17, 'Robert', 'Norwood'),
(18, 'Sundi', 'Rose-Holt'),
(19, 'Shannon', 'Godlove'),
(20, 'John', 'Roop'),
(21, 'Diana', 'Riser'),
(22, 'Michael', 'Osborne');

-- Create a user named mgs_user
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';