--==================================================================================================================
--============= USER_QUERIES.sql ===================================================================================
--============= Contem queries para listagem e analise estatistica de dados inerentes ás empresas ==================
--==================================================================================================================

USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

--QUERY PARA LISTAR A INFORMAÇÃO BASICA DAS 5 EMPRESAS MAIS VALIOSAS REGISTADAS
SELECT TOP(5) * FROM VW_COMPANY_DATA (NOLOCK) ORDER BY COMPANY_CAPITAL DESC;

--QUERY PARA LISTAR A INFORMAÇÃO BASICA DAS EMPRESAS CLASSIFICADAS COMO UNICORNIOS (VALORIZADAS EM MASI DE 1 MILHAR DE MILHÃO DE DOLARES)
SELECT * FROM VW_COMPANY_DATA (NOLOCK) WHERE COMPANY_CAPITAL > 1*1000000000;

EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Energy';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Tech';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Construction';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Finance';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Healthcare';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Logistics';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Manufacturing';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Consulting';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Retail';
EXEC SP_FILTER_COMPANY_BY_TYPE @COMPANY_TYPE_NAME = 'Services';