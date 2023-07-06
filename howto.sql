/* TRANSACTION */

START TRANSACTION;

INSERT INTO empleados (nombre,salario) value ('Juan Perez', 2500.00);

INSERT INTO empleados (nombre,salario) value ('Maria Lopez', 3000.00);

COMMIT;


START TRANSACTION;

INSERT INTO empleados (nombre,salario) value ('Juan Peres', 2500.00);

INSERT INTO empleados (nombre,salario) value ('Maria Lopez', 3000.00);


/* --------------------HOW TO 2-------------------------------- */

CREATE TABLE productos (
    nombre VARCHAR(50),
    precio DECIMAL(10,2)
);

INSERT INTO productos (nombre,precio) value ('Producto A', -15.7523452345);

INSERT INTO productos (nombre,precio) value ('Producto B', 19.9976856789);

SELECT nombre, ABS (precio), ROUND (precio,2) FROM productos;

-------------------------------
CREATE TABLE tareas(
    nombre VARCHAR(50),
    fecha_limite DATE
);

INSERT INTO tareas (nombre,fecha_limite) value ('Tarea A', '2023-06-30');

INSERT INTO tareas (nombre,fecha_limite) value ('Tarea B', '2023-07-15');

SELECT nombre, fecha_limite, DATE_FORMAT(fecha_limite,'%d-%m-%Y') FROM tareas;

--------------------------------

CREATE TABLE empleados (
    nombre VARCHAR(50),
    salario VARCHAR(10,2)
);

INSERT INTO empleados (nombre, salario) value ('Juan Perez', NULL);

INSERT INTO empleados (nombre, salario) value ('Maria Lopez', 2500.00);

SELECT nombre, IFNULL(salario, 'NO DISPONIBLE') FROM empleados;

SELECT COUNT(*) as total empleadoas FROM empleados;

---------------------HOW TO 3----------------------------


CREATE TABLE empleados (
    id INT  PRIMARY KEY,
    nombre VARCHAR (100),
    salario DECIMAL(10,2),
    departamentos_id INT
);

INSERT INTO empleados (id, nombre, salario, departamento_id) VALUE 
(1, 'John Smith', 2500.00, 1),
(2, 'Jane Doe', 2000.00,1),
(3, 'Emily davis', 3200.00,2),
(4, 'Michael Johnson',2000.00,3);

CREATE TABLE departamentos(
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

INSERT INTO departamentos (id,nombre) VALUE 
(1,'ventas'),
(2,'marketing'),
(3,'recuersos humanos');

SELECT nombre FROM empleados WHERE nombre like'J%';

SELECT nombre FROM empleados WHERE nombre like '%en%';

--INER JOIN

SELECT empleados.nombre, departamentos.nombre AS departamento FROM empleados INNER JOIN departamentos ON empleados.departamentos_id =departamentos.id;

--LEFT OUTER JOIN

SELECT empleados.nombre, departamentos.nombre AS departamento FROM empleados LEFT OUTER JOIN departamentos ON empleados.departamentos_id = departamentos.id;

--RIGHT OUTER JOIN

SELECT empleados.nombre, departamentos.nombre AS departamento FROM empleados RIGHT OUTER JOIN departamentos on empleados.departamentos_id=departamento.id;