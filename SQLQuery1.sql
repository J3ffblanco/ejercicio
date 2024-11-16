
CREATE DATABASE IF NOT EXISTS GestionEquipos;
USE GestionEquipos;

CREATE TABLE IF NOT EXISTS Equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL,
    tipo_equipo VARCHAR(50),
    fecha_ingreso DATE,
    estado VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    telefono VARCHAR(15),
    fecha_registro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS Tecnicos (
    id_tecnico INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tecnico VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    telefono VARCHAR(15),
    disponibilidad BOOLEAN DEFAULT TRUE
);


INSERT INTO Equipos (nombre_equipo, tipo_equipo, fecha_ingreso, estado)
VALUES 
('Laptop HP', 'Port�til', '2024-11-01', 'Activo'),
('Servidor Dell', 'Servidor', '2024-10-30', 'Mantenimiento');


INSERT INTO Usuarios (nombre_usuario, correo, telefono)
VALUES 
('Juan P�rez', 'juan.perez@example.com', '123456789'),
('Ana G�mez', 'ana.gomez@example.com', '987654321');

-- T�cnicos
INSERT INTO Tecnicos (nombre_tecnico, especialidad, telefono)
VALUES 
('Carlos L�pez', 'Reparaci�n Electr�nica', '456789123'),
('Laura Torres', 'Redes Inform�ticas', '789456123');


SELECT * FROM Equipos;


SELECT * FROM Usuarios WHERE fecha_registro >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

SELECT * FROM Tecnicos WHERE disponibilidad = TRUE;


UPDATE Equipos SET estado = 'En reparaci�n' WHERE id_equipo = 1;

-- Actualizar correo de un usuario
UPDATE Usuarios SET correo = 'nuevo.correo@example.com' WHERE id_usuario = 1;


UPDATE Tecnicos SET disponibilidad = FALSE WHERE id_tecnico = 1;


DELETE FROM Equipos WHERE id_equipo = 2;

DELETE FROM Usuarios WHERE id_usuario = 2;

DELETE FROM Tecnicos WHERE id_tecnico = 2;
