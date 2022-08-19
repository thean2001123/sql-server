create table dondathang(
masodonhang int primary key ,
nguoidathang varchar(50),
diachi varchar(255),
sdt int,
ngaydathang date
);
create table danhsachcacmathang(
id int primary key,
tenhang varchar(100), 
motahang varchar(255),
gia int,
soluong int
);
drop table danhsachcacmathang;


insert into dondathang
values('123','Nguyen Van An','111 Nguyen Trai Thanh Xuan Ha Noi','0987654321','11/18/09');
insert into dondathang
values('134','Nguyen Van Binh','111 Nguyen Trai Thanh Xuan Ha Noi','0987654321','11/18/09');
select * from dondathang;
delete from dondathang where masodonhang = 134;

insert into danhsachcacmathang
values('1','May Tinh T450','May Nhap Moi','1000','1');
insert into danhsachcacmathang
values('2','Dien Thoai Nokia 5670','Dien Thoai Dang Hot','200','2');
insert into danhsachcacmathang
values('3','May In SamSung 450','May In Dang e','100','1');
select * from danhsachcacmathang;

--4
select nguoidathang as danhsachnguoimua from dondathang;
select count(*) as danhsachsanpham,tenhang from danhsachcacmathang group by tenhang;
select count(*) as donhang, masodonhang from dondathang group by masodonhang;


--5
select * from danhsachcacmathang order by gia desc;
select tenhang as Anmuahang from danhsachcacmathang;

--6 
select count(*) as khachhangdamua from dondathang;
select sum(gia) as tongtientungdon from danhsachcacmathang;