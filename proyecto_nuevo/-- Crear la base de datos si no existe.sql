-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS registro_estudiantes;

-- Seleccionar la base de datos para su uso
USE registro_estudiantes;

-- Crear la tabla para almacenar la información de los estudiantes si no existe
CREATE TABLE IF NOT EXISTS estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rude VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(255) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear la tabla para almacenar las notas de los estudiantes
CREATE TABLE IF NOT EXISTS notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT NOT NULL,
    trimestre INT NOT NULL,
    materia VARCHAR(255) NOT NULL,
    nota DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id)
);

-- Insertar datos de ejemplo en la tabla de estudiantes
INSERT INTO estudiantes (rude, nombre) VALUES ('819601120142086', 'AGUILAR SURUBI DAYANE PRISCILA');
INSERT INTO estudiantes (rude, nombre) VALUES ('819600962015326', 'ALGARAÑAZ LEIGUEZ CATALINA');
INSERT INTO estudiantes (rude, nombre) VALUES ('5195000120142734', 'BARRERO ROJAS LUIS DEIVY');
INSERT INTO estudiantes (rude, nombre) VALUES ('5195000120142772', 'CHAILE ABRIGO ESTHER');
INSERT INTO estudiantes (rude, nombre) VALUES ('519500012015217', 'CONDORI TICONA NELSON');
INSERT INTO estudiantes (rude, nombre) VALUES ('71950020201216', 'LLANO ABREGO LUIS GABRIEL');
INSERT INTO estudiantes (rude, nombre) VALUES ('5195000120142677', 'MEJIA SALAZAR MICHELLE ESTEFANY');
INSERT INTO estudiantes (rude, nombre) VALUES ('519500012013740', 'MENDOZA CRUZ INGRID');
INSERT INTO estudiantes (rude, nombre) VALUES ('8196003420144408', 'MUQUEMA LINO FABIANA CAROLA');
INSERT INTO estudiantes (rude, nombre) VALUES ('519500012013756', 'NUÑEZ YOPIE JOEL');
INSERT INTO estudiantes (rude, nombre) VALUES ('519500012013777', 'POSIABLO YOPIE JADIRH');
INSERT INTO estudiantes (rude, nombre) VALUES ('5195000120142768', 'SACU PEREIRA MARIA DE LOS ANGELES');
INSERT INTO estudiantes (rude, nombre) VALUES ('51950001201372', 'TITO RTEAGA RUTH MARY');  -- Corregido el RUDE (eliminada la 'a')
INSERT INTO estudiantes (rude, nombre) VALUES ('719500632013673', 'YOPIE RIOS CONSUELO');

-- Insertar datos de ejemplo en la tabla de notas
INSERT INTO notas (estudiante_id, trimestre, materia, nota) VALUES
    (1, 1, 'Matemáticas', 90.00),
    (1, 1, 'Lenguaje', 85.00),
    (1, 1, 'Ciencias', 88.00),
    (1, 2, 'Matemáticas', 92.00),
    (1, 2, 'Lenguaje', 88.00),
    (1, 2, 'Ciencias', 90.00),
    (1, 3, 'Matemáticas', 94.00),
    (1, 3, 'Lenguaje', 91.00),
    (1, 3, 'Ciencias', 93.00);

-- Crear la tabla para almacenar las fichas de observación si no existe
CREATE TABLE IF NOT EXISTS fichas_observacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ci VARCHAR(20) NOT NULL,
    nombre_estudiante VARCHAR(255) NOT NULL,
    fecha DATE NOT NULL,
    area VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    nombre_profesor VARCHAR(255) NOT NULL
);

-- Insertar datos en la tabla fichas_observacion
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('15934604', 'AGUILAR SURUBI DAYANE PRISCILA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('16092003', 'ALGARAÑAZ LEIGUEZ CATALINA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('13915624', 'BARRERO ROJAS LUIS DEIVY', '30/04/2025', 'COSMOVICION', 'NO PRESENTO SU JUEGO DIDACTICO (CARTEL) Y CARPETA', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('15934604', 'AGUILAR SURUBI DAYANE PRISCILA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('15934604', 'AGUILAR SURUBI DAYANE PRISCILA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('15934604', 'AGUILAR SURUBI DAYANE PRISCILA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('15934604', 'AGUILAR SURUBI DAYANE PRISCILA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
INSERT INTO fichas_observacion (ci, nombre_estudiante, fecha, area, descripcion, nombre_profesor)
VALUES ('15934604', 'AGUILAR SURUBI DAYANE PRISCILA', '2025-04-16', 'COSMOVICION', 'NO PRESENTO SU ACTIVIDAD DE PRODUCCION (CRUCIGRAMA)', 'Profesora silvia');
