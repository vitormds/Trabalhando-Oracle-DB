-- Parte 1 CONCEDE-GRANT
-- Cria um login "ALUNO' e dar permissões no banco e objetos
SELECT USER FROM DUAL;
-- Concedendo Acesso DE ATUALIZACAO PARA ALUNO.
GRANT UPDATE ON ALUNO.FUNCIONARIOS TO ALUNO;

-- Concedendo Acesso DE ATUALIZACAO PARA ALUNO COM WITH ADMIN OPTION
-- usu�rio ALUNO pode estender seus privil�gios de sistema para outros usu�rios.
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW TO ALUNO WITH ADMIN OPTION;

-- Concedendo Acesso DE UPDATE,SELECT PARA ALUNO NA TABELA SENSO
GRANT SELECT, UPDATE ON ALUNO.SENSO TO ALUNO;

-- Concedendo Acesso DE INSERT,DELETE PARA ALUNO EM TODOS OBJETOS
GRANT INSERT, DELETE ON ALUNO.SENSO TO ALUNO;

-- Concedendo Acesso DE INSERT,DELETE PARA ALUNO EM TODOS OBJETOS
GRANT CREATE PROCEDURE,CREATE VIEW TO ALUNO;

-- DICA PARA GERAR GRANTS PARA MUITOS OBJETOS;
select 'GRANT ALL ON ' || object_name || ' TO ALUNO;' AS RETORNO
   FROM user_objects;
   
select 'GRANT UPDATE ON  ' || object_name || ' TO ALUNO;' AS RETORNO
   FROM user_objects
   WHERE OBJECT_TYPE='TABLE';

SELECT * FROM user_objects;
   
--EXEMPLO
GRANT UPDATE ON HELP TO ALUNO;
   
--SELECT * FROM user_objects

-- Concedendo Acesso DE DELETE PARA ALUNO.
GRANT DELETE  ON ALUNO.FUNCIONARIOS TO ALUNO;


-- Concedendo Acesso DE DELETE PARA ALUNO EM TODOS OBJETOS
GRANT DELETE  ON ALUNO.SENSO TO ALUNO;


-- Concedendo Acesso DE INSERT PARA ALUNO.
GRANT INSERT  ON ALUNO.FUNCIONARIOS TO ALUNO;


-- Concedendo Acesso DE SELECT  PARA ALUNO.
GRANT SELECT  ON ALUNO.FUNCIONARIOS TO ALUNO;


-- Concedendo Acesso DE SELECT e INSERT PARA ALUNO.
GRANT SELECT, INSERT ON ALUNO.FUNCIONARIOS TO ALUNO;


-- Concedendo  com limitação de campos
GRANT INSERT (NOME,SETOR) ON ALUNO.FUNCIONARIOS TO ALUNO;

GRANT UPDATE (NOME,SETOR) ON ALUNO.FUNCIONARIOS TO ALUNO;



-- Concedendo Acesso PARA EXCUTAR PROC proc_quadrado PARA ALUNO.
GRANT EXECUTE ON ALUNO.proc_quadrado TO ALUNO;


-- CONCENDENDO TODOS ACESSOS A TODOS OBJETOS
GRANT ALL ON ALUNO.FUNCIONARIOS TO ALUNO;


--
-- VERIFICANDO PREVILEGIOS
-- VERIFICAR PELO SYSTEM

SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE LIKE 'ALUNO';

SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE LIKE 'ALUNO';
SELECT * FROM USER_TAB_PRIVS;

SELECT * FROM USER_TAB_PRIVS WHERE GRANTEE LIKE 'ALUNO';


-- Parte 2 NEGA-REVOKE
SELECT USER FROM DUAL;
--ANALISANDO
SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE LIKE 'ALUNO';
--REVOGANDO 
REVOKE CREATE VIEW, CREATE PROCEDURE, CREATE SESSION, CREATE TABLE FROM ALUNO;
--CONCEDENDO
GRANT CREATE VIEW,CREATE PROCEDURE,CREATE SESSION, CREATE TABLE TO ALUNO;
--ANALISANDO
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE LIKE 'ALUNO';
--REVOGANDO
REVOKE RESOURCE FROM ALUNO;

--CONCEDENDO
GRANT RESOURCE TO ALUNO;

--ANALISANDO
SELECT * FROM USER_TAB_PRIVS WHERE GRANTEE LIKE 'ALUNO';
--
REVOKE UPDATE ON HELP FROM ALUNO;





