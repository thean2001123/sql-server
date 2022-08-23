create table danhba(
id int identity(1,1) not null primary key,
hoten nvarchar(100), 
diachi nvarchar(300),
ngaysinh varchar(100)
);

create table sodienthoai
(id int identity(1,1) not null primary key,
dienthoai varchar(50),
id_danhba int  FOREIGN KEY REFERENCES danhba(id) not null
);



insert into danhba(hoten, diachi, ngaysinh) values 
(N'Nguyễn Văn An', N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội',  '11/18/87' ),
(N'Nguyễn Văn Nam', N'111 Nguyễn Trãi, Cầu Giấy, Hà Nội',  '10/11/88' ),
(N'Nguyễn Văn Khang', N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội', '09/10/2001' ),
(N'Nguyễn Văn Lan', N'111 Nguyễn Trãi, Cầu Giấy, Hà Nội', '06/08/2004' ),
(N'Nguyễn Văn Ban', N'111 Nguyễn Trãi, Cầu Giấy, Hà Nội', '12/12/09' )


insert into sodienthoai(dienthoai, id_danhba) values
('9876545321', 1),
('098765432', 1),
('098532323', 1),
('09434343', 1),
('98765321', 2),
('987654999', 2),
('999945321', 2),
('987654444', 2),
('996545321', 3),
('987666321', 3),
('555545321', 3),
('9876542221', 3),
('9876599921', 4),
('8888845321', 4),
('9865445321', 4),
('9984545321', 4)


--4
select hoten from danhba
select dienthoai from sodienthoai

-- 5 

select hoten from danhba order by hoten asc

select * from danhba where ngaysinh = '12/12/09'
select s.dienthoai from sodienthoai s join danhba db on s.id_danhba = db.id where  db.id = ( select id from danhba where hoten like N'Nguyễn Văn An')

--6
select db.hoten, count(std.dienthoai) as N'số lượng số' from danhba db left join sodienthoai std on  std.id_danhba = db.id  group by  db.hoten

select count(*) as N'số người sinh tháng 12' from danhba db where db.ngaysinh like '12/%'

--6
select db.hoten, std.dienthoai as N'số dt' from danhba db left join sodienthoai std on  std.id_danhba = db.id 
--6
select db.hoten, db.diachi, db.ngaysinh, std.dienthoai from danhba db left join sodienthoai std on  std.id_danhba = db.id where std.dienthoai = '9876545321'