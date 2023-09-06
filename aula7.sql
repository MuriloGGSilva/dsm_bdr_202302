SELECT
    UPPER(f.nome) AS NomeFornecedor,
    LOWER(p.nome) AS NomePeça,
    f.cidade AS Cidade
FROM
    tbl_fornecedor f
JOIN
    tbl_peca p ON f.cidade = p.cidade
ORDER BY
    NomeFornecedor, NomePeça;


SELECT DISTINCT cidade, cod_fornecedor
FROM tbl_fornecedor where cod_fornecedor is not null;


SELECT p.nome, p.cor 
FROM tbl_peca p
INNER JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE e.cod_fornecedor = 3
ORDER BY p.nome;


SELECT  f.nome , f.cidade 
FROM  tbl_fornecedor f
JOIN  tbl_estoque e ON f.cod_fornecedor = e.cod_fornecedor
JOIN  tbl_peca p ON e.cod_peca = p.cod_peca
WHERE p.cod_peca = 1
GROUP BY f.nome, f.cidade
HAVING  SUM(e.quantidade) > 10;


SELECT SUM(e.quantidade) AS quantidade_total
FROM tbl_estoque e
JOIN tbl_peca p ON e.cod_peca = p.cod_peca
WHERE  p.cod_peca = 1;


SELECT  AVG(p.preco) AS media_precos
FROM  tbl_peca p
JOIN  tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE  e.cod_fornecedor = 3;


SELECT MAX(p.preco) AS peca_mais_cara,
MIN(p.preco) AS peca_mais_barata
FROM  tbl_peca p
JOIN  tbl_estoque e ON p.cod_peca = e.cod_peca;


SELECT COUNT(*) AS quantidade_de_pecas
FROM tbl_peca;


SELECT COUNT(DISTINCT cidade) AS quantidade_de_cidades
FROM tbl_peca;

SELECT ROUND(AVG(preco), 1) AS media_precos
FROM tbl_peca;




