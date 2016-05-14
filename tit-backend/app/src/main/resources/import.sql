insert into users(roleId, formal_name, login, password) values (1,'John Doe','johndoe','password');
insert into users(roleId, formal_name, login, password) values (2,'Taras Grigorovych Shevchenko','admin','admin');
insert into users(roleId, formal_name, login, password) values (3,'Aleksandr Sergeevich Pushkin','moderator','moderator');

insert into role(role_id, role_name) values (1,'ROLE_USER');
insert into role(role_id, role_name) values (2,'ROLE_ADMIN');
insert into role(role_id, role_name) values (3,'ROLE_MODERATOR');
insert into role(role_id, role_name) values (4,'ROLE_EXCUTOR');
insert into role(role_id, role_name) values (5,'ROLE_MAYOR');

insert into user_role(user_id, role_id) values (1,1);
insert into user_role(user_id, role_id) values (2,2);
insert into user_role(user_id, role_id) values (3,3);

insert into category(category_id, category_name) values (1,'Roads');
insert into category(category_id, category_name) values (2,'Advertisement');
insert into category(category_id, category_name) values (3,'Parks');
insert into category(category_id, category_name) values (4,'Parkings');

