--Script para verificar o caminho dos arquivos de dados e logs dos databases
select a.name, b.name as 'arquivos l�gicos', b.filename 
from sys.sysdatabases a 
	inner join sys.sysaltfiles b on a.dbid = b.dbid 
order by A.name