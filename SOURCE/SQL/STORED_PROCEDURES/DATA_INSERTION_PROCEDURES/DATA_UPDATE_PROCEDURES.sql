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
            UPDATE USERS SET USER_PASSWORD_HASH = dbo.FN_ENCRYPT_PASSWORD(@NEW_PASSWORD, 'SHA2_512') WHERE USER_ID = @USER_ID
            PRINT 'A password foi alterada com sucesso.'
        END
        ELSE IF dbo.FN_VERIFY_PASSWORD(@NEW_PASSWORD) != 1
        BEGIN
            PRINT 'A nova password não é válida. A password deve ter entre 8 e 100 caracteres, conter pelo menos 2 letras maiúsculas, 2 letras minúsculas, 2 números e 2 caracteres especiais.'
        END
        ELSE IF @NEW_PASSWORD != @NEW_PASSWORD_CONFIRM
        BEGIN
            PRINT 'A nova password não coincide com a confirmação da nova password.'
        END
    END
    ELSE
    BEGIN
        PRINT 'O utilizador não existe.'
    END
END

GO

CREATE PROCEDURE SP_UPDATE_USER_PROFILE_PICTURE
@USER_ID INT, @PROFILE_PICTURE VARCHAR(1000)
AS
BEGIN
    IF(SELECT COUNT(USER_ID) FROM USERS WHERE USER_ID = @USER_ID) > 0
    BEGIN
        UPDATE USERS SET USER_PROFILE_PICTURE_PATH = @PROFILE_PICTURE WHERE USER_ID = @USER_ID
        PRINT 'A imagem de perfil foi alterada com sucesso.'
    END
    ELSE
    BEGIN
        PRINT 'O utilizador não existe.'
    END
END

GO

CREATE PROCEDURE SP_UPDATE_CITIZEN_CARD_NUMBER
@USER_ID INT, @CITIZEN_CARD_NUMBER VARCHAR(20)
AS
BEGIN
    IF((SELECT COUNT(*) FROM USERS WHERE @USER_ID = USER_ID) > 0)
    BEGIN
        UPDATE USERS SET USER_CITIZEN_CARD_NUMBER = @CITIZEN_CARD_NUMBER WHERE USER_ID = @USER_ID
        PRINT 'O número do cartão de cidadão foi alterado com sucesso.'
    END
    ELSE
    BEGIN
        PRINT 'O utilizador não existe.'
    END
END

EXEC SP_UPDATE_CITIZEN_CARD_NUMBER 1, '123456789'
SELECT * FROM USERS