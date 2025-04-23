use bbs;

create table bbs(
	bbsID int,
	bbsTitle varchar(50),
	userID varchar(20),
	bbsDate datetime,
	bbsContent varchar(2048),
	bbsAvailable int,
	primary key(bbsID)
	);