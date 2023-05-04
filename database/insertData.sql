delete from HoSoThanhToan;
delete from BangDanhGia;
delete from PhieuSuDungDichVu;
delete from DanhSachDatPhong;
delete from PhieuDatPhong;
delete from DANHSACHTHAMGIATOUR;
delete from DICHVUPHONG;
delete from TOUR;
delete from PHONG;
delete from KHACHHANG;
delete from NHANVIEN;
delete from DOAN;
delete from DAILY;
delete from CONGTYDULICH;
delete from DICHVU;
delete from LOAIPHONG;

-----------------------------------
--- 1P1. Nhap lieu cho ban LOAIPHONG
-----------------------------------
delete from LOAIPHONG;
insert all
    into LOAIPHONG values('Normal', 'Phòng phổ thông')
    into LOAIPHONG values('VIP1', 'Phòng siêu cấp vip pro')
    into LOAIPHONG values('VIP2', 'Phòng siêu cấp vip pro hơn cả VIP 1')
    into LOAIPHONG values('VIP3', 'Phòng siêu cấp vip pro hơn cả VIP 2')
    into LOAIPHONG values('GOLD', 'Phòng siêu cấp vip pro hơn cả VIP 3')
    into LOAIPHONG values('Diamond', 'Phòng siêu cấp vip pro hơn cả GOLD') 
select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- 2P1. Nhap lieu cho ban DICHVU
-----------------------------------
delete from DICHVU;
insert all
    into DICHVU values('DV01', 'Massage', 99999, 'Massage phê tận răng cho bạn', 'Thư giãn', 'massage.png')
    into DICHVU values('DV02', 'Spa Thiên đường', 99999, 'Thư giãn cơ thể sau những giờ chạy deadline căng thẳng', 'Thư giãn', 'spa.png')
    into DICHVU values('DV03', 'Pool/Bi-da', 199999, 'Trải nghiệm bida tại nhà cho bất kì ai', 'Thể thao', 'pool.png')
    into DICHVU values('DV04', 'Karaoke', 199999, 'Hát cùng Hogwart, cháy hết mình, vui hết nấc', 'Giải trí', 'karaoke.png')
    into DICHVU values('DV05', 'Bơi', 99999, 'Bơi cùng người lạ, hồ bơi đạt chuẩn Olimpic,\n có cả hồ bơi tiêu chuẩn cho những bạn nấm lùn', 'Thể thao', 'swim.png')
    into DICHVU values('DV06', 'Đá bóng', 199999, 'Lập team đá sập khách sạn', 'Thể thao', 'football.png')

select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- 3P1. Nhap lieu cho ban CongTyDuLich
-----------------------------------
delete from CONGTYDULICH;
insert all
    into CONGTYDULICH values('CT01', 'HCMUS tour', '0372769123', 'hcmus@tour.com', '227 Nguyễn Văn Cừ, Phường 4, Quận 5, TP. HCM')
    into CONGTYDULICH values('CT02', 'HCMUS super tour', '0372769321', 'hcmusSuper@tour.com', '226 Nguyễn Văn Cừ, Phường 4, Quận 5, TP. HCM')
    into CONGTYDULICH values('CT03', 'HCMUS entertainment', '0372769213', 'hcmusEntertainment@tour.com', '225 Nguyễn Văn Cừ, Phường 4, Quận 5, TP. HCM')
    into CONGTYDULICH values('CT04', 'HCMUS company', '0372769123', 'hcmusCompany@tour.com', '224 Nguyễn Văn Cừ, Phường 4, Quận 5, TP. HCM')

select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- 4P1. Nhap lieu cho ban DaiLy
-----------------------------------
delete from DAILY;
insert all
    into DAILY values('DL01', 'Khách sạn vui', '135 Trần Hưng Đạo, Quận 1, TP. HCM', '0372769789')
    into DAILY values('DL02', 'Booking chấm com', '136 Trần Hưng Đạo, Quận 1, TP. HCM', '0372769987')
    into DAILY values('DL03', 'Traveloka', '137 Trần Hưng Đạo, Quận 1, TP. HCM', '0372769798')
    into DAILY values('DL04', 'Momo hotel', '235 Trần Hưng Đạo, Quận 1, TP. HCM', '0372769879')
    into DAILY values('DL05', 'Hotel booking', '335 Trần Hưng Đạo, Quận 1, TP. HCM', '0372769978')
select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- 5P1. Nhap lieu cho ban NhanVien
-----------------------------------
delete from NHANVIEN;

insert all
    into NHANVIEN values('NV001','Truong Gia Chi','094512301','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien1','123')
    into NHANVIEN values('NV002','Nguyen Hoang Tien','094512302','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien2','123')
    into NHANVIEN values('NV003','Truong Hoang khanh','094512303','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien3','123')
    into NHANVIEN values('NV004','Tran Chi Vu','094512304','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien4','123')
    into NHANVIEN values('NV005','Ung Chi Vinh','094512305','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien5','123')
    into NHANVIEN values('NV006','Vu Tung Quoc','094512306','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien6','123')
    into NHANVIEN values('NV007','Duong Van Giang','094512307','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien7','123')
    into NHANVIEN values('NV008','Nguyen Hoang Cau','094512308','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien8','123')
    into NHANVIEN values('NV009','Duong Thi Tuan','094512309','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien9','123')
    into NHANVIEN values('NV0010','Duong Song Bac','0945123010','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien10','123')
    into NHANVIEN values('NV0011','Ung Song Tan','0945123011','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien11','123')
    into NHANVIEN values('NV0012','Đang Tung Đang','0945123012','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien12','123')
    into NHANVIEN values('NV0013','Ung Chi Tan','0945123013','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien13','123')
    into NHANVIEN values('NV0014','Ho Van May','0945123014','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien14','123')
    into NHANVIEN values('NV0015','Tran Gia khanh','0945123015','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien15','123')
    into NHANVIEN values('NV0016','Le Thi Cuc','0945123016','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien16','123')
    into NHANVIEN values('NV0017','Nguyen Thi Đuc','0945123017','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien17','123')
    into NHANVIEN values('NV0018','Le Tung Quoc','0945123018','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien18','123')
    into NHANVIEN values('NV0019','Truong Thi Tan','0945123019','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'Bellman','NhanVien19','123')
    into NHANVIEN values('NV0020','Vu Van Tan','0945123020','117 Mai Chí Thọ, Quận 2, TP. Hồ Chí Minh', 'lễ tân','NhanVien20','123')
    select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- 6P2. Nhap lieu cho ban TOUR
-----------------------------------
delete from TOUR;

insert all
    into TOUR values('T01', 'Nha Trang', 9999999, 'Khánh Hòa', 'Trải nghiệm không gian biển mát rười rượi\n, nước biển trong xanh, gió trong lành\n và đặc biệt không có deadline', 'Miền Trung', 'CT03', 'NhaTrang.png', 7)
    into TOUR values('T02', 'Đảo chè - Thanh Chương', 9999999, 'Nghệ An', 'Trải nghiệm không gian biển mát rười rượi\n, nước biển trong xanh, gió trong lành\n và đặc biệt không có deadline', 'Miền Trung', 'CT01', 'DaoChe.png', 4)
    into TOUR values('T03', 'Lăng Bác', 9999999, 'Hà Nội', 'Cùng ghé thăm nơi Chủ Tịch Hồ Chí Minh vĩ đại yên nghỉ,\n cảm nhận tinh thần bất khuất của dân ta', 'Miền Bắc', 'CT02', 'LangBac.png', 3)
    into TOUR values('T04', 'Madagui', 9999999, 'Lâm Đồng', 'Trải nghiệm không gian rừng núi bất tận\n, Hòa mình cùng thiên nhiên & nói chuyện với lũ vượn', 'Miền Trung', 'CT03', 'Madagui.png', 3)
    into TOUR values('T05', 'Long Hải', 9999999, 'Vũng Tàu', 'Trải nghiệm không gian biển mát rười rượi\n, nước biển trong xanh, gió trong lành\n và đặc biệt không có deadline', 'Miền Nam', 'CT01', 'LongHai.png', 6)
    into TOUR values('T06', 'Namek', 9999999, 'Vũ trụ 7', 'Trải nghiệm không gian bên ngoài trái đất\n, Gặp gỡ người người Namek da xanh thân thiện\n và đặc biệt không có cơ hội trúng 7 viên ngọc rồng', 'Miền Cực Lạc', 'CT01', 'Namek.png', 10)
    into TOUR values('T07', 'Thác Bản Giốc', 9999999, 'Cao Bằng', 'Cùng ngắm nhìn con thác có 1 0 2 ở Việt Nam,\n là quê hương của streamer nổi tiếng lương 7, 8 triệu', 'Miền Bắc', 'CT02', 'ThacBanGioc.png', 5)
    into TOUR values('T08', 'Đại Hải Trình', 9999999, 'Tân Thế Giới', 'Một ngày làm hải tặc, cả đời làm hải tặc\n cùng khám phá đại hải trình vô tận và tìm ra kho báu One Piece', 'Miền Cực Lạc', 'CT03', 'DaiHaiTrinh.png', 10)
    into TOUR values('T09', 'Đảo Phú Quý', 9999999, 'Bình Thuận', 'Trải nghiệm không gian biển đảo mát rười rượi\n, nước biển trong xanh, gió trong lành và đặc biệt\n có những bức tường cao 50m và những con Titan khổng lồ', 'Miền Trung', 'CT01', 'DaoPhuQuy.png', 8)
    into TOUR values('T010', 'Đảo mèo', 9999999, 'Mèo Quốc', 'Mèo méo meo mèo meo', 'Mèo quốc', 'CT02', 'DaoMeo.png', 5)
    into TOUR values('T011', 'Nữ Nhi Quốc', 99999999, 'Nữ Nhi Quốc', 'Thấy tên là hiểu rồi, không cần mô tả gì thêm :))', 'Miền Cực Lạc', 'CT03', 'NuNhiQuoc.png', 9)
    into TOUR values('T012', 'Làng Lá', 8888888, 'Hỏa Quốc', 'Trải nghiệm một ngày làm nhẫn giả ở trường học Ninja top đầu thế giới', 'Miền Cực Lạc', 'CT01', 'LangLa.png', 10)
        
select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- 7P2. Nhap lieu cho ban DichVuPhong
-----------------------------------
delete from DICHVUPHONG;

insert all
    into DICHVUPHONG values('Normal','DV01')
    into DICHVUPHONG values('VIP1','DV01')
    into DICHVUPHONG values('VIP1','DV02')
    into DICHVUPHONG values('VIP2','DV01')
    into DICHVUPHONG values('VIP2','DV02')
    into DICHVUPHONG values('VIP2','DV03')
    into DICHVUPHONG values('VIP3','DV01')
    into DICHVUPHONG values('VIP3','DV02')
    into DICHVUPHONG values('VIP3','DV03')
    into DICHVUPHONG values('VIP3','DV04')
    into DICHVUPHONG values('GOLD','DV01')
    into DICHVUPHONG values('GOLD','DV02')
    into DICHVUPHONG values('GOLD','DV03')
    into DICHVUPHONG values('GOLD','DV04')
    into DICHVUPHONG values('GOLD','DV05')
    into DICHVUPHONG values('Diamond','DV01')
    into DICHVUPHONG values('Diamond','DV02')
    into DICHVUPHONG values('Diamond','DV03')
    into DICHVUPHONG values('Diamond','DV04')
    into DICHVUPHONG values('Diamond','DV05')
    into DICHVUPHONG values('Diamond','DV06')
select 1 from dual;
/

-------------- END ----------------


-------------- END ----------------


-----------------------------------
--- Nhap lieu cho bang Doan
-----------------------------------
--delete from DOAN;
insert all 
    into DOAN VALUES('D1', 'Doan YKA', 'Lai Chi An', 8)
    into DOAN VALUES('D2', 'Doan BML', 'Ðoan Tung Cau', 1)
    into DOAN VALUES('D3', 'Doan FTY', 'Au Thi Anh', 6)
    into DOAN VALUES('D4', 'Doan PFS', 'Lai Chi Duy', 6)
    into DOAN VALUES('D5', 'Doan YLA', 'Au Song Vu', 6)
    into DOAN VALUES('D6', 'Doan DYT', 'Gian Van Cuc', 3)
    into DOAN VALUES('D7', 'Doan UCZ', 'Ðang Chi Vinh', 1)
    into DOAN VALUES('D8', 'Doan OZH', 'Ho Van Tan', 2)
    into DOAN VALUES('D9', 'Doan AJE', 'Pham Tung Viet', 8)
    into DOAN VALUES('D10', 'Doan OEX', 'Pham Thi Chung', 7)
    into DOAN VALUES('D11', 'Doan UOD', 'Pham Tung Cau', 6)
    into DOAN VALUES('D12', 'Doan QPM', 'Vu Song Tu', 4)
    into DOAN VALUES('D13', 'Doan LIW', 'Gian Tung An', 7)
    into DOAN VALUES('D14', 'Doan AJO', 'Au Hoang Ðang', 1)
    into DOAN VALUES('D15', 'Doan GTG', 'Pham Hoang Ngoc Nhi', 3)
    into DOAN VALUES('D16', 'Doan ARY', 'Duong Chi Bac', 5)
    into DOAN VALUES('D17', 'Doan MFM', 'Au Gia Chung', 7)
    into DOAN VALUES('D18', 'Doan YHU', 'Duong Chi Tin', 4)
    into DOAN VALUES('D19', 'Doan FJY', 'Au Hoang Phu', 5)
    into DOAN VALUES('D20', 'Doan DSO', 'Ung Chi Cau', 2)
    into DOAN VALUES('D21', 'Doan KWY', 'Le Tung Nam', 7)
    into DOAN VALUES('D22', 'Doan UDR', 'Pham Song Tien', 9)
    into DOAN VALUES('D23', 'Doan MIR', 'Ung Song Phu', 10)
    into DOAN VALUES('D24', 'Doan IGN', 'Gian Thi Cau', 1)
    into DOAN VALUES('D25', 'Doan OME', 'Ly Song Cuc', 9)
    into DOAN VALUES('D26', 'Doan DUJ', 'Ho Chi Ngan', 4)
    into DOAN VALUES('D27', 'Doan BQK', 'An Tung Giang', 10)
    into DOAN VALUES('D28', 'Doan MVB', 'Duong Song Thuong', 3)
    into DOAN VALUES('D29', 'Doan SRJ', 'Bui Gia Ðan', 10)
    into DOAN VALUES('D30', 'Doan ICU', 'Ho Gia Tu', 6)
    into DOAN VALUES('D31', 'Doan VZL', 'Ðang Gia Tiep', 7)
    into DOAN VALUES('D32', 'Doan JVN', 'Ho Van Bac', 2)
    into DOAN VALUES('D33', 'Doan JJI', 'Duong Hoang Tu', 7)
    into DOAN VALUES('D34', 'Doan YFU', 'Ung Tung Vy', 3)
    into DOAN VALUES('D35', 'Doan EZG', 'Bui Song Ðang', 7)
    into DOAN VALUES('D36', 'Doan BVA', 'Bui Gia Minh', 2)
    into DOAN VALUES('D37', 'Doan VBX', 'Vo Tung Ðan', 6)
    into DOAN VALUES('D38', 'Doan OUA', 'Nguyen Van Ðuc', 10)
    into DOAN VALUES('D39', 'Doan QYD', 'Au Van Giang', 4)
    into DOAN VALUES('D40', 'Doan CXA', 'Au Thi Cuc', 9)
    into DOAN VALUES('D41', 'Doan EWL', 'Ðoan Gia Nam', 6)
    into DOAN VALUES('D42', 'Doan NJM', 'Ðang Hoang Bao', 5)
    into DOAN VALUES('D43', 'Doan WDL', 'Vu Thi Vinh', 5)
    into DOAN VALUES('D44', 'Doan ZTN', 'Vu Tung khanh', 1)
    into DOAN VALUES('D45', 'Doan RZI', 'Gian Gia Giang', 10)
    into DOAN VALUES('D46', 'Doan IJE', 'Vu Thi Chi', 9)
    into DOAN VALUES('D47', 'Doan JWV', 'Vo Gia Bao', 9)
    into DOAN VALUES('D48', 'Doan VSL', 'Ðang Thi Chi', 8)
    into DOAN VALUES('D49', 'Doan QQF', 'Truong Gia Phu', 3)
    into DOAN VALUES('D50', 'Doan EVF', 'Gian Tung Cau', 8)
select 1 from dual;

-------------- END ----------------


-----------------------------------
--- Nhap lieu cho bang KHACHHANG
-----------------------------------
--delete from KHACHHANG;
/
insert all 
    into KHACHHANG VALUES('KH1', 'Tran Van Cuc', 'KH1', '5715291433', '976700676', 'KH1@gmail.com', '184637742734', 'D1', 'USER-KH1', '123')
    into KHACHHANG VALUES('KH2', 'Gian Song Tan', 'KH2', '7930279751', '100263438', 'KH2@gmail.com', '490125577633', 'D3', 'USER-KH2', '123')
    into KHACHHANG VALUES('KH3', 'Pham Tung Cau', 'KH3', '4845592802', '229670132', 'KH3@gmail.com', '258720340018', 'D33', 'USER-KH3', '123')
    into KHACHHANG VALUES('KH4', 'Gian Song Tien', 'KH4', '4885257223', '502321853', 'KH4@gmail.com', '025113924722', 'D1', 'USER-KH4', '123')
    into KHACHHANG VALUES('KH5', 'Vu Chi khanh', 'KH5', '2896536320', '605124754', 'KH5@gmail.com', '180395888835', 'D12', 'USER-KH5', '123')
    into KHACHHANG VALUES('KH6', 'Ung Hoang Viet', 'KH6', '2765584782', '564373224', 'KH6@gmail.com', '637533700261', 'D12', 'USER-KH6', '123')
    into KHACHHANG VALUES('KH7', 'Au Song Tan', 'KH7', '8481129280', '695048654', 'KH7@gmail.com', '889109145710', 'D49', 'USER-KH7', '123')
    into KHACHHANG VALUES('KH8', 'Tran Tung Giang', 'KH8', '4107444565', '072528153', 'KH8@gmail.com', '362782974205', 'D31', 'USER-KH8', '123')
    into KHACHHANG VALUES('KH9', 'Truong Gia Cuc', 'KH9', '1513896058', '471838554', 'KH9@gmail.com', '565265448168', 'D34', 'USER-KH9', '123')
    into KHACHHANG VALUES('KH10', 'Tran Tung Thien', 'KH10', '0214637156', '191454274', 'KH10@gmail.com', '237803253622', 'D34', 'USER-KH10', '123')
    into KHACHHANG VALUES('KH11', 'Gian Chi Tiep', 'KH11', '6965804928', '173503817', 'KH11@gmail.com', '174772438620', 'D41', 'USER-KH11', '123')
    into KHACHHANG VALUES('KH12', 'Le Song Cau', 'KH12', '4295837851', '171634559', 'KH12@gmail.com', '307243465367', 'D33', 'USER-KH12', '123')
    into KHACHHANG VALUES('KH13', 'Au Tung Duy', 'KH13', '3239995078', '994731285', 'KH13@gmail.com', '986064351720', 'D10', 'USER-KH13', '123')
    into KHACHHANG VALUES('KH14', 'Au Van Vy', 'KH14', '7047683744', '028878228', 'KH14@gmail.com', '049864204482', 'D48', 'USER-KH14', '123')
    into KHACHHANG VALUES('KH15', 'Tran Thi Quoc', 'KH15', '8142370445', '218285972', 'KH15@gmail.com', '052667453794', 'D38', 'USER-KH15', '123')
    into KHACHHANG VALUES('KH16', 'Ly Chi May', 'KH16', '0026886638', '060116319', 'KH16@gmail.com', '617595495791', 'D16', 'USER-KH16', '123')
    into KHACHHANG VALUES('KH17', 'Pham Van Chi', 'KH17', '0609190831', '592756064', 'KH17@gmail.com', '810149923296', 'D16', 'USER-KH17', '123')
    into KHACHHANG VALUES('KH18', 'Au Thi Chung', 'KH18', '4436361809', '557568777', 'KH18@gmail.com', '582688950831', 'D40', 'USER-KH18', '123')
    into KHACHHANG VALUES('KH19', 'Ho Hoang Minh', 'KH19', '5791393912', '071893922', 'KH19@gmail.com', '501353666221', 'D11', 'USER-KH19', '123')
    into KHACHHANG VALUES('KH20', 'Nguyen Van Tan', 'KH20', '8542964102', '437918864', 'KH20@gmail.com', '334635105989', 'D19', 'USER-KH20', '123')
    into KHACHHANG VALUES('KH21', 'Tran Gia Tiep', 'KH21', '8011177869', '543751078', 'KH21@gmail.com', '464892607831', 'D7', 'USER-KH21', '123')
    into KHACHHANG VALUES('KH22', 'Ðoan Song Tan', 'KH22', '6812689458', '077865144', 'KH22@gmail.com', '216413753358', 'D15', 'USER-KH22', '123')
    into KHACHHANG VALUES('KH23', 'Pham Van Minh', 'KH23', '6915299844', '162209028', 'KH23@gmail.com', '770857055863', 'D7', 'USER-KH23', '123')
    into KHACHHANG VALUES('KH24', 'Tran Thi Han', 'KH24', '5184069114', '024649663', 'KH24@gmail.com', '095270658586', 'D13', 'USER-KH24', '123')
    into KHACHHANG VALUES('KH25', 'Gian Thi Tuan', 'KH25', '2148753804', '854551200', 'KH25@gmail.com', '703810609197', 'D16', 'USER-KH25', '123')
    into KHACHHANG VALUES('KH26', 'Vu Tung Tien', 'KH26', '7059605750', '585057971', 'KH26@gmail.com', '324578500586', 'D23', 'USER-KH26', '123')
    into KHACHHANG VALUES('KH27', 'Pham Song Thong', 'KH27', '8048252223', '040623548', 'KH27@gmail.com', '669159312762', 'D15', 'USER-KH27', '123')
    into KHACHHANG VALUES('KH28', 'Tran Chi Quoc', 'KH28', '4749925766', '884601024', 'KH28@gmail.com', '137111578522', 'D44', 'USER-KH28', '123')
    into KHACHHANG VALUES('KH29', 'Gian Thi Tien', 'KH29', '8883130173', '644603556', 'KH29@gmail.com', '833631082062', 'D39', 'USER-KH29', '123')
    into KHACHHANG VALUES('KH30', 'Ly Hoang Tien', 'KH30', '3854659569', '460301863', 'KH30@gmail.com', '407370493539', 'D10', 'USER-KH30', '123')
    into KHACHHANG VALUES('KH31', 'Nguyen Hoang An', 'KH31', '1649645009', '296902143', 'KH31@gmail.com', '008552898260', 'D25', 'USER-KH31', '123')
    into KHACHHANG VALUES('KH32', 'Tran Chi khanh', 'KH32', '8120200573', '287238919', 'KH32@gmail.com', '574164879262', 'D38', 'USER-KH32', '123')
    into KHACHHANG VALUES('KH33', 'Gian Hoang Ngoc Nhi', 'KH33', '7279509498', '583998148', 'KH33@gmail.com', '462971406907', 'D41', 'USER-KH33', '123')
    into KHACHHANG VALUES('KH34', 'Ðang Hoang Thong', 'KH34', '0122079583', '329361190', 'KH34@gmail.com', '982324651803', 'D8', 'USER-KH34', '123')
    into KHACHHANG VALUES('KH35', 'Bui Song Giang', 'KH35', '1772952158', '743359750', 'KH35@gmail.com', '074145584550', 'D2', 'USER-KH35', '123')
    into KHACHHANG VALUES('KH36', 'Ðang Song Minh', 'KH36', '9778671436', '084799735', 'KH36@gmail.com', '951148251955', 'D26', 'USER-KH36', '123')
    into KHACHHANG VALUES('KH37', 'Tran Chi Thuong', 'KH37', '5120604177', '981644592', 'KH37@gmail.com', '533163914860', 'D28', 'USER-KH37', '123')
    into KHACHHANG VALUES('KH38', 'Nguyen Gia Han', 'KH38', '0917298543', '992124832', 'KH38@gmail.com', '913254284008', 'D39', 'USER-KH38', '123')
    into KHACHHANG VALUES('KH39', 'Le Gia Vy', 'KH39', '9821654729', '877568349', 'KH39@gmail.com', '810695838788', 'D22', 'USER-KH39', '123')
    into KHACHHANG VALUES('KH40', 'Ðoan Tung Vinh', 'KH40', '0340491490', '544056987', 'KH40@gmail.com', '064702498512', 'D3', 'USER-KH40', '123')
    into KHACHHANG VALUES('KH41', 'Nguyen Hoang Tin', 'KH41', '1005726928', '585453265', 'KH41@gmail.com', '081016978295', 'D11', 'USER-KH41', '123')
    into KHACHHANG VALUES('KH42', 'Ho Thi Ngan', 'KH42', '1566435555', '422199951', 'KH42@gmail.com', '545950723622', 'D4', 'USER-KH42', '123')
    into KHACHHANG VALUES('KH43', 'Duong Gia Vu', 'KH43', '9832016687', '820290964', 'KH43@gmail.com', '508323266497', 'D15', 'USER-KH43', '123')
    into KHACHHANG VALUES('KH44', 'Vo Chi khanh', 'KH44', '7283640795', '497568029', 'KH44@gmail.com', '963757456369', 'D14', 'USER-KH44', '123')
    into KHACHHANG VALUES('KH45', 'Pham Gia Chung', 'KH45', '7553103903', '378232686', 'KH45@gmail.com', '700886905521', 'D30', 'USER-KH45', '123')
    into KHACHHANG VALUES('KH46', 'Ung Van Phu', 'KH46', '6286038792', '817803010', 'KH46@gmail.com', '923256058695', 'D5', 'USER-KH46', '123')
    into KHACHHANG VALUES('KH47', 'Ðoan Chi Ðuc', 'KH47', '0965472084', '397818655', 'KH47@gmail.com', '905880406328', 'D41', 'USER-KH47', '123')
    into KHACHHANG VALUES('KH48', 'Bui Tung Ðan', 'KH48', '5642935842', '148867208', 'KH48@gmail.com', '671149042277', 'D26', 'USER-KH48', '123')
    into KHACHHANG VALUES('KH49', 'Le Tung khanh', 'KH49', '8689751717', '203523841', 'KH49@gmail.com', '389278199575', 'D14', 'USER-KH49', '123')
    into KHACHHANG VALUES('KH50', 'Vu Gia Vu', 'KH50', '3122816464', '800463329', 'KH50@gmail.com', '270749128170', 'D28', 'USER-KH50', '123')
select 1 from dual;
/
-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang PHONG
-----------------------------------
delete from PHONG;
/
insert all 
   into PHONG VALUES('PHG1', 1000000, 2, 'Đã dọn', 'VIP2')
    into PHONG VALUES('PHG2', 1000000, 2, 'Đã dọn', 'VIP1')
    into PHONG VALUES('PHG3', 1000000, 2, 'Đã dọn', 'VIP1')
    into PHONG VALUES('PHG4', 500000, 2, 'Đã dọn', 'Normal')
    into PHONG VALUES('PHG5', 1000000, 2, 'Chưa dọn', 'VIP3')
    into PHONG VALUES('PHG6', 5000000, 2, 'Đã dọn', 'Diamond')
    into PHONG VALUES('PHG7', 5000000, 2, 'Đã dọn', 'Diamond')
    into PHONG VALUES('PHG8', 5000000, 2, 'Chưa dọn', 'Diamond')
    into PHONG VALUES('PHG9', 1000000, 2, 'Đã dọn', 'VIP3')
    into PHONG VALUES('PHG10', 3000000, 2, 'Chưa dọn', 'GOLD')
    into PHONG VALUES('PHG11', 3000000, 2, 'Chưa dọn', 'GOLD')
    into PHONG VALUES('PHG12', 1000000, 2, 'Đã dọn', 'VIP1')
    into PHONG VALUES('PHG13', 1000000, 2, 'Chưa dọn', 'VIP2')
    into PHONG VALUES('PHG14', 3000000, 2, 'Chưa dọn', 'GOLD')
    into PHONG VALUES('PHG15', 1000000, 2, 'Chưa dọn', 'VIP3')
    into PHONG VALUES('PHG16', 5000000, 2, 'Chưa dọn', 'Diamond')
    into PHONG VALUES('PHG17', 5000000, 2, 'Chưa dọn', 'Diamond')
    into PHONG VALUES('PHG18', 1000000, 2, 'Đã dọn', 'VIP3')
    into PHONG VALUES('PHG19', 1000000, 2, 'Đã dọn', 'VIP3')
    into PHONG VALUES('PHG20', 1000000, 2, 'Chưa dọn', 'VIP3')
    into PHONG VALUES('PHG21', 5000000, 2, 'Chưa dọn', 'Diamond')
    into PHONG VALUES('PHG22', 500000, 2, 'Đã dọn', 'Normal')
    into PHONG VALUES('PHG23', 5000000, 2, 'Chưa dọn', 'Diamond')
    into PHONG VALUES('PHG24', 5000000, 2, 'Chưa dọn', 'Diamond')
    into PHONG VALUES('PHG25', 1000000, 2, 'Đã dọn', 'VIP1')
    into PHONG VALUES('PHG26', 3000000, 2, 'Đã dọn', 'GOLD')
    into PHONG VALUES('PHG27', 1000000, 2, 'Đã dọn', 'VIP2')
    into PHONG VALUES('PHG28', 500000, 2, 'Đã dọn', 'Normal')
    into PHONG VALUES('PHG29', 3000000, 2, 'Đã dọn', 'GOLD')
    into PHONG VALUES('PHG30', 3000000, 2, 'Chưa dọn', 'GOLD')
select 1 from dual;
/
-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------

delete from DANHSACHTHAMGIATOUR
/
insert all
   into DANHSACHTHAMGIATOUR VALUES ('TG01', 'T011', 'KH24', TO_DATE('22-7-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG02', 'T04', 'KH16', TO_DATE('7-12-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG03', 'T03', 'KH44', TO_DATE('1-8-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG04', 'T01', 'KH8', TO_DATE('23-10-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG05', 'T09', 'KH19', TO_DATE('1-1-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG06', 'T05', 'KH23', TO_DATE('13-8-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG07', 'T06', 'KH12', TO_DATE('22-8-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG08', 'T04', 'KH16', TO_DATE('4-10-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG09', 'T07', 'KH33', TO_DATE('4-7-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG10', 'T07', 'KH42', TO_DATE('16-12-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG11', 'T01', 'KH46', TO_DATE('18-3-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG12', 'T010', 'KH21', TO_DATE('23-6-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG13', 'T012', 'KH6', TO_DATE('26-5-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG14', 'T08', 'KH50', TO_DATE('15-12-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG15', 'T05', 'KH36', TO_DATE('20-9-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG16', 'T01', 'KH42', TO_DATE('21-6-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG17', 'T02', 'KH12', TO_DATE('4-9-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG18', 'T09', 'KH45', TO_DATE('30-12-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG19', 'T04', 'KH39', TO_DATE('12-6-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG20', 'T010', 'KH7', TO_DATE('20-2-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG21', 'T06', 'KH11', TO_DATE('11-3-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG22', 'T02', 'KH14', TO_DATE('10-5-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG23', 'T06', 'KH4', TO_DATE('2-9-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG24', 'T07', 'KH6', TO_DATE('7-4-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG25', 'T012', 'KH8', TO_DATE('7-10-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG26', 'T012', 'KH30', TO_DATE('12-10-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG27', 'T03', 'KH10', TO_DATE('19-9-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG28', 'T01', 'KH49', TO_DATE('5-12-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG29', 'T08', 'KH3', TO_DATE('15-10-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG30', 'T07', 'KH49', TO_DATE('23-5-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG31', 'T04', 'KH8', TO_DATE('5-11-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG32', 'T012', 'KH46', TO_DATE('3-10-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG33', 'T010', 'KH21', TO_DATE('27-10-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG34', 'T02', 'KH31', TO_DATE('8-6-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG35', 'T012', 'KH13', TO_DATE('5-10-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG36', 'T06', 'KH44', TO_DATE('19-1-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG37', 'T03', 'KH31', TO_DATE('7-5-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG38', 'T08', 'KH29', TO_DATE('23-5-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG39', 'T09', 'KH20', TO_DATE('6-10-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG40', 'T07', 'KH33', TO_DATE('10-12-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG41', 'T06', 'KH13', TO_DATE('9-8-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG42', 'T03', 'KH1', TO_DATE('28-11-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG43', 'T012', 'KH6', TO_DATE('4-11-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG44', 'T07', 'KH35', TO_DATE('4-4-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG45', 'T05', 'KH16', TO_DATE('7-9-2022','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG46', 'T03', 'KH14', TO_DATE('5-8-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG47', 'T05', 'KH11', TO_DATE('22-3-2023','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG48', 'T06', 'KH16', TO_DATE('26-7-2020','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG49', 'T05', 'KH23', TO_DATE('25-9-2021','DD-MM-YYYY'))
    into DANHSACHTHAMGIATOUR VALUES ('TG50', 'T04', 'KH11', TO_DATE('15-1-2023','DD-MM-YYYY'))
select 1 from dual
/
-------------- END ----------------


-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------

delete from PhieuDatPhong
/
insert all
    into PhieuDatPhong VALUES('PHI1', 'NULL', 'Có', 'Bít tết', TO_DATE('29-9-2021','DD-MM-YYYY'), 'DL05', 'KH22', 'NV0013')
    into PhieuDatPhong VALUES('PHI2', 'NULL', 'Có', 'Không', TO_DATE('8-11-2022','DD-MM-YYYY'), 'DL05', 'KH22', 'NV007')
    into PhieuDatPhong VALUES('PHI3', 'NULL', 'Không', 'Không', TO_DATE('3-3-2021','DD-MM-YYYY'), 'DL04', 'KH24', 'NV0020')
    into PhieuDatPhong VALUES('PHI4', 'NULL', 'Không', 'Phòng view biển', TO_DATE('29-4-2023','DD-MM-YYYY'), 'DL03', 'KH50', 'NV003')
    into PhieuDatPhong VALUES('PHI5', 'NULL', 'Không', 'Rượu vang 1969', TO_DATE('22-4-2021','DD-MM-YYYY'), 'DL01', 'KH20', 'NV006')
    into PhieuDatPhong VALUES('PHI6', 'NULL', 'Có', 'Không', TO_DATE('28-8-2023','DD-MM-YYYY'), 'DL03', 'KH7', 'NV006')
    into PhieuDatPhong VALUES('PHI7', 'NULL', 'Có', 'Không', TO_DATE('23-1-2021','DD-MM-YYYY'), 'DL02', 'KH38', 'NV003')
    into PhieuDatPhong VALUES('PHI8', 'NULL', 'Không', 'Bít tết', TO_DATE('26-3-2023','DD-MM-YYYY'), 'DL02', 'KH32', 'NV0017')
    into PhieuDatPhong VALUES('PHI9', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('17-8-2022','DD-MM-YYYY'), 'DL05', 'KH8', 'NV0014')
    into PhieuDatPhong VALUES('PHI10', 'NULL', 'Có', 'Bít tết', TO_DATE('4-1-2021','DD-MM-YYYY'), 'DL04', 'KH8', 'NV005')
    into PhieuDatPhong VALUES('PHI11', 'NULL', 'Không', 'Bít tết', TO_DATE('9-9-2020','DD-MM-YYYY'), 'DL04', 'KH38', 'NV007')
    into PhieuDatPhong VALUES('PHI12', 'NULL', 'Không', 'Bít tết', TO_DATE('9-7-2021','DD-MM-YYYY'), 'DL03', 'KH49', 'NV0015')
    into PhieuDatPhong VALUES('PHI13', 'NULL', 'Có', 'Phòng view biển', TO_DATE('16-2-2023','DD-MM-YYYY'), 'DL05', 'KH34', 'NV002')
    into PhieuDatPhong VALUES('PHI14', 'NULL', 'Không', 'Rượu vang 1969', TO_DATE('23-3-2021','DD-MM-YYYY'), 'DL04', 'KH46', 'NV008')
    into PhieuDatPhong VALUES('PHI15', 'NULL', 'Có', 'Bít tết', TO_DATE('23-3-2023','DD-MM-YYYY'), 'DL01', 'KH49', 'NV0018')
    into PhieuDatPhong VALUES('PHI16', 'NULL', 'Không', 'Bít tết', TO_DATE('8-11-2020','DD-MM-YYYY'), 'DL04', 'KH34', 'NV0010')
    into PhieuDatPhong VALUES('PHI17', 'NULL', 'Không', 'Bít tết', TO_DATE('1-1-2023','DD-MM-YYYY'), 'DL05', 'KH12', 'NV005')
    into PhieuDatPhong VALUES('PHI18', 'NULL', 'Có', 'Phòng view biển', TO_DATE('12-2-2022','DD-MM-YYYY'), 'DL02', 'KH31', 'NV0014')
    into PhieuDatPhong VALUES('PHI19', 'NULL', 'Có', 'Không', TO_DATE('23-1-2020','DD-MM-YYYY'), 'DL03', 'KH20', 'NV005')
    into PhieuDatPhong VALUES('PHI20', 'NULL', 'Có', 'Không', TO_DATE('2-4-2020','DD-MM-YYYY'), 'DL05', 'KH13', 'NV0014')
    into PhieuDatPhong VALUES('PHI21', 'NULL', 'Có', 'Phòng view biển', TO_DATE('11-2-2022','DD-MM-YYYY'), 'DL05', 'KH19', 'NV002')
    into PhieuDatPhong VALUES('PHI22', 'NULL', 'Có', 'Phòng view biển', TO_DATE('24-7-2021','DD-MM-YYYY'), 'DL05', 'KH16', 'NV008')
    into PhieuDatPhong VALUES('PHI23', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('19-5-2023','DD-MM-YYYY'), 'DL05', 'KH17', 'NV0010')
    into PhieuDatPhong VALUES('PHI24', 'NULL', 'Có', 'Phòng view biển', TO_DATE('11-4-2021','DD-MM-YYYY'), 'DL05', 'KH8', 'NV001')
    into PhieuDatPhong VALUES('PHI25', 'NULL', 'Không', 'Phòng view biển', TO_DATE('3-2-2020','DD-MM-YYYY'), 'DL05', 'KH30', 'NV0013')
    into PhieuDatPhong VALUES('PHI26', 'NULL', 'Có', 'Bít tết', TO_DATE('1-8-2022','DD-MM-YYYY'), 'DL01', 'KH47', 'NV002')
    into PhieuDatPhong VALUES('PHI27', 'NULL', 'Không', 'Không', TO_DATE('8-3-2021','DD-MM-YYYY'), 'DL03', 'KH1', 'NV0016')
    into PhieuDatPhong VALUES('PHI28', 'NULL', 'Có', 'Không', TO_DATE('22-5-2021','DD-MM-YYYY'), 'DL04', 'KH18', 'NV009')
    into PhieuDatPhong VALUES('PHI29', 'NULL', 'Không', 'Phòng view biển', TO_DATE('8-9-2023','DD-MM-YYYY'), 'DL02', 'KH3', 'NV0016')
    into PhieuDatPhong VALUES('PHI30', 'NULL', 'Không', 'Rượu vang 1969', TO_DATE('29-7-2022','DD-MM-YYYY'), 'DL05', 'KH48', 'NV0018')
    into PhieuDatPhong VALUES('PHI31', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('7-2-2020','DD-MM-YYYY'), 'DL05', 'KH27', 'NV0013')
    into PhieuDatPhong VALUES('PHI32', 'NULL', 'Có', 'Phòng view biển', TO_DATE('23-5-2022','DD-MM-YYYY'), 'DL03', 'KH6', 'NV0014')
    into PhieuDatPhong VALUES('PHI33', 'NULL', 'Có', 'Không', TO_DATE('22-5-2021','DD-MM-YYYY'), 'DL03', 'KH21', 'NV0013')
    into PhieuDatPhong VALUES('PHI34', 'NULL', 'Có', 'Phòng view biển', TO_DATE('19-3-2021','DD-MM-YYYY'), 'DL03', 'KH38', 'NV001')
    into PhieuDatPhong VALUES('PHI35', 'NULL', 'Có', 'Phòng view biển', TO_DATE('30-9-2020','DD-MM-YYYY'), 'DL05', 'KH12', 'NV004')
    into PhieuDatPhong VALUES('PHI36', 'NULL', 'Có', 'Phòng view biển', TO_DATE('11-4-2023','DD-MM-YYYY'), 'DL01', 'KH47', 'NV006')
    into PhieuDatPhong VALUES('PHI37', 'NULL', 'Có', 'Không', TO_DATE('21-2-2023','DD-MM-YYYY'), 'DL01', 'KH10', 'NV0019')
    into PhieuDatPhong VALUES('PHI38', 'NULL', 'Không', 'Phòng view biển', TO_DATE('29-8-2023','DD-MM-YYYY'), 'DL05', 'KH32', 'NV001')
    into PhieuDatPhong VALUES('PHI39', 'NULL', 'Có', 'Bít tết', TO_DATE('4-9-2021','DD-MM-YYYY'), 'DL05', 'KH32', 'NV0014')
    into PhieuDatPhong VALUES('PHI40', 'NULL', 'Không', 'Không', TO_DATE('19-8-2023','DD-MM-YYYY'), 'DL01', 'KH44', 'NV004')
    into PhieuDatPhong VALUES('PHI41', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('1-10-2023','DD-MM-YYYY'), 'DL02', 'KH1', 'NV005')
    into PhieuDatPhong VALUES('PHI42', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('24-6-2022','DD-MM-YYYY'), 'DL02', 'KH32', 'NV0016')
    into PhieuDatPhong VALUES('PHI43', 'NULL', 'Không', 'Rượu vang 1969', TO_DATE('23-1-2022','DD-MM-YYYY'), 'DL05', 'KH12', 'NV009')
    into PhieuDatPhong VALUES('PHI44', 'NULL', 'Không', 'Phòng view biển', TO_DATE('27-3-2023','DD-MM-YYYY'), 'DL01', 'KH19', 'NV005')
    into PhieuDatPhong VALUES('PHI45', 'NULL', 'Có', 'Phòng view biển', TO_DATE('2-2-2021','DD-MM-YYYY'), 'DL01', 'KH5', 'NV0015')
    into PhieuDatPhong VALUES('PHI46', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('17-3-2020','DD-MM-YYYY'), 'DL04', 'KH30', 'NV0020')
    into PhieuDatPhong VALUES('PHI47', 'NULL', 'Có', 'Không', TO_DATE('4-9-2023','DD-MM-YYYY'), 'DL02', 'KH46', 'NV008')
    into PhieuDatPhong VALUES('PHI48', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('4-9-2022','DD-MM-YYYY'), 'DL02', 'KH17', 'NV0013')
    into PhieuDatPhong VALUES('PHI49', 'NULL', 'Không', 'Rượu vang 1969', TO_DATE('28-7-2020','DD-MM-YYYY'), 'DL03', 'KH35', 'NV0011')
    into PhieuDatPhong VALUES('PHI50', 'NULL', 'Có', 'Rượu vang 1969', TO_DATE('18-2-2022','DD-MM-YYYY'), 'DL04', 'KH9', 'NV004')
select 1 from dual;
/
-------------- END ----------------


-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
delete from DanhSachDatPhong
/

insert all
    into DanhSachDatPhong VALUES('DS001',  TO_DATE('5-7-2022','DD-MM-YYYY'), 5, 'PHG19', 'PHI49')
    into DanhSachDatPhong VALUES('DS002',  TO_DATE('25-7-2023','DD-MM-YYYY'), 5, 'PHG28', 'PHI7')
    into DanhSachDatPhong VALUES('DS003',  TO_DATE('1-1-2022','DD-MM-YYYY'), 4, 'PHG12', 'PHI14')
    into DanhSachDatPhong VALUES('DS004',  TO_DATE('20-3-2020','DD-MM-YYYY'), 1, 'PHG23', 'PHI36')
    into DanhSachDatPhong VALUES('DS005',  TO_DATE('13-4-2020','DD-MM-YYYY'), 4, 'PHG29', 'PHI24')
    into DanhSachDatPhong VALUES('DS006',  TO_DATE('29-3-2020','DD-MM-YYYY'), 1, 'PHG3', 'PHI33')
    into DanhSachDatPhong VALUES('DS007',  TO_DATE('29-8-2021','DD-MM-YYYY'), 3, 'PHG15', 'PHI29')
    into DanhSachDatPhong VALUES('DS008',  TO_DATE('2-5-2021','DD-MM-YYYY'), 5, 'PHG21', 'PHI3')
    into DanhSachDatPhong VALUES('DS009',  TO_DATE('27-6-2021','DD-MM-YYYY'), 2, 'PHG2', 'PHI35')
    into DanhSachDatPhong VALUES('DS0010',  TO_DATE('26-11-2023','DD-MM-YYYY'), 3, 'PHG13', 'PHI20')
    into DanhSachDatPhong VALUES('DS0011',  TO_DATE('10-4-2022','DD-MM-YYYY'), 1, 'PHG27', 'PHI1')
    into DanhSachDatPhong VALUES('DS0012',  TO_DATE('1-6-2021','DD-MM-YYYY'), 4, 'PHG18', 'PHI47')
    into DanhSachDatPhong VALUES('DS0013',  TO_DATE('17-1-2020','DD-MM-YYYY'), 1, 'PHG25', 'PHI49')
    into DanhSachDatPhong VALUES('DS0014',  TO_DATE('4-12-2023','DD-MM-YYYY'), 4, 'PHG29', 'PHI36')
    into DanhSachDatPhong VALUES('DS0015',  TO_DATE('25-6-2022','DD-MM-YYYY'), 4, 'PHG22', 'PHI37')
    into DanhSachDatPhong VALUES('DS0016',  TO_DATE('11-8-2022','DD-MM-YYYY'), 1, 'PHG24', 'PHI34')
    into DanhSachDatPhong VALUES('DS0017',  TO_DATE('30-7-2023','DD-MM-YYYY'), 4, 'PHG11', 'PHI29')
    into DanhSachDatPhong VALUES('DS0018',  TO_DATE('16-9-2023','DD-MM-YYYY'), 4, 'PHG29', 'PHI12')
    into DanhSachDatPhong VALUES('DS0019',  TO_DATE('9-11-2023','DD-MM-YYYY'), 2, 'PHG1', 'PHI5')
    into DanhSachDatPhong VALUES('DS0020',  TO_DATE('4-8-2021','DD-MM-YYYY'), 5, 'PHG11', 'PHI27')
    into DanhSachDatPhong VALUES('DS0021',  TO_DATE('22-9-2022','DD-MM-YYYY'), 1, 'PHG14', 'PHI49')
    into DanhSachDatPhong VALUES('DS0022',  TO_DATE('30-7-2020','DD-MM-YYYY'), 2, 'PHG6', 'PHI9')
    into DanhSachDatPhong VALUES('DS0023',  TO_DATE('12-3-2022','DD-MM-YYYY'), 5, 'PHG10', 'PHI2')
    into DanhSachDatPhong VALUES('DS0024',  TO_DATE('7-8-2021','DD-MM-YYYY'), 5, 'PHG16', 'PHI43')
    into DanhSachDatPhong VALUES('DS0025',  TO_DATE('27-9-2020','DD-MM-YYYY'), 1, 'PHG15', 'PHI3')
    into DanhSachDatPhong VALUES('DS0026',  TO_DATE('4-7-2023','DD-MM-YYYY'), 1, 'PHG19', 'PHI46')
    into DanhSachDatPhong VALUES('DS0027',  TO_DATE('2-9-2022','DD-MM-YYYY'), 4, 'PHG7', 'PHI28')
    into DanhSachDatPhong VALUES('DS0028',  TO_DATE('28-8-2022','DD-MM-YYYY'), 3, 'PHG9', 'PHI23')
    into DanhSachDatPhong VALUES('DS0029',  TO_DATE('22-2-2022','DD-MM-YYYY'), 1, 'PHG1', 'PHI14')
    into DanhSachDatPhong VALUES('DS0030',  TO_DATE('7-10-2020','DD-MM-YYYY'), 5, 'PHG15', 'PHI47')
    into DanhSachDatPhong VALUES('DS0031',  TO_DATE('20-1-2020','DD-MM-YYYY'), 2, 'PHG29', 'PHI36')
    into DanhSachDatPhong VALUES('DS0032',  TO_DATE('19-10-2022','DD-MM-YYYY'), 1, 'PHG20', 'PHI8')
    into DanhSachDatPhong VALUES('DS0033',  TO_DATE('28-10-2021','DD-MM-YYYY'), 2, 'PHG12', 'PHI37')
    into DanhSachDatPhong VALUES('DS0034',  TO_DATE('1-1-2022','DD-MM-YYYY'), 4, 'PHG10', 'PHI12')
    into DanhSachDatPhong VALUES('DS0035',  TO_DATE('13-3-2021','DD-MM-YYYY'), 4, 'PHG20', 'PHI21')
    into DanhSachDatPhong VALUES('DS0036',  TO_DATE('28-10-2021','DD-MM-YYYY'), 5, 'PHG17', 'PHI37')
    into DanhSachDatPhong VALUES('DS0037',  TO_DATE('6-7-2023','DD-MM-YYYY'), 3, 'PHG24', 'PHI18')
    into DanhSachDatPhong VALUES('DS0038',  TO_DATE('4-11-2021','DD-MM-YYYY'), 3, 'PHG13', 'PHI3')
    into DanhSachDatPhong VALUES('DS0039',  TO_DATE('22-4-2021','DD-MM-YYYY'), 3, 'PHG30', 'PHI21')
    into DanhSachDatPhong VALUES('DS0040',  TO_DATE('25-12-2020','DD-MM-YYYY'), 4, 'PHG13', 'PHI44')
    into DanhSachDatPhong VALUES('DS0041',  TO_DATE('14-5-2020','DD-MM-YYYY'), 1, 'PHG24', 'PHI45')
    into DanhSachDatPhong VALUES('DS0042',  TO_DATE('15-2-2020','DD-MM-YYYY'), 2, 'PHG14', 'PHI43')
    into DanhSachDatPhong VALUES('DS0043',  TO_DATE('12-2-2022','DD-MM-YYYY'), 3, 'PHG23', 'PHI6')
    into DanhSachDatPhong VALUES('DS0044',  TO_DATE('2-5-2022','DD-MM-YYYY'), 2, 'PHG28', 'PHI39')
    into DanhSachDatPhong VALUES('DS0045',  TO_DATE('21-10-2021','DD-MM-YYYY'), 1, 'PHG22', 'PHI14')
    into DanhSachDatPhong VALUES('DS0046',  TO_DATE('29-8-2020','DD-MM-YYYY'), 5, 'PHG2', 'PHI1')
    into DanhSachDatPhong VALUES('DS0047',  TO_DATE('29-1-2020','DD-MM-YYYY'), 1, 'PHG19', 'PHI20')
    into DanhSachDatPhong VALUES('DS0048',  TO_DATE('17-10-2022','DD-MM-YYYY'), 4, 'PHG13', 'PHI24')
    into DanhSachDatPhong VALUES('DS0049',  TO_DATE('20-1-2022','DD-MM-YYYY'), 4, 'PHG16', 'PHI46')
    into DanhSachDatPhong VALUES('DS0050',  TO_DATE('12-12-2023','DD-MM-YYYY'), 5, 'PHG26', 'PHI22')
select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
delete from HoSoThanhToan
/

insert all
    into HOSOTHANHTOAN VALUES('HS01', TO_DATE('17-10-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0041', TO_DATE('17-10-2022','DD-MM-YYYY'), '6000000', 'NV0020', 'DS0041')
    into HOSOTHANHTOAN VALUES('HS02', TO_DATE('16-9-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0038', TO_DATE('16-9-2020','DD-MM-YYYY'), '8000000', 'NV0020', 'DS0038')
    into HOSOTHANHTOAN VALUES('HS03', TO_DATE('20-1-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS006', TO_DATE('20-1-2020','DD-MM-YYYY'), '8000000', 'NV0020', 'DS006')
    into HOSOTHANHTOAN VALUES('HS04', TO_DATE('6-1-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0038', TO_DATE('6-1-2022','DD-MM-YYYY'), '8000000', 'NV0020', 'DS0038')
    into HOSOTHANHTOAN VALUES('HS05', TO_DATE('2-2-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0010', TO_DATE('2-2-2020','DD-MM-YYYY'), '10000000', 'NV0020', 'DS0010')
    into HOSOTHANHTOAN VALUES('HS06', TO_DATE('24-3-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0018', TO_DATE('24-3-2020','DD-MM-YYYY'), '9000000', 'NV0020', 'DS0018')
    into HOSOTHANHTOAN VALUES('HS07', TO_DATE('12-1-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0045', TO_DATE('12-1-2020','DD-MM-YYYY'), '10000000', 'NV0020', 'DS0045')
    into HOSOTHANHTOAN VALUES('HS08', TO_DATE('30-8-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS001', TO_DATE('30-8-2020','DD-MM-YYYY'), '9000000', 'NV0020', 'DS001')
    into HOSOTHANHTOAN VALUES('HS09', TO_DATE('16-4-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0039', TO_DATE('16-4-2022','DD-MM-YYYY'), '5000000', 'NV0020', 'DS0039')
    into HOSOTHANHTOAN VALUES('HS010', TO_DATE('8-5-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0045', TO_DATE('8-5-2022','DD-MM-YYYY'), '9000000', 'NV0020', 'DS0045')
    into HOSOTHANHTOAN VALUES('HS011', TO_DATE('22-1-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0048', TO_DATE('22-1-2022','DD-MM-YYYY'), '6000000', 'NV0020', 'DS0048')
    into HOSOTHANHTOAN VALUES('HS012', TO_DATE('18-2-2023','DD-MM-YYYY'), 'Thanh toán cho phòng DS0042', TO_DATE('18-2-2023','DD-MM-YYYY'), '8000000', 'NV0020', 'DS0042')
    into HOSOTHANHTOAN VALUES('HS013', TO_DATE('11-12-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0032', TO_DATE('11-12-2022','DD-MM-YYYY'), '7000000', 'NV0020', 'DS0032')
    into HOSOTHANHTOAN VALUES('HS014', TO_DATE('22-5-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0031', TO_DATE('22-5-2020','DD-MM-YYYY'), '5000000', 'NV0020', 'DS0031')
    into HOSOTHANHTOAN VALUES('HS015', TO_DATE('22-3-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0050', TO_DATE('22-3-2020','DD-MM-YYYY'), '9000000', 'NV0020', 'DS0050')
    into HOSOTHANHTOAN VALUES('HS016', TO_DATE('26-10-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0039', TO_DATE('26-10-2020','DD-MM-YYYY'), '8000000', 'NV0020', 'DS0039')
    into HOSOTHANHTOAN VALUES('HS017', TO_DATE('28-2-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0016', TO_DATE('28-2-2020','DD-MM-YYYY'), '5000000', 'NV0020', 'DS0016')
    into HOSOTHANHTOAN VALUES('HS018', TO_DATE('18-12-2023','DD-MM-YYYY'), 'Thanh toán cho phòng DS008', TO_DATE('18-12-2023','DD-MM-YYYY'), '5000000', 'NV0020', 'DS008')
    into HOSOTHANHTOAN VALUES('HS019', TO_DATE('6-1-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0041', TO_DATE('6-1-2022','DD-MM-YYYY'), '6000000', 'NV0020', 'DS0041')
    into HOSOTHANHTOAN VALUES('HS020', TO_DATE('19-2-2023','DD-MM-YYYY'), 'Thanh toán cho phòng DS0013', TO_DATE('19-2-2023','DD-MM-YYYY'), '8000000', 'NV0020', 'DS0013')
    into HOSOTHANHTOAN VALUES('HS021', TO_DATE('1-5-2021','DD-MM-YYYY'), 'Thanh toán cho phòng DS006', TO_DATE('1-5-2021','DD-MM-YYYY'), '5000000', 'NV0020', 'DS006')
    into HOSOTHANHTOAN VALUES('HS022', TO_DATE('4-1-2021','DD-MM-YYYY'), 'Thanh toán cho phòng DS001', TO_DATE('4-1-2021','DD-MM-YYYY'), '7000000', 'NV0020', 'DS001')
    into HOSOTHANHTOAN VALUES('HS023', TO_DATE('4-5-2022','DD-MM-YYYY'), 'Thanh toán cho phòng DS0023', TO_DATE('4-5-2022','DD-MM-YYYY'), '5000000', 'NV0020', 'DS0023')
    into HOSOTHANHTOAN VALUES('HS024', TO_DATE('7-12-2021','DD-MM-YYYY'), 'Thanh toán cho phòng DS007', TO_DATE('7-12-2021','DD-MM-YYYY'), '6000000', 'NV0020', 'DS007')
    into HOSOTHANHTOAN VALUES('HS025', TO_DATE('2-6-2021','DD-MM-YYYY'), 'Thanh toán cho phòng DS005', TO_DATE('2-6-2021','DD-MM-YYYY'), '7000000', 'NV0020', 'DS005')
    into HOSOTHANHTOAN VALUES('HS026', TO_DATE('1-10-2021','DD-MM-YYYY'), 'Thanh toán cho phòng DS0018', TO_DATE('1-10-2021','DD-MM-YYYY'), '10000000', 'NV0020', 'DS0018')
    into HOSOTHANHTOAN VALUES('HS027', TO_DATE('27-10-2023','DD-MM-YYYY'), 'Thanh toán cho phòng DS0026', TO_DATE('27-10-2023','DD-MM-YYYY'), '7000000', 'NV0020', 'DS0026')
    into HOSOTHANHTOAN VALUES('HS028', TO_DATE('6-5-2021','DD-MM-YYYY'), 'Thanh toán cho phòng DS0036', TO_DATE('6-5-2021','DD-MM-YYYY'), '6000000', 'NV0020', 'DS0036')
    into HOSOTHANHTOAN VALUES('HS029', TO_DATE('15-9-2020','DD-MM-YYYY'), 'Thanh toán cho phòng DS0017', TO_DATE('15-9-2020','DD-MM-YYYY'), '6000000', 'NV0020', 'DS0017')
    into HOSOTHANHTOAN VALUES('HS030', TO_DATE('9-10-2023','DD-MM-YYYY'), 'Thanh toán cho phòng DS0050', TO_DATE('9-10-2023','DD-MM-YYYY'), '10000000', 'NV0020', 'DS0050')
select 1 from dual;
/
-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
delete from BangDanhGia
/

insert all 
    into BANGDANHGIA VALUES('BDG1', 'Phòng đẹp, tuyệt vời!', 'DS0018', 'KH32')
    into BANGDANHGIA VALUES('BDG2', 'Phòng đẹp, tuyệt vời!', 'DS0039', 'KH48')
    into BANGDANHGIA VALUES('BDG3', 'Phòng đẹp, tuyệt vời!', 'DS002', 'KH24')
    into BANGDANHGIA VALUES('BDG4', 'Bình thường', 'DS0034', 'KH47')
    into BANGDANHGIA VALUES('BDG5', 'Bình thường', 'DS0042', 'KH4')
    into BANGDANHGIA VALUES('BDG6', 'Bình thường', 'DS0039', 'KH23')
    into BANGDANHGIA VALUES('BDG7', 'Phòng đẹp, tuyệt vời!', 'DS0022', 'KH31')
    into BANGDANHGIA VALUES('BDG8', 'Tệ!', 'DS0018', 'KH16')
    into BANGDANHGIA VALUES('BDG9', 'Phòng đẹp, tuyệt vời!', 'DS0050', 'KH34')
    into BANGDANHGIA VALUES('BDG10', 'Phòng đẹp, tuyệt vời!', 'DS001', 'KH8')
    into BANGDANHGIA VALUES('BDG11', 'Bình thường', 'DS0027', 'KH23')
    into BANGDANHGIA VALUES('BDG12', 'Phòng đẹp, tuyệt vời!', 'DS0035', 'KH5')
    into BANGDANHGIA VALUES('BDG13', 'Bình thường', 'DS0045', 'KH32')
    into BANGDANHGIA VALUES('BDG14', 'Bình thường', 'DS0031', 'KH26')
    into BANGDANHGIA VALUES('BDG15', 'Tệ!', 'DS0026', 'KH30')
    into BANGDANHGIA VALUES('BDG16', 'Bình thường', 'DS007', 'KH23')
    into BANGDANHGIA VALUES('BDG17', 'Bình thường', 'DS0032', 'KH25')
    into BANGDANHGIA VALUES('BDG18', 'Bình thường', 'DS0013', 'KH9')
    into BANGDANHGIA VALUES('BDG19', 'Phòng đẹp, tuyệt vời!', 'DS0014', 'KH2')
    into BANGDANHGIA VALUES('BDG20', 'Phòng đẹp, tuyệt vời!', 'DS0042', 'KH18')
    into BANGDANHGIA VALUES('BDG21', 'Tệ!', 'DS0017', 'KH17')
    into BANGDANHGIA VALUES('BDG22', 'Bình thường', 'DS007', 'KH13')
    into BANGDANHGIA VALUES('BDG23', 'Bình thường', 'DS0020', 'KH29')
    into BANGDANHGIA VALUES('BDG24', 'Tệ!', 'DS0048', 'KH35')
    into BANGDANHGIA VALUES('BDG25', 'Tệ!', 'DS0030', 'KH15')
    into BANGDANHGIA VALUES('BDG26', 'Tệ!', 'DS0043', 'KH29')
    into BANGDANHGIA VALUES('BDG27', 'Phòng đẹp, tuyệt vời!', 'DS008', 'KH7')
    into BANGDANHGIA VALUES('BDG28', 'Phòng đẹp, tuyệt vời!', 'DS0027', 'KH32')
    into BANGDANHGIA VALUES('BDG29', 'Tệ!', 'DS001', 'KH8')
select 1 from dual;
/

-------------- END ----------------
-----------------------------------
--- 8P5. Nhap lieu cho ban PhieuSuDungDichVu
-----------------------------------
-- waiting for full p1 p2 p3 p4

insert all
    into  PHIEUSUDUNGDICHVU VALUES('PDV00','3',  TO_DATE('15-7-2023','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV01', 'DS001')
    into  PHIEUSUDUNGDICHVU VALUES('PDV01','1',  TO_DATE('20-11-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV02', 'DS002')
    into  PHIEUSUDUNGDICHVU VALUES('PDV02','1',  TO_DATE('18-12-2020','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV03', 'DS003')
    into  PHIEUSUDUNGDICHVU VALUES('PDV03','5',  TO_DATE('2-9-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV04', 'DS004')
    into  PHIEUSUDUNGDICHVU VALUES('PDV04','1',  TO_DATE('2-5-2022','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV05', 'DS005')
    into  PHIEUSUDUNGDICHVU VALUES('PDV05','1',  TO_DATE('1-2-2022','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV06', 'DS006')
    into  PHIEUSUDUNGDICHVU VALUES('PDV06','6',  TO_DATE('21-6-2023','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV01', 'DS007')
    into  PHIEUSUDUNGDICHVU VALUES('PDV07','5',  TO_DATE('6-2-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV02', 'DS008')
    into  PHIEUSUDUNGDICHVU VALUES('PDV08','6',  TO_DATE('22-3-2020','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV03', 'DS009')
    into  PHIEUSUDUNGDICHVU VALUES('PDV09','1',  TO_DATE('9-6-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV04', 'DS0010')
    into  PHIEUSUDUNGDICHVU VALUES('PDV010','6',  TO_DATE('12-1-2020','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV05', 'DS0011')
    into  PHIEUSUDUNGDICHVU VALUES('PDV011','5',  TO_DATE('2-9-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV06', 'DS0012')
    into  PHIEUSUDUNGDICHVU VALUES('PDV012','2',  TO_DATE('20-4-2021','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV01', 'DS0013')
    into  PHIEUSUDUNGDICHVU VALUES('PDV013','6',  TO_DATE('10-6-2020','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV02', 'DS0014')
    into  PHIEUSUDUNGDICHVU VALUES('PDV014','1',  TO_DATE('8-8-2021','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV03', 'DS0015')
    into  PHIEUSUDUNGDICHVU VALUES('PDV015','5',  TO_DATE('27-5-2020','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV04', 'DS0016')
    into  PHIEUSUDUNGDICHVU VALUES('PDV016','1',  TO_DATE('23-1-2020','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV05', 'DS0017')
    into  PHIEUSUDUNGDICHVU VALUES('PDV017','1',  TO_DATE('11-6-2022','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV06', 'DS0018')
    into  PHIEUSUDUNGDICHVU VALUES('PDV018','5',  TO_DATE('28-8-2022','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV01', 'DS0019')
    into  PHIEUSUDUNGDICHVU VALUES('PDV019','2',  TO_DATE('13-12-2023','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV02', 'DS0020')
    into  PHIEUSUDUNGDICHVU VALUES('PDV020','5',  TO_DATE('1-9-2020','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV03', 'DS0021')
    into  PHIEUSUDUNGDICHVU VALUES('PDV021','5',  TO_DATE('12-1-2022','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV04', 'DS0022')
    into  PHIEUSUDUNGDICHVU VALUES('PDV022','2',  TO_DATE('11-10-2021','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV05', 'DS0023')
    into  PHIEUSUDUNGDICHVU VALUES('PDV023','2',  TO_DATE('28-10-2021','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV06', 'DS0024')
    into  PHIEUSUDUNGDICHVU VALUES('PDV024','5',  TO_DATE('19-1-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV01', 'DS0025')
    into  PHIEUSUDUNGDICHVU VALUES('PDV025','4',  TO_DATE('4-5-2020','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV02', 'DS0026')
    into  PHIEUSUDUNGDICHVU VALUES('PDV026','1',  TO_DATE('15-7-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV03', 'DS0027')
    into  PHIEUSUDUNGDICHVU VALUES('PDV027','1',  TO_DATE('7-12-2021','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV04', 'DS0028')
    into  PHIEUSUDUNGDICHVU VALUES('PDV028','1',  TO_DATE('25-4-2021','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV05', 'DS0029')
    into  PHIEUSUDUNGDICHVU VALUES('PDV029','3',  TO_DATE('26-1-2020','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV06', 'DS0030')
    into  PHIEUSUDUNGDICHVU VALUES('PDV030','5',  TO_DATE('12-8-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV01', 'DS0031')
    into  PHIEUSUDUNGDICHVU VALUES('PDV031','5',  TO_DATE('20-8-2020','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV02', 'DS0032')
    into  PHIEUSUDUNGDICHVU VALUES('PDV032','5',  TO_DATE('13-4-2023','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV03', 'DS0033')
    into  PHIEUSUDUNGDICHVU VALUES('PDV033','1',  TO_DATE('27-3-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV04', 'DS0034')
    into  PHIEUSUDUNGDICHVU VALUES('PDV034','6',  TO_DATE('5-7-2022','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV05', 'DS0035')
    into  PHIEUSUDUNGDICHVU VALUES('PDV035','3',  TO_DATE('7-7-2022','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV06', 'DS0036')
    into  PHIEUSUDUNGDICHVU VALUES('PDV036','3',  TO_DATE('7-2-2022','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV01', 'DS0037')
    into  PHIEUSUDUNGDICHVU VALUES('PDV037','2',  TO_DATE('2-8-2022','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV02', 'DS0038')
    into  PHIEUSUDUNGDICHVU VALUES('PDV038','5',  TO_DATE('5-11-2022','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV03', 'DS0039')
    into  PHIEUSUDUNGDICHVU VALUES('PDV039','3',  TO_DATE('8-2-2021','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV04', 'DS0040')
    into  PHIEUSUDUNGDICHVU VALUES('PDV040','2',  TO_DATE('25-3-2021','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV05', 'DS0041')
    into  PHIEUSUDUNGDICHVU VALUES('PDV041','3',  TO_DATE('2-1-2021','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV06', 'DS0042')
    into  PHIEUSUDUNGDICHVU VALUES('PDV042','5',  TO_DATE('19-10-2023','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV01', 'DS0043')
    into  PHIEUSUDUNGDICHVU VALUES('PDV043','4',  TO_DATE('25-3-2020','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV02', 'DS0044')
    into  PHIEUSUDUNGDICHVU VALUES('PDV044','6',  TO_DATE('21-8-2020','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV03', 'DS0045')
    into  PHIEUSUDUNGDICHVU VALUES('PDV045','4',  TO_DATE('20-3-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV04', 'DS0046')
    into  PHIEUSUDUNGDICHVU VALUES('PDV046','6',  TO_DATE('5-12-2020','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV05', 'DS0047')
    into  PHIEUSUDUNGDICHVU VALUES('PDV047','5',  TO_DATE('1-5-2020','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV06', 'DS0048')
    into  PHIEUSUDUNGDICHVU VALUES('PDV048','6',  TO_DATE('25-10-2021','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV01', 'DS0049')
    into  PHIEUSUDUNGDICHVU VALUES('PDV049','2',  TO_DATE('14-11-2023','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV02', 'DS0050')
    into  PHIEUSUDUNGDICHVU VALUES('PDV050','4',  TO_DATE('11-7-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV03', 'DS001')
    into  PHIEUSUDUNGDICHVU VALUES('PDV051','2',  TO_DATE('12-10-2020','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV04', 'DS002')
    into  PHIEUSUDUNGDICHVU VALUES('PDV052','3',  TO_DATE('26-7-2023','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV05', 'DS003')
    into  PHIEUSUDUNGDICHVU VALUES('PDV053','4',  TO_DATE('14-7-2023','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV06', 'DS004')
    into  PHIEUSUDUNGDICHVU VALUES('PDV054','1',  TO_DATE('15-4-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV01', 'DS005')
    into  PHIEUSUDUNGDICHVU VALUES('PDV055','3',  TO_DATE('10-9-2020','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV02', 'DS006')
    into  PHIEUSUDUNGDICHVU VALUES('PDV056','1',  TO_DATE('3-10-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV03', 'DS007')
    into  PHIEUSUDUNGDICHVU VALUES('PDV057','2',  TO_DATE('13-5-2021','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV04', 'DS008')
    into  PHIEUSUDUNGDICHVU VALUES('PDV058','3',  TO_DATE('20-2-2021','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV05', 'DS009')
    into  PHIEUSUDUNGDICHVU VALUES('PDV059','3',  TO_DATE('7-2-2021','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV06', 'DS0010')
    into  PHIEUSUDUNGDICHVU VALUES('PDV060','3',  TO_DATE('20-11-2020','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV01', 'DS0011')
    into  PHIEUSUDUNGDICHVU VALUES('PDV061','5',  TO_DATE('25-3-2023','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV02', 'DS0012')
    into  PHIEUSUDUNGDICHVU VALUES('PDV062','5',  TO_DATE('24-7-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV03', 'DS0013')
    into  PHIEUSUDUNGDICHVU VALUES('PDV063','2',  TO_DATE('16-5-2021','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV04', 'DS0014')
    into  PHIEUSUDUNGDICHVU VALUES('PDV064','1',  TO_DATE('10-8-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV05', 'DS0015')
    into  PHIEUSUDUNGDICHVU VALUES('PDV065','2',  TO_DATE('24-9-2023','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV06', 'DS0016')
    into  PHIEUSUDUNGDICHVU VALUES('PDV066','3',  TO_DATE('27-7-2022','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV01', 'DS0017')
    into  PHIEUSUDUNGDICHVU VALUES('PDV067','2',  TO_DATE('14-3-2020','DD-MM-YYYY'), 200000, 'Đã sử dụng', 'DV02', 'DS0018')
    into  PHIEUSUDUNGDICHVU VALUES('PDV068','4',  TO_DATE('23-5-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV03', 'DS0019')
    into  PHIEUSUDUNGDICHVU VALUES('PDV069','4',  TO_DATE('4-6-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV04', 'DS0020')
    into  PHIEUSUDUNGDICHVU VALUES('PDV070','5',  TO_DATE('4-12-2020','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV05', 'DS0021')
    into  PHIEUSUDUNGDICHVU VALUES('PDV071','1',  TO_DATE('6-10-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV06', 'DS0022')
    into  PHIEUSUDUNGDICHVU VALUES('PDV072','4',  TO_DATE('4-5-2023','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV01', 'DS0023')
    into  PHIEUSUDUNGDICHVU VALUES('PDV073','3',  TO_DATE('9-9-2022','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV02', 'DS0024')
    into  PHIEUSUDUNGDICHVU VALUES('PDV074','4',  TO_DATE('12-9-2020','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV03', 'DS0025')
    into  PHIEUSUDUNGDICHVU VALUES('PDV075','4',  TO_DATE('27-6-2023','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV04', 'DS0026')
    into  PHIEUSUDUNGDICHVU VALUES('PDV076','1',  TO_DATE('9-9-2020','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV05', 'DS0027')
    into  PHIEUSUDUNGDICHVU VALUES('PDV077','4',  TO_DATE('15-11-2021','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV06', 'DS0028')
    into  PHIEUSUDUNGDICHVU VALUES('PDV078','1',  TO_DATE('1-2-2021','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV01', 'DS0029')
    into  PHIEUSUDUNGDICHVU VALUES('PDV079','6',  TO_DATE('20-5-2020','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV02', 'DS0030')
    into  PHIEUSUDUNGDICHVU VALUES('PDV080','4',  TO_DATE('19-7-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV03', 'DS0031')
    into  PHIEUSUDUNGDICHVU VALUES('PDV081','4',  TO_DATE('2-11-2023','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV04', 'DS0032')
    into  PHIEUSUDUNGDICHVU VALUES('PDV082','3',  TO_DATE('20-2-2021','DD-MM-YYYY'), 300000, 'Đã sử dụng', 'DV05', 'DS0033')
    into  PHIEUSUDUNGDICHVU VALUES('PDV083','5',  TO_DATE('4-5-2021','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV06', 'DS0034')
    into  PHIEUSUDUNGDICHVU VALUES('PDV084','4',  TO_DATE('26-7-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV01', 'DS0035')
    into  PHIEUSUDUNGDICHVU VALUES('PDV085','6',  TO_DATE('21-7-2022','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV02', 'DS0036')
    into  PHIEUSUDUNGDICHVU VALUES('PDV086','4',  TO_DATE('16-8-2022','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV03', 'DS0037')
    into  PHIEUSUDUNGDICHVU VALUES('PDV087','5',  TO_DATE('16-9-2022','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV04', 'DS0038')
    into  PHIEUSUDUNGDICHVU VALUES('PDV088','4',  TO_DATE('18-7-2020','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV05', 'DS0039')
    into  PHIEUSUDUNGDICHVU VALUES('PDV089','6',  TO_DATE('11-9-2022','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV06', 'DS0040')
    into  PHIEUSUDUNGDICHVU VALUES('PDV090','4',  TO_DATE('27-3-2021','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV01', 'DS0041')
    into  PHIEUSUDUNGDICHVU VALUES('PDV091','5',  TO_DATE('2-1-2023','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV02', 'DS0042')
    into  PHIEUSUDUNGDICHVU VALUES('PDV092','5',  TO_DATE('22-12-2022','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV03', 'DS0043')
    into  PHIEUSUDUNGDICHVU VALUES('PDV093','5',  TO_DATE('1-1-2023','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV04', 'DS0044')
    into  PHIEUSUDUNGDICHVU VALUES('PDV094','5',  TO_DATE('24-10-2023','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV05', 'DS0045')
    into  PHIEUSUDUNGDICHVU VALUES('PDV095','1',  TO_DATE('12-3-2022','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV06', 'DS0046')
    into  PHIEUSUDUNGDICHVU VALUES('PDV096','6',  TO_DATE('6-4-2021','DD-MM-YYYY'), 600000, 'Đã sử dụng', 'DV01', 'DS0047')
    into  PHIEUSUDUNGDICHVU VALUES('PDV097','5',  TO_DATE('7-5-2020','DD-MM-YYYY'), 500000, 'Đã sử dụng', 'DV02', 'DS0048')
    into  PHIEUSUDUNGDICHVU VALUES('PDV098','4',  TO_DATE('5-3-2021','DD-MM-YYYY'), 400000, 'Đã sử dụng', 'DV03', 'DS0049')
    into  PHIEUSUDUNGDICHVU VALUES('PDV099','1',  TO_DATE('26-6-2023','DD-MM-YYYY'), 100000, 'Đã sử dụng', 'DV04', 'DS0050')
select 1 from dual;



-- Check area


/*
select * from DBA_PTTK.LOAIPHONG;
select * from DBA_PTTK.DICHVU;
select * from DBA_PTTK.TOUR;
select * from DBA_PTTK.NHANVIEN;
select * from DBA_PTTK.DAILY;
select * from DBA_PTTK.CONGTYDULICH;
select * from DBA_PTTK.DICHVUPHONG;
select * from DBA_PTTK.DOAN
select * from DBA_PTTK.KHACHHANG
select * from DBA_PTTK.PHONG
select * from DBA_PTTK.DANHSACHTHAMGIATOUR
select * from DBA_PTTK.PhieuDatPhong
select * from DBA_PTTK.DanhSachDatPhong
select * from DBA_PTTK.HoSoThanhToan
select * from DBA_PTTK.BangDanhGia
*/