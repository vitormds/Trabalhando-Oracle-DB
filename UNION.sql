-- EXEMPLOS DE UNION ALL
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY FROM HR.EMPLOYEES
UNION ALL 
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY FROM HR.EMPLOYEES ORDER BY 1;

-- EXEMPLOS DE UNION
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY FROM HR.EMPLOYEES 
UNION 
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY FROM HR.EMPLOYEES ORDER BY 1;

-- SIMULANDO ERRO 1
SELECT EMPLOYEER_ID, FIRST_NAME, SALARY FROM HR.EMPLIYEES
UNION 
SELECT EMPLOYEER_ID, FIRST_NAME FROM HR.EMPLEYEES ORDER BY 1;

--SIMULANDO ERRO 2
SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES 
UNION
SELECT EMPLOYEE_ID,SALARY,FIRST_NAME FROM HR.EMPLOYEES 
ORDER BY 1;

--CAMPOS DIFERENTES MAS MESMOS TIPO

SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES 
UNION
SELECT EMPLOYEE_ID,LAST_NAME,SALARY FROM HR.EMPLOYEES 
ORDER BY 1;


	-- SIMULANDO ERRO UNION
	SELECT '1','1','ABC' FROM DUAL
		UNION
	SELECT 'A',2 FROM DUAL;
    
    	-- exemplo union all
	select 'A' as campo1,'B'as campo2 FROM DUAL
	union all
	select 'A' as campo3,'B' as campo4 FROM DUAL;
	
	-- exemplo union
	select 'A' as campo1,'B'as campo2 FROM DUAL
	union 
   select 'A' as campo3,'B' as campo4 FROM DUAL;
   
   -- EXEMPLO USANDO UNION 
   SELECT ANO, ESTADO FROM SENSO WHERE ANO ='2014' 
   UNION 
   SELECT ANO, ESTADO FROM SENSO WHERE ANO='2013';
   
      -- EXEMPLO USANDO UNION ALL
   SELECT ANO, ESTADO FROM SENSO WHERE ANO ='2014' 
   UNION ALL 
   SELECT ANO, ESTADO FROM SENSO WHERE ANO='2013'; 
   
   		-- EXEMPLO USANDO UNION ALL

	select estado
	from senso
	where ano='2014'
	union all
	select estado
	from senso
	where ano='2013';
    
    -- EXEMPLO USANDO UNION

	select estado
	from senso
	where ano='2014'
	union 
	select estado
	from senso
	where ano='2013';
    
    -- EXEMPLO COM UNION (Isso � muito utilizado)
    SELECT ANO, ESTADO, NOME_MUN, POPULACAO FROM SENSO WHERE (ANO='2014' or ANO='2013') AND COD_UF='11'
    ORDER BY NOME_MUN, ANO;
    
    
	
   
   
   
   
   
   

