select h.titulo, b.status from tbl_titulo h INNER JOIN tbl_livros b ON h.codigo_titulo = b.codigo_titulo;

select a.titulo,a.descricao ,b.status from tbl_titulo a INNER JOIN tbl_livros b ON a.codigo_titulo = b.codigo_titulo WHERE status='ALUGADO';

select a.nome,c.status from tbl_cliente a INNER JOIN tbl_emprestimo b ON a.codigo_cliente = b.codigo_cliente
INNER JOIN tbl_livros c ON c.cod_livro = b.codigo_cliente WHERE status = 'DISPONIVEL';
