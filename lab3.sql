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
VALUES ('27.03.04', 'Bondarenko S.N.');

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
	passport varchar(12) NOT NULL,
	group_name varchar REFERENCES student_group(group_name)
);

INSERT INTO student (full_name, passport, group_name)
VALUES ('Ivanov Evgeny Mikhailovich', '32 48 098327', 'BVT2208');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Yerkin Artem Alekseevich', '98 83 239187', 'BVT2208');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Popov Nikita Andreyevich', '38 84 982734', 'BVT2208');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Purikov Vladislov Dmitrievich', '23 98 479234', 'BVT2208');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Bech Sofia Vladimirovna', '21 30 847203', 'BVT2208');

INSERT INTO student (full_name, passport, group_name)
VALUES ('Kaichuk Maxim Genadievich', '21 39 812304', 'BVT2207');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Kuzmin Ivan Ilyich', '30 82 308487', 'BVT2207');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Svyatoslav Antonov Ivanovich', '30 94 820934', 'BVT2207');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Potaeva Natalia Evgenievna', '08 17 283120', 'BVT2207');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Mavrina Svetlana Mikhailovna', '12 31 231523', 'BVT2207');

INSERT INTO student (full_name, passport, group_name)
VALUES ('Suslova Yaroslava Romanovna', '23 09 409334', 'IVT2201');
INSERT INTO student (full_name, passport, group_name)
VALUES (' Orlov Pavel Ilyich', '23 42 342536', 'IVT2201');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Orlova Aliya Daniilovna', '10 27 309234', 'IVT2201');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Borisova Nicole Maksimovna', '12 02 398576', 'IVT2201');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Golubev Nikolay Grigorievich', '80 60 872345', 'IVT2201');

INSERT INTO student (full_name, passport, group_name)
VALUES ('Koltsova Kira Mikhailovna', '12 09 837634', 'IVT2202');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Komarov Artyom Nikitich', '10 92 364912', 'IVT2202');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Popova Anna Davidovna', '20 38 743345', 'IVT2202');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Kochetov Vladislav Georgievich', '23 45 678345', 'IVT2202');
INSERT INTO student (full_name, passport, group_name)
VALUES ('Kazakov Roman Egorovich ', '12 39 075823', 'IVT2202');

SELECT * FROM student;