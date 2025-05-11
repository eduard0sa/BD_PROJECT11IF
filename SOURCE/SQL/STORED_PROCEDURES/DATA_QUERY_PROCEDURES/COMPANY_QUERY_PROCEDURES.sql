--=============================================================================================================================================================================================
--============= DATA_QUERY_PROCEDURES.sql =====================================================================================================================================================
--============= Cont�m SP's utilizadas na insers�o de dados em diversas tabelas (insers�es que envolvam mais que uma tabela em simult�neo), por parte do utilizador. =======================
--=============================================================================================================================================================================================

USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

CREATE PROCEDURE SP_FILTER_COMPANY_BY_TYPE
@COMPANY_TYPE_NAME VARCHAR(20)
AS
BEGIN
    SELECT *
    FROM VW_COMPANY_DATA (NOLOCK)
    WHERE COMPANY_TYPE_NAME = @COMPANY_TYPE_NAME
END

GO