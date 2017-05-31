create table session (
	sid char(32) not null default '',
	utime int not null default 0,
	sdata text,
	uip char(15) not null default '',
	uagent varchar(200) not null default '',
	index session_sid(sid)

);


