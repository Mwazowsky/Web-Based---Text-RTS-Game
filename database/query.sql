-- Admin Generated Entity(Rarely updated)
    -- Unit Table Data

INSERT INTO "unit"(unit_name, characteristic_id) VALUES ('swordman', 7);

INSERT INTO "unit"(unit_name, characteristic_id) VALUES ('archer', 8);

    -- Building Table Data

INSERT INTO "building"(building_name, upgrade_time, characteristic_id)
VALUES ('archer_tower', '20s', 2);

INSERT INTO "building"(building_name, upgrade_time, characteristic_id)
VALUES ('cannon', '40s', 3);

    -- Buildings & Units Characteristic Table Data

INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('castle', 200, 5, 3, "building");
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('dfn_type_1', 200, 5, 3, "building");
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('dfn_type_2', 200, 5, 3, "building");
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('dfn_type_3', 200, 5, 3, "building");
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('dfn_type_4', 200, 5, 3, "building");
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('jebakan', 200, 5, 3, "building");
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('res_type_1', 200, 0, 0, 'building');
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('res_type_2', 200, 0, 0, 'building');
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('res_type_3', 200, 0, 0, 'building');

INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('swordman', 200, 5, 3, 'unit');
INSERT INTO "characteristic"(characteristic_name, health_point, attack_rate, damage, type)
VALUES ('archer', 200, 5, 3, 'unit');

    -- Resource Table Data

INSERT INTO "resource"(resource_name, characteristic_id)
VALUES ('emas', 9);
INSERT INTO "resource"(resource_name, characteristic_id)
VALUES ('makanan', 10);
INSERT INTO "resource"(resource_name, characteristic_id)
VALUES ('bahan bangunan', 11);


-- Player Generated Entity(Frequently updated)
    -- User Table data
INSERT INTO "user"(username, password, nickname, email)
VALUES ('testUser1', 'password', 'tes1', 'tes1@gmail.com')
RETURNING *;

INSERT INTO "user"(username, password, nickname, email)
VALUES ('testUser2', 'password', 'tes2', 'tes2@gmail.com')
RETURNING *;

    -- Location Table data

INSERT INTO "location"(location_name, user_id)
VALUES ('test_loc_1', '1');

INSERT INTO "location"(location_name, user_id)
VALUES ('test_loc_2', '2');

    -- resources on location 1

INSERT INTO "resource_on_location"(number, resource_id, location_id)
VALUES (10000, 1, 1);
INSERT INTO "resource_on_location"(number, resource_id, location_id)
VALUES (1000, 2, 1);
INSERT INTO "resource_on_location"(number, resource_id, location_id)
VALUES (100000, 3, 1);

    -- resources on location 2

INSERT INTO "resource_on_location"(number, resource_id, location_id)
VALUES (11000, 1, 2);
INSERT INTO "resource_on_location"(number, resource_id, location_id)
VALUES (1400, 2, 2);
INSERT INTO "resource_on_location"(number, resource_id, location_id)
VALUES (150000, 3, 2);

    -- Building Built location 1

INSERT INTO "building_built"(level, upgrading, upgrade_end, location_id, building_id)
VALUES (1, false, NOW(), 1, 1); 
INSERT INTO "building_built"(level, upgrading, upgrade_end, location_id, building_id)
VALUES (1, false, NOW(), 1, 2);

    -- Building Built location 2

INSERT INTO "building_built"(level, upgrading, upgrade_end, location_id, building_id)
VALUES (1, false, NOW(), 2, 1); 
INSERT INTO "building_built"(level, upgrading, upgrade_end, location_id, building_id)
VALUES (1, false, NOW(), 2, 2); 


    -- units on location 1

INSERT INTO "units_on_location"(value, unit_id, location_id, level)
VALUES (10, 1, 1, 1);
INSERT INTO "units_on_location"(value, unit_id, location_id, level)
VALUES (10, 2, 1, 1);

    -- units on location 2

INSERT INTO "units_on_location"(value, unit_id, location_id, level)
VALUES (10, 1, 2, 1);
INSERT INTO "units_on_location"(value, unit_id, location_id, level)
VALUES (10, 2, 2, 1);