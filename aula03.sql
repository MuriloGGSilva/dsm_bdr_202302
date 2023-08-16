create table tbl_cliente (codigo_cliente PRIMARY KEY integer, 
nome varchar (100) not null, cidade varchar (100), endereco varchar (100));

create table tbl_emprestimo ( numero_emprestimo PRIMARY KEY integer, 
codigo_cliente varchar (100), codigo_livro varchar (100));
					
					
create table tbm_titulo ( codigo_titulo PRIMARY KEY integer, titulo not null varchar (100),)
