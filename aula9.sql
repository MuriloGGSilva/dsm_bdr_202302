ex 1

SELECT f.nome, f.cidade
FROM tbl_fornecedor f
INNER JOIN tbl_estoque e ON f.cod_fornecedor = e.cod_fornecedor
WHERE e.cod_peca = 1
GROUP BY f.cod_fornecedor, f.nome, f.cidade
HAVING SUM(e.quantidade) > 10;


ex 2 

SELECT p.nome
FROM tbl_peca p
INNER JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE p.preco > 10;

ex 3 

SELECT p.nome
FROM tbl_peca p
LEFT JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE e.cod_compra IS NULL;



ex 4

SELECT p.nome
FROM tbl_peca p
INNER JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE e.quantidade > 20;


ex 5

SELECT p.nome
FROM tbl_peca p
INNER JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE e.quantidade > 20;

  
ex 6

SELECT p.nome, p.cor
FROM tbl_peca p
INNER JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
INNER JOIN tbl_fornecedor f ON e.cod_fornecedor = f.cod_fornecedor
WHERE f.nome = 'C'
ORDER BY p.nome;

ex 7 

SELECT p.nome, p.cor
FROM tbl_peca p
WHERE p.cidade = 'LONDRES';

ex 8 

SELECT p.nome
FROM tbl_peca p
LEFT JOIN tbl_estoque e_londres ON p.cod_peca = e_londres.cod_peca AND e_londres.cod_fornecedor IN (SELECT cod_fornecedor FROM tbl_fornecedor WHERE cidade = 'LONDRES')
LEFT JOIN tbl_estoque e_paris ON p.cod_peca = e_paris.cod_peca AND e_paris.cod_fornecedor IN (SELECT cod_fornecedor FROM tbl_fornecedor WHERE cidade = 'PARIS')
WHERE e_londres.cod_compra IS NOT NULL AND e_paris.cod_compra IS NULL;


ex 9 

SELECT e1.cod_peca
FROM tbl_estoque e1
WHERE e1.quantidade > (SELECT e2.quantidade FROM tbl_estoque e2 WHERE e2.cod_peca = 2);



