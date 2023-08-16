create table cafe (comida text, bebida text, preco decimal);
 create table almoco (comida text, bebida text, preco decimal);
 create table lanche (comida text, bebida text, preco decimal);
 create table cafe_tarde (comida text, bebida text, preco decimal);
 create table janta (comida text, bebida text, preco decimal, sobremesa text);

drop table cafe;
 drop table almoco;
 drop table lanche;
 drop table cafe_tarde;
 drop table janta;

create table alto (altura decimal);
alter table alto rename to baixo;

create schema tabelas

SHOW SEARCH_PATH; /*Usado para dizer em qual schema você está*/
SET SEARCH_PATH=murilo; /*Usado para mudar o schema que você vai trabalhar0*/
