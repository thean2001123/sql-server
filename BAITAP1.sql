create table hang(
mahang  int primary key ,
tenhang nvarchar(100),
diachi nvarchar(100),
dienthoai nvarchar(50)
);

create table sanpham(
masanpham int IDENTITY(1,1)  primary key ,
tensanpham nvarchar(100),
mota nvarchar(100),
donvi nvarchar(100),
gia float, 
soluong int,
mahang int  FOREIGN KEY REFERENCES hang(mahang) not null
);
 
--3
insert into hang ( mahang, tenhang, diachi, dienthoai) values (123, N'Asus', N'USA', N'983232');

insert into sanpham( tensanpham, mota, donvi, gia, soluong, mahang) 
values (N'Máy tính T450', N'Máy nhập cũ', N'Chiếc', 1000, 10, 123),
 (N'Điện thoại Nokia5670', N'Điện thoại đang hot', N'Chiếc', 200, 200, 123),
 (N'Máy in Samsung 450', N'Máy in đang loại binh', N'Chiếc', 100, 10, 123);

 --4a 
 select tenhang from hang
 --4b
 select tensanpham from sanpham


 -- 5a
 insert into hang ( mahang, tenhang, diachi, dienthoai) values (124, N'Macbook', N'USA', N'032546');

 select tenhang from hang order by tenhang desc

 -- 5b
 select tensanpham from sanpham order by gia asc

 -- 5c 
 select * from hang where tenhang like N'Asus'

 --5d 
 select * from sanpham where soluong < 11

 
insert into sanpham( tensanpham, mota, donvi, gia, soluong, mahang) 
values (N'Macbook M1', N'Máy nhập cũ', N'Chiếc', 1000, 10, 124);
 --5e
 select * from sanpham as s inner join hang as h on s.mahang = h.mahang where h.tenhang like N'Asus'



 -- 6a
 select count(*) as 'soluong' from hang 

  -- 6b

   select count(*) as 'soluong' from sanpham
   
   -- 6c 
 select h.tenhang, count(s.tensanpham) as 'soluong' from sanpham as s inner join hang as h on s.mahang = h.mahang group by h.tenhang

    -- 6d
 select h.tenhang, sum(s.soluong) as 'soluong' from sanpham as s inner join hang as h on s.mahang = h.mahang group by h.tenhang

 -- 7a
 create index index_tenhang on hang(tenhang)
  create index index_mota on sanpham(mota)