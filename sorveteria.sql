create database sorveteria; #criar a base
use sorveteria; # selecionar a base 

create table sorveteriaDoRichard(
id int auto_increment not null,
nomeLocal varchar(20) null,
CNPJ varchar(20) not null,
primary key (id)
);

create table atendente(
idAtendente int auto_increment not null,
nomeAtendente varchar(20) not null,
datahora date,
primary key(idAtendente)
);

create table pagamento(
idPag int auto_increment not null,
tipoPag varchar(20) null,
dataPag date,
qtdVezes int,
primary key(idPag)
);

create table comanda(
idCom int auto_increment not null,
produto varchar(30) null,
valor double null,
total double,
primary key (idCom)
);

create table caixa(
idCaixa int auto_increment not null,
dataDia date null,
nomeAtendente int null,
pagamento int null,
comanda int null,
cnpj int null,
primary key (idCaixa),
foreign key (nomeAtendente) references atendente(idAtendente),
foreign key (pagamento) references pagamento(idPag),
foreign key (comanda) references comanda(idCom),
foreign key (cnpj) references sorveteriaDoRichard(id)
);
