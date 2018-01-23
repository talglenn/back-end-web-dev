/*Talmadge Glenn*/


-- create and select the database
--DROP DATABASE IF EXISTS semesterDB;
--CREATE DATABASE semesterDB;
USE semesterDB;

-- create the tables for the database
CREATE TABLE semester (
  semesterID      INT          IDENTITY(1,1)  NOT NULL,
  semesterName    VARCHAR(60)   NOT NULL
);

SET IDENTITY_INSERT spring ON
CREATE TABLE spring (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section) 
);
SET IDENTITY_INSERT spring OFF

SET IDENTITY_INSERT summer ON
CREATE TABLE summer (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT summer OFF

SET IDENTITY_INSERT fall ON
CREATE TABLE fall (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT fall OFF

SET IDENTITY_INSERT courses ON
CREATE TABLE courses (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT courses OFF

SET IDENTITY_INSERT art ON
CREATE TABLE art (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT art OFF

SET IDENTITY_INSERT computerScience ON
CREATE TABLE computerScience (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT computerScience OFF

SET IDENTITY_INSERT history ON
CREATE TABLE history (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT history OFF

SET IDENTITY_INSERT math ON
CREATE TABLE math (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT math OFF

SET IDENTITY_INSERT geology ON
CREATE TABLE geology (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT geology OFF

SET IDENTITY_INSERT chemistry ON
CREATE TABLE chemistry (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT chemistry OFF

SET IDENTITY_INSERT criminalJustice ON
CREATE TABLE criminalJustice (
  courseID   INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT criminalJustice OFF

SET IDENTITY_INSERT english ON
CREATE TABLE english (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT english OFF

SET IDENTITY_INSERT psychology ON
CREATE TABLE psychology (
  courseID    INT          IDENTITY(1,1)  NOT NULL,
  courseName  VARCHAR(255)   NOT NULL,
  crn         INT            NOT NULL,
  section     INT            NOT NULL,
  day         VARCHAR(10)    NOT NULL,
  time        VARCHAR(50)    NOT NULL,
  location    VARCHAR(255)   NOT NULL,
  instructor  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (courseID), 
  INDEX section (section)
);
SET IDENTITY_INSERT psychology OFF

SET IDENTITY_INSERT instructor ON
CREATE TABLE instructor (
  instructorID     INT          IDENTITY(1,1)  NOT NULL,
  firstName         VARCHAR(255)   NOT NULL,
  lastName          VARCHAR(255)   NOT NULL,
  PRIMARY KEY (instructorID)
);
SET IDENTITY_INSERT instructor OFF

-- Insert data into the tables
INSERT INTO semester (semesterName) VALUES
('Spring Semester'),
('Summer Semester'),
('Fall Semester');


INSERT INTO courses (courseName, crn, section, day, time, location, instructor) VALUES
/*SPRING*/

/*ART*/
('Art Appreciation', 21026, 01, 'TR', '3:00PM - 4:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
('Intro to History of Art I', 20121, 01, 'MW', '9:00AM - 10:15AM', 'Front Ave 993 Seabo 019', 'Claire McCoy'),
('Intro to History of Art II', 20458, 01, 'MW', '4:00PM - 5:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
/*CPSC*/
('Computer Science I', 20303, 02, 'TR', '1:30PM - 2:45PM', 'CCT 409', 'Aurelia Smith'),
('Computer Science II', 23173, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 409', 'Wayne Summers'),
('Computer Organization', 22178, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 406', 'Suk Lee'),
/*HIST*/
('History Convocation', 20509, 01, 'F', '3:00PM - 4:30PM', 'Stanley Hall 203', 'Tompson Douglas'),
('World History to 1500', 22413, 01, 'MW', '3:00PM - 4:15PM', 'Carpenters Building 218', 'Ryan Lynch'),
('U.S History to 1865', 20561, 01, 'TR', '9:30AM - 10:45AM', 'Howard Hall 218', 'Donald Cope'),

/*SUMMER*/

/*MATH*/
('Preparatory Algebrea', 50320, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
('Found for Coll Alg', 50299, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
('Intro to Mathematical Modeling', 50447, 01, 'MTWR', '8:00AM - 9:55AM', 'University Hall 248', 'William Muse'),

/*GEOL*/
('Natural Disasters', 50769, 02, 'TR', '11:00AM - 2:30PM', 'LeNoir Hall 210', 'David Schwimmer'),
('Oceanography(Graduate)', 50117, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),
('Oceanography(Undergraduate)', 50118, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),

/*CHEM*/
('Survey of Chemistry I', 50062, 01, 'MTWR', '10:00AM - 11:55AM', 'Howard Hall 103', 'Rajeev Dabke'),
('Survey of Chemistry II', 50617, 01, 'MTWR', '1:00PM - 2:55PM', 'Howard Hall 103', 'Samuel Abegaz'),
('Principles of Chemistry I', 50064, 01, 'MTWR', '2:00AM - 3:55AM', 'Howard Hall 203', 'Anil Banerjee'),

/*FALL*/

/*CRJU*/
('Intro to Criminal Justice', 80170, 01, 'MWF', '8:00AM - 8:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
('Criminology', 80172, 01, 'MWF', '10:00AM - 10:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
('Survey of Corrections', 80173, 01, 'TR', '8:00AM - 9:15AM', 'Howard Hall 211', 'Bridget Downs'),

/*ENGL*/
('English Compostion I', 80537, 02, 'MW', '2:00PM - 2:50PM', 'Arnold Hall 109', 'Robert Norwood'),
('English Composition II', 80447, 17, 'MWF', '9:00AM - 9:50AM', 'Arnold Hall 104', 'Sundi Rose-Holt'),
('World Literature I', 80739, 02, 'TR', '11:00AM - 12:15AM', 'CCT 308', 'Shannon Godlove'),

/*PSYC*/
('General Psychology', 80528, 01, 'MW', '7:30PM - 8:45PM', 'Health and Wellness 217', 'John Roop'),
('Lifespan Dev Psych', 80502, 01, 'TR', '11:00AM - 12:15PM', 'Arnold Hall 113', 'Diana Riser'),
('Abnormal Psychology', 82792, 01, 'TR', '7:30PM - 8:45PM', 'CCT 208', 'Michael Osborne');


INSERT INTO spring (courseName, crn, section, day, time, location, instructor) VALUES
/*ART*/
('Art Appreciation', 21026, 01, 'TR', '3:00PM - 4:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
('Intro to History of Art I', 20121, 01, 'MW', '9:00AM - 10:15AM', 'Front Ave 993 Seabo 019', 'Claire McCoy'),
('Intro to History of Art II', 20458, 01, 'MW', '4:00PM - 5:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
/*CPSC*/
('Computer Science I', 20303, 02, 'TR', '1:30PM - 2:45PM', 'CCT 409', 'Aurelia Smith'),
('Computer Science II', 23173, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 409', 'Wayne Summers'),
('Computer Organization', 22178, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 406', 'Suk Lee'),
/*HIST*/
('History Convocation', 20509, 01, 'F', '3:00PM - 4:30PM', 'Stanley Hall 203', 'Tompson Douglas'),
('World History to 1500', 22413, 01, 'MW', '3:00PM - 4:15PM', 'Carpenters Building 218', 'Ryan Lynch'),
('U.S History to 1865', 20561, 01, 'TR', '9:30AM - 10:45AM', 'Howard Hall 218', 'Donald Cope');

INSERT INTO summer (courseName, crn, section, day, time, location, instructor) VALUES
/*MATH*/
('Preparatory Algebrea', 50320, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
('Found for Coll Alg', 50299, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
('Intro to Mathematical Modeling', 50447, 01, 'MTWR', '8:00AM - 9:55AM', 'University Hall 248', 'William Muse'),

/*GEOL*/
('Natural Disasters', 50769, 02, 'TR', '11:00AM - 2:30PM', 'LeNoir Hall 210', 'David Schwimmer'),
('Oceanography(Graduate)', 50117, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),
('Oceanography(Undergraduate)', 50118, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),

/*CHEM*/
('Survey of Chemistry I', 50062, 01, 'MTWR', '10:00AM - 11:55AM', 'Howard Hall 103', 'Rajeev Dabke'),
('Survey of Chemistry II', 50617, 01, 'MTWR', '1:00PM - 2:55PM', 'Howard Hall 103', 'Samuel Abegaz'),
('Principles of Chemistry I', 50064, 01, 'MTWR', '2:00AM - 3:55AM', 'Howard Hall 203', 'Anil Banerjee');

INSERT INTO fall (courseName, crn, section, day, time, location, instructor) VALUES
/*CRJU*/
('Intro to Criminal Justice', 80170, 01, 'MWF', '8:00AM - 8:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
('Criminology', 80172, 01, 'MWF', '10:00AM - 10:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
('Survey of Corrections', 80173, 01, 'TR', '8:00AM - 9:15AM', 'Howard Hall 211', 'Bridget Downs'),

/*ENGL*/
('English Compostion I', 80537, 02, 'MW', '2:00PM - 2:50PM', 'Arnold Hall 109', 'Robert Norwood'),
('English Composition II', 80447, 17, 'MWF', '9:00AM - 9:50AM', 'Arnold Hall 104', 'Sundi Rose-Holt'),
('World Literature I', 80739, 02, 'TR', '11:00AM - 12:15AM', 'CCT 308', 'Shannon Godlove'),

/*PSYC*/
('General Psychology', 80528, 01, 'MW', '7:30PM - 8:45PM', 'Health and Wellness 217', 'John Roop'),
('Lifespan Dev Psych', 80502, 01, 'TR', '11:00AM - 12:15PM', 'Arnold Hall 113', 'Diana Riser'),
('Abnormal Psychology', 82792, 01, 'TR', '7:30PM - 8:45PM', 'CCT 208', 'Michael Osborne');


/*Art*/
INSERT INTO art (courseName, crn, section, day, time, location, instructor) VALUES
('Art Appreciation', 21026, 01, 'TR', '3:00PM - 4:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston'),
('Intro to History of Art I', 20121, 01, 'MW', '9:00AM - 10:15AM', 'Front Ave 993 Seabo 019', 'Claire McCoy'),
('Intro to History of Art II', 20458, 01, 'MW', '4:00PM - 5:15PM', 'Front Ave 993 Seabo 019', 'Barbara Johnston');

/*CPSC*/
INSERT INTO computerScience (courseName, crn, section, day, time, location, instructor) VALUES
('Computer Science I', 20303, 02, 'TR', '1:30PM - 2:45PM', 'CCT 409', 'Aurelia Smith'),
('Computer Science II', 23173, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 409', 'Wayne Summers'),
('Computer Organization', 22178, 01, 'MWF', '9:00AM - 9:50AM', 'CCT 406', 'Suk Lee');

/*HIST*/
INSERT INTO history (courseName, crn, section, day, time, location, instructor) VALUES
( 'History Convocation', 20509, 01, 'F', '3:00PM - 4:30PM', 'Stanley Hall 203', 'Tompson Douglas'),
('World History to 1500', 22413, 01, 'MW', '3:00PM - 4:15PM', 'Carpenters Building 218', 'Ryan Lynch'),
( 'U.S History to 1865', 20561, 01, 'TR', '9:30AM - 10:45AM', 'Howard Hall 218', 'Donald Cope');

/*MATH*/
INSERT INTO math (courseName, crn, section, day, time, location, instructor) VALUES
('Preparatory Algebrea', 50320, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 103', 'Hassan Hassani'),
('Found for Coll Alg', 50299, 01, 'MTWR', '8:00AM - 9:55AM', 'Howard Hall 104', 'Hassan Hassani'),
('Intro to Mathematical Modeling', 50447, 01, 'MTWR', '8:00AM - 9:55AM', 'University Hall 248', 'William Muse');

/*GEOL*/
INSERT INTO geology ( courseName, crn, section, day, time, location, instructor) VALUES
('Natural Disasters', 50769, 02, 'TR', '11:00AM - 2:30PM', 'LeNoir Hall 210', 'David Schwimmer'),
('Oceanography(Graduate)', 50117, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer'),
('Oceanography(Undergraduate)', 50118, 01, 'TR', '1:30PM - 4:00PM', 'LeNoir Hall 210', 'David Schwimmer');

/*CHEM*/
INSERT INTO chemistry (courseName, crn, section, day, time, location, instructor) VALUES
('Survey of Chemistry I', 50062, 01, 'MTWR', '10:00AM - 11:55AM', 'Howard Hall 103', 'Rajeev Dabke'),
('Survey of Chemistry II', 50617, 01, 'MTWR', '1:00PM - 2:55PM', 'Howard Hall 103', 'Samuel Abegaz'),
('Principles of Chemistry I', 50064, 01, 'MTWR', '2:00AM - 3:55AM', 'Howard Hall 203', 'Anil Banerjee');

/*CRJU*/
INSERT INTO criminalJustice (courseName, crn, section, day, time, location, instructor) VALUES
('Intro to Criminal Justice', 80170, 01, 'MWF', '8:00AM - 8:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
('Criminology', 80172, 01, 'MWF', '10:00AM - 10:50AM', 'Howard Hall 211', 'Sung-Hun Byun'),
('Survey of Corrections', 80173, 01, 'TR', '8:00AM - 9:15AM', 'Howard Hall 211', 'Bridget Downs');

/*ENGL*/
INSERT INTO english ( courseName, crn, section, day, time, location, instructor) VALUES
('English Compostion I', 80537, 02, 'MW', '2:00PM - 2:50PM', 'Arnold Hall 109', 'Robert Norwood'),
('English Composition II', 80447, 17, 'MWF', '9:00AM - 9:50AM', 'Arnold Hall 104', 'Sundi Rose-Holt'),
('World Literature I', 80739, 02, 'TR', '11:00AM - 12:15AM', 'CCT 308', 'Shannon Godlove');

/*PSYC*/
INSERT INTO psychology ( courseName, crn, section, day, time, location, instructor) VALUES
('General Psychology', 80528, 01, 'MW', '7:30PM - 8:45PM', 'Health and Wellness 217', 'John Roop'),
( 'Lifespan Dev Psych', 80502, 01, 'TR', '11:00AM - 12:15PM', 'Arnold Hall 113', 'Diana Riser'),
('Abnormal Psychology', 82792, 01, 'TR', '7:30PM - 8:45PM', 'CCT 208', 'Michael Osborne');


/*Teachers*/
INSERT INTO instructor (firstName, lastName) VALUES
( 'Barbara', 'Johnston'),
( 'Claire', 'McCoy'),
( 'Aurelia', 'Smith'),
( 'Wayne', 'Summers'),
( 'Suk', 'Lee'),
( 'Tompson', 'Douglas'),
( 'Ryan', 'Lynch'),
( 'Donald', 'Cope'),
( 'Hassan', 'Hassani'),
( 'William', 'Muse'),
( 'David', 'Schwimmer'),
( 'Rajeev', 'Dabke'),
( 'Samuel', 'Abegaz'),
( 'Anil', 'Banerjee'),
( 'Sung-Hun', 'Byun'),
( 'Bridget', 'Downs'),
( 'Robert', 'Norwood'),
( 'Sundi', 'Rose-Holt'),
( 'Shannon', 'Godlove'),
( 'John', 'Roop'),
( 'Diana', 'Riser'),
( 'Michael', 'Osborne');

-- Create a user named mgs_user
GRANT SELECT, INSERT, UPDATE, DELETE TO Woof;  
GO   