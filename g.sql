create database empresa_join;
use empresa_join;

create table departament(
   id_dep bigint auto_increment primary key,
   nome varchar(255)
);


create table funcionario(
id_func int,
nome varchar(100),
salario decimal(10,2),
id_dep int,
foreign key  (id_dep) references departament(id_dep)
);

create table dependente(
nome varchar (100),
id_func int,
id_depen int,
foreign key (id_func) references funcionario (id_func)
);



insert into departament(nome)
values ("rh"), ("adm"), ("gestão"), ("ti"), ("marketing");

insert into funcionario(nome, salario, id_dep)
values ("Gabys",3000, 1), 
("Nhan", 8708.00, 2), 
("Laura", 4678.00, 3),
 ("julia", 2090.00, 4),
 ("pedro", 6009.00, 5);
 


 select * from departament;
 
 SELECT departament.nome DEPARTAMENTO, funcionario.nome FUNCIONARIO
 FROM departament
 LEFT JOIN funcionario
 ON departament.id_dep = funcionario.id_dep
 ORDER BY funcionario.nome;

