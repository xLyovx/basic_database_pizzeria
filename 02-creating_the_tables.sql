CREATE TABLE employees (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `dni` VARCHAR(30) NOT NULL UNIQUE,
    `fullname` VARCHAR(100) NOT NULL,
	`gender` VARCHAR(20) NOT NULL,
    `year_of_birth` YEAR NOT NULL,
    `phone` VARCHAR(20) NOT NULL UNIQUE,
    `email` VARCHAR(150) NOT NULL UNIQUE,
    `dwelling_place` VARCHAR(200) NOT NULL,
    `job_title` VARCHAR (50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE clients (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `dni` VARCHAR(30) NOT NULL UNIQUE,
    `fullname` VARCHAR(100) NOT NULL,
	`gender` VARCHAR(20) NOT NULL,
    `year_of_birth` YEAR NOT NULL,
    `phone` VARCHAR(20) NOT NULL UNIQUE,
    `email` VARCHAR(150) NOT NULL UNIQUE,
    `dwelling_place` VARCHAR(200) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE pizzas (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `description` VARCHAR(300) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sales (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `employees_id` INT UNSIGNED NOT NULL,
    `clients_id` INT UNSIGNED NOT NULL,
    `pizzas_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (`employees_id`) REFERENCES `employees`(`id`),
    FOREIGN KEY (`clients_id`) REFERENCES `clients`(`id`),
    FOREIGN KEY (`pizzas_id`) REFERENCES `pizzas`(`id`)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
