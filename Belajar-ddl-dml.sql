create database sekolah;

show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sekolah            |
| sys                |
| test               |
+--------------------+

use sekolah;

create table siswa(
    -> nis char(10),
    -> nama varchar(100),
    -> jk char(1),
    -> tempat_lahir varchar(50),
    -> tanggal_lahir DATE,
    -> alamat TEXT,
    -> kelas varchar(10),
    -> nilai float,
    -> jomblo boolean,
    -> primary key(nis)
    -> );

show tables;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+

desc siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(10)     | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jk            | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
| jomblo        | tinyint(1)   | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+

insert into siswa values(
    -> '10100018',
    -> 'ADNAN MAULANA',
    -> 'L',
    -> 'SUBANG',
    -> '2007-02-01',
    -> 'CIGADUNG',
    -> '11-RPL-2',
    -> '81.32',
    -> '1');
  
insert into siswa values(
    -> '12100193',
    -> 'DIAN WINATA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-03-19',
    -> 'BBKN BANDUNG',
    -> '11-RPL-2',
    -> '89.99',
    -> '1');
    
insert into siswa values(
    -> '12100327',
    -> 'INDRA LESMAMA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-03-04',
    -> 'CIGADUNG',
    -> '11-RPL-2',
    -> '35.47',
    -> '1');
    
insert into siswa values(
    -> '12100492',
    -> 'MUHAMMAD TEGEP RAHMANDA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-02-23',
    -> 'BALE NYENGKED',
    -> '11-RPL-2',
    -> '10.21',
    -> '1');
    
insert into siswa values(
    -> '12100363',
    -> 'KASIH SUSILAWATI',
    -> 'P',
    -> 'SUBANG',
    -> '2005-12-02',
    -> 'CIPAKU',
    -> '11-RPL-2',
    -> '90.99',
    -> '2');
    
insert into siswa values(
    -> '12100686',
    -> 'SALSA AMELIA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-03-01',
    -> 'BBKN CURUG',
    -> '11-RPL-2',
    -> '20.24',
    -> '2')
    
insert into siswa values(
    -> '12100318',
    -> 'IBNU NASRULLOH',
    -> 'L',
    -> 'SUBANG',
    -> '2006-08-05',
    -> 'PASIRKAREUMBI',
    -> '11-RPL-2',
    -> '99.99',
    -> '1');

    
update siswa set tempat_lahir = "BANDUNG" where nis= 10100018;

update siswa set tanggal_lahir = '2005-05-05' where nis=10100018;

delete from siswa
    -> where nis='10100018';
    
select * from siswa;
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| nis      | nama                    | jk   | tempat_lahir | tanggal_lahir | alamat        | kelas    | nilai | jomblo |
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| 12100193 | DIAN WINATA             | L    | SUBANG       | 2006-03-19    | BBKN BANDUNG  | 11-RPL-2 | 89.99 |      1 |
| 12100318 | IBNU NASRULLOH          | L    | SUBANG       | 2006-08-05    | PASIRKAREUMBI | 11-RPL-2 | 99.99 |      1 |
| 12100327 | INDRA LESMAMA           | L    | SUBANG       | 2006-03-04    | CIGADUNG      | 11-RPL-2 | 35.47 |      1 |
| 12100363 | KASIH SUSILAWATI        | P    | SUBANG       | 2005-12-02    | CIPAKU        | 11-RPL-2 | 90.99 |      2 |
| 12100492 | MUHAMMAD TEGEP RAHMANDA | L    | SUBANG       | 2006-02-23    | BALE NYENGKED | 11-RPL-2 | 10.21 |      1 |
| 12100686 | SALSA AMELIA            | P    | SUBANG       | 2006-03-01    | BBKN CURUG    | 11-RPL-2 | 20.24 |      2 |
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+