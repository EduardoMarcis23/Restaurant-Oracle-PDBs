#!/bin/bash
# Fecha creación: 18/05/2023
# Descripción: Creacion de directorios a usar

echo "Creando directorios para redo logs multiplexados"
mkdir -p /unam-diplomado-bd/disk-01/app/oracle/oradata/JGMDIP01/
mkdir -p /unam-diplomado-bd/disk-02/app/oracle/oradata/JGMDIP01/
mkdir -p /unam-diplomado-bd/disk-03/app/oracle/oradata/JGMDIP01/

echo "Modificando permidos"
chown -R oracle:oinstall /unam-diplomado-bd/disk-01/app
chown -R oracle:oinstall /unam-diplomado-bd/disk-02/app
chown -R oracle:oinstall /unam-diplomado-bd/disk-03/app
chmod -R 755 /unam-diplomado-bd/disk-01/app
chmod -R 755 /unam-diplomado-bd/disk-02/app
chmod -R 755 /unam-diplomado-bd/disk-03/app

echo "Creando directorios para el modo archived"
mkdir -p /unam-diplomado-bd/disk-04/JGMDIP01/arclogs
mkdir -p /unam-diplomado-bd/disk-05/JGMDIP01/arclogs

echo "Modificando permidos"
chown -R oracle:oinstall /unam-diplomado-bd/disk-04/JGMDIP01/arclogs
chown -R oracle:oinstall /unam-diplomado-bd/disk-05/JGMDIP01/arclogs
chmod -R 755 /unam-diplomado-bd/disk-04/JGMDIP01/
chmod -R 755 /unam-diplomado-bd/disk-05/JGMDIP01/


echo "Creando directorio para FRA"
mkdir -p /unam-diplomado-bd/fast-recovery-area/JGMDIP01/arclogs

echo "Creando directorio para arc y redo logs en FRA"
mkdir -p /unam-diplomado-bd/fast-recovery-area/JGMDIP01/redologs

echo "Modificando permidos"
#En caso de no tener previamente la de fast_recovery_area ejecutar la otra:
#chown -R oracle:oinstall /unam-diplomado-bd/fast-recovery-area
chown -R oracle:oinstall /unam-diplomado-bd/fast-recovery-area/JGMDIP01
#chmod -R 770 /unam-diplomado-bd/fast-recovery-area
chmod -R 770 /unam-diplomado-bd/fast-recovery-area/JGMDIP01