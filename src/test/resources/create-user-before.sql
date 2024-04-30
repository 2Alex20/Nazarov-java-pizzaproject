delete from user_role;
delete from usr;

insert into usr(id, username, password, active) values
(1, 'alex', '$2a$08$i2J3rYinp9F3y53m38wSOuvnsBrggzW93/NDESS2k8upYwjHKq1Yi', true),
(2, 'aaaa', '$2a$08$pXkktqPiDt67OSdrHXixounOScR4wqHVEl7Mg6CAZlYZlJxOPNSvq', true);
//pass 1
//select crypt('1', gen_salt('bf', 8));

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');
