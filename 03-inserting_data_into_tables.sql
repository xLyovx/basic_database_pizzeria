INSERT INTO `employees` (dni, fullname, gender, year_of_birth, phone, email, dwelling_place, job_title) VALUES
("111567", "mario castañeda","male", 1990, "888111","mariocastañeda@mail.com","calle 01", "vendedor"),
("324556", "carla valentina","female", 1995, "111333","carlavalentina@mail.com","calle 03", "vendedor"),
("888963", "juan paz","male", 1980, "888113","juanpaz@mail.com","calle 15", "vendedor");

INSERT INTO `clients` (dni, fullname, gender, year_of_birth, phone, email, dwelling_place) VALUES
("321456", "Marcus Peralta", "male", 1980, "555111", "marcusperalta@mail.com", "Calle 15"),
("789321", "Valeria Fontaines", "female", 1997, "333222", "carlavalentina@mail.com", "Calle 04"),
("199756", "Juan Paz", "male", 1980, "222888", "juanpaz@mail.com", "Calle 22");

INSERT INTO `pizzas` (name, description) VALUES
("Margarita", "Pizza con tomate, mozzarella y albahaca fresca"),
("Pepperoni", "Pizza con salsa de tomate, mozzarella y pepperoni"),
("Hawaiana", "Pizza con salsa de tomate, mozzarella, piña y jamón"),
("Vegetariana", "Pizza con salsa de tomate, mozzarella, berenjena, pimiento, cebolla y champiñones"),
("Napolitana", "Pizza con salsa de tomate, mozzarella, anchoas y aceitunas"),
("Cuatro Quesos", "Pizza con salsa de tomate, mozzarella, queso azul, queso de cabra y queso parmesano"),
("Barbacoa", "Pizza con salsa barbacoa, mozzarella, pollo, bacon y cebolla"),
("Mexicana", "Pizza con salsa de tomate, mozzarella, carne molida, jalapeños y chile picante"),
("Marinera", "Pizza con salsa de tomate, mozzarella, camarones, calamares y mejillones"),
("Capricciosa", "Pizza con salsa de tomate, mozzarella, jamón, champiñones, aceitunas y alcachofas");

INSERT INTO `sales` (employees_id, clients_id, pizzas_id)VALUES 
(2, 3, 5),
(1, 1, 5),
(3,3,1),
(1,2,9),
(2,1,8);
