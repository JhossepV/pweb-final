-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2024 a las 03:37:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Medicamentos'),
(2, 'Vitaminas y suplementos'),
(3, 'Productos de cuidado personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Paracetamol', 'Alivio del dolor y fiebre', 5.00, 4.50, 100, 'paracetamol.jpg', 1),
(2, 'Amoxicilina', 'Antibiótico', 10.00, 9.00, 50, 'amoxicilina.jpg', 1),
(3, 'Ibuprofeno', 'Antiinflamatorio', 8.00, 7.20, 75, 'ibuprofeno.jpg', 1),
(4, 'Aspirina', 'Alivio del dolor y reducción de la inflamación', 6.50, 5.85, 120, 'aspirina.jpg', 1),
(5, 'Loratadina', 'Antihistamínico para alergias', 12.00, 10.80, 60, 'loratadina.jpg', 1),
(6, 'Omeprazol', 'Inhibidor de la bomba de protones para la acidez estomacal', 9.50, 8.55, 90, 'omeprazol.jpg', 1),
(7, 'Diazepam', 'Ansiolítico y relajante muscular', 15.00, 13.50, 40, 'diazepam.jpg', 1),
(8, 'Ranitidina', 'Antagonista de los receptores H2 para úlceras gástricas', 7.50, 6.75, 70, 'ranitidina.jpg', 1),
(9, 'Salbutamol', 'Broncodilatador para problemas respiratorios', 14.00, 12.60, 55, 'salbutamol.jpg', 1),
(10, 'Cetirizina', 'Antihistamínico para alergias', 11.50, 10.35, 65, 'cetirizina.jpg', 1),
(11, 'Metformina', 'Antidiabético oral', 13.50, 12.15, 30, 'metformina.jpg', 1),
(12, 'Atorvastatina', 'Estatina para reducir el colesterol', 18.00, 16.20, 25, 'atorvastatina.jpg', 1),
(13, 'Morfina', 'Analgésico opioide', 25.00, 22.50, 15, 'morfina.jpg', 1),
(14, 'Warfarina', 'Anticoagulante', 20.50, 18.45, 20, 'warfarina.jpg', 1),
(15, 'Levotiroxina', 'Hormona tiroidea sintética', 16.50, 14.85, 35, 'levotiroxina.jpg', 1),
(16, 'Vitamina D3', 'Fortalece huesos y sistema inmunológico', 15.00, 12.50, 60, 'vitamina_d3.jpg', 2),
(17, 'Proteína en Polvo', 'Suplemento para el desarrollo muscular', 30.00, 27.00, 40, 'proteina_polvo.jpg', 2),
(18, 'Multivitamínico', 'Completo conjunto de vitaminas y minerales', 25.00, 22.50, 50, 'multivitaminico.jpg', 2),
(19, 'Colágeno', 'Contribuye a la salud de la piel y las articulaciones', 22.50, 20.25, 35, 'colageno.jpg', 2),
(20, 'Creatina', 'Aumenta la energía y la resistencia muscular', 18.00, 16.20, 30, 'creatina.jpg', 2),
(21, 'Ácido Fólico', 'Importante para el desarrollo celular y la división celular', 10.50, 9.45, 55, 'acido_folico.jpg', 2),
(22, 'Vitamina B12', 'Promueve la formación de glóbulos rojos', 12.00, 10.80, 45, 'vitamina_b12.jpg', 2),
(23, 'Hierro Quelado', 'Ayuda en la formación de hemoglobina', 14.50, 13.05, 25, 'hierro_quelado.jpg', 2),
(24, 'Magnesio', 'Esencial para la función muscular y nerviosa', 9.00, 8.10, 70, 'magnesio.jpg', 2),
(25, 'Zinc', 'Importante para el sistema inmunológico', 7.00, 6.30, 80, 'zinc.jpg', 2),
(26, 'Aceite de Pescado', 'Rico en ácidos grasos omega-3', 20.00, 18.00, 50, 'aceite_pescado.jpg', 2),
(27, 'Coenzima Q10', 'Contribuye a la producción de energía celular', 28.00, 25.20, 20, 'coenzima_q10.jpg', 2),
(28, 'Vitamina K2', 'Importante para la coagulación sanguínea y la salud ósea', 17.50, 15.75, 40, 'vitamina_k2.jpg', 2),
(29, 'L-Glutamina', 'Aminoácido esencial para la recuperación muscular', 24.00, 21.60, 30, 'l_glutamina.jpg', 2),
(30, 'Vitamina E', 'Antioxidante que protege las células del daño', 11.50, 10.35, 65, 'vitamina_e.jpg', 2),
(31, 'Shampoo Hidratante', 'Nutrición para cabello seco', 12.00, 10.80, 75, 'shampoo_hidratante.jpg', 3),
(32, 'Acondicionador Reparador', 'Repara y suaviza el cabello dañado', 9.50, 8.55, 90, 'acondicionador_reparador.jpg', 3),
(33, 'Jabón de Glicerina', 'Limpieza suave para todo tipo de piel', 5.50, 4.95, 120, 'jabon_glicerina.jpg', 3),
(34, 'Desodorante Sin Aluminio', 'Protección duradera y sin ingredientes dañinos', 7.00, 6.30, 100, 'desodorante_sin_aluminio.jpg', 3),
(35, 'Crema Hidratante Facial', 'Hidratación profunda para la piel del rostro', 15.00, 13.50, 60, 'crema_hidratante_facial.jpg', 3),
(36, 'Gel de Baño Relajante', 'Fórmula relajante para un baño placentero', 8.50, 7.65, 80, 'gel_bano_relajante.jpg', 3),
(37, 'Cepillo de Dientes de Bambú', 'Sostenible y respetuoso con el medio ambiente', 4.00, 3.60, 150, 'cepillo_dientes_bambu.jpg', 3),
(38, 'Pasta Dental Blanqueadora', 'Blanqueamiento dental y protección contra caries', 6.50, 5.85, 70, 'pasta_dental_blanqueadora.jpg', 3),
(39, 'Mascarilla Facial Purificante', 'Elimina impurezas y revitaliza la piel', 11.00, 9.90, 45, 'mascarilla_facial_purificante.jpg', 3),
(40, 'Loción Corporal de Aloe Vera', 'Calma e hidrata la piel después del baño', 13.50, 12.15, 55, 'lotion_aloe_vera.jpg', 3),
(41, 'Aceite de Coco para el Cabello', 'Nutre y suaviza el cabello seco y dañado', 14.00, 12.60, 50, 'aceite_coco_cabello.jpg', 3),
(42, 'Esponja Exfoliante', 'Exfoliación suave para una piel más suave', 3.50, 3.15, 200, 'esponja_exfoliante.jpg', 3),
(43, 'Protector Solar SPF 50', 'Protección solar de amplio espectro', 18.00, 16.20, 30, 'protector_solar_spf50.jpg', 3),
(44, 'Perfume Floral', 'Fragancia floral duradera', 25.00, 22.50, 40, 'perfume_floral.jpg', 3),
(45, 'Cera para Peinar', 'Define y estiliza el cabello', 8.00, 7.20, 65, 'cera_peinar.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `clave`) VALUES
(1, 'hola', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
