
# Adicionar coluna na tabela atendente 
alter table atendente 
add column salario double;

alter table atendente
add column cpf varchar(20) after datahora;

#Apagar coluna
alter table atendente
drop column cpf;

select * from atendente
#Variações do select

select * from atendente;
select idAtendente, email from atendente;

#Inservir vários registros
insert into atendente values
#(1,'André', '2024-07-14', 25.000, 'andre@gmail.com'),
(2,'Rony', '2025-07-14', 35.000, 'rony@gmail.com'),
(3,'Renato', '2021-07-14', 15.000, 'renato@gmail.com'),
(4,'Felipe', '2028-07-14', 45.000, 'felipe@gmail.com');

