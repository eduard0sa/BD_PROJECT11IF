--==================================================================================================================================
--============= USER_MGMT_FUNCTIONS.sql ============================================================================================
--============= Contém funções largamente utilizadas na obtenção de dados relativos aos utilizadores da plataforma =================
--==================================================================================================================================

USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

-- FUNÇÃO UTILIZADA PARA ENCRIPTAR UMA PASSWORD (STRING), GERANDO UMA HASH, A PARTIR DE QUALQUER ALGORITMO DE ENCRIPTAÇÃO VÁLIDO (EX: MD5, SHA2_512, SHA, SHA1, etc...)
CREATE FUNCTION FN_ENCRYPT_PASSWORD ( @string varchar(100), @encryption_alg varchar(10) )
RETURNS VARBINARY
BEGIN
	RETURN HASHBYTES(@encryption_alg, @string)
END

GO

CREATE FUNCTION FN_VERIFY_PASSWORD ( @string varchar(100) )
RETURNS BIT
BEGIN
	DECLARE @COUNT_UPPER INT = 0;
	DECLARE @COUNT_LOWER INT = 0;
	DECLARE @COUNT_NUMERIC INT = 0;
	DECLARE @COUNT_SPECIAL INT = 0;
	DECLARE @I INT = 0;
	WHILE(@I < LEN(@string))
	BEGIN
		IF(SUBSTRING(@string, @I + 1, 1) LIKE '[A-Z]')
			SET @COUNT_UPPER = @COUNT_UPPER + 1;
		IF(SUBSTRING(@string, @I + 1, 1) LIKE '[a-z]')
			SET @COUNT_LOWER = @COUNT_LOWER + 1;
		IF(SUBSTRING(@string, @I + 1, 1) LIKE '[0-9]')
			SET @COUNT_NUMERIC = @COUNT_NUMERIC + 1;
		IF(SUBSTRING(@string, @I + 1, 1) LIKE '[!@#$%^&*()_+{}|:"<>?`~;\''\[\],./]')
			SET @COUNT_SPECIAL = @COUNT_SPECIAL + 1;
		SET @I = @I + 1;
	END
	IF(LEN(@string) >= 8 AND LEN(@string) <= 100 AND @COUNT_UPPER >= 2 AND @COUNT_LOWER >= 2 AND @COUNT_NUMERIC >= 2 AND @COUNT_SPECIAL >= 2)
		RETURN 1
	RETURN 0
END