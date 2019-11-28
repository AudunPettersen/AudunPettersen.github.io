CREATE TABLE frisor (
  frisorid serial primary key,
  fornavn text not null,
  etternavn text not null,
  mobil text
);

CREATE TABLE kunde (
  kundeid serial primary key,
  fornavn text not null,
  etternavn text not null,
  mobil text,
  kjonn text default 'f'
);

CREATE TABLE klipp (
  klippid serial primary key,
  klipptime date,
  kjonn text default 'f' 
  pris int default = 1200,
  frisorid int references frisor (frisorid),
  kundeid int references kunde (kundeid)
);


Oppgaver

1. delete from kunde where kjonn = 'm';

2. insert into kunde (fornavn,etternavn) values ('ole olsen'), ('ane bruun');

3. select * from fornavn from kunde where fornavn ~ 'kri';

4. update klipp set pris = 200;







