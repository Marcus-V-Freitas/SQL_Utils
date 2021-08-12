SELECT A.NAME, A.XTYPE, B.TEXT
FROM SYSOBJECTS A (nolock)
JOIN SYSCOMMENTS B (nolock)
ON A.ID = B.ID
WHERE B.TEXT LIKE '%INSERT INTO MvNotaFiscalParcelas%' --Palavra a ser buscada
AND A.XTYPE = 'P' -- Tipo onde quer ser pesquisado
ORDER BY A.NAME

--Tipos mais comuns a serem pesquisados
--P - Procedures
--TR - Triggers
--U - Tabelas
--V - Views
--PK - Chave Primária
--F  - Chave Estrangeira
--FN - Função

