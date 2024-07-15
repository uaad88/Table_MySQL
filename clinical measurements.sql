#-----(1 create database)---------------------------
create database `supervise_physical`;
use `supervise_physical`;

#-----(2. create tables)--------------------------
create table`supervise_physical`.`data`(
            `date` datetime,
            `sbp_1` int(50),
            `dbp_1` int(50),
            `heart_rate` int(50),
            primary key(`date`));

#-----(3. insert the data)------------------------
insert into`supervise_physical`.`data`
values ('2023-10-20 21:20:00',115,73,73),
       ('2023-10-21 08:05:00',119,75,60),
       ('2023-10-21 09:45:00',114,69,77),
       ('2023-10-21 21:40:00',115,66,75),
       ('2023-10-22 10:15:00',122,74,58),
       ('2023-10-22 11:05:00',117,72,79),
       ('2023-10-22 11:20:00',122,72,74),
       ('2023-10-23 07:45:00',127,80,67),
       ('2023-10-23 10:15:00',121,69,85),
       ('2023-10-23 21:10:00',124,78,85),
       ('2023-10-24 09:50:00',128,79,77),
       ('2023-10-24 11:30:00',130,76,91),
       ('2023-10-24 21:50:00',117,79,77),
       ('2023-10-25 09:20:00',129,80,74),
       ('2023-10-25 10:45:00',113,70,85),
       ('2023-10-25 21:25:00',127,80,82),
       ('2023-10-26 08:30:00',130,80,74),
       ('2023-10-26 12:10:00',118,72,88),
       ('2023-10-26 21:00:00',131,76,82)
           
#-----(4. show tables)------------------------     
select *from `supervise_physical`.`data`;

#-----(5. output data)------------------------
SELECT 'date', 'sbp_1', 'dbp_1','heart_rate'
UNION ALL
SELECT  date, sbp_1, dbp_1,heart_rate FROM `supervise_physical`.`data`
INTO OUTFILE 'your storage space/.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';











