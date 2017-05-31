create table email (
	id int not null auto_increment,
	uid int not null default 0,
	title varchar(80) not null default '',
	ptime int not null default 0,
	mbody text,
	primary key(id)
);

insert into email (uid,title,ptime,mbody) values(1,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(1,'111',12345,'111111111111');

insert into email (uid,title,ptime,mbody) values(2,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(2,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(2,'111',12345,'111111111111');

insert into email (uid,title,ptime,mbody) values(3,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(3,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(3,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(3,'111',12345,'111111111111');
insert into email (uid,title,ptime,mbody) values(3,'111',12345,'111111111111');


create table users (
        id int not null auto_increment,
        name varchar(10) not null default '',
        password varchar(20) not null default '',
        primary key (id)
);

insert into users (name,password) values('lh','12345');
insert into users (name,password) values('zs','12345');
insert into users (name,password) values('ls','12345');
