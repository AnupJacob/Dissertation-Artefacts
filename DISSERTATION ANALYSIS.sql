
CREATE TABLE T_OPENSOURCEPROJECTS(NAME VARCHAR(200)PRIMARY KEY, PURPOSE VARCHAR(255), WEBSITE VARCHAR(255), WIKILINK VARCHAR(255));

SELECT * FROM T_OPENSOURCEPROJECTS;

--DROP TABLE T_OPENSOURCEPROJECTS;

--INSERT INTO T_OPENSOURCEPROJECTS VALUES ()
INSERT INTO T_OPENSOURCEPROJECTS VALUES ('JENKINS','Open source automation server','https://www.jenkins.io','https://en.wikipedia.org/wiki/Jenkins_(software)');
INSERT INTO T_OPENSOURCEPROJECTS VALUES ('WORDPRESS','Free and open-source content management system','https://wordpress.org','https://en.wikipedia.org/wiki/WordPress');
INSERT INTO T_OPENSOURCEPROJECTS VALUES ('IDLEONCOMPANION','Massive Multiplayer Online game','https://idleoncompanion.com','https://idleon.info/wiki/Main_Page');
INSERT INTO T_OPENSOURCEPROJECTS VALUES ('OPENMW','Free and open-source role playing game','https://www.openmw.org','https://en.wikipedia.org/wiki/OpenMW');


----------------------------------------------------------------------------------------------------

CREATE TABLE T_GITHUBDETAILS(NAME VARCHAR(200) REFERENCES T_OPENSOURCEPROJECTS(NAME), PRIMARYREPOSITORY VARCHAR(255), SECONDARYREPOSITORY VARCHAR(255) , RATING INT, CONTRIBUTORS INT, TOTALBRANCHES INT, ACTIVEBRANCH INT, OPENTICKETS INT, CLOSEDTICKETS INT);

--DROP TABLE T_GITHUBDETAILS;

SELECT * FROM T_GITHUBDETAILS;

INSERT INTO T_GITHUBDETAILS VALUES ('JENKINS','https://github.com/jenkinsci/jenkins.git',NULL,19400,717,35,6,62,6918);
INSERT INTO T_GITHUBDETAILS VALUES ('WORDPRESS','https://github.com/WordPress/wordpress-develop.git','https://core.trac.wordpress.org/browser',1600,75,43,NULL,749,2360);
INSERT INTO T_GITHUBDETAILS VALUES ('IDLEONCOMPANION','https://github.com/Idleon-Companion/IdleonCompanion.git',NULL,29,17,14,2,0,3217);
INSERT INTO T_GITHUBDETAILS VALUES ('OPENMW','https://github.com/OpenMW/openmw.git','https://gitlab.com/OpenMW/openmw/',4400,245,53,8,736,6079);

------------------------------------------------------------------------------------------------------------

CREATE TABLE T_PERFORMANCEANALYSIS(NAME VARCHAR(200) REFERENCES T_OPENSOURCEPROJECTS(NAME), MONITORING_TOOLS VARCHAR(3), ENVIRONMENT_TESTING VARCHAR(3), LOAD_STRESS_TESTING VARCHAR(3), TICKET_RESOLUTION VARCHAR(3), CONTINOUS_MONITORING VARCHAR(3));

--DROP TABLE T_PERFORMANCEANALYSIS;

SELECT * FROM T_PERFORMANCEANALYSIS;

INSERT INTO T_PERFORMANCEANALYSIS VALUES('JENKINS','NO','YES','YES','YES','NO');
INSERT INTO T_PERFORMANCEANALYSIS VALUES('WORDPRESS','NO','YES','NO','YES','YES');
INSERT INTO T_PERFORMANCEANALYSIS VALUES('IDLEONCOMPANION','NO','YES','NO','NO','NO');
INSERT INTO T_PERFORMANCEANALYSIS VALUES('OPENMW','NO','NO','NO','NO','NO');

--------------------------------------------------------------------------------------------------------------

CREATE TABLE T_SECURITYANALYSIS(NAME VARCHAR(200) REFERENCES T_OPENSOURCEPROJECTS(NAME), SECURITY_TOOLS VARCHAR(3), LICENSE_CERTICATIONS VARCHAR(3), SENSITIVE_DATA VARCHAR(3), TICKET_RESOLUTION VARCHAR(3), SECURITY_TRAINING VARCHAR(3), SECURITY_COMPLIANCE VARCHAR(3), SECURITY_POLICY VARCHAR(3), CONTINOUS_SECURITY VARCHAR(3));


--DROP TABLE T_SECURITYANALYSIS;

SELECT * FROM T_SECURITYANALYSIS;

INSERT INTO T_SECURITYANALYSIS VALUES('JENKINS','No','Yes','No','Yes','Yes','Yes','Yes','Yes');
INSERT INTO T_SECURITYANALYSIS VALUES('WORDPRESS','No','No','No','Yes','Yes','Yes','Yes','Yes');
INSERT INTO T_SECURITYANALYSIS VALUES('IDLEONCOMPANION','No','No','No','No','No','No','No','No');
INSERT INTO T_SECURITYANALYSIS VALUES('OPENMW','No','Yes','No','Yes','No','No','No','No');

----------------------------------------------------------------------------------------------------------

CREATE TABLE T_QUALITYANALYSIS(NAME VARCHAR(200) REFERENCES T_OPENSOURCEPROJECTS(NAME), QUALITY_ASSURANCE VARCHAR(3), CODE_REVIEWS VARCHAR(3), ENVIRONMENT_TESTING VARCHAR(3), TICKET_RESOLUTION VARCHAR(3), QUALITY_TRAINING VARCHAR(3), QUALITY_STANDARDS VARCHAR(3), CONTINOUS_QUALITY VARCHAR(3));


--DROP TABLE T_QUALITYANALYSIS;

SELECT * FROM T_QUALITYANALYSIS;

INSERT INTO T_QUALITYANALYSIS VALUES('JENKINS','Yes','Yes','Yes','Yes','Yes','Yes','Yes');
INSERT INTO T_QUALITYANALYSIS VALUES('WORDPRESS','Yes','Yes','Yes','Yes','Yes','Yes','Yes');
INSERT INTO T_QUALITYANALYSIS VALUES('IDLEONCOMPANION','No','No','No','No','No','No','No');
INSERT INTO T_QUALITYANALYSIS VALUES('OPENMW','Yes','Yes','Yes','Yes','Yes','No','No');

------------------------------------------------------------------------------------------------------------

CREATE TABLE T_RESEARCHGATE(QUESTION VARCHAR(200), NUMBER_OF_VIEWS INT, NUMBER_OF_RESPONDERS INT, LINK VARCHAR(255));


--DROP TABLE T_RESEARCHGATE;

SELECT * FROM T_RESEARCHGATE;

INSERT INTO T_RESEARCHGATE VALUES('Does anyone know about the practices that are often missed in the open source projects?',37,1,'https://www.researchgate.net/post/Does_anyone_know_about_the_practices_that_are_often_missed_in_the_open_source_projects');
INSERT INTO T_RESEARCHGATE VALUES('Does the quality and quantity of tasks getting completed in an open-source development process depend on socio-psychological factors of developers?',26,3,'https://www.researchgate.net/post/Does_the_quality_and_quantity_of_tasks_getting_completed_in_an_open-source_development_process_depend_on_socio-psychological_factors_of_developers');
