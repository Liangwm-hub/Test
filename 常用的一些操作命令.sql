#常用的一些操作命令

#显示所有数据库
show databases;

#创建数据库
create database web01;
 
#删除数据库
drop database web01;

#选择数据库
use web01;

#查看当前数据库
select database();

#在数据库里创建表 
create table user(id int primary key auto_increment,username varchar(16),password varchar(16));

#查看数据库里的表
show tables;

#删除数据库里的表
drop table user;

#查看表的结构
desc user;

#向表里插入数据
insert into user values(null,'格列兹曼','12345');

#向表里指定字段插入数据
insert into user(username,password) values('阿图尔','abcdef');

#查询表的数据
select * from user;

#删除表中的数据
delete from user where id=4;

#删除表中所有的数据
delete from user;

#修改表中的数据
update user set username = '梅西' where id=1;

#修改表名
rename table user to newuser;

#安全模式,不能增删改
show variables like 'SQL_SAFE_UPDATES'; #状态
SET SQL_SAFE_UPDATES = 0; #关闭
SET SQL_SAFE_UPDATES = 1; #打开