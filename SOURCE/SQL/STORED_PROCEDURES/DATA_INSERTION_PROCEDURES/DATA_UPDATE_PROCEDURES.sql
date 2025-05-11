--=============================================================================================================================================================================================
--============= DATA_INSERTION_PROCEDURES.sql =================================================================================================================================================
--============= Cont�m SP's utilizadas na insers�o de dados em diversas tabelas (insers�es que envolvam mais que uma tabela em simult�neo), por parte do utilizador. ==========================
--=============================================================================================================================================================================================

USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

CREATE PROCEDURE SP_UPDATE_USER_PASSWORD
@USER_ID INT, @NEW_PASSWORD VARCHAR(100), @NEW_PASSWORD_CONFIRM VARCHAR(100)
AS
BEGIN
    IF(SELECT COUNT(USER_ID) FROM USERS WHERE USER_ID = @USER_ID) > 0
    BEGIN
        IF @NEW_PASSWORD = @NEW_PASSWORD_CONFIRM AND dbo.FN_VERIFY_PASSWORD(@NEW_PASSWORD) = 1
        BEGIN
            UPDATE USERS SET USER_PASSWORD = dbo.FN_ENCRYPT_PASSWORD(@NEW_PASSWORD, 'MD5') WHERE USER_ID = @USER_ID
        END
        ELSE
        BEGIN
            PRINT 'A nova password não coincide com a confirmação da nova password.'
        END
    END
    ELSE
    BEGIN
        PRINT 'O utilizador não existe.'
    END
END