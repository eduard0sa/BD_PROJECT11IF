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