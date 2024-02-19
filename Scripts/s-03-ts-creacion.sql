define syslogon='sys/system1 as sysdba'
define t_userlogon='&t_user/&t_user'

set linesize window

Prompt Conectando como sys
conn &syslogon

Prompt TS para PDB 1 
---------------------------------------------------------------------------------
create tablespace sucursal_especialidad_tbs
datafile '/unam-diplomado-bd/disk-01/app/oracle/oradata/JGMDIP01/sucursal_especialidad_tbs01.dbf' size 30M
autoextend on next 5M maxsize 100M
extent management local autoallocate
segment space management auto
online;


create tablespace empleados_tbs
datafile '/unam-diplomado-bd/disk-01/app/oracle/oradata/JGMDIP01/empleados_tbs01.dbf' size 100M
autoextend on next 25M maxsize 1G
extent management local autoallocate
segment space management auto
online;

create tablespace indices_restaurante_interno_tbs
datafile '/unam-diplomado-bd/disk-01/app/oracle/oradata/JGMDIP01/indices_restaurante_interno_tbs01.dbf' size 30M
autoextend on next 5M maxsize 100M
extent management local autoallocate
segment space management auto
online;



Prompt TS para PDB 2
---------------------------------------------------------------------------------
create tablespace platillos_tbs
datafile '/unam-diplomado-bd/disk-02/app/oracle/oradata/JGMDIP01/platillos_tbs01.dbf' size 100M
autoextend on next 25M maxsize 3G
extent management local autoallocate
segment space management auto
online;


create tablespace bebidas_tbs
datafile '/unam-diplomado-bd/disk-02/app/oracle/oradata/JGMDIP01/bebidas_tbs01.dbf' size 100M
autoextend on next 25M maxsize 3G
extent management local autoallocate
segment space management auto
online;


create tablespace recetas_tbs
datafile '/unam-diplomado-bd/disk-02/app/oracle/oradata/JGMDIP01/recetas_tbs01.dbf' size 50M
autoextend on next 10M maxsize 1G
extent management local autoallocate
segment space management auto
online;

create tablespace BLOB_platillo_bebidas_tbs
datafile '/unam-diplomado-bd/disk-02/app/oracle/oradata/JGMDIP01/BLOB_platillo_bebidas_tbs01.dbf' size 300M
autoextend on next 50M maxsize 1G
extent management local autoallocate
segment space management auto
online;

create tablespace indices_consumibles_tbs
datafile '/unam-diplomado-bd/disk-02/app/oracle/oradata/JGMDIP01/indices_consumibles_tbs01.dbf' size 30M
autoextend on next 5M maxsize 100M
extent management local autoallocate
segment space management auto
online;



Prompt TS para PDB 3
---------------------------------------------------------------------------------
create tablespace mesa_cuenta_tbs
datafile '/unam-diplomado-bd/disk-03/app/oracle/oradata/JGMDIP01/mesa_cuenta_tbs01.dbf' size 200M
autoextend on next 25M maxsize 3G
extent management local autoallocate
segment space management auto
online;


create tablespace cliente_tbs
datafile '/unam-diplomado-bd/disk-03/app/oracle/oradata/JGMDIP01/cliente_tbs01.dbf' size 50M
autoextend on next 5M maxsize 500M
extent management local autoallocate
segment space management auto
online;


create tablespace indices_cliente_cuenta_tbs
datafile '/unam-diplomado-bd/disk-03/app/oracle/oradata/JGMDIP01/indices_cliente_cuenta_tbs01.dbf' size 30M
autoextend on next 5M maxsize 100M
extent management local autoallocate
segment space management auto
online;


/*
create tablespace BLOB_civicas_tbs
datafile '/u01/app/oracle/oradata/MAALPROY/disk_1/blob_civicas01.dbf' size 300M
autoextend on next 50M maxsize 1G
extent management local autoallocate
segment space management auto
online; 

create table evidencia(
	evidencia_id 	number(10,0),
	tipo		 	char(1)	  		not null,
	archivo 	 	BLOB		  	not null,
	falta_civica_id number(10,0) 	not null,
	constraint evidencia_pk primary key(evidencia_id)
	using index(
		create unique index evidencia_pk on evidencia(evidencia_id)
		tablespace indices_civicas_tbs
	),
	constraint ev_falta_civica_id_fk foreign key(falta_civica_id)
	references falta_civica(falta_civica_id),
	constraint evidencia_tipo_chk check(
		tipo in('V','F')
	)
) tablespace faltas_civicas_tbs
	lob (archivo) store as securefile seg_archivo (tablespace BLOB_civicas_tbs
		index archivo_blob_ix (tablespace BLOB_civicas_tbs));


	create unique index fc_placas_iuk on falta_civica(placas)
	tablespace indices_civicas_tbs;

	*/