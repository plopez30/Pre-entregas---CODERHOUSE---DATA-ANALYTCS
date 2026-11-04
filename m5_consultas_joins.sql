-- Consulta 1: Vista base del proyecto
-- Propósito: obtener una vista enriquecida para análisis en Power BI.

SELECT
    v.fecha_venta,
    c.id_cliente,
    c.nombre,
    c.ciudad,
    p.nombre_producto,
    cat.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta
FROM ventas v
INNER JOIN clientes c
    ON v.id_cliente = c.id_cliente
INNER JOIN productos p
    ON v.id_producto = p.id_producto
INNER JOIN categorias cat
    ON p.id_categoria = cat.id_categoria;

-- Hallazgo:
-- La consulta reúne información en una sola tabla,
-- lista para crear gráficos y filtros en Power BI.

-- Consulta 2: Clientes sin ventas
-- Propósito: detectar clientes registrados que nunca compraron.

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes c
LEFT JOIN ventas v
    ON c.id_cliente = v.id_cliente
WHERE v.id_cliente IS NULL;

-- Hallazgo:
-- 0 registros
-- No se detectaron clientes que no hayan realizado compras.

-- Consulta 3: Productos sin ventas
-- Propósito: identificar artículos sin movimiento comercial.

SELECT
    p.nombre_producto,
    cat.nombre_categoria,
    p.precio
FROM productos p
LEFT JOIN ventas v
    ON p.id_producto = v.id_producto
INNER JOIN categorias cat
    ON p.id_categoria = cat.id_categoria
WHERE v.id_producto IS NULL;

-- Hallazgo:
-- 0 registros
-- No se detectaron productos que no hayan tenido ventas.

-- Consulta 4: Consolidado por canal
-- Propósito: comparar ventas utilizando UNION ALL.

SELECT
    canal,
    SUM(total) AS total_canal
FROM
(
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Online' AS canal
    FROM ventas
    WHERE fecha_venta <= '2024-03-10'

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Presencial' AS canal
    FROM ventas
    WHERE fecha_venta > '2024-03-10'
) AS consolidado
GROUP BY canal;

-- Hallazgo:
-- La venta online supera a la venta presencial en un 28.19%