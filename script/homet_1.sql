-- create 문
drop table users;
drop table mealkit;
-- users
create table users(
	uidx int auto_increment,
	name varchar(20) not null,
	nickname varchar(30) not null unique,
	email varchar(50) not null,
	password varchar(64) not null,
	age int,
	gender varchar(5) not null,
	kakao long,
	primary key(uidx)	
); 

-- mealkit
create table mealkit(
	midx int auto_increment,
	name varchar(50) not null,
	price varchar(20) not null,
	image varchar(50) not null,
	category varchar(10) not null,
	primary key(midx)
);

select * from mealkit;

-- order
create table orders(
	oidx int auto_increment,
	nickname varchar(20) not null,
	order_list varchar(100) not null,
	order_date timestamp default current_timestamp,
	del_data timestamp not null,
	primary key(oidx),
	foreign key(nickname) references users(nickname)
);

-- videos
create table videos(
	vidx int auto_increment,
	subject varchar(100) not null,
	category varchar(10) not null,
	url varchar(200) not null,
	content varchar(200),
	reg_date timestamp default current_timestamp,
	read_cnt int default 0,
	primary key (vidx)
);

-- freeboard
create table freeboard(
	fidx int auto_increment,
	subject varchar(30) not null,
	nickname varchar(30) not null,
	hashtag varchar(20),
	content varchar(1500),
	fimage varchar(60),
	reg_date timestamp default current_timestamp,
	like_cnt int default 0,
	primary key(fidx),
	foreign key(nickname) references users(nickname)
);


alter table users add addr varchar(50) not null;

select * from freeboard f ;


-- users insert
insert into users values (0,'admin','관리자','admin@naver.com',sha2('1111111',256),99,'남',null,'서울시');

-- mealkit insert 
insert into mealkit(name,price,image,category) values('닭가슴살 스테이크 오리지널 100g',   '1500',   '닭가슴살 스테이크 오리지널.jpg',   'meat');
insert into mealkit(name,price,image,category) values('닭가슴살 스테이크 갈릭맛 100g',   '1500',   '닭가슴살 스테이크 갈릭맛.jpg',   'meat');
insert into mealkit(name,price,image,category) values('닭가슴살 스테이크 고추맛 100g',   '1500',   '닭가슴살 스테이크 고추맛.jpg',   'meat');
insert into mealkit(name,price,image,category) values('소프트 닭가슴살 마늘맛 100g',   '1500',   '소프트 닭가슴살 마늘맛.jpg',   'meat');
insert into mealkit(name,price,image,category) values('소프트 닭가슴살 탄두리맛 100g',   '1500',   '소프트 닭가슴살 탄두리맛.jpg',   'meat');
insert into mealkit(name,price,image,category) values('소프트 닭가슴살 고추맛 100g',   '1500',   '소프트 닭가슴살 고추맛.jpg',   'meat');
insert into mealkit(name,price,image,category) values('소고기볼 오리지널 100g',   '2500',   '소고기볼 오리지널.jpg',   'meat');
insert into mealkit(name,price,image,category) values('소고기볼 청양고추 100g',   '2500',   '소고기볼 청양고추.jpg',   'meat');
insert into mealkit(name,price,image,category) values('소고기볼 혼합 100g',   '2500',   '소고기볼 혼합맛.jpg',   'meat');
insert into mealkit(name,price,image,category) values('훈제연어 슬라이스 80g',   '4000',   '훈제연어 슬라이스.jpg',   'meat');
insert into mealkit(name,price,image,category) values('연어 스테이크 80g',   '4000',   '연어 스테이크.jpg',   'meat');
insert into mealkit(name,price,image,category) values('자연미덕 오리훈제 바비큐 200g',   '3500',   '오리훈제 바비큐.jpg',   'meat');
insert into mealkit(name,price,image,category) values('돼지안심 수비드 플레인 150g',   '5000',   '돼지안심 수비드 플레인.jpg',   'meat');
insert into mealkit(name,price,image,category) values('돼지안심 수비드 양념 150g',   '5000',   '돼지안심 수비드 양념.jpg',   'meat');
insert into mealkit(name,price,image,category) values('친환경 양상추 20g',   '500',   '양상추.png',   'salad');
insert into mealkit(name,price,image,category) values('친환경 양배추 20g',   '500',   '양배추.jpg',   'salad');
insert into mealkit(name,price,image,category) values('친환경 적양배추 20g',   '500',   '적양배추.jpg',   'salad');
insert into mealkit(name,price,image,category) values('방울토마토 (5알) ',   '500',   '방울토마토.jpg',   'salad');
insert into mealkit(name,price,image,category) values('아보카도 80g',   '1000',   '아보카도.jpg',   'salad');
insert into mealkit(name,price,image,category) values('치커리 20g',   '500',   '치커리.jpg',   'salad');
insert into mealkit(name,price,image,category) values('라디치오 20g',   '500',   '라디치오.jpg',   'salad');
insert into mealkit(name,price,image,category) values('로메인 20g',   '500',   '로메인.jpg',   'salad');
insert into mealkit(name,price,image,category) values('블루베리 (5알)',   '500',   '블루베리.jpg',   'topping');
insert into mealkit(name,price,image,category) values('아몬드 10g',   '500',   '아몬드.jpg',   'topping');
insert into mealkit(name,price,image,category) values('고구마말랭이 10g',   '500',   '고구마말랭이.jpg',   'topping');
insert into mealkit(name,price,image,category) values('리코타 치즈 50g ',   '1000',   '리코타치즈.jpg',   'topping');
insert into mealkit(name,price,image,category) values('페타 치즈 50g',   '1000',   '페타치즈.jpg',   'topping');
insert into mealkit(name,price,image,category) values('건바나나 10g',   '300',   '건바나나.jpg',   'topping');
insert into mealkit(name,price,image,category) values('건포도 10g',   '300',   '건포도.jpg',   'topping');
insert into mealkit(name,price,image,category) values('반숙계란 1알',   '500',   '반숙계란.jpg',   'topping');
insert into mealkit(name,price,image,category) values('훈제계란 1알',   '500',   '훈제계란.jpg',   'topping');
insert into mealkit(name,price,image,category) values('캐슈넛 드레싱',   '300',   '캐슈넛 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('오리엔탈 드레싱',   '300',   '오리엔탈 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('발사믹 드레싱',   '300',   '발사믹 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('참깨오곡 드레싱',   '300',   '참깨오곡 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('오이피클 머스터드 드레싱',   '300',   '오이피클 머스터드 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('레몬라임 드레싱',   '300',   '레몬라임 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('시저 드레싱',   '300',   '시저 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('요거트 드레싱',   '300',   '요거트 드레싱.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('붉닭 소스',   '300',   '불닭소스.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('바비큐 소스',   '300',   '바베큐소스.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('스테이크 소스',   '300',   '스테이크 소스.png',   'sauce');
insert into mealkit(name,price,image,category) values('칠리갈릭 소스',   '300',   '칠리갈릭 소스.png',   'sauce');
insert into mealkit(name,price,image,category) values('스리라차 소스',   '300',   '스리라차 소스.png',   'sauce');
insert into mealkit(name,price,image,category) values('스위트 칠리 소스',   '300',   '스위트칠리 소스.png',   'sauce');
insert into mealkit(name,price,image,category) values('피넛 소스',   '300',   '피넛 소스.png',   'sauce');
insert into mealkit(name,price,image,category) values('블랙갈릭 소스',   '300',   '블랙갈릭 소스.png',   'sauce');


insert into freeboard(subject,nickname,hashtag,content) values('자유게시판 test','관리자','#test','test 중..');

