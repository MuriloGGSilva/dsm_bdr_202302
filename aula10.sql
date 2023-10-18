ex 1

CREATE VIEW v_depcidade AS
SELECT d.nome AS nome_departamento, c.nome AS nome_cidade
FROM tbl_departamentos d
INNER JOIN tbl_cidades c ON d.cod_cidade = c.cod_cidade;

ex 2

CREATE VIEW v_depcidadehouston AS
SELECT *
FROM v_depcidade
WHERE nome_cidade = 'Houston';

ex 3

CREATE VIEW v_opsalario AS
SELECT SUM(salario) AS soma_salarios, AVG(salario) AS media_salarios
FROM tbl_empregados;

ex 4

CREATE VIEW vw_empregados_salarial AS
SELECT nome, salario
FROM tbl_empregados
WHERE salario > 5500.00;

ex 5

CREATE VIEW v_departemp AS
SELECT d.nome AS nome_departamento, COUNT(e.cod_empregado) AS quantidade_empregados
FROM tbl_departamentos d
LEFT JOIN tbl_empregados e ON d.cod_departamento = e.cod_departamento
GROUP BY d.cod_departamento, d.nome
ORDER BY quantidade_empregados DESC;

ex 6

CREATE VIEW v_departrouble AS
SELECT d.nome AS nome_departamento
FROM tbl_departamentos d
LEFT JOIN tbl_projetos p ON d.cod_departamento = p.cod_departamento
LEFT JOIN tbl_empregados e ON d.cod_departamento = e.cod_departamento
GROUP BY d.cod_departamento, d.nome
HAVING COUNT(p.cod_projeto) > COUNT(e.cod_empregado);

