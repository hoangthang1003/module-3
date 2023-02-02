use library;

insert into category(name) values ('Tự nhiên'),
('Xã hội'),
('Truyện'),
('Tiểu thuyết'),
('Khác');

insert into author(name) values('Nguyễn Thái Học'),
('Trần Minh Hoàng'),
('Dương Trung Quốc'),
('Lê Văn Hiến'),
('Hà Văn Minh');
insert into books values (1,'Toán',45,1,1),
(2,'Văn',34,2,2),
(3,'Sử',56,3,2),
(4,'Địa',76,4,2),
(5,'Hóa',32,5,1);
insert into students values (1,'Nguyễn Văn A','12-12-1999','C0822g1'), 
(2,'Nguyễn Văn B','12-13-1999','C0822g1'),
(3,'Nguyễn Văn C','12-14-1999','C0822g1'),
(4,'Nguyễn Văn D','12-15-1999','C0922g1'),
(5,'Nguyễn Văn E','12-16-1999','C1022g1');

insert into borrows values (1,1,1,'2022-12-12','2022-12-13'),
(2,2,2,'2022-12-12','2022-12-15'),
(3,3,3,'2022-12-12','2022-12-15'),
(4,4,4,'2022-12-12','2022-12-12'),
(5,1,5,'2022-12-13','2022-12-15'),
(6,1,5,'2022-12-14','2022-12-14'),
(7,3,4,'2022-12-15','2022-12-29'),
(8,3,3,'2022-12-8','2022-12-14'),
(9,1,2,'2022-12-6','2022-12-30');

-- 	+ Lấy ra toàn bộ sách có trong thư viện, cùng với tên thể loại và tác giả					
select b.*,a.name as author,c.name as category from books as b
join author as a on a.id = b.id_author
join category as c on c.id = b.id_category;

	-- + Lấy ra danh sách các học viên đã từng mượn sách và sắp xếp danh sách theo theo tên từ a->z						
select s.name from borrows
join students as s on s.id = borrows.id_student
group by s.name
order by s.name	;


-- + Lấy ra  2 quyển sách được mượn nhiều nhất			
select b.title as name,count(b.id) as sl from borrows 
join books as b on b.id = borrows.id_books
group by b.id
order by sl desc limit 2;
-- - Thông kê các đầu sách được mượn nhiều nhất	
			
select b.id,b.title as name,count(b.id) as sl from borrows 
join books as b on b.id = borrows.id_books
group by b.id
having sl = (
select count(b.id) as sl from borrows 
join books as b on b.id = borrows.id_books
group by b.id
order by sl desc limit 1
);



-- 	- Thông kê các đầu sách chưa được mượn			
select b.title as name from borrows 
left join books as b on b.id = borrows.id_books
where b.id is null ;

-- 	- Lấy ra danh sách các học viên đã từng mượn sách và sắp xếp  theo số lượng mượn sách từ lớn đến nhỏ					
select s.name , count(b.id) as sl from borrows as b
join students as s on s.id = b.id_student
group by s.name
order by sl desc;

-- Lấy ra các học viên mượn sách nhiều nhất của thư viện				
select s.name , count(b.id) as sl from borrows as b
join students as s on s.id = b.id_student
group by s.name
having sl = (select count(b.id) as sl from borrows as b
join students as s on s.id = b.id_student
group by s.name
order by sl desc limit 1
);

	-- Tao index cho cột  title của bảng books			
create index index_title on books(title);
alter table books add index index_title(title);
-- 	- Viết 1 stored procedure thêm mới book trong database với tham số kiểu IN					
delimiter //
create procedure add_books(in title1 varchar(50),in page_size1 int,in id_author1 int,in id_category1 int
)
begin 
insert into books(title,page_size,id_author,id_category) values (title1,page_size1,id_author1,id_category1);
end // delimiter //;
call add_books('Sinh',34,5,4);