create table Prescription (
	presNum int,
	presDuree smallint,
	presDateFin date,
	presModeRenouv varchar(1),
	presType varchar(1),
	patNum integer not null,
	foreign key (patNum) references Patient (patNum),
	primary key(presNum)
);
create table Patient (
	patNum int auto_increment,
	patNom varchar(40),
	patNumSS int,
	patDoc integer not null,
	foreign key (patDoc) references Medecin (docNum),
	primary key (patNum)
);

create table Medecin (
	docNum int,
	docNom varchar(40),
	docNumSS int,
	docAdresse1 varchar(50),
	docAdresse2 varchar(50),
	docCP varchar(5),
	docVille varchar(50),
	docTel varchar(10),
	primary key (docNum)
);

insert into Medecin values 
(1,"Xavier",1574879523154,"32, rue Carnot","","05000","Gap","0625487845"),
(2,"Hangle",1584795632651,"12, boulevard des jardins","2, rue des fleurs","05000","Gap","0658471248"),
(3,"France",0124579563154,"3, place des Cardeurs","","05000","Gap","0657951247");

insert into Patient values 
(1,"Bouffier",1254786236549,1),
(2,"Canto",1254876953265,2),
(3,"Raymond",1547862413257,3),
(4,"Lesieur",1244876231579,1),
(5,"Vieux",1548795615497,1);

insert into Prescription values 
(1,20,'2015-12-09',"p","o",5),
(2,60,'2015-10-21',"p","d",5),
(3,25,'2015-11-01',"i","d",4),
(4,10,'2015-12-23',"p","o",4),
(5,38,'2015-12-30',"i","d",3),
(6,17,'2015-11-10',"i","o",3),
(7,23,'2015-10-35',"p","d",2),
(8,19,'2016-01-09',"p","d",2),
(9,3,'2016-12-04',"i","o",1);
