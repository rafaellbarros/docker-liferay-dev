create user lportal identified by 'lportal';
create database lportal_mysql CHARACTER SET utf8 COLLATE utf8_general_ci;
grant all privileges on lportal_mysql.* to lportal;
flush privileges;
