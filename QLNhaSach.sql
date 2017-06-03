use qlnhasach;

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('admin', '123456', 'Admin', '123456789','trantanngoc.it@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('admin1', '123456', 'Admin', '123456789','vohoangvietuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('admin2', '123456', 'Admin', '123456789','meanuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('admin3', '123456', 'Admin', '123456789','nguyenthanhquan173@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('admin4', '123456', 'Admin', '123456789','trantanngoc.it@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('tanngoc', '123456', 'User', '123456789','trantanngoc.it@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('thanhquan', '123456', 'User', '123456789','nguyenthanhquan173@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('hoangviet', '123456', 'User', '123456789','vohoangvietuit@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('vinhnghia', '123456', 'User', '123456789','meanuit@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('tanngoc1', '123456', 'User', '123456789','trantanngoc.it@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('tanngoc2', '123456', 'User', '123456789','trantanngoc.it@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('tanngoc3', '123456', 'User', '123456789','trantanngoc.it@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('tanngoc4', '123456', 'User', '123456789','trantanngoc.it@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('thanhquan1', '123456', 'User', '123456789','nguyenthanhquan173@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('thanhquan2', '123456', 'User', '123456789','nguyenthanhquan173@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('thanhquan3', '123456', 'User', '123456789','nguyenthanhquan173@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('thanhquan4', '123456', 'User', '123456789','nguyenthanhquan173@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('thanhquan5', '123456', 'User', '123456789','nguyenthanhquan173@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('hoangviet1', '123456', 'User', '123456789','vohoangvietuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('hoangviet2', '123456', 'User', '123456789','vohoangvietuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('hoangviet3', '123456', 'User', '123456789','vohoangvietuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('hoangviet4', '123456', 'User', '123456789','vohoangvietuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('hoangviet5', '123456', 'User', '123456789','vohoangvietuit@gmail.com', 'Active');

insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('vinhnghia1', '123456', 'User', '123456789','meanuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('vinhnghia2', '123456', 'User', '123456789','meanuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('vinhnghia3', '123456', 'User', '123456789','meanuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('vinhnghia4', '123456', 'User', '123456789','meanuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('vinhnghia5', '123456', 'User', '123456789','meanuit@gmail.com', 'Active');
insert into Accounts (accountName, pass, role, numPhone, email, statusAccount)
value ('tanngoc5', '123456', 'User', '123456789','trantanngoc.it@gmail.com', 'Active');

insert into Categorys (categoryName, statusCategory)
values ('Tin học', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Y học', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Điện tử', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Cơ khí', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Kiến trúc', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Nông nghiệp', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Môi trường', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Khoa học vũ trụ', 'Active');
insert into Categorys (categoryName, statusCategory)
values ('Tiểu thuyết', 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 1', 'TH1.jpg','Tác giả TH1','Nha san xuat 1',2001, 40000, 39000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 2', 'TH2.jpg','Tác giả TH2','Nha san xuat 1',2001, 45000, 44000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 3', 'TH3.jpg','Tác giả TH3','Nha san xuat 1',2001, 25000, 24000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 4', 'TH4.jpg','Tác giả TH4','Nha san xuat 1',2001, 30000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 5', 'TH5.jpg','Tác giả TH5','Nha san xuat 1',2001, 31000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 6', 'TH1.jpg','Tác giả TH1','Nha san xuat 1',2001, 40000, 39000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 7', 'TH2.jpg','Tác giả TH2','Nha san xuat 1',2001, 45000, 44000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 8', 'TH3.jpg','Tác giả TH3','Nha san xuat 1',2001, 25000, 24000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 9', 'TH4.jpg','Tác giả TH4','Nha san xuat 1',2001, 30000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 10', 'TH5.jpg','Tác giả TH5','Nha san xuat 1',2001, 31000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 11', 'TH1.jpg','Tác giả TH1','Nha san xuat 1',2001, 40000, 39000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 12', 'TH2.jpg','Tác giả TH2','Nha san xuat 1',2001, 45000, 44000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 13', 'TH3.jpg','Tác giả TH3','Nha san xuat 1',2001, 25000, 24000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 14', 'TH4.jpg','Tác giả TH4','Nha san xuat 1',2001, 30000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 15', 'TH5.jpg','Tác giả TH5','Nha san xuat 1',2001, 31000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 16', 'TH1.jpg','Tác giả TH1','Nha san xuat 1',2001, 40000, 39000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 17', 'TH2.jpg','Tác giả TH2','Nha san xuat 1',2001, 45000, 44000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 18', 'TH3.jpg','Tác giả TH3','Nha san xuat 1',2001, 25000, 24000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 19', 'TH4.jpg','Tác giả TH4','Nha san xuat 1',2001, 30000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 20', 'TH5.jpg','Tác giả TH5','Nha san xuat 1',2001, 31000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 21', 'TH1.jpg','Tác giả TH1','Nha san xuat 1',2001, 40000, 39000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 22', 'TH2.jpg','Tác giả TH2','Nha san xuat 1',2001, 45000, 44000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 23', 'TH3.jpg','Tác giả TH3','Nha san xuat 1',2001, 25000, 24000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 24', 'TH4.jpg','Tác giả TH4','Nha san xuat 1',2001, 30000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 25', 'TH5.jpg','Tác giả TH5','Nha san xuat 1',2001, 31000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 26', 'TH5.jpg','Tác giả TH1','Nha san xuat 1',2001, 40000, 39000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 27', 'TH1.jpg','Tác giả TH2','Nha san xuat 1',2001, 45000, 44000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 28', 'TH2.jpg','Tác giả TH3','Nha san xuat 1',2001, 25000, 24000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 29', 'TH3.jpg','Tác giả TH4','Nha san xuat 1',2001, 30000, 29000,1, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tin học 30', 'TH4.jpg','Tác giả TH5','Nha san xuat 1',2001, 31000, 29000,1, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Y học 1', 'YH1.jpg','Tác giả YH1','Nha san xuat 1',2001, 31000, 29000,2, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Y học 2', 'YH2.jpg','Tác giả YH2','Nha san xuat 1',2001, 45000, 44000,2, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Y học 3', 'YH3.jpg','Tác giả YH3','Nha san xuat 1',2001, 25000, 24000,2, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Y học 4', 'YH4.jpg','Tác giả YH4','Nha san xuat 1',2001, 30000, 29000,2, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Y học 5', 'YH5.jpg','Tác giả YH5','Nha san xuat 1',2001, 31000, 29000,2, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Điện tử 1', 'DT1.jpg','Tác giả DT1','Nha san xuat 1',2001, 31000, 29000,3, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Điện tử 2', 'DT2.jpg','Tác giả DT2','Nha san xuat 1',2001, 45000, 44000,3, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Điện tử 3', 'DT3.jpg','Tác giả DT3','Nha san xuat 1',2001, 25000, 24000,3, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Điện tử 4', 'DT4.jpg','Tác giả DT4','Nha san xuat 1',2001, 30000, 29000,3, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Điện tử 5', 'DT5.jpg','Tác giả DT5','Nha san xuat 1',2001, 31000, 29000,3, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)

values ('Cơ Khí 1', 'ck1.jpg','Tác giả Kĩ Thuật 1','Nhà xuất bản giáo dục',2010, 60000,50000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 2', 'ck2.jpg','Tác giả Kĩ Thuật 1','Nhà xuất bản giáo dục',2011, 65000,55000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 3', 'ck3.jpg','Tác giả Kĩ Thuật 3','Nhà xuất bản Kim Đồng',2009, 38000,35000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 4', 'ck4.jpg','Tác giả Kĩ Thuật 4','Nhà xuất bản Kim Đồng',2012, 30000,22000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 5', 'ck5.jpg','Tác giả Kĩ Thuật 5','Nhà xuất bản giáo dục',2015, 65000,52000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 6', 'ck1.jpg','Tác giả Kĩ Thuật 6','Nhà xuất bản giáo dục',2014, 23000,19000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 7', 'ck2.jpg','Tác giả Kĩ Thuật 7','Nhà xuất bản Kim Đồng',2013, 70000,62000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 8', 'ck3.jpg','Tác giả Kĩ Thuật 8','Nhà xuất bản Kim Đồng',2012, 31000,24000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 9', 'ck4.jpg','Tác giả Kĩ Thuật 9','Nhà xuất bản Kim Đồng',2011, 73000,66000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 10', 'ck5.jpg','Tác giả Kĩ Thuật 10','Nhà xuất bản giáo dục',2004, 87000,79000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 11', 'ck1.jpg','Tác giả Kĩ Thuật 11','Nhà xuất bản giáo dục',2009, 48000,37000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 12', 'ck2.jpg','Tác giả Kĩ Thuật 12','Nhà xuất bản giáo dục',2005, 50000,43000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 13', 'ck3.jpg','Tác giả Kĩ Thuật 13','Nhà xuất bản Kim Đồng',2007, 99000,87000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 14', 'ck4.jpg','Tác giả Kĩ Thuật 14','Nhà xuất bản Kim Đồng',2010, 29000,22000,4, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Cơ Khí 15', 'ck5.jpg','Tác giả Kĩ Thuật 15','Nhà xuất bản Kim Đồng',2008, 46000,39000,4, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Kiến trúc 1', 'kt1.jpg','Tác giả Kiến trúc 1','Nhà xuất bản Kim Đồng',2008, 269000,239000,5, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Kiến trúc 2', 'kt1.jpg','Tác giả Kiến trúc 1','Nhà xuất bản giáo dục',2010, 360000,350000,5, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Kiến trúc 3', 'kt2.jpg','Tác giả Kiến trúc 2','Nhà xuất bản giáo dục',2011, 365000,355000,5, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Kiến trúc 4', 'kt3.jpg','Tác giả Kiến trúc 3','Nhà xuất bản Kim Đồng',2009, 238000,235000,5, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Kiến trúc 5', 'kt4.jpg','Tác giả Kiến trúc 4','Nhà xuất bản Kim Đồng',2012, 230000,222000,5, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Kiến trúc 6', 'kt5.jpg','Tác giả Kiến trúc 5','Nhà xuất bản giáo dục',2015, 165000,152000,5, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nông lâm 1', 'nl1.jpg','Tác giả Nông lâm 1','Nhà xuất bản Kim Đồng',2008, 169000,139000,6, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nông lâm 2', 'nl1.jpg','Tác giả Nông lâm 1','Nhà xuất bản giáo dục',2010, 260000,250000,6, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nông lâm 3', 'nl2.jpg','Tác giả Nông lâm 2','Nhà xuất bản giáo dục',2011, 165000,155000,6, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nông lâm 4', 'nl3.jpg','Tác giả Nông lâm 3','Nhà xuất bản Kim Đồng',2009, 268000,255000,6, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nông lâm 5', 'nl4.jpg','Tác giả Nông lâm 4','Nhà xuất bản Kim Đồng',2012, 130000,122000,6, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nông lâm 6', 'nl5.jpg','Tác giả Nông lâm 5','Nhà xuất bản giáo dục',2015, 365000,352000,6, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Bệ Phóng Vào Tương Lai', 'mt_1.jpg','Tác giả Môi trường','Nhà xuất bản giáo dục',2001, 23250 ,20000,7, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Độc Học Sinh Thái', 'mt_2.jpg','Tác giả Môi trường','Nhà xuất bản giáo dục',2004, 73250 ,60000,7, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Địa Chất Cho Kỹ Sư', 'mt_3.jpg','Tác giả Môi trường','Nhà xuất bản giáo dục',2002, 83250 ,70000,7, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Sổ Tay Địa Chất I', 'mt_4.jpg','Tác giả Môi trường','Nhà xuất bản giáo dục',2005, 93250 ,80000,7, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Sổ Tay Địa Chất II', 'mt_5.jpg','Tác giả Môi trường','Nhà xuất bản giáo dục',2009, 83250 ,70000,7, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('TedBook', 'kh_1.jpg','Tác giả Vũ trụ','Nhà xuất bản giáo dục',2011, 193250 ,70000,8, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Bí Ẩn Mãi Mãi', 'kh_2.jpg','Tác giả Vũ trụ','Nhà xuất bản giáo dục',2011, 293250 ,70000,8, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Bệ Phóng Vào Tương Lai', 'kh_3.jpg','Tác giả Vũ trụ','Nhà xuất bản giáo dục',2017, 120000 ,70000,8, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Mãi Mãi Là Bí Ẩn', 'kh_4.jpg','Tác giả Vũ trụ','Nhà xuất bản giáo dục',2011, 73550 ,70000,8, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Nguồn Gốc', 'kh_5.jpg','Tác giả Vũ trụ','Nhà xuất bản giáo dục',2013, 90000 ,70000,8, 'Active');

insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Ngăn Kéo Trên Cùng', 'tt_1.jpg','Tác giả Tiểu thuyết','Nhà xuất bản giáo dục',2012, 198000 ,70000,9, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Tuần Lễ Náu Mình', 'tt_2.jpg','Tác giả Tiểu thuyết','Nhà xuất bản giáo dục',2012, 298000 ,74000,9, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Từ Trái Đất Đến Mặt Trăng', 'tt_3.jpg','Tác giả Tiểu thuyết','Nhà xuất bản giáo dục',2012, 108000 ,790000,9, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Chuyện Despereaux', 'tt_4.jpg','Tác giả Tiểu thuyết','Nhà xuất bản giáo dục',2012, 89000 ,80000,9, 'Active');
insert into Books (bookName, image, author, producer, yearPublish, salePrice, buyPrice, categoryId, statusBook)
values ('Hối Hận', 'tt_5.jpg','Tác giả Tiểu thuyết','Nhà xuất bản giáo dục',2012, 98000 ,90000,9, 'Active');







insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 80000, 1);
insert into billDetails(price, quantity, billId, bookId)
value(80000, 2, 1, 1);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 90000, 2);
insert into billDetails(price, quantity, billId, bookId)
value(90000, 2, 2, 2);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 100000, 3);
insert into billDetails(price, quantity, billId, bookId)
value(100000, 4, 3, 3);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 120000, 4);
insert into billDetails(price, quantity, billId, bookId)
value(120000, 3, 4, 4);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 62000, 5);
insert into billDetails(price, quantity, billId, bookId)
value(62000, 2, 5, 5);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 40000, 6);
insert into billDetails(price, quantity, billId, bookId)
value(40000, 1, 6, 6);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 45000, 7);
insert into billDetails(price, quantity, billId, bookId)
value(45000, 1, 7, 7);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 25000, 8);
insert into billDetails(price, quantity, billId, bookId)
value(25000, 1, 8, 8);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 90000, 9);
insert into billDetails(price, quantity, billId, bookId)
value(90000, 3, 9, 9);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 310000, 10);
insert into billDetails(price, quantity, billId, bookId)
value(310000, 10, 10, 10);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'Paid', 'Trả sau', 40000, 11);
insert into billDetails(price, quantity, billId, bookId)
value(40000, 1, 11, 11);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'UpPaid', 'Trả sau', 45000, 2);
insert into billDetails(price, quantity, billId, bookId)
value(45000, 1, 12, 2);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'UpPaid', 'Trả sau', 25000, 3);
insert into billDetails(price, quantity, billId, bookId)
value(25000, 1, 13, 3);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'UpPaid', 'Trả sau', 30000, 4);
insert into billDetails(price, quantity, billId, bookId)
value(30000, 1, 14, 4);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'UpPaid', 'Trả sau', 31000, 3);
insert into billDetails(price, quantity, billId, bookId)
value(31000, 1, 15, 3);

insert into bills(address, `date`, payStatus, payment, total, accountId)
values('Khu phố 6, phường Linh Trung, quận Thủ Đức', '2017-05-30 17:49:28', 'UpPaid', 'Trả sau', 40000, 1);
insert into billDetails(price, quantity, billId, bookId)
value(40000, 1, 16, 1);