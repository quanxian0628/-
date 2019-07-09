#创建数据库
drop database if exists tangccodb;
create database if not exists tangccodb;

#选择数据库tangccodb
use tangccodb;

#用户表
drop table if exists `user`;
create table if not exists `user`(
	uId int primary key auto_increment,
	uName varchar(50) not null,
	uPwd varchar(50) not null
);

#角色表
drop table if exists role;
create table if not exists role(
	rId int primary key auto_increment,
	rName varchar(50) not null
);

#用户角色
drop table if exists user_role;
create table if not exists user_role(
	urId int primary key auto_increment,
	uId int not null,
	rId int not null
);

#菜单栏
drop table if exists menu;
create table if not exists menu(
	`mId` int primary key auto_increment,
	mName varchar(50) not null,
	mURL varchar(200) null
);

#权限表
drop table if exists role_menu;
create table if not exists role_menu(
	rmId int primary key auto_increment,
	rId int not null,
	`mId` int null
);

##############################建立主外键关系
#用户表和用户角色表uid
alter table user_role
add constraint fk_uid foreign key (uId) references `user`(uId);


#角色表和用户角色表rid
alter table user_role
add constraint fk_rid foreign key (rId) references `role`(rId);


#角色表和权限表rid
alter table role_menu
add constraint fk_rid2 foreign key (rId) references `role`(rId);


#菜单栏和权限表rid
alter table role_menu
add constraint fk_mid foreign key (`mId`) references `menu`(`mId`);


##############################添加数据

#user表添加数据
insert `user`(uname,upwd) values('张晴','zhangqing');
insert `user`(uname,upwd) values('朱丽萍','zhuliping');
insert `user`(uname,upwd) values('安美娇','anmeijiao');
insert `user`(uname,upwd) values('张红月','zhanghongyue');
insert `user`(uname,upwd) values('张丽霞','zhanglixia');
insert `user`(uname,upwd) values('霍炜','huowei');
insert `user`(uname,upwd) values('高宇','gaoyu');
insert `user`(uname,upwd) values('聂众','niezhong');
insert `user`(uname,upwd) values('姚丹丹','yaodandan');
insert `user`(uname,upwd) values('王曼曼','wangmanman');
insert `user`(uname,upwd) values('刘晓兰','liuxiaolan');
insert `user`(uname,upwd) values('刘蒙蒙','liumengmeng');
insert `user`(uname,upwd) values('刘丽香','liulixiang');


#role表添加数据
insert `role`(rname) values('校长');
insert `role`(rname) values('副校长');
insert `role`(rname) values('经理');
insert `role`(rname) values('主管');
insert `role`(rname) values('教员');
insert `role`(rname) values('班主任');
insert `role`(rname) values('教务');
insert `role`(rname) values('人事');
insert `role`(rname) values('行政');


#用户角色表添加数据
insert user_role(uid,rid) values(1,5);
insert user_role(uid,rid) values(2,5);
insert user_role(uid,rid) values(3,5);
insert user_role(uid,rid) values(4,5);
insert user_role(uid,rid) values(5,5);
insert user_role(uid,rid) values(7,5);

insert user_role(uid,rid) values(6,2);
insert user_role(uid,rid) values(8,3);
insert user_role(uid,rid) values(6,2);

insert user_role(uid,rid) values(12,8);
insert user_role(uid,rid) values(13,9);

insert user_role(uid,rid) values(9,6);
insert user_role(uid,rid) values(10,6);

insert user_role(uid,rid) values(11,4);

insert user_role(uid,rid) values(8,5);

#菜单栏添加数据
insert menu(mname,murl) values('就业管理','jiuye.jsp');
insert menu(mname,murl) values('教员管理','jiaoyuan.jsp');
insert menu(mname,murl) values('班级管理','banji.jsp');
insert menu(mname,murl) values('课程管理','kecheng.jsp');
insert menu(mname,murl) values('题库管理','tiku.jsp');
insert menu(mname,murl) values('学员管理','xueyuan.jsp');


#为权限表添加数据
insert role_menu(rid,`mid`) values(8,1);
insert role_menu(rid,`mid`) values(8,2);
insert role_menu(rid,`mid`) values(8,3);
insert role_menu(rid,`mid`) values(8,4);
insert role_menu(rid,`mid`) values(8,5);
insert role_menu(rid,`mid`) values(8,6);
insert role_menu(rid,`mid`) values(9,1);
insert role_menu(rid,`mid`) values(1,2);

select * from `user`;
select * from `role`;
select * from `menu`;


select * from user_role;



