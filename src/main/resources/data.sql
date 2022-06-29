
DELETE FROM permissions_roles;
DELETE FROM permissions;
DELETE FROM users_roles;
DELETE FROM roles;

DELETE FROM contacts;
DELETE FROM addresses;
DELETE FROM users;

INSERT INTO permissions(id, permission, note) VALUES (1, 'LOGIN', 'User Login');
INSERT INTO permissions(id, permission, note) VALUES (2, 'VIEW_PROFILE', 'View user profile');
INSERT INTO permissions(id, permission, note) VALUES (3, 'ADMIN_USER_DATA', 'Manage user data');

INSERT INTO permissions(id, permission, note, enabled) VALUES (4, 'ADMIN_STATISTICS', 'View statistical graphs', false);

INSERT INTO roles(id, role) VALUES (1, 'USER');
INSERT INTO roles(id, role) VALUES (2, 'ADMINISTRATOR');

INSERT INTO permissions_roles(permission_id, role_id) VALUES (1, 1);
INSERT INTO permissions_roles(permission_id, role_id) VALUES (2, 1);

INSERT INTO permissions_roles(permission_id, role_id) VALUES (1, 2);
INSERT INTO permissions_roles(permission_id, role_id) VALUES (2, 2);
INSERT INTO permissions_roles(permission_id, role_id) VALUES (3, 2);


INSERT INTO users(id, username, password, name, surname, gender) VALUES (1, 'test1', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test1', 'test1', 0);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (2, 'test2', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test2', 'test2', 0);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (3, 'test3', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test3', 'test3', 1);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (4, 'test4', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test4', 'test4', 1);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (5, 'test5', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test5', 'test5', 0);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (6, 'test6', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test6', 'test6', 0);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (7, 'test7', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test7', 'test7', 0);
INSERT INTO users(id, username, password, name, surname, gender) VALUES (8, 'test8', '1d/NZaEqNgtEomytAPrwm/+QjmbudLg33oeEk77Xh88=', 'test8', 'test8', 1);

UPDATE users SET ENABLED = false WHERE id = 6;

UPDATE users SET birth_date = '1977-08-14' WHERE id = 1;
UPDATE users SET secured = true WHERE id = 1;

INSERT INTO users_roles(user_id, role_id) VALUES (1, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (1, 2);

INSERT INTO users_roles(user_id, role_id) VALUES (2, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (3, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (4, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (5, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (6, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (7, 1);
INSERT INTO users_roles(user_id, role_id) VALUES (8, 1);



INSERT INTO contacts(user_id, email, phone, note) VALUES (1, 'test1@gmail.com', NULL, NULL);
INSERT INTO contacts(user_id, email, phone, note) VALUES (2, 'test2@gmail.com', NULL, 'test contact note on mario rossi');
INSERT INTO contacts(user_id, email, phone, note) VALUES (3, 'test3@gmail.com', NULL, NULL);
INSERT INTO contacts(user_id, email, phone, note) VALUES (4, 'test4@gmail.com', NULL, NULL);
INSERT INTO contacts(user_id, email, phone, note) VALUES (5, 'test5@gmail.com', NULL, NULL);
INSERT INTO contacts(user_id, email, phone, note) VALUES (6, 'test6@gmail.com', NULL, NULL);
INSERT INTO contacts(user_id, email, phone, note) VALUES (7, 'test7@gmail.com', NULL, NULL);
INSERT INTO contacts(user_id, email, phone, note) VALUES (8, 'test8@gmail.com', NULL, NULL);

insert into addresses(user_id, address, address2, city, country, zip_code) values (2, 'test adress1', 'test adress11', 'rabat', 'Maroc', '10000');
insert into addresses(user_id, address, address2, city, country, zip_code) values (7, 'test adress2', 'Gran cana22', 'rabat', 'Maroc', '10000');
insert into addresses(user_id, address, address2, city, country, zip_code) values (8, 'test adress3', 'test adress32', 'rabat', 'Maroc', '10000');
