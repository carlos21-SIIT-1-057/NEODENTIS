create table Citas
(
Id char(6) primary key,
Nombre_cita varchar(200) not null,
Fecha_cita date not null,
hora varchar(4) 
);

create table Consultas
(
Id char(6) primary key,
Paciente varchar(200) not null,
Motivo varchar(max) not null,
Fecha_consulta date,
hora varchar(4) 
);

create table Doctores
(
Id char(6) primary key,
Nombre_Doctor varchar(200) not null,
Apellido varchar(200) not null,
Num_celular varchar(10),
);

create table Especialidades
(
Id char(6) primary key,
Nombre_especialidad varchar(200) not null,
Descripcion varchar(max) not null,
);

create table Paciente
(
Id char(6) primary key,
Nombre_paciente varchar(200) not null,
Apellido varchar(200) not null,
Num_tel_paciente varchar(10) not null
);



INSERT INTO Especialidades(Id, Nombre_especialidad,Descripcion)
VALUES 
('1','Endodoncia','Preservar las piezas dentales'),
('2','Implante de protesis','Reponer los dientes perdidos'),
('3','Protesis','Remplzar una parte faltante'),
('4','Cirujano oral','Cirujia de la boca y la mandibula'),
('5','Cirujano maxilo facial','Reconstruccion de la fractura de la cara'),
('6','Rehabilitacion y estetica','Recuperar la sonrisa en casos de alta complejidad'),
('7','Periodoncia','Estudio, prevencion y tratamiento'),
('8','Armonizacion oro facial','Equilibra la estetica y fusion del rostro'),
('9','Odontologia','Prevenir y diagnosticar'),
('10','Patologia bucal','Anatomia patologica y medicina interna')
			

select * from Doctores


INSERT INTO Citas (Id, Nombre_cita, Fecha_cita, hora)
VALUES ('000000','Ortodoncia','3:30')


INSERT INTO Consultas(Id, Paciente,Motivo,Fecha_consulta,hora)
VALUES 

('2','Elvis','Limpieza','29-4-2023', '12:30 PM'),
('3','Juan','Endodoncia','29-4-2023', '12:30 PM'),
('4','Joel','Patologia','29-4-2023', '12:30 PM'),
('5','Bryant','Patologia','29-4-2023', '12:30 PM'),
('6','Felipa','Limpieza','29-4-2023', '12:30 PM'),
('7','Acevedo','Raparacion','29-4-2023', '12:30 PM'),
('8','Celestina','Reparacion','29-4-2023', '12:30 PM'),
('9','Floureme','Limpieza','29-4-2023', '12:30 PM'),
('10','Pedro','Operacion','29-4-2023', '12:30 PM')

ALTER TABLE Consultas ADD FOREIGN KEY (Id) REFERENCES Paciente(id);

ALTER TABLE Consultas ADD CONSTRAINT Paciente FOREIGN KEY(Id)

select * from Consultas


ALTER TABLE Citas ALTER COLUMN hora varchar(50);  


INSERT INTO Citas(Id, Nombre_cita,Fecha_cita,hora)
VALUES 
('1','Cita Ortodoncia','29-4-2023', '2:30 PM'),
('2','Cita patologia','29-4-2023', '1:30 PM'),
('3','Cita cirujia','29-4-2023', '4:30 PM'),
('4','Cita Patologia','29-4-2023', '6:30 PM'),
('5','Cita lipieza','29-4-2023', '7:30 PM'),
('6','Cita ortodoncia','29-4-2023', '12:30 PM'),
('7','Limpieza','29-4-2023', '6:30 PM'),
('8','Cita Reparacion','29-4-2023', '6:30 PM'),
('9','Cita limpieza','29-4-2023', '8:30 PM'),
('10','Cita patologia','29-4-2023', '2:30 PM')

select * from INFORMATION_SCHEMA.COLUMNS

USE NEODENTISTRY
GO
SELECT Paciente.Nombre_paciente,Paciente.Apellido,Citas.Nombre_cita,Doctores.Nombre_Doctor,Especialidades.Nombre_especialidad,Consultas.Motivo
FROM Paciente INNER JOIN Citas  ON personas.id_pais = pais.id_pais
INNER JOIN roles ON personas.id_rol = roles.id_rolSELECT *
FROM Paciente
INNER JOIN Citas ON Paciente.Apellido = Citas.Id
INNER JOIN Doctores ON Citas.Nombre_cita = Doctores.Nombre_Doctor
INNER JOIN Especialidades ON Doctores.Nombre_Doctor = Especialidades.Nombre_especialidad
INNER JOIN Consultas ON Especialidades.Nombre_especialidad = Consultas.hora


DECLARE @sql NVARCHAR(MAX) = N''
SELECT @sql += N'SELECT * FROM ' + QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME) + ';'
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG = 'NEODENTISTRY'

EXEC sp_executesql @sql;