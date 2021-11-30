-- create ��
drop table users;
drop table mealkit;
drop table freeboard ;
drop table likes;
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

-- likes
create table likes(
	lidx int,
	nickname varchar(30),
	fidx int,
	primary key(lidx),
	foreign key(nickname) references users(nickname),
	foreign key(fidx) references freeboard(fidx)
);

-- set_menu
create table set_menu(
   setidx int auto_increment,
   name varchar(30) not null,
   content varchar(50),
   price varchar(6),
   idx_list varchar(50),   -- 11.18����
   category varchar(20) not null,   -- 11.18 ����
   primary key(setidx)
);
alter table likes add primary key(lidx);

alter table users add addr varchar(50) not null;

select * from freeboard f ;


-- users insert
insert into users values (0,'admin','������','admin@naver.com',sha2('1111111',256),99,'��',null,'�����');

-- mealkit insert 
insert into mealkit(name,price,image,category) values('�߰����� ������ũ �������� 100g',   '1500',   '�߰����� ������ũ ��������.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�߰����� ������ũ ������ 100g',   '1500',   '�߰����� ������ũ ������.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�߰����� ������ũ ���߸� 100g',   '1500',   '�߰����� ������ũ ���߸�.jpg',   'meat');
insert into mealkit(name,price,image,category) values('����Ʈ �߰����� ���ø� 100g',   '1500',   '����Ʈ �߰����� ���ø�.jpg',   'meat');
insert into mealkit(name,price,image,category) values('����Ʈ �߰����� ź�θ��� 100g',   '1500',   '����Ʈ �߰����� ź�θ���.jpg',   'meat');
insert into mealkit(name,price,image,category) values('����Ʈ �߰����� ���߸� 100g',   '1500',   '����Ʈ �߰����� ���߸�.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�Ұ�⺼ �������� 100g',   '2500',   '�Ұ�⺼ ��������.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�Ұ�⺼ û����� 100g',   '2500',   '�Ұ�⺼ û�����.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�Ұ�⺼ ȥ�� 100g',   '2500',   '�Ұ�⺼ ȥ�ո�.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�������� �����̽� 80g',   '4000',   '�������� �����̽�.jpg',   'meat');
insert into mealkit(name,price,image,category) values('���� ������ũ 80g',   '4000',   '���� ������ũ.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�ڿ��̴� �������� �ٺ�ť 200g',   '3500',   '�������� �ٺ�ť.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�����Ƚ� ����� �÷��� 150g',   '5000',   '�����Ƚ� ����� �÷���.jpg',   'meat');
insert into mealkit(name,price,image,category) values('�����Ƚ� ����� ��� 150g',   '5000',   '�����Ƚ� ����� ���.jpg',   'meat');
insert into mealkit(name,price,image,category) values('ģȯ�� ����� 20g',   '500',   '�����.png',   'salad');
insert into mealkit(name,price,image,category) values('ģȯ�� ����� 20g',   '500',   '�����.jpg',   'salad');
insert into mealkit(name,price,image,category) values('ģȯ�� ������� 20g',   '500',   '�������.jpg',   'salad');
insert into mealkit(name,price,image,category) values('����丶�� (5��) ',   '500',   '����丶��.jpg',   'salad');
insert into mealkit(name,price,image,category) values('�ƺ�ī�� 80g',   '1000',   '�ƺ�ī��.jpg',   'salad');
insert into mealkit(name,price,image,category) values('ġĿ�� 20g',   '500',   'ġĿ��.jpg',   'salad');
insert into mealkit(name,price,image,category) values('���ġ�� 20g',   '500',   '���ġ��.jpg',   'salad');
insert into mealkit(name,price,image,category) values('�θ��� 20g',   '500',   '�θ���.jpg',   'salad');
insert into mealkit(name,price,image,category) values('��纣�� (5��)',   '500',   '��纣��.jpg',   'topping');
insert into mealkit(name,price,image,category) values('�Ƹ�� 10g',   '500',   '�Ƹ��.jpg',   'topping');
insert into mealkit(name,price,image,category) values('���������� 10g',   '500',   '����������.jpg',   'topping');
insert into mealkit(name,price,image,category) values('����Ÿ ġ�� 50g ',   '1000',   '����Ÿġ��.jpg',   'topping');
insert into mealkit(name,price,image,category) values('��Ÿ ġ�� 50g',   '1000',   '��Ÿġ��.jpg',   'topping');
insert into mealkit(name,price,image,category) values('�ǹٳ��� 10g',   '300',   '�ǹٳ���.jpg',   'topping');
insert into mealkit(name,price,image,category) values('������ 10g',   '300',   '������.jpg',   'topping');
insert into mealkit(name,price,image,category) values('�ݼ���� 1��',   '500',   '�ݼ����.jpg',   'topping');
insert into mealkit(name,price,image,category) values('������� 1��',   '500',   '�������.jpg',   'topping');
insert into mealkit(name,price,image,category) values('ĳ���� �巹��',   '300',   'ĳ���� �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('������Ż �巹��',   '300',   '������Ż �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('�߻�� �巹��',   '300',   '�߻�� �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('�������� �巹��',   '300',   '�������� �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('������Ŭ �ӽ��͵� �巹��',   '300',   '������Ŭ �ӽ��͵� �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('������� �巹��',   '300',   '������� �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('���� �巹��',   '300',   '���� �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('���Ʈ �巹��',   '300',   '���Ʈ �巹��.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('�Ӵ� �ҽ�',   '300',   '�Ҵ߼ҽ�.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('�ٺ�ť �ҽ�',   '300',   '�ٺ�ť�ҽ�.jpg',   'sauce');
insert into mealkit(name,price,image,category) values('������ũ �ҽ�',   '300',   '������ũ �ҽ�.png',   'sauce');
insert into mealkit(name,price,image,category) values('ĥ������ �ҽ�',   '300',   'ĥ������ �ҽ�.png',   'sauce');
insert into mealkit(name,price,image,category) values('�������� �ҽ�',   '300',   '�������� �ҽ�.png',   'sauce');
insert into mealkit(name,price,image,category) values('����Ʈ ĥ�� �ҽ�',   '300',   '����Ʈĥ�� �ҽ�.png',   'sauce');
insert into mealkit(name,price,image,category) values('�ǳ� �ҽ�',   '300',   '�ǳ� �ҽ�.png',   'sauce');
insert into mealkit(name,price,image,category) values('������ �ҽ�',   '300',   '������ �ҽ�.png',   'sauce');

-- video insert
-- videos ������ (ī�װ� : ȨƮ, ����Ʈ, �䰡, ��Ʈ��Ī)

-- ȨƮ
insert into videos(subject, category, url, content)
			values("[��Ÿ�ν�����] ���ſ ���̾�Ʈ/Į�θ����߿", "ȨƮ", "https://www.youtube.com/embed/PHdzU1S50AY", "[��Ÿ�ν�����] ���ſ ���̾�Ʈ/Į�θ����߿ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����κ�] Į���� �� ���ٸſ��", "ȨƮ", "https://www.youtube.com/embed/gMaB-fG4u4g", "[�����κ�] Į���� �� ���ٸſ�� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����κ�] ��� �Ʒ���� �ְ��� �", "ȨƮ", "https://www.youtube.com/embed/0L5gAT1fJaM", "[�����κ�] ��� �Ʒ���� �ְ��� � �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[������] ������ Ÿ��Ÿ �", "ȨƮ", "https://www.youtube.com/embed/4EKo44DUvjg", "[������] ������ Ÿ��Ÿ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�򾾽�] NO �����ҿ� ���ο� �", "ȨƮ", "https://www.youtube.com/embed/myNjmnvI6x0", "[�򾾽�] NO �����ҿ� ���ο� � �����Դϴ�!");

-- ����Ʈ
insert into videos(subject, category, url, content)
			values("[������] ����Ʈ �ϴ� ���� 3���� ���", "����Ʈ", "https://www.youtube.com/embed/3l8GZ94YT9o", "[������] ����Ʈ �ϴ� ���� 3���� ��� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����ð�����] ���� � ��Ȳ", "����Ʈ", "https://www.youtube.com/embed/cgsqsVxd5xc", "[�����ð�����] ���� � ��Ȳ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[������] ��ü", "����Ʈ", "https://www.youtube.com/embed/u5OgcZdNbMo", "[������] ��ü �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ͺ�] �� ���ƾ", "����Ʈ", "https://www.youtube.com/embed/SmxvbUXT4_Q", "[�ͺ�] �� ���ƾ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ͺ�] �ｺ�� ��ü� ����", "����Ʈ", "https://www.youtube.com/embed/Dr2exaqERw4", "[�ͺ�] �ｺ�� ��ü� ���� �����Դϴ�!");

-- �䰡
insert into videos(subject, category, url, content)
			values("[�����䰡] ���ʿ䰡 �ʼ�����(��ver)", "�䰡", "https://www.youtube.com/embed/1W9gMxLoW6Q", "[�����䰡] ���ʿ䰡 �ʼ�����(��ver) �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[���ϸ�] �䰡 �Թ� ���ʺ��䰡", "�䰡", "https://www.youtube.com/embed/OBTl49bVk94", "[���ϸ�] �䰡 �Թ� ���ʺ��䰡 �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����䰡] �Ϸ縦 �����ϰ�! 20�� ��ħ�䰡", "�䰡", "https://www.youtube.com/embed/CUWrrql-rOo", "[�����䰡] �Ϸ縦 �����ϰ�! 20�� ��ħ�䰡 �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����䰡] ��ݼ�ȯ, ô��Ǯ��", "�䰡", "https://www.youtube.com/embed/OdGX6J29JVw", "[�����䰡] ��ݼ�ȯ, ô��Ǯ�� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[���ϸ�] ������ �� �� �ִ� 15�� Ȩ�䰡", "�䰡", "https://www.youtube.com/embed/2RaErjnOzmU", "[���ϸ�] ������ �� �� �ִ� 15�� Ȩ�䰡 �����Դϴ�!");
		
-- ��Ʈ��Ī
insert into videos(subject, category, url, content)
			values("[�����ð�����] ������ ��, ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/3zc1mGfA5kc", "�����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ͺ�] �㸮���� �����ִ� ��ħ ��Ʈ��Ī 5����", "��Ʈ��Ī", "https://www.youtube.com/embed/L4zQU7C_hoA", "[�ͺ�] �㸮���� �����ִ� ��ħ ��Ʈ��Ī 5���� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����κ�] ���� ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/nOGT4lXlSHw", "[�����κ�] ���� ��Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ٳ�Ƽ��] ��ħ�� �����ڸ��� �����ϴ� ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/6_LYz_XxD-g", "[�ٳ�Ƽ��] ��ħ�� �����ڸ��� �����ϴ� ��Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[������] � �� �ְ��� ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/yyjOhsNEqtE", "[������] � �� �ְ��� ��Ʈ��Ī �����Դϴ�!");
		
insert into videos(subject, category, url, content)
			values("[�򾾽�] ���� Ÿ��Ÿ �", "ȨƮ", "https://www.youtube.com/embed/6q4gp1eB0cY", "[�򾾽�] ���� Ÿ��Ÿ � �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�������̻�յ���] ��ü ����Ʈ �.zip", "ȨƮ", "https://www.youtube.com/embed/iQHKnyU8ZVI", "[�������̻�յ���] ��ü ����Ʈ �.zip �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�������̻�յ���] 11�� ���ο", "ȨƮ", "https://www.youtube.com/embed/EojxzBZbo4o", "[�������̻�յ���] 11�� ���ο �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�������̻�յ���] 20�� ����Ÿ��Ÿ", "ȨƮ", "https://www.youtube.com/embed/BnmxF7Fw_hE", "[�������̻�յ���] 20�� ����Ÿ��Ÿ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�����κ�] ������� �ٸ��� �ְ��� �", "ȨƮ", "https://www.youtube.com/embed/LK9e6mg4cmQ", "[�����κ�] ������� �ٸ��� �ְ��� � �����Դϴ�!");

insert into videos(subject, category, url, content)
			values("[������] �ｺ�� ��ü� ��ƾ", "����Ʈ", "https://www.youtube.com/embed/eBtLrAXkATo", "[������] �ｺ�� ��ü� ��ƾ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ͺ�] ���� ����� ��ƾ", "����Ʈ", "https://www.youtube.com/embed/d9m--yp_wyk", "[�ͺ�] ���� ����� ��ƾ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[������] �ｺ�� ��ü� ��ƾ", "����Ʈ", "https://www.youtube.com/embed/Dw8PbebpF9w", "[������] �ｺ�� ��ü� ��ƾ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ͺ�] �︰�� ��ü� ��ƾ", "����Ʈ", "https://www.youtube.com/embed/Cb0yy0yHRUg", "[�ͺ�] �︰�� ��ü� ��ƾ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ͺ�] ��ƾ¥�� ��", "����Ʈ", "https://www.youtube.com/embed/YahXKYnc8K8", "[�ͺ�] ��ƾ¥�� �� �����Դϴ�!");

insert into videos(subject, category, url, content)
			values("[�䰡��] 30�� ���ſ䰡", "�䰡", "https://www.youtube.com/embed/XHTHwsbkWY0", "[�䰡��] 30�� ���ſ䰡 �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�䰡��] ������ �䰡, ���ϸ� ��Ʈ��Ī", "�䰡", "https://www.youtube.com/embed/0MNZuQtXpBA", "[�䰡��] ������ �䰡, ���ϸ� ��Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[��Ű�ǰ�TV] Ȳ�ƿ��� ó�� ������ �䰡", "�䰡", "https://www.youtube.com/embed/RtB_nMpOe5Q", "[��Ű�ǰ�TV] Ȳ�ƿ��� ó�� ������ �䰡 �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ƿ�Ȳ] Ȳ�ƿ� �䰡��ƾ ���ϸ� 15�� ��ü", "�䰡", "https://www.youtube.com/embed/zZ-0rFOxFrU", "[�ƿ�Ȳ] Ȳ�ƿ� �䰡��ƾ ���ϸ� 15�� ��ü �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ƿ�Ȳ] ��ü���� ���� 10�� �̰� �ϳ��� �ذ�", "�䰡", "https://www.youtube.com/embed/4S4m9R-EFTE", "[�ƿ�Ȳ] ��ü���� ���� 10�� �̰� �ϳ��� �ذ� �����Դϴ�!");

insert into videos(subject, category, url, content)
			values("[��Ÿ�ν�����] ���� ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/ECu-P8IqgHU", "[��Ÿ�ν�����] ���� ��Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ҹ���] 13�� ���ϸ� ���Ž�Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/X2s3RZR8lPI", "[�ҹ���] 13�� ���ϸ� ���Ž�Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[���Ｚ�𺴿�] ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/G32r7kx-MTw", "[���Ｚ�𺴿�] ��Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[���ϸ�] 10�� ħ�� ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/YPFRGg7LD_w", "[���ϸ�] 10�� ħ�� ��Ʈ��Ī �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[����] 15�� ��� ��Ʈ��Ī", "��Ʈ��Ī", "https://www.youtube.com/embed/xCIid6LG354", "[����] 15�� ��� ��Ʈ��Ī �����Դϴ�!");
		
insert into videos(subject, category, url, content)
			values("[�˷��Ͻ��] 15�� ȨƮ", "ȨƮ", "https://www.youtube.com/embed/LaC1kwfhtyQ", "[�˷��Ͻ��] 15�� ȨƮ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[������] ����ü�� ȨƮ 15�� ��ƾ", "ȨƮ", "https://www.youtube.com/embed/rSBOuArsz1k", "[������] ����ü�� ȨƮ 15�� ��ƾ �����Դϴ�!");
		
insert into videos(subject, category, url, content)
			values("[��Ÿ�ν�����] ü�߰��� 20���� ���۸���", "ȨƮ", "https://www.youtube.com/embed/9Vwp43YBTAs", "[��Ÿ�ν�����] ü�߰��� 20���� ���۸��� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[��Ÿ�ν�����] ���� ����� Ÿ��Ÿ", "ȨƮ", "https://www.youtube.com/embed/sucNosF93w8", "[��Ÿ�ν�����] ���� ����� Ÿ��Ÿ �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�ҹ���] 2�� ���� ç����", "ȨƮ", "https://www.youtube.com/embed/p623pewgTc0", "[�ҹ���] 2�� ���� ç���� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�򾾽�] 12�� �����ϴ� ���� �", "ȨƮ", "https://www.youtube.com/embed/sqQpL1wKW6M", "[�򾾽�] 12�� �����ϴ� ���� � �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[�򾾽�] ����Ʈ 10���� ����", "ȨƮ", "https://www.youtube.com/embed/DWYDL-WxF1U", "[�򾾽�] ����Ʈ 10���� ���� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("[X-HIT] ���ϸ� ���Ϸ��� �ٸ��", "ȨƮ", "https://www.youtube.com/embed/xpzMr3nSOIE", "[X-HIT] ���ϸ� ���Ϸ��� �ٸ�� �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("", "ȨƮ", "", " �����Դϴ�!");
insert into videos(subject, category, url, content)
			values("", "ȨƮ", "", " �����Դϴ�!");

insert into set_menu (name,content,category)
values('��ũ�� set','��ũ���� ���ϴ� �ڿ��� �ʿ��� set!!','set');
insert into set_menu (name,price,idx_list,category)
values('��ũ�� set1','7800','1/4/7/18/15/24/25/46','bulk');
insert into set_menu (name,price,idx_list,category)
values('��ũ�� set2','7300','2/2/5/22/21/17/31/23/45','bulk');
insert into set_menu (name,price,idx_list,category)
values('��ũ�� set3','10400','12/4/6/20/17/15/28/30/19/43/32','bulk');
insert into set_menu (name,price,idx_list,category)
values('��ũ�� set4','11300','1/4/13/18/15/20/26/24/41','bulk');


-- set_menu
insert into set_menu (name,content,category)   -- balance
values('��¯ set','�뷱���ִ� �Ĵ��� ì��� set!!','set');
insert into set_menu (name,price,idx_list,category)
values('��ҽĴ� set1','4100','3/17/15/30/31/24/32','balance');
insert into set_menu (name,price,idx_list,category)
values('��ҽĴ� set2','9100','11/2/18/16/22/23/26/43/35','balance');
insert into set_menu (name,price,idx_list,category)
values('��ҽĴ� set3','8100','13/15/20/21/24/31/34/42','balance');
insert into set_menu (name,price,idx_list,category)
values('��ҽĴ� set4','7900','5/9/18/19/15/27/28/39/40','balance');


insert into set_menu (name,content,category)   -- bodyprofile bdpf
values('Body Profile set','�ٵ������ʷ����� �ʿ��� set!!','set');
insert into set_menu (name,price,idx_list,category)
values('�ٵ������ʿ� set1','4600','1/15/16/26/31/34/45','bodyprofile');
insert into set_menu (name,price,idx_list,category)
values('�ٵ������ʿ� set2','4400','4/17/18/20/30/29/39/41','bodyprofile');
insert into set_menu (name,price,idx_list,category)
values('�ٵ������ʿ� set3','6100','7/22/16/21/24/27/35/40','bodyprofile');
insert into set_menu (name,price,idx_list,category)
values('�ٵ������ʿ� set4','8100','10/16/19/21/26/23/37/47','bodyprofile');

select * from set_menu sm ;

insert into set_menu (name,content,category)   -- diet
values('���̾�Ʈ set','���̾�Ʈ�� ���� �ڰ� ���� set!!','set');
insert into set_menu (name,price,idx_list,category)
values('���̾�Ʈ �Ĵ� set1','4300','1/18/18/30/30/30/44','diet');
insert into set_menu (name,price,idx_list,category)
values('���̾�Ʈ �Ĵ� set2','4500','7/15/20/23/25','diet');
insert into set_menu (name,price,idx_list,category)
values('���̾�Ʈ �Ĵ� set3','4800','4/16/18/31/31/31/25/46','diet');


insert into set_menu (name,content,category)   -- vegetable vgtb
values('vegetable set','ä�����ָ� ���ϴ� �ڿ��� �ʿ��� set!!','set');
insert into set_menu (name,price,idx_list,category)
values('���������� set1','7800','11/15/19/20/26/30/34','salad');
insert into set_menu (name,price,idx_list,category)
values('���������� set2','4800','5/15/23/24/26/31/33','salad');
insert into set_menu (name,price,idx_list,category)
values('���������� set3','6600','12/15/17/21/23/25/35/47','salad');
		
-- user insert
INSERT INTO homet.users (name,nickname,email,password,age,gender,kakao,addr) VALUES
	('������','�����','aud0403@naver.com','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a',30,'��',NULL,'���� �߶��� ���Ϸ�129�� 35'),
	 ('������','��','ausouon@gmail.com','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a',21,'��',NULL,'���� ������ ������181�� 8'),
	 ('���Լ�','�Լ���','ka@naver.com','1718c24b10aeb8099e3fc44960ab6949ab76a267352459f203ea1036bec382c2',29,'��',NULL,'���� ������ ������� 298'),
	 ('������','����','dlqustn96@gmail.com','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a',26,'��',NULL,'���� ���Ǳ� ������� 2'),
	 ('����ȯ','ȯ��','t@naver.com','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a',26,'��',NULL,'��� ��õ�� ���ȷ� 252');		
		
		
-- freeboard insert
INSERT INTO homet.freeboard (subject,nickname,hashtag,content,fimage,reg_date,like_cnt) VALUES
	 ('[����]   AVOCADO�� ���� ���� ȯ���մϴ�.','������','','�������� �ǰ��� ���� ��Ż�� ���� �����Դϴ�.','KakaoTalk_20211123_104012080.png','2021-11-27 18:52:25',0),
	 ('[����] ���� ���ǻ���','������','',' ����, Ư������ �� �Ѽ�, ���ϳ����� ���� �ݺ��Ͽ� �Խ��ϴ� ���, �Խ��� ���ݿ� ���� �ʴ� ��, ������, �弳, ��Ӿ�, ��漺, ���ؼ�, ��Ÿ �Ұ����� ������ ��� ���� ��쿡�� �����뺸 ���� ������ �� ������ ���عٶ��ϴ�.

��� ! ���ϰ� ������ ������ Ÿ���� ������ �� ������, Ÿ���� �������� �� �α�ħ���ϴ� ��� �� �Ѽ� ������ ��Ҵ��� ���� �ֽ��ϴ�.

 �Խ��ǿ� �۾��⸦ �ϴ� ���, ���� �Ǵ� ÷�����ϳ��� �������� ����, �ּ� ��)�� ���ԵǾ� �Խõ��� �ʵ��� �����Ͻñ� �ٶ��ϴ�.

 ���������� �����Ͽ� �Խ��ϴ� ��쿡�� ��Ư�� �ټ����� ���������� ����Ǿ� �ǿ�� �� ������, Ư�� Ÿ���� ���������� ����Ǵ� ��쿡�� ����������ȣ���� ���� ó���� ���� �� ������ �˷��帳�ϴ�.','','2021-11-27 20:38:14',0),
	 ('[���]���ﵿ �ｺ�� ��õ���� �Ф�','�Լ���','���ﵿ','�ｺ�� ó�� �����Ϸ��µ�!! 
�������� �ⱸ����,, Ʈ���̳������� �˷��ּ���...',NULL,'2021-11-27 21:45:40',0),
	 ('[���]�ٵ���ð��Ͻó���?','����','�ｺ','�ٵ� � ��ð� �Ͻʴϱ�!! �ñ��ؼ� �������',NULL,'2021-11-27 21:46:29',0),
	 ('[���]�ٵ� �Ĵ����� �Ͻó���?','��','�Ĵ�','�ٵ� �ｺ�� �ٴϸ鼭 ���� �е��� �Ĵ������� �Ͻô��� �ñ��մϴ�.!!',NULL,'2021-11-27 21:48:25',0),
	 ('[���]�����α� �ｺ�� pt�� �絵�մϴ�.','����','PT','������ PT�� ���ް� �Ǿ� �絵�� ������ �Ǿ����ϴ� �Ф� �ΰ� �帳�ϴ�,, �������Ǻ� ���ؿ�,',NULL,'2021-11-27 21:56:14',0),
	 ('[���]���ð����߾��!!','ȯ��','�︰��','�ȳ��ϼ��� !! �ߺ�Ź�帳�ϴ�.
��� �����غ��� �Ĵ��� �����ϰ��� �����߽��ϴ�.!',NULL,'2021-11-28 14:01:43',0),
	 ('[�Ĵ�] ������ �Ĵ���..','�Լ���','�Ĵ�','���� �Ѱ� �ٳ����Ѱ� �ǰ�2�� ����丶�� 6�� �Ծ����!!',NULL,'2021-11-28 14:05:31',0),
	 ('[ȨƮ] ȨƮ���̴׵� ������ ���� �Ǵ°� ���׿�!!','��','ȨƮ','������ ���󺸰� ȨƮ ���������� 1��°!! 
ȨƮ�� �������� ���ƿ�!!',NULL,'2021-11-28 14:06:41',0),
	 ('[���] ���� ��갡�� ���������׿�..','�Լ���','���','���� �޺��� ¸¸�ϰ� �̼������� ���� ��갡�� �� ���� ���� ���ƿ� !!',NULL,'2021-11-28 14:07:16',0);
INSERT INTO homet.freeboard (subject,nickname,hashtag,content,fimage,reg_date,like_cnt) VALUES
	 ('[���] �ｺ �� ������ �Ա� ��������������..','ȯ��','�ｺ','�Ф� �ｺ�� ������ ������ ��Ա������� �������� ���׿��,,',NULL,'2021-11-28 14:11:10',0),
	 ('[���] ���� ��ü��,,','����','�ｺ','��ü�� ���ð� �ϰ�Ծ��,,
����,,,',NULL,'2021-11-28 14:14:31',0),
	 ('[���] �̿��� �԰�ʹ�,,','ȯ��','','�ȳ�',NULL,'2021-11-28 14:19:42',0),
	 ('[���] �ܹ��������� ��õ�ϴ°� �ֳ����?~','��','������','������ �ѹ� �Ծ��;���',NULL,'2021-11-28 14:21:35',0),
	 ('[���] ���� ���������̽�,,','�Լ���','','ũ������',NULL,'2021-11-28 14:39:49',0),
	 ('[���] �߰����� �����������!!','ȯ��','','ȣȣ',NULL,'2021-11-28 14:40:14',0),
	 ('[���] �ູ ���ž����ϴ�,,�ｺ�ϼ���','��','','����',NULL,'2021-11-28 14:40:36',0),
	 ('[���] ������ ��ü�� �մϵ�,,','����','�ｺ','���� ��ü ���� ��ü..',NULL,'2021-11-28 14:41:02',0),
	 ('[���] ��ϸ鼭 �����뷡�� �������?..','�Լ���','','~!~!',NULL,'2021-11-28 14:41:24',0),
	 ('[���] �츮 Ʈ���̳ʽ� �ʹ� �߰���ġ�µ�,,!!','ȯ��','�ｺ','�ʹ� �߰������ִ°� ���ƿ� ',NULL,'2021-11-28 14:41:50',0);
INSERT INTO homet.freeboard (subject,nickname,hashtag,content,fimage,reg_date,like_cnt) VALUES
	 ('[���] ����Ŀ� �Ф�','��','','����¡ >...?',NULL,'2021-11-28 14:42:22',0),
	 ('[���] ���� �ｺ���Ǻ�,,','����','�ｺ','�����ϸ� ���� �� �ߵɰŰ��Ƽ���!',NULL,'2021-11-28 14:42:56',0),
	 ('[���] �ڼ��� �̻��Ѱ�..','�Լ���','','���� ���°Ű��ƿ� �Ф�',NULL,'2021-11-28 14:43:12',0),
	 ('[���] ���׸ӽ��ϸ鼭 ��� ���� ��õ�� ����','ȯ��','�ｺ','��� ���鼭 �ٴ°� ������~',NULL,'2021-11-28 14:43:45',0),
	 ('[���] �� ����� ��Ű�尡����..','�Լ���','','����',NULL,'2021-11-28 14:44:10',0),
	 ('[���] ��ȸ �������ź� �ֳ���?','����','�ｺ','������ �ؼ� �ѹ� �����ϴ°͵� ������ ���ƿ�',NULL,'2021-11-28 14:44:36',0),
	 ('[���] Ʈ���̴׺� ��߰ڴ�,,','��','�ｺ','��õ���ּ���~!',NULL,'2021-11-28 14:45:03',0),
	 ('[��ý] ���ú��� 1��','�����','#��¯','���ú��� ��Ѵ� 
','9b45e723-bc0f-4bb3-bb5f-f304d72a1d70��¯.PNG','2021-11-27 20:44:14',0),
	 ('[��ý]�� �ｺ ����Ѵ�.','��','#�ｺ #��� #�αٵα�','���� �ｺ ����ߴ� ','316823e7-a090-4737-aba8-a5cff933970a�Ʒ�.PNG','2021-11-27 21:02:32',0),
	 ('[�Ĵ�] �Ĵ� �����ؿ�','�質��','#�Ĵ� #������ #���ú��� 1��','�Ĵ� 1���� 
�����带 ��������','cfa53fbe-386b-4f6c-b9c7-e923f96a9da3������.PNG','2021-11-27 21:04:19',0);
INSERT INTO homet.freeboard (subject,nickname,hashtag,content,fimage,reg_date,like_cnt) VALUES
	 ('[����] PT 1ȸ 5�����ε� �Ѱǰ�?','��','#��¯ #PT','�ｺ�忡�� ��Ƽ ��õ �ϴµ� 
�Ѱ��� �𸣰ھ��','95725296-663f-47ed-8405-7020439208fd�Ʒ�.PNG','2021-11-27 21:07:27',0),
	 ('[���] �׳� ���� �� ��� ����??','�����','#��¯ #���� #�۽ɻ���','�̷��� �缭 �԰� �ٴұ�?? 
�Ф�','d00549e6-8c90-40c4-9274-a4407a5b7732����.PNG','2021-11-27 21:09:21',0),
	 ('[��õ] ������ ��Ʃ�� �����ؿ�','�質��','#��Ʃ�� #������ #ȨƮ','����Ʈ ���鼭 ��ϴϱ� 
ȨƮ�� ������ ���ƿ�','3005968a-5b1e-46a0-854b-3438b32774b9TLA.PNG','2021-11-27 21:11:32',0),
	 ('[���] �ְ� ������ �����','�����','#���ۺ��Ϳ�� #������','��� �ϴµ� �� 
���� ���??','62df37b0-a2ef-487d-a783-3c702b3873eeHELP.PNG','2021-11-27 21:15:51',0),
	 ('[���] �ｺ�� ȯ�� ��� �޳��� �Ф�','��','#�ｺ #ȯ��','����ϰ� �Ѵ޿� 2�� ���µ� 
ȯ�� ��� �޳��� ','6334a890-99e5-4c2d-b381-9679a38b3fdeHELP.PNG','2021-11-27 21:18:31',0),
	 ('[���] �� �� �??','�����','#��¯ #�︰��','���� �� 1�����ߴµ� 
�������� ����?','feec3a8a-6dcb-4439-b9bb-60f5a401c150��.PNG','2021-11-27 21:27:43',0),
	 ('[���] �ｺ ȯ�� ��..','��','#�ｺ #ȯ��','�����Ҷ� ����ؼ� 
�������� ���� ���̰� ����
���غ��� ����',NULL,'2021-11-27 21:34:55',0),
	 ('[�Ĵ�] ������ ġ�õ���','�質��','#�Ĵ� #ġ��','������ �ִ� ����
','eb5abbdb-4cd4-4c83-91eb-cca67d4088caġŲ.PNG','2021-11-27 21:37:42',0),
	 ('[���] �̰� ��ũ�����̾�','�����','#��ũ�� #������','���׾��� ��������','9e1b3883-35af-4da3-9360-f3431da9eb4a��.PNG','2021-11-27 21:44:23',0),
	 ('[�ʶ��׽�] �ʶ��׽� �����޾��','�質��','#�ʶ��׽�','Ȥ�� ���� �ʶ��׽� ������ ��õ���ּ���',NULL,'2021-11-27 22:11:43',0);
INSERT INTO homet.freeboard (subject,nickname,hashtag,content,fimage,reg_date,like_cnt) VALUES
	 ('[���] ���!!!','��','#���','���� �ָ����� ��갩�ô�
����ġ��',NULL,'2021-11-27 22:13:10',0),
	 ('[ȨƮ] ȨƮ �ⱸ ��� ����?','�����','#ȨƮ','ȨƮ �ⱸ ��Ʈ�� ���� ������� ����??
���� ��Ѱ�??',NULL,'2021-11-27 22:14:57',0),
	 ('[���]���ﵿ �ｺ�� ��õ���� �Ф�','�����','���ﵿ','�ｺ�� ó�� �����Ϸ��µ�!! 
�������� �ⱸ����,, Ʈ���̳������� �˷��ּ���...',NULL,'2021-11-27 21:45:40',0);







