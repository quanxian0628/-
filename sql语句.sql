select * from `user`;
select * from `role`;
select * from `user_role`;

#根据用户编号，查询用户权限Id
select r.rid 
from user_role ur,`user` u,role r
where u.uid=1 and u.uId=ur.uId and r.rId=ur.rId;


select r.rid from user_role ur,`user` u,role r where u.uid=1 and u.uId=ur.uId and r.rId=ur.rId;


#判断uId在用户权限表中是否存在
select count(*) from user_role where uid=11;




select * from role_menu where rid=8;


select * from menu;

select rId from user_role where uId=1

select * from menu where `mid` in(
select `mid` from role_menu where rid in(select rId from user_role where uId=3)
	
)




select uId from user where uname='张晴' and upwd='zhangffqing'



select uid from user;

select * from role;



