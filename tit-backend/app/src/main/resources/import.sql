insert into users(id, name, login, password) values (1,'John Doe','johndoe','password');
insert into users(id, name, login, password) values (2,'Taras Grigorovych Shevchenko','admin','admin');
insert into users(id, name, login, password) values (3,'Aleksandr Sergeevich Pushkin','moderator','moderator');

insert into role(id, name) values (1,'ROLE_USER');
insert into role(id, name) values (2,'ROLE_ADMIN');
insert into role(id, name) values (3,'ROLE_MODERATOR');

insert into user_role(user_id, role_id) values (1,1);
insert into user_role(user_id, role_id) values (2,2);
insert into user_role(user_id, role_id) values (3,3);

