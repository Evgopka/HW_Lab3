CREATE TABLE departament 
(
	id SERIAL,
	departament_name varchar UNIQUE NOT NULL,
	deanery varchar NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO departament (departament_name, deanery)
VALUES ('09.03.01', 'Gorodnichev M.G.');
INSERT INTO departament (departament_name, deanery)
VALUES ('27.03.04', 'Nikolayevich S.B.');

SELECT * FROM departament;

CREATE TABLE student_group 
(
	id SERIAL,
	group_name varchar UNIQUE NOT NULL,
	departament_name varchar NOT NULL REFERENCES departament(departament_name),
	PRIMARY KEY (id)
);

INSERT INTO student_group (group_name, departament_name)
VALUES ('BVT2208', '09.03.01');
INSERT INTO student_group (group_name, departament_name)
VALUES ('BVT2207', '09.03.01');
INSERT INTO student_group (group_name, departament_name)
VALUES ('IVT2201', '27.03.04');
INSERT INTO student_group (group_name, departament_name)
VALUES ('IVT2202', '27.03.04');


SELECT * FROM student_group;

CREATE TABLE student 
(
	id SERIAL PRIMARY KEY, 
	full_name varchar NOT NULL,
	passport varchar(10) NOT NULL,
	group_name varchar REFERENCES student_group(group_name)
);

INSERT INTO student (full_name, passport, group_name)
VALUES ('', '', '')
