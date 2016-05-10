insert into book (id, title, authors, status) values (1, 'First book', 'Jan Kowalski', 'FREE');
insert into book (id, title, authors, status) values (2, 'Second book', 'Zbigniew Nowak', 'FREE');
insert into book (id, title, authors, status) values (3, 'Third book', 'Janusz Jankowski', 'FREE');

insert into userentity (id, user_name, password) values (1, 'tech_admin', 'tech');
insert into userentity (id, user_name, password) values (2, 'admin', 'admin');
insert into userentity (id, user_name, password) values (3, 'user', 'user');

insert into user_roles (id, user_name, role) values (1, 'tech_admin', 'ROLE_TECH_ADMIN');
insert into user_roles (id, user_name, role) values (2, 'admin', 'ROLE_ADMIN');
insert into user_roles (id, user_name, role) values (3, 'user', 'ROLE_USER');
