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

