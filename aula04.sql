update tbl_livros
set status = 'ALUGADO' where status = 'DISPONIVEL';

delete from tbl_cliente2 where codigo > 3;
