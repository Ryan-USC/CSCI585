CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

CREATE TABLE PLACE(
name varchar,
location geometry);

insert into PLACE values('Home','POINT(-118.29581 34.01971)');
insert into PLACE values('Epstein Plaza','POINT(-118.28916 34.02048)');
insert into PLACE values('USC Lovine','POINT(-118.28778 34.01855)');
insert into PLACE values('Patsy','POINT(-118.28519 34.02039)');
insert into PLACE values('Prentiss','POINT(-118.28463 34.02051)');
insert into PLACE values('Reflecting','POINT(-118.28287 34.02139)');
insert into PLACE values('Generations','POINT(-118.28322 34.02222)');
insert into PLACE values('Viterbi Lib','POINT(-118.28905 34.01953)');
insert into PLACE values('Hoose Lib','POINT(-118.28677 34.01892)');
insert into PLACE values('Doheny Lib','POINT(-118.28410 34.02032)');
insert into PLACE values('International','POINT(-118.28251 34.02071)');
insert into PLACE values('Leavy Lib','POINT(-118.28299 34.02166)');
insert into PLACE values('Marshall Lib','POINT(-118.28567 34.01946)');

SELECT name, ST_AsText(location) FROM PLACE;

SELECT ST_AsText(ST_ConvexHull(ST_Collect(location))) FROM PLACE;

SELECT name, ST_Astext(location) as loc, ST_Distance(location,'POINT(-118.29581 34.01971)') as distance
FROM PLACE
WHERE name<>'Home'
ORDER BY ST_Distance(location,'POINT(-118.29581 34.01971)');