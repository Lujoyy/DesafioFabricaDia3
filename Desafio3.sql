create database spotify;
use spotify;

/*Questão 1*/

create table cantores(
nome varchar(30) primary key,
idade int,
genero char
);

create table musicas(
estilo_musical varchar(15),
duracao varchar(8),
nome_musica varchar(20) primary key
);

create table publico(
faixa_etaria int,
publico_alvo varchar(40) primary key,
avaliacao varchar(15)
);

/*Questão 2*/

alter table cantores add column pais varchar(10);

alter table musicas add column quant_premios int;

alter table publico add column quant_faclube int;

/*Questão 3*/

insert into cantores(nome, idade, genero, pais)
values
('Ariana Grande', 29, 'F', 'USA'),
('Justin Bieber', 29, 'M', 'USA'),
('Anitta', 30, 'F', 'Brasil'),
('The Weeknd', 33, 'M', 'Canadá');

insert into musicas(estilo_musical, duracao, nome_musica, quant_premios)
values
('Pop', '4:20min', 'Touch It', 2),
('Dance', '3:15min', '2U', 1),
('Funk', '2:24min', 'Ai papai', 0),
('R&B', '4:02min', 'I was never there', 3);

insert into publico(faixa_etaria, publico_alvo, avaliacao, quant_faclube)
value
(20, 'Adolescentes e Jovens', '9.8', 456000),
(16, 'Adolescentes', '8.6', 217000),
(23, 'Jovens e adultos', '8.2', 9000),
(25, 'Adultos', '9.2', 300000);


/*Questão 4*/

SET SQL_SAFE_UPDATES=0;

delete from cantores where idade = 30;

delete from musicas where duracao = '4:20min';

delete from publico where avaliacao = '9.2';

/*Questão 5*/

select * from cantores;

select * from musicas;

select * from publico;

/*Questão 6*/

select * from cantores where nome = 'The Weeknd';

select * from musicas where nome_musica = 'Touch It';

select * from publico where faixa_etaria = 16 and quant_faclube = 300000;

/*Questão 7*/

select * from features;

select * from streams;
