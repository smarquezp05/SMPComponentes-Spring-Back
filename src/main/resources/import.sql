-- Do not check referential constraints
SET FOREIGN_KEY_CHECKS = 0;

-- Populate tabla Roles --
INSERT INTO roles (id, nombre) VALUES (1, 'ROLE_ADMIN'), (2, 'ROLE_USER');

-- Populate tabla Usuarios --
INSERT INTO usuarios (id, email, usuario, password, fecha_registro, rol_id)
VALUES (1, 'sergiomp@gmail.com', 'sergiomp', '$2a$10$gi4zxglNX7fB1E91ayYgkejcKwFlvrmyfcqggmoL21wB.zjcCTzAS',
        '2021-05-01 09:45:26', 1),
       (2, 'jesusm@gmail.com', 'jesusmp', '$2a$10$KghgQE6NsAw6i7hUzrqiee3BTWCgE1Y25BYAUnozR4JY2WsDvHDuS',
        '2021-05-01 09:45:26', 2);

-- Populate tabla Categorias --
INSERT INTO categorias (id, nombre) VALUES (1, 'Placa Base'), (2, 'Procesador'), (3, 'Disco Duro'), (5, 'Tarjeta Gr�fica'), (6, 'Memoria RAM'), (9, 'Torre/Caja'), (10, 'Ventilaci�n'), (11, 'Fuente Alimentaci�n');

-- Populate tabla Fabricantes --
INSERT INTO fabricantes (id, nombre) VALUES (1, 'Acer'), (2, 'ASUS'), (3, 'Corsair'), (4, 'Dell'), (5, 'HP'), (6, 'Lenovo'), (7, 'Medion'), (8, 'MSI'), (10, 'ASRock'), (11, 'Intel'), (12, 'AMD'), (13, 'Nvidia'), (14, 'Seagate'), (15, 'Western Digital'), (16, 'Seagate Technology'), (17, 'Sony'), (18, 'LG'), (19, 'Samsung'), (20, 'SanDisk'), (21, 'Cooler Master'), (22, 'Thermaltake'), (23, 'Zalman'), (24, 'Gigabyte'), (25, 'EVGA Corporation'), (26, 'Crucial'), (27, 'Kingston'), (28, 'Zotac'), (29, 'Creative'), (30, 'Nfortec'), (31, 'Mars Gaming'), (32, 'Noctua'), (33, 'Tacens Anima'), (34, 'Nox');

-- Populate tabla Componentes --
INSERT INTO componentes (id, nombre, fabricante_id, categoria_id, precio, unidades_disponibles, imagen, url) VALUES (1, 'Ryzen 5 3600 3.6GHz', 12, 2, 187.90, NULL, 'https://www.amd.com/system/files/styles/600px/private/2019-06/238593-ryzen-5-pib-left-facing-1260x709.png?itok=15Oy0qLu', 'https://www.amd.com/es/products/cpu/amd-ryzen-5-3600'), (2, 'i7-10700K 3.80 GHz', 11, 2, 309.99, NULL, 'https://img.pccomponentes.com/articles/28/287890/intel-core-i7-10700k-380-ghz.jpg', 'https://ark.intel.com/content/www/es/es/ark/products/199335/intel-core-i7-10700k-processor-16m-cache-up-to-5-10-ghz.html'), (3, 'X470 Gaming Plus Max', 8, 1, 94.99, NULL, 'https://asset.msi.com/resize/image/global/product/product_9_20191029111059_5db7adc3dee19.png62405b38c58fe0f07fcef2367d8a9ba1/600.png', 'https://es.msi.com/Motherboard/X470-GAMING-PLUS-MAX'), (4, 'ROG Strix X570-E Gaming', 2, 1, 309.91, NULL, 'https://dlcdnwebimgs.asus.com/gain/249D2FDB-BD4E-4DB4-A000-15237DAC1406/w717/h525', 'https://rog.asus.com/es/motherboards/rog-strix/rog-strix-x570-e-gaming-model/'), (5, 'B460M DS3H V2', 24, 1, 71.95, NULL, 'https://static.gigabyte.com/StaticFile/Image/Global/da027e69b56a6ae4dadc7dab3cbdf0dd/Product/27255/png/800', 'http://es.gigabyte.com/products/page/mb/B460M-DS3H-V2-rev-10/kf'), (6, 'BarraCuda 3.5\' 1TB SATA3', 14, 3, 33.50, NULL, 'https://thumb.pccomponentes.com/w-530-530/articles/11/111412/new111412.jpg', 'https://www.seagate.com/www-content/datasheets/pdfs/3-5-barracuda-3tbDS1900-10-1710ES-es_ES.pdf'), (7, 'BarraCuda 3.5\' 2TB SATA 3', 14, 3, 48.99, NULL, 'https://thumb.pccomponentes.com/w-530-530/articles/18/182592/37656306-31219234200.jpg', 'https://www.seagate.com/www-content/datasheets/pdfs/3-5-barracuda-3tbDS1900-10-1710ES-es_ES.pdf'), (8, 'A400 SSD 240GB', 27, 3, 29.50, NULL, 'https://media.kingston.com/kingston/product/ktc-product-ssd-a400-sa400s37-240gb-1-zm-lg.jpg', 'https://www.kingston.com/spain/es/ssd/a400-solid-state-drive?partnum=sa400s37%2F240g'), (9, 'A400 SSD 480GB', 27, 3, 50.99, NULL, 'https://media.kingston.com/kingston/product/ktc-product-ssd-a400-sa400s37-480gb-1-zm-lg.jpg', 'https://www.kingston.com/spain/es/ssd/a400-solid-state-drive?partnum=sa400s37%2F480g'), (10, '860 EVO Basic SSD 1TB SATA3', 19, 3, 113.99, NULL, 'https://images.samsung.com/is/image/samsung/es-860-evo-sata-3-2-5-ssd-mz-76e1t0b-eu-frontblack-273732078?$720_576_PNG$', 'https://www.samsung.com/es/memory-storage/sata-ssd/ssd-860-evo-sata-3-2-5-1tb-mz-76e1t0b-eu/'), (13, 'GeForce GT 1030 2GB GDDR5', 2, 5, 99.99, NULL, 'https://img.pccomponentes.com/articles/12/128646/gv-n1030d5-2gl-candb.jpg', 'https://www.asus.com/es/Motherboards-Components/Graphics-Cards/All-series/GT1030-SL-2G-BRK/'), (14, 'Gaming GeForce RTX 2060 AMP! 6GB GDDR6', 28, 5, 783.48, NULL, 'https://img.pccomponentes.com/articles/18/181899/1.jpg', 'https://www.zotac.com/gt/product/graphics_card/zotac-gaming-geforce-rtx-2060-amp'), (15, 'GeForce GTX 1050Ti D5 4GB GDDR5', 24, 5, 225.89, NULL, 'https://img.pccomponentes.com/articles/10/106067/1111.jpg', 'https://www.gigabyte.com/es/Graphics-Card/GV-N105TD5-4GD#kf'), (16, 'HyperX Fury Black DDR4 3200Mhz PC-25600 16GB 2x8GB CL16', 27, 6, 97.50, NULL, 'https://img.pccomponentes.com/articles/23/233960/hyperx-fury-ddr4-9-fan-kit-of-2.jpg', 'https://www.hyperxgaming.com/spain/es/memory/fury-ddr4'), (17, 'DDR4 2400 PC4-19200 8GB CL17', 26, 6, 37.49, NULL, 'https://img.pccomponentes.com/articles/14/144396/1.jpg', 'https://www.crucial.es/memory/ddr4/ct8g4dfs824a'), (18, 'HyperX Fury Black 4GB DDR4 2666Mhz PC-21300 CL16', 27, 6, 27.50, NULL, 'https://img.pccomponentes.com/articles/23/234082/hyperx-fury-ddr4-1-front.jpg', 'https://www.hyperxgaming.com/spain/es/memory/fury-ddr4'), (29, 'Lynx Cristal Templado USB 3.0 RGB Negra', 30, 9, 38.95, NULL, 'https://img.pccomponentes.com/articles/18/188133/lynx-black-01.jpg', 'https://www.nfortec.com/lynx-black'), (30, 'MAG Forge 100M Cristal Templado USB 3.2 RGB', 8, 9, 54.99, NULL, 'https://img.pccomponentes.com/articles/25/259753/msi-mag-forge-100m-cristal-templado-usb-32-rgb-caracteristicas.jpg', 'https://www.msi.com/PC-Case/MAG-FORGE-100M'), (31, 'Krater Cristal Templado USB 3.0 ARGB Negro', 30, 9, 79.80, NULL, 'https://img.pccomponentes.com/articles/21/213191/krater-black-3.jpg', 'https://www.nfortec.com/nfortec-krater-rgb-gaming-case-black'), (32, 'MT0 Pasta T�rmica', 31, 10, 1.25, NULL, 'https://img.pccomponentes.com/articles/15/154961/1.jpg', 'https://es.marsgaming.eu/es/refrigeracion/pasta-termica-mt0_mt0'), (33, 'NT-H1 Pasta T�rmica', 32, 10, 8.24, NULL, 'https://img.pccomponentes.com/articles/4/42936/noctua-nt-h1-pasta-termica-4.jpg', 'https://noctua.at/es/products/thermal-grease/nt-h1-3-5g'), (34, 'Hydrus RGB 240', 30, 10, 69.95, NULL, 'https://img.pccomponentes.com/articles/23/230544/3.jpg', 'https://www.nfortec.com/hydrus-rgb-240'), (35, 'Hydro H100x Kit de Refrigeraci�n L�quida', 3, 10, 94.90, NULL, 'https://img.pccomponentes.com/articles/17/170489/1.jpg', 'https://www.corsair.com/es/es/Categor%C3%ADas/Productos/Refrigeraci%C3%B3n-l%C3%ADquida/Refrigerador-l%C3%ADquido-para-CPU-de-alto-rendimiento-Hydro-Series-H100x/p/CW-9060040-WW'), (36, 'AF8 80mm', 33, 10, 2.08, NULL, 'https://img.pccomponentes.com/articles/10/101097/tacens-anima-af8-80mm.jpg', 'http://www.tacens-anima.com/refrigeracion/af8/'), (37, 'Hummer H-312 CPU Cooler', 34, 10, 35.99, NULL, 'https://img.pccomponentes.com/articles/10/107251/1.jpg', 'https://www.nox-xtreme.com/refrigeracion/h-312'), (38, 'Hummer H-212 CPU Cooler', 34, 10, 24.40, NULL, 'https://img.pccomponentes.com/articles/9/95520/nox-hummer-h-212-cpu-cooler.jpg', 'https://www.nox-xtreme.com/refrigeracion/h-212'), (39, 'AF12 120x120', 33, 10, 2.70, NULL, 'https://img.pccomponentes.com/articles/6/62388/tacens-anima-af12.jpg', 'http://www.tacens-anima.com/refrigeracion/af12/'), (40, 'Urano VX 650W 80+ Bronze 120MM PWM', 34, 11, 50.99, NULL, 'https://img.pccomponentes.com/articles/14/140444/1.jpg', 'https://www.nox-xtreme.com/fuentes/urano-vx-650w-bronze'), (41, 'RM750 750W 80 Plus Gold Full Modular', 3, 11, 114.99, NULL, 'https://img.pccomponentes.com/articles/21/213653/d1.jpg', 'https://www.corsair.com/es/es/Categor%C3%ADas/Productos/Unidades-de-fuentes-de-alimentaci%C3%B3n/Unidades-de-fuentes-de-alimentaci%C3%B3n-avanzadas/RM-Series%E2%84%A2-80-PLUS-Gold-Power-Supplies/p/CP-9020195-EU'), (42, 'Urano VX 750W 80+ Bronze 140MM PWM', 3, 11, 56.25, NULL, 'https://img.pccomponentes.com/articles/14/140446/6.jpg', 'https://www.nox-xtreme.com/fuentes/urano-vx-750w-bronze'), (43, 'RM850 850W 80 Plus Gold Full Modular', 34, 11, 124.90, NULL, 'https://img.pccomponentes.com/articles/21/213683/e1.jpg', 'https://www.corsair.com/es/es/Categor%C3%ADas/Productos/Unidades-de-fuentes-de-alimentaci%C3%B3n/rm-series-config/p/CP-9020056-NA');

-- Populate tabla Ordenadores --
INSERT INTO ordenadores (id, precio_total, fecha_compra, usuario_id)
VALUES (1, 728.91, '2021-05-02 11:17:33', 2);

-- Populate tabla LineasOrdenadores --
INSERT INTO lineas_ordenadores (id, precio_venta, componente_id, ordenador_id) VALUES (1, 94.99, 3, 1), (2, 187.90, 1, 1), (3, 225.89, 15, 1), (4, 50.99, 9, 1), (6, 54.99, 30, 1), (7, 56.25, 42, 1), (8, 24.40, 38, 1);
