
create table quanly(
id int identity(1,1) not null primary key,
tenlogic  nvarchar(100) not null, 
tenvatly  nvarchar(100) not null, 
dungluongbd varchar(100) not null, 
dungluongtoida varchar(100) not null, 
);




create table nxb(
id int identity(1,1) not null primary key,
nhaxuatban nvarchar(100) not null
);

create table loaisach(
id int identity(1,1) not null primary key,
theloai nvarchar(100) not null
);

create table sach(
masach varchar(50) not null primary key,
tensach nvarchar(100) not null,
tacgia nvarchar(100) not null, 
tomtat nvarchar(1000),
namxb int not null,
lanxb int not null,
nhaxb int FOREIGN KEY REFERENCES nxb(id) not null,
diachi nvarchar(100),
giaban float,
soluong int,
theloai int FOREIGN KEY REFERENCES loaisach(id) not null,
);


insert into nxb(nhaxuatban) values
(N'Kim Đồng'),
(N'Tuổi trẻ'),
(N'Quốc gia'),
(N'Hướng dương'),
(N'Nhà Xuất Bản Lao Động'),
(N'Tri thức')


insert into loaisach(theloai) values 
(N'Khoa học xã hội'),
(N'Trinh thám'),
(N'Lãng mạn'),
(N'Giật gân'),
(N'Thiếu nhi'),
(N'Kinh dị'),
(N'Hồi kí')

insert into sach(masach ,tensach, tacgia, tomtat, namxb, lanxb, nhaxb, diachi, giaban, soluong, theloai) values
('B001', N'Trí tuệ do thái', N'Eran Katz', N'Bạn có muốn biết: người Do Thái sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dàn hé lộ những bí ẩn về
sự thông thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí mật mang tính văn hóa',
2010, 1, 1, N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 79000, 100, 1),

('B002', N'Evie Và Biệt Tài Bí Mật', N'Matt Haig', N'Càng lớn khả năng biểu đạt ngôn ngữ, trí tò mò của trẻ càng tăng theo cấp số nhân. Vì thế, các bạn ý sẽ “làm phiền” bố mẹ với hàng trăm những câu hỏi khác nhau, những thắc mắc vì sao thế này, tại sao lại thế kia. Nhưng đừng vội sợ hãi nhé bố mẹ bởi khi trẻ đặt câu hỏi chính là lúc trẻ đang có nhu cầu khám phá thế giới đấy.',
2021, 3, 5,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 99000, 200, 5),

('B003', N'Lũ Trẻ Hư Nhất Quả Đất 1', N'David Walliams', N'Lũ trẻ hư nhất quả đất - Bestseller hài hước SỐ MỘT nước Anh
“Đây là phiên bản Walliams kinh tởm và ngu ngốc nhất - sự pha trộn hoàn hảo của hàng ngàn fan trung thành của anh ấy… đi kèm những hình minh họa choáng ngợp của Ross, người hoàn toàn nắm bắt được năng lượng và độ loạn xí ngầu của các câu truyện.” - Daily Mail',
2020, 2, 4,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 100000, 10, 3)


insert into sach(masach ,tensach, tacgia, tomtat, namxb, lanxb, nhaxb, diachi, giaban, soluong, theloai) values
('B004', N'Trí tuệ do thái 2', N'Eran Katz', N'Bạn có muốn biết: người Do Thái sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dàn hé lộ những bí ẩn về
sự thông thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí mật mang tính văn hóa',
2001, 1, 2, N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 50000, 100, 3),

('B005', N'Evie Và Biệt Tài Bí Mật 2', N'Matt Haig', N'Càng lớn khả năng biểu đạt ngôn ngữ, trí tò mò của trẻ càng tăng theo cấp số nhân. Vì thế, các bạn ý sẽ “làm phiền” bố mẹ với hàng trăm những câu hỏi khác nhau, những thắc mắc vì sao thế này, tại sao lại thế kia. Nhưng đừng vội sợ hãi nhé bố mẹ bởi khi trẻ đặt câu hỏi chính là lúc trẻ đang có nhu cầu khám phá thế giới đấy.',
2001, 5, 3,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 96000, 200, 4),

('B006', N'Lũ Trẻ Hư Nhất Quả Đất 1 2', N'David Walliams', N'Lũ trẻ hư nhất quả đất - Bestseller hài hước SỐ MỘT nước Anh
“Đây là phiên bản Walliams kinh tởm và ngu ngốc nhất - sự pha trộn hoàn hảo của hàng ngàn fan trung thành của anh ấy… đi kèm những hình minh họa choáng ngợp của Ross, người hoàn toàn nắm bắt được năng lượng và độ loạn xí ngầu của các câu truyện.” - Daily Mail',
2010, 9, 2,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 184000, 10, 2),

('B007', N'Trí tuệ ', N'Eran Katz', N'Bạn có muốn biết: người Do Thái sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dàn hé lộ những bí ẩn về
sự thông thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí mật mang tính văn hóa',
2001, 1, 2, N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 50000, 100, 3),

('B008', N'Evie Và Biệt ', N'Matt Haig', N'Càng lớn khả năng biểu đạt ngôn ngữ, trí tò mò của trẻ càng tăng theo cấp số nhân. Vì thế, các bạn ý sẽ “làm phiền” bố mẹ với hàng trăm những câu hỏi khác nhau, những thắc mắc vì sao thế này, tại sao lại thế kia. Nhưng đừng vội sợ hãi nhé bố mẹ bởi khi trẻ đặt câu hỏi chính là lúc trẻ đang có nhu cầu khám phá thế giới đấy.',
2001, 5, 3,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 960900, 200, 4),

('B009', N'Lũ Trẻ Hư Nhất Quả Đất 1 2', N'David Walliams', N'Lũ trẻ hư nhất quả đất - Bestseller hài hước SỐ MỘT nước Anh
“Đây là phiên bản Walliams kinh tởm và ngu ngốc nhất - sự pha trộn hoàn hảo của hàng ngàn fan trung thành của anh ấy… đi kèm những hình minh họa choáng ngợp của Ross, người hoàn toàn nắm bắt được năng lượng và độ loạn xí ngầu của các câu truyện.” - Daily Mail',
2010, 9, 2,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 18000, 10, 2),

('B0010', N'Trí ái 2', N'Eran Katz', N'Bạn có muốn biết: người Do Thái sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dàn hé lộ những bí ẩn về
sự thông thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí mật mang tính văn hóa',
2001, 1, 4, N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 506000, 100, 2),

('B0011', N'E à Biệt Tài Bí Mật 2', N'Matt Haig', N'Càng lớn khả năng biểu đạt ngôn ngữ, trí tò mò của trẻ càng tăng theo cấp số nhân. Vì thế, các bạn ý sẽ “làm phiền” bố mẹ với hàng trăm những câu hỏi khác nhau, những thắc mắc vì sao thế này, tại sao lại thế kia. Nhưng đừng vội sợ hãi nhé bố mẹ bởi khi trẻ đặt câu hỏi chính là lúc trẻ đang có nhu cầu khám phá thế giới đấy.',
2001, 5, 1,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 996000, 200, 5),

('B0012', N'Lũ T 2', N'David Walliams', N'Lũ trẻ hư nhất quả đất - Bestseller hài hước SỐ MỘT nước Anh
“Đây là phiên bản Walliams kinh tởm và ngu ngốc nhất - sự pha trộn hoàn hảo của hàng ngàn fan trung thành của anh ấy… đi kèm những hình minh họa choáng ngợp của Ross, người hoàn toàn nắm bắt được năng lượng và độ loạn xí ngầu của các câu truyện.” - Daily Mail',
2010, 9, 1,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 1880000, 10, 1)

insert into sach(masach ,tensach, tacgia, tomtat, namxb, lanxb, nhaxb, diachi, giaban, soluong, theloai) values
('B0013', N'Tin học văn phòng 2', N'David Walliams', N'Lũ trẻ hư nhất quả đất - Bestseller hài hước SỐ MỘT nước Anh
“Đây là phiên bản Walliams kinh tởm và ngu ngốc nhất - sự pha trộn hoàn hảo của hàng ngàn fan trung thành của anh ấy… đi kèm những hình minh họa choáng ngợp của Ross, người hoàn toàn nắm bắt được năng lượng và độ loạn xí ngầu của các câu truyện.” - Daily Mail',
2010, 9, 1,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 1820000, 10, 1)

insert into sach(masach ,tensach, tacgia, tomtat, namxb, lanxb, nhaxb, diachi, giaban, soluong, theloai) values
('B0014', N'Tin học lớp 6', N'David Walliams', N'Lũ trẻ hư nhất quả đất - Bestseller hài hước SỐ MỘT nước Anh
“Đây là phiên bản Walliams kinh tởm và ngu ngốc nhất - sự pha trộn hoàn hảo của hàng ngàn fan trung thành của anh ấy… đi kèm những hình minh họa choáng ngợp của Ross, người hoàn toàn nắm bắt được năng lượng và độ loạn xí ngầu của các câu truyện.” - Daily Mail',
2010, 9, 6,N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội', 1820000, 10, 1)

--2 
-- Liệt kê các cuốn sách có năm xuất bản từ 2008 đến nay
select tensach from sach where namxb >2010
-- Liệt kê 10 cuốn sách có giá bán cao nhất
select top(10) masach, tensach, giaban from sach order by giaban desc
-- Tìm những cuốn sách có tiêu đề chứa từ “tin học”
select * from sach where tensach like N'%tin học%'
-- Liệt kê các cuốn sách có tên bắt đầu với chữ “T” theo thứ tự giá giảm dần
select * from sach where tensach like 'T%' order by giaban desc
-- Liệt kê các cuốn sách của nhà xuất bản Tri thức
select s.masach ,s.tensach, s.tacgia, s.tomtat, s.namxb, s.lanxb, nxb.nhaxuatban, s.diachi, s.giaban, s.soluong, ls.theloai 
from sach s join nxb on s.nhaxb = nxb.id join loaisach ls on ls.id = s.theloai where nhaxb in 
(select id from nxb where nhaxuatban = N'Tri thức')
-- Lấy thông tin chi tiết về nhà xuất bản xuất bản cuốn sách “Trí tuệ Do Thái”

select * from nxb where id in (select nhaxb from sach where tensach = N'Trí tuệ do thái')
-- Hiển thị các thông tin sau về các cuốn sách: Mã sách, Tên sách, Năm xuất bản, Nhà xuất bản,
Loại sách 
select s.masach ,s.tensach, s.tacgia, s.tomtat, s.namxb, s.lanxb, nxb.nhaxuatban, s.diachi, s.giaban, s.soluong, ls.theloai 
from sach s join nxb on s.nhaxb = nxb.id join loaisach ls on ls.id = s.theloai 
-- Tìm cuốn sách có giá bán đắt nhất
select top(1) s.masach ,s.tensach, s.tacgia, s.tomtat, s.namxb, s.lanxb, nxb.nhaxuatban, s.diachi, s.giaban, s.soluong, ls.theloai 
from sach s join nxb on s.nhaxb = nxb.id join loaisach ls on ls.id = s.theloai  order by giaban desc



-- . Tìm cuốn sách có số lượng lớn nhất trong kho
select  s.masach ,s.tensach, s.tacgia, s.tomtat, s.namxb, s.lanxb, nxb.nhaxuatban, s.diachi, s.giaban, s.soluong, ls.theloai 
from sach s join nxb on s.nhaxb = nxb.id join loaisach ls on ls.id = s.theloai  where soluong in (select max(soluong) from sach)
-- 
select top(1) s.masach ,s.tensach, s.tacgia, s.tomtat, s.namxb, s.lanxb, nxb.nhaxuatban, s.diachi, s.giaban, s.soluong, ls.theloai 
from sach s join nxb on s.nhaxb = nxb.id join loaisach ls on ls.id = s.theloai  order by soluong desc

-- Giảm giá bán 10% các cuốn sách xuất bản từ năm 2008 trở về trước
select tensach, giaban from sach WHERE namxb < 2008;
-- 
UPDATE sach
SET giaban = giaban - giaban * 0.1
WHERE namxb < 2008;

select tensach, giaban from sach WHERE namxb < 2008;

----- Tìm các cuốn sách của tác giả “Eran Katz”
select tensach from sach where tacgia = N'Eran Katz'
-- Thống kê số đầu sách của mỗi nhà xuất bản 
select nxb.nhaxuatban, count(s.nhaxb) as N'Số lượng' from sach s join nxb on s.nhaxb = nxb.id group by s.nhaxb, nxb.nhaxuatban

-- Thống kê số đầu sách của mỗi loại sách 
select ls.theloai, count(s.nhaxb) as N'Số lượng' from sach s join loaisach ls on s.theloai = ls.id group by s.theloai, ls.theloai

-- Đặt chỉ mục (Index) cho trường tên sách

CREATE INDEX index_tensach
ON sach (tensach);

-- Viết view lấy thông tin gồm: Mã sách, tên sách, tác giả, nhà xb và giá bán
CREATE VIEW ViewSach AS
SELECT masach, tensach, tacgia,nhaxb, giaban 
FROM sach

SELECT * FROM ViewSach
