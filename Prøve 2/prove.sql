

CREATE TABLE passasjer
(
    passasjerid serial primary key,
    navn text not null,
    adresse text
);


CREATE TABLE taxi
(
    taxiid serial primary key,
    sjaafor text not null
);


CREATE TABLE tur
(
    turid serial primary key,
    pris int not null,
    varighet text not null,
    passasjerid int references passasjer (passasjerid),
    taxiid int references taxi (taxiid)
);


SELECT p.*, t.sjofor  
FROM passasjer p
    LEFT JOIN taxi t ON p.* = t.sjaafor
WHERE t.sjofor IS NULL


SELECT p.*, t.sjaafor 
FROM passasjer p
LEFT JOIN taxi t
ON p.* = t.sjaafor;

select p.*, t.sjaafor, tur.turid 
  from forfatter f inner join bok b inner join tur
  on (p.turid = t.turid);

  SELECT pasasjer.*, tur.turid FROM table1 join table2 ON table1.primarykey = table2.foreignkey
  join table3 ON table2.primarykey = table3.foreignkey