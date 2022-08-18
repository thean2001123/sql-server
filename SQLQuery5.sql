create table nhacungcap(
manhacc varchar(50) primary key,
tennhacc varchar(255),
diachi varchar(255),
sdt nchar(15) unique,
masothue int
);
create table loaidichvu(
maloaidv varchar(255) primary key,
tenloaidv varchar(255)
);
create table mucphi(
mamucphi varchar(50) primary key,
dongia int,
mota varchar(255)
);
create table loaixe(
dongxe varchar(255) primary key,
hangxe varchar(255),
sochongoi int
);

create table dangkycungcap(
madkcc varchar(50) primary key,
manhacc varchar(255) ,
maloaidv varchar(255) ,
dongxe varchar(255),
mamp varchar(255),
ngaybdcc date,
ngayktcc date,
soluongdkxe int
);
drop table dangkycungcap;

insert into loaidichvu(maloaidv,tenloaidv)
values(N'DV01',N'dich vu xe taxi');
insert into loaidichvu(maloaidv,tenloaidv)
values(N'DV02',N'dich vu xe buyt cong cong theo tuyen co dinh');
insert into loaidichvu(maloaidv,tenloaidv)
values(N'DV03',N'dich vu xe cho thue theo hop dong');

select * from loaidichvu;

insert into mucphi(mamucphi,dongia,mota)
values('MP01',10000,'ap dung tu 1/2015');
insert into mucphi(mamucphi,dongia,mota)
values('MP02',15000,'ap dung tu 2/2015');
insert into mucphi(mamucphi,dongia,mota)
values('MP03',20000,'ap dung tu 1/2010');
insert into mucphi(mamucphi,dongia,mota)
values('MP04',25000,'ap dung tu 2/2011');
select * from mucphi;

insert into loaixe(dongxe,hangxe,sochongoi)
values('vios','toyota',5);
insert into loaixe(dongxe,hangxe,sochongoi)
values('cerato','kia',7);
insert into loaixe(dongxe,hangxe,sochongoi)
values('grand-i10','hyundai',7);
insert into loaixe(dongxe,hangxe,sochongoi)
values('escape','ford',7);
insert into loaixe(dongxe,hangxe,sochongoi)
values('forte','kia',5);
insert into loaixe(dongxe,hangxe,sochongoi)
values('starex','hyundai',7);
select * from loaixe;

insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC01','Cty TNHH Toan Phap','Hai Chau',0356988888,568941);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC02','Cty Co Phan Dong Du','Lien Chieu',0355988888,456789);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC03','Ong Nguyen Van A','Hoa Thuan',0351988888,568942);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC04','Cty Co  Phan Toan Cau Xanh','Hai Chau',0352988888,568943);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC05','Cty TNHH AMA','Thanh Khe',0359688888,568944);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC06','Ba Tran Thi Bich Van','Lien Chieu',0358988888,568945);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC07','Cty TNHH Phan Thanh','Thanh Khe',0353988888,568946);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC08','Ong Phan Dinh Nam','Hoa Thuan',0359488888,568947);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC09','Tap Doan Dong Nam A','Lien Chieu',0359888888,568948);
insert into nhacungcap(manhacc,tennhacc,diachi,sdt,masothue)
values('NCC10','Cty Co Phan Rang Dong','Hai Chau',0359788888,568949);
select * from nhacungcap;

insert into dangkycungcap(madkcc,manhacc,maloaidv,dongxe,mamp,ngaybdcc,ngayktcc,soluongdkxe)
values('DK001','NCC001','DV001','Hiace','MP01','2015/11/20','2016/11/20','4');
insert into dangkycungcap
values('DK002','NCC002','DV002','Hiace','MP01','2015/11/20','2016/11/20','4');
insert into dangkycungcap
values('DK003','NCC003','DV003','vios','MP03','2015/11/20','2017/11/20','4');
insert into dangkycungcap
values('DK004','NCC004','DV004','rollroyce','MP02','2015/11/20','2019/11/20','4');
insert into dangkycungcap
values('DK005','NCC005','DV005','ferrari','MP03','2019/11/20','2020/11/20','4');
insert into dangkycungcap
values('DK006','NCC006','DV006','audi','MP02','2016/11/20','2021/11/20','4');
insert into dangkycungcap
values('DK007','NCC007','DV007','lamboghini','MP01','2016/02/28','2016/08/15','4');
insert into dangkycungcap
values('DK008','NCC008','DV008','mercedes','MP02','2016/04/27','2017/04/30','4');
insert into dangkycungcap
values('DK009','NCC009','DV009','mclaren','MP03','2015/11/20','2016/11/20','4');
insert into dangkycungcap
values('DK010','NCC010','DV010','bmw','MP02','2015/11/20','2016/11/20','4');
select * from dangkycungcap;