# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          PROJ-ZACK.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-28 12:25                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Course Information"                                         #
# ---------------------------------------------------------------------- #
create schema 5605104004db;
use 5605104004db;
CREATE TABLE `Course Information` (
    `ID_Course` VARCHAR(40) NOT NULL,
    `NameCourse` VARCHAR(40),
    `NumberCredit` VARCHAR(40),
    `HoursLearning` VARCHAR(40),
    CONSTRAINT `PK_Course Information` PRIMARY KEY (`ID_Course`)
);

# ---------------------------------------------------------------------- #
# Add table "Student Information"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `Student Information` (
    `ID_Student` VARCHAR(40) NOT NULL,
    `NameStudent` VARCHAR(40),
    `Number` VARCHAR(40),
    `Date` VARCHAR(40),
    `Address` VARCHAR(40),
    `Telephone Numbers` VARCHAR(40),
    CONSTRAINT `PK_Student Information` PRIMARY KEY (`ID_Student`)
);

# ---------------------------------------------------------------------- #
# Add table "Staff Information"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `Staff Information` (
    `ID_Staff` VARCHAR(40) NOT NULL,
    `NameStaff` VARCHAR(40),
    `Address` VARCHAR(40),
    `Telephone Numbers` VARCHAR(40),
    `Salary` VARCHAR(40),
    `Position` VARCHAR(40),
    PRIMARY KEY (`ID_Staff`)
);

# ---------------------------------------------------------------------- #
# Add table "The study data"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `The study data` (
    `ID_Results` VARCHAR(40) NOT NULL,
    `ID_Student` VARCHAR(40) NOT NULL,
    `Credit` VARCHAR(40),
    `Score` VARCHAR(40),
    `GPA` VARCHAR(40),
    `ID_Staff` VARCHAR(40) NOT NULL,
    `Year` VARCHAR(40),
    `ID_Course` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_The study data` PRIMARY KEY (`ID_Results`)
);

# ---------------------------------------------------------------------- #
# Add table "Results"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Results` (
    `ID_Results` VARCHAR(40) NOT NULL,
    `GradeLevel` VARCHAR(40),
    `GPA as` VARCHAR(40),
    PRIMARY KEY (`ID_Results`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `The study data` ADD CONSTRAINT `Course Information_The study data` 
    FOREIGN KEY (`ID_Course`) REFERENCES `Course Information` (`ID_Course`);

ALTER TABLE `The study data` ADD CONSTRAINT `Staff Information_The study data` 
    FOREIGN KEY (`ID_Staff`) REFERENCES `Staff Information` (`ID_Staff`);

ALTER TABLE `The study data` ADD CONSTRAINT `Student Information_The study data` 
    FOREIGN KEY (`ID_Student`) REFERENCES `Student Information` (`ID_Student`);

ALTER TABLE `Results` ADD CONSTRAINT `The study data_Results` 
    FOREIGN KEY (`ID_Results`) REFERENCES `The study data` (`ID_Results`);

