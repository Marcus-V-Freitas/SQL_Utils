CREATE ASYMMETRIC KEY KEYCLR FROM ASSEMBLY ORIGIN;

DROP ASSEMBLY ORIGIN;

CREATE LOGIN SQLCLRLOGIN FROM ASYMMETRIC KEY KEYCLR 

GRANT UNSAFE ASSEMBLY TO SQLCLRLOGIN 

DROP ASSEMBLY dapper