# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          PROJ-ZACK.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-28 12:25                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `The study data` DROP FOREIGN KEY `Course Information_The study data`;

ALTER TABLE `The study data` DROP FOREIGN KEY `Staff Information_The study data`;

ALTER TABLE `The study data` DROP FOREIGN KEY `Student Information_The study data`;

ALTER TABLE `Results` DROP FOREIGN KEY `The study data_Results`;

# ---------------------------------------------------------------------- #
# Drop table "Results"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Results`;

# ---------------------------------------------------------------------- #
# Drop table "The study data"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `The study data` DROP PRIMARY KEY;

DROP TABLE `The study data`;

# ---------------------------------------------------------------------- #
# Drop table "Staff Information"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Staff Information`;

# ---------------------------------------------------------------------- #
# Drop table "Student Information"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Student Information` DROP PRIMARY KEY;

DROP TABLE `Student Information`;

# ---------------------------------------------------------------------- #
# Drop table "Course Information"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Course Information` DROP PRIMARY KEY;

DROP TABLE `Course Information`;
