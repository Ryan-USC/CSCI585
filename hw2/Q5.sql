-- livesql

create table Candidates(
Instructor    char(12) not null,
Subject      char(12) not null,
primary key(Instructor,Subject));

create table Subjects(
Subject char(12) not null,
primary key(Subject));

insert into Candidates (Instructor, Subject) values ('Aleph','Scratch');
insert into Candidates (Instructor, Subject) values ('Aleph','Java');
insert into Candidates (Instructor, Subject) values ('Aleph','Processing');
insert into Candidates (Instructor, Subject) values ('Bit','Python');
insert into Candidates (Instructor, Subject) values ('Bit','JavaScript');
insert into Candidates (Instructor, Subject) values ('Bit','Java');
insert into Candidates (Instructor, Subject) values ('CRC','Python');
insert into Candidates (Instructor, Subject) values ('CRC','JavaScript');
insert into Candidates (Instructor, Subject) values ('Dat','Scratch');
insert into Candidates (Instructor, Subject) values ('Dat','Python');
insert into Candidates (Instructor, Subject) values ('Dat','JavaScript');
insert into Candidates (Instructor, Subject) values ('Emscr','Scratch');
insert into Candidates (Instructor, Subject) values ('Emscr','Processing');
insert into Candidates (Instructor, Subject) values ('Emscr','JavaScript');
insert into Candidates (Instructor, Subject) values ('Emscr','Python');

insert into Subjects (Subject) values ('JavaScript');
insert into Subjects (Subject) values ('Scratch');
insert into Subjects (Subject) values ('Python');

SELECT c.Instructor
FROM Candidates c INNER JOIN Subjects s ON c.Subject = s.Subject
group by c.Instructor
HAVING COUNT(*) = (SELECT COUNT(DISTINCT(Subject)) FROM Subjects);

-- 1.join Candidates table and Subjects table on subject
-- this query above can select instructor who teach what we need
-- 2.we have a HAVING meaning that we only select the instructor whose number of teaching subject equals to our need
-- since we already remove the subjects that we don't need
-- the subquery in HAVING return the number of subject of what of need