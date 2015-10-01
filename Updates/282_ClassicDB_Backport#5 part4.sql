
-- Classic [1191]
-- Lava Surger & Deathmaw
UPDATE creature_template SET DamageMultiplier = 1.35, DamageVariance = 1 WHERE Entry = 10077;
UPDATE creature_template SET DamageMultiplier = 13, DamageVariance = 1 WHERE Entry = 12101;

-- Classic [1183]
-- Temple of Ahn'Qiraj 
-- This should fix the door right after Prophet Skeram.
UPDATE gameobject SET position_x = -8429.594, position_y = 2048.813, position_z = 153.3087, rotation2 = -0.9824495, rotation3 = 0.1865285, spawntimesecs = 7200, animprogress = 100 WHERE guid = 21785;


-- Classic [1180]
-- Small updates for the Grim Guzzler 
-- Made some of the Grim Guzzler patrons dance on the tables
UPDATE creature_addon SET emote = 10 WHERE guid IN (90741, 91011, 48168, 91066, 46620, 90738, 90888);
DELETE FROM creature_linking_template WHERE entry = 9541;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(9541, 230, 9537, 3, 0);

-- Classic [1177]
-- Uldaman - Shrike Bats
UPDATE creature SET modelid = 0, position_x = -189.706, position_y = 277.083, position_z = -48.4021, orientation = 1.296810, spawndist = 0, MovementType = 2 WHERE guid = 30081;
UPDATE creature SET modelid = 0, position_x = -144.605, position_y = 223.960, position_z = -46.1905, orientation = 0.596879, spawndist = 0, MovementType = 2 WHERE guid = 30085;
UPDATE creature SET modelid = 0, position_x = -107.367, position_y = 351.402, position_z = -47.2184, orientation = 1.296810, spawndist = 0, MovementType = 2 WHERE guid = 33523;
DELETE FROM creature_movement WHERE id = 30081;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30081, 1, -186.122, 284.889, -47.9277, 0, 0, 100, 0, 0),
(30081, 2, -184.537, 290.529, -48.2939, 0, 0, 100, 0, 0),
(30081, 3, -181.906, 297.890, -50.6951, 0, 0, 100, 0, 0),
(30081, 4, -180.537, 306.196, -52.5285, 0, 0, 100, 0, 0),
(30081, 5, -178.855, 315.518, -53.1097, 0, 0, 100, 0, 0),
(30081, 6, -176.023, 323.062, -52.1430, 0, 0, 100, 0, 0),
(30081, 7, -166.295, 323.899, -50.5788, 0, 0, 100, 0, 0),
(30081, 8, -161.012, 321.039, -49.6787, 0, 0, 100, 0, 0),
(30081, 9, -154.187, 319.611, -48.9430, 0, 0, 100, 0, 0),
(30081, 10, -147.616, 323.359, -47.8096, 0, 0, 100, 0, 0),
(30081, 11, -144.867, 328.990, -45.8678, 0, 0, 100, 0, 0),
(30081, 12, -140.307, 330.953, -44.4280, 0, 0, 100, 0, 0),
(30081, 13, -134.932, 328.717, -44.3512, 0, 0, 100, 0, 0),
(30081, 14, -129.093, 319.235, -44.3214, 0, 0, 100, 0, 0),
(30081, 15, -122.974, 316.957, -44.8064, 0, 0, 100, 0, 0),
(30081, 16, -114.836, 317.766, -46.7871, 0, 0, 100, 0, 0),
(30081, 17, -122.974, 316.957, -44.8064, 0, 0, 100, 0, 0),
(30081, 18, -129.093, 319.235, -44.3214, 0, 0, 100, 0, 0),
(30081, 19, -134.932, 328.717, -44.3512, 0, 0, 100, 0, 0),
(30081, 20, -140.307, 330.953, -44.4280, 0, 0, 100, 0, 0),
(30081, 21, -144.773, 329.030, -45.8512, 0, 0, 100, 0, 0),
(30081, 22, -147.616, 323.359, -47.8096, 0, 0, 100, 0, 0),
(30081, 23, -154.187, 319.611, -48.9430, 0, 0, 100, 0, 0),
(30081, 24, -161.012, 321.039, -49.6787, 0, 0, 100, 0, 0),
(30081, 25, -166.295, 323.899, -50.5788, 0, 0, 100, 0, 0),
(30081, 26, -176.023, 323.062, -52.1430, 0, 0, 100, 0, 0),
(30081, 27, -178.855, 315.518, -53.1097, 0, 0, 100, 0, 0),
(30081, 28, -180.506, 306.386, -52.5748, 0, 0, 100, 0, 0),
(30081, 29, -181.906, 297.890, -50.6951, 0, 0, 100, 0, 0),
(30081, 30, -184.435, 290.816, -48.3882, 0, 0, 100, 0, 0),
(30081, 31, -186.122, 284.889, -47.9277, 0, 0, 100, 0, 0),
(30081, 32, -189.706, 277.083, -48.4021, 0, 0, 100, 0, 0);
DELETE FROM creature_movement WHERE id = 33523;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(33523, 20, -107.367, 351.402, -47.2184, 0, 0, 100, 0, 0),
(33523, 19, -94.7018, 350.589, -49.0758, 0, 0, 100, 0, 0),
(33523, 18, -84.5173, 353.872, -50.8818, 0, 0, 100, 0, 0),
(33523, 17, -74.8239, 357.502, -51.4498, 0, 0, 100, 0, 0),
(33523, 16, -67.5208, 362.644, -50.7932, 0, 0, 100, 0, 0),
(33523, 15, -64.3753, 369.092, -50.2486, 0, 0, 100, 0, 0),
(33523, 14, -56.0625, 371.559, -50.5752, 0, 0, 100, 0, 0),
(33523, 13, -46.5493, 368.680, -49.2223, 0, 0, 100, 0, 0),
(33523, 12, -44.3358, 362.808, -48.0807, 0, 0, 100, 0, 0),
(33523, 11, -40.5576, 353.328, -46.9238, 0, 0, 100, 0, 0),
(33523, 10, -32.346, 347.496, -44.5815, 0, 0, 100, 0, 0),
(33523, 9, -40.5853, 353.397, -46.8918, 0, 0, 100, 0, 0),
(33523, 8, -44.3358, 362.808, -48.0807, 0, 0, 100, 0, 0),
(33523, 7, -46.5493, 368.680, -49.2223, 0, 0, 100, 0, 0),
(33523, 6, -56.0625, 371.559, -50.5752, 0, 0, 100, 0, 0),
(33523, 5, -64.3753, 369.092, -50.2486, 0, 0, 100, 0, 0),
(33523, 4, -67.5208, 362.644, -50.7932, 0, 0, 100, 0, 0),
(33523, 3, -74.8239, 357.502, -51.4498, 0, 0, 100, 0, 0),
(33523, 2, -84.5173, 353.872, -50.8818, 0, 0, 100, 0, 0),
(33523, 1, -94.7018, 350.589, -49.0758, 0, 0, 100, 0, 0);
DELETE FROM creature_movement WHERE id = 30085;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30085, 1, -133.322, 231.628, -47.7201, 0, 0, 100, 0, 0),
(30085, 2, -128.497, 235.402, -47.7797, 0, 0, 100, 0, 0),
(30085, 3, -123.754, 240.053, -48.3936, 0, 0, 100, 0, 0),
(30085, 4, -122.252, 246.016, -48.2522, 0, 0, 100, 0, 0),
(30085, 5, -122.236, 251.897, -48.4177, 0, 0, 100, 0, 0),
(30085, 6, -121.885, 258.539, -47.5953, 0, 0, 100, 0, 0),
(30085, 7, -125.347, 266.097, -46.0830, 0, 0, 100, 0, 0),
(30085, 8, -130.547, 281.654, -45.8065, 0, 0, 100, 0, 0),
(30085, 9, -136.135, 288.273, -46.0188, 0, 0, 100, 0, 0),
(30085, 10, -140.443, 293.482, -46.2818, 0, 0, 100, 0, 0),
(30085, 11, -140.142, 300.930, -46.0073, 0, 0, 100, 0, 0),
(30085, 12, -140.431, 293.771, -46.2399, 0, 0, 100, 0, 0),
(30085, 13, -136.135, 288.273, -46.0188, 0, 0, 100, 0, 0),
(30085, 14, -130.713, 281.851, -45.8294, 0, 0, 100, 0, 0),
(30085, 15, -125.347, 266.097, -46.0830, 0, 0, 100, 0, 0),
(30085, 16, -121.888, 258.545, -47.6056, 0, 0, 100, 0, 0),
(30085, 17, -122.236, 251.897, -48.4177, 0, 0, 100, 0, 0),
(30085, 18, -122.252, 246.016, -48.2522, 0, 0, 100, 0, 0),
(30085, 19, -123.671, 240.135, -48.3101, 0, 0, 100, 0, 0),
(30085, 20, -128.497, 235.402, -47.7797, 0, 0, 100, 0, 0),
(30085, 21, -133.322, 231.628, -47.7201, 0, 0, 100, 0, 0),
(30085, 22, -144.274, 224.024, -46.1978, 0, 0, 100, 0, 0);

-- Classic [1175]
-- Temple of Ahn'qiraj
DELETE FROM creature WHERE id = 15622;
DELETE FROM creature WHERE id = 15240 AND NOT guid IN (87939, 87940, 87941, 87942, 87943, 87944);
DELETE FROM creature WHERE guid IN (87614, 87615, 87616, 87645, 87646, 87647); 

-- Classic [1173]
-- Elwynn Forest - Forest's Edge
UPDATE creature SET modelid = 0, position_x = -9798.49, position_y = 695.4, position_z = 33.2954, orientation = 0.303533, MovementType = 2 WHERE guid = 80484;
UPDATE creature SET modelid = 0, position_x = -9802.66, position_y = 715.261, position_z = 33.2008, orientation = 2.39323, spawndist = 2, MovementType = 1 WHERE guid = 80486;
UPDATE creature SET modelid = 0, position_x = -9800.45, position_y = 706.165, position_z = 68.3899, orientation = 4.53786, MovementType = 2 WHERE guid = 80488;
DELETE FROM creature_movement WHERE id = 80484;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80484, 20, -9798.45, 695.196, 33.1121, 0, 0, 100, 0, 0),
(80484, 19, -9787.98, 698.690, 33.0633, 0, 0, 100, 0, 0),
(80484, 18, -9780.42, 708.031, 33.1796, 0, 0, 100, 0, 0),
(80484, 17, -9779.39, 719.580, 33.0247, 0, 0, 100, 0, 0),
(80484, 16, -9784.11, 729.628, 33.0265, 0, 0, 100, 0, 0),
(80484, 15, -9790.60, 734.172, 33.0179, 0, 0, 100, 0, 0),
(80484, 14, -9800.77, 735.681, 32.9617, 0, 0, 100, 0, 0),
(80484, 13, -9810.42, 732.059, 33.0151, 0, 0, 100, 0, 0),
(80484, 12, -9817.44, 723.679, 33.1373, 0, 0, 100, 0, 0),
(80484, 11, -9818.05, 711.803, 33.0275, 0, 0, 100, 0, 0),
(80484, 10, -9812.93, 700.995, 33.1397, 0, 0, 100, 0, 0),
(80484, 9, -9818.05, 711.803, 33.0275, 0, 0, 100, 0, 0),
(80484, 8, -9817.44, 723.679, 33.1373, 0, 0, 100, 0, 0),
(80484, 7, -9810.42, 732.059, 33.0151, 0, 0, 100, 0, 0),
(80484, 6, -9800.77, 735.681, 32.9617, 0, 0, 100, 0, 0),
(80484, 5, -9790.60, 734.172, 33.0179, 0, 0, 100, 0, 0),
(80484, 4, -9784.11, 729.628, 33.0265, 0, 0, 100, 0, 0),
(80484, 3, -9779.39, 719.580, 33.0247, 0, 0, 100, 0, 0),
(80484, 2, -9780.44, 707.820, 33.1363, 0, 0, 100, 0, 0),
(80484, 1, -9787.98, 698.690, 33.0633, 0, 0, 100, 0, 0);
DELETE FROM creature_movement WHERE id = 80488;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80488, 8, -9800.41, 706.331, 68.2065, 60000, 0, 4.5204, 0, 0),
(80488, 7, -9800.41, 706.331, 68.2065, 0, 0, 100, 0, 0),
(80488, 6, -9807.69, 717.244, 68.2060, 60000, 0, 2.89725, 0, 0),
(80488, 5, -9807.69, 717.244, 68.2060, 0, 0, 100, 0, 0),
(80488, 4, -9796.79, 723.860, 68.2065, 60000, 0, 1.32645, 0, 0),
(80488, 3, -9796.79, 723.860, 68.2065, 0, 0, 100, 0, 0),
(80488, 2, -9789.82, 713.630, 68.2065, 60000, 0, 6.14356, 0, 0),
(80488, 1, -9789.82, 713.630, 68.2065, 0, 0, 100, 0, 0);