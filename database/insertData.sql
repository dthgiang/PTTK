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

-----------------------------------
--- 8P5. Nhap lieu cho ban PhieuSuDungDichVu
-----------------------------------
-- waiting for full p1 p2 p3 p4
/*
insert all

select 1 from dual;
*/

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
--delete from PHONG;
/
insert all 
    into PHONG VALUES('PHG1', 1000000, 2, 'Chýa d?n', 'VIP1')
    into PHONG VALUES('PHG2', 500000, 2, 'Chýa d?n', 'Normal')
    into PHONG VALUES('PHG3', 3000000, 2, 'Chýa d?n', 'GOLD')
    into PHONG VALUES('PHG4', 5000000, 2, 'Ð? d?n', 'Diamond')
    into PHONG VALUES('PHG5', 500000, 2, 'Chýa d?n', 'Normal')
    into PHONG VALUES('PHG6', 1000000, 2, 'Chýa d?n', 'VIP3')
    into PHONG VALUES('PHG7', 1000000, 2, 'Chýa d?n', 'VIP1')
    into PHONG VALUES('PHG8', 500000, 2, 'Ð? d?n', 'Normal')
    into PHONG VALUES('PHG9', 1000000, 2, 'Ð? d?n', 'VIP1')
    into PHONG VALUES('PHG10', 5000000, 2, 'Chýa d?n', 'Diamond')
    into PHONG VALUES('PHG11', 3000000, 2, 'Chýa d?n', 'GOLD')
    into PHONG VALUES('PHG12', 1000000, 2, 'Chýa d?n', 'VIP2')
    into PHONG VALUES('PHG13', 500000, 2, 'Chýa d?n', 'Normal')
    into PHONG VALUES('PHG14', 3000000, 2, 'Chýa d?n', 'GOLD')
    into PHONG VALUES('PHG15', 5000000, 2, 'Chýa d?n', 'Diamond')
    into PHONG VALUES('PHG16', 1000000, 2, 'Ð? d?n', 'VIP2')
    into PHONG VALUES('PHG17', 1000000, 2, 'Ð? d?n', 'VIP1')
    into PHONG VALUES('PHG18', 1000000, 2, 'Ð? d?n', 'VIP3')
    into PHONG VALUES('PHG19', 5000000, 2, 'Chýa d?n', 'Diamond')
    into PHONG VALUES('PHG20', 1000000, 2, 'Chýa d?n', 'VIP2')
    into PHONG VALUES('PHG21', 1000000, 2, 'Ð? d?n', 'VIP1')
    into PHONG VALUES('PHG22', 3000000, 2, 'Ð? d?n', 'GOLD')
    into PHONG VALUES('PHG23', 1000000, 2, 'Chýa d?n', 'VIP2')
    into PHONG VALUES('PHG24', 500000, 2, 'Chýa d?n', 'Normal')
    into PHONG VALUES('PHG25', 1000000, 2, 'Chýa d?n', 'VIP2')
    into PHONG VALUES('PHG26', 500000, 2, 'Ð? d?n', 'Normal')
    into PHONG VALUES('PHG27', 3000000, 2, 'Ð? d?n', 'GOLD')
    into PHONG VALUES('PHG28', 1000000, 2, 'Ð? d?n', 'VIP1')
    into PHONG VALUES('PHG29', 500000, 2, 'Chýa d?n', 'Normal')
    into PHONG VALUES('PHG30', 3000000, 2, 'Ð? d?n', 'GOLD')
select 1 from dual;
/
-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
/
--delete from DANHSACHTHAMGIATOUR
/
insert all
    into DANHSACHTHAMGIATOUR VALUES ('TG01', 'T012', 'KH37', '20-4-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG02', 'T02', 'KH20', '29-10-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG03', 'T05', 'KH33', '18-10-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG04', 'T07', 'KH20', '10-8-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG05', 'T02', 'KH44', '3-3-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG06', 'T011', 'KH34', '13-7-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG07', 'T01', 'KH6', '16-9-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG08', 'T012', 'KH23', '17-3-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG09', 'T01', 'KH8', '23-2-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG10', 'T010', 'KH15', '12-8-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG11', 'T04', 'KH48', '18-11-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG12', 'T08', 'KH26', '5-10-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG13', 'T08', 'KH9', '25-6-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG14', 'T06', 'KH46', '7-8-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG15', 'T02', 'KH1', '24-10-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG16', 'T01', 'KH18', '13-10-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG17', 'T09', 'KH30', '15-3-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG18', 'T01', 'KH13', '24-9-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG19', 'T03', 'KH1', '2-1-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG20', 'T09', 'KH10', '6-11-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG21', 'T05', 'KH23', '8-12-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG22', 'T07', 'KH47', '11-5-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG23', 'T04', 'KH25', '17-10-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG24', 'T011', 'KH14', '7-10-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG25', 'T01', 'KH45', '3-12-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG26', 'T02', 'KH8', '15-8-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG27', 'T04', 'KH4', '24-7-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG28', 'T05', 'KH33', '20-2-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG29', 'T04', 'KH41', '27-3-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG30', 'T07', 'KH16', '2-6-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG31', 'T06', 'KH29', '29-7-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG32', 'T07', 'KH12', '21-6-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG33', 'T05', 'KH5', '19-2-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG34', 'T06', 'KH45', '13-11-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG35', 'T06', 'KH37', '17-11-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG36', 'T08', 'KH34', '5-8-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG37', 'T011', 'KH46', '4-3-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG38', 'T06', 'KH25', '10-9-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG39', 'T010', 'KH6', '27-3-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG40', 'T01', 'KH30', '28-12-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG41', 'T03', 'KH1', '15-7-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG42', 'T02', 'KH2', '25-1-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG43', 'T07', 'KH6', '7-5-2021')
    into DANHSACHTHAMGIATOUR VALUES ('TG44', 'T06', 'KH33', '25-5-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG45', 'T05', 'KH18', '1-3-2022')
    into DANHSACHTHAMGIATOUR VALUES ('TG46', 'T011', 'KH26', '15-5-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG47', 'T08', 'KH26', '24-10-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG48', 'T010', 'KH50', '16-2-2020')
    into DANHSACHTHAMGIATOUR VALUES ('TG49', 'T07', 'KH40', '5-11-2023')
    into DANHSACHTHAMGIATOUR VALUES ('TG50', 'T010', 'KH25', '23-9-2021')
select 1 from dual
/
-------------- END ----------------


-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
/
--delete from PhieuDatPhong
/
insert all
    into PhieuDatPhong VALUES('PHI1', 'NULL', 'Có', 'Bít t?t', '1-2-2023', 'DL04', 'KH41', 'NV0020')
    into PhieuDatPhong VALUES('PHI2', 'NULL', 'Có', 'Rý?u vang 1969', '26-9-2020', 'DL01', 'KH21', 'NV008')
    into PhieuDatPhong VALUES('PHI3', 'NULL', 'Không', 'Không', '2-9-2020', 'DL02', 'KH43', 'NV009')
    into PhieuDatPhong VALUES('PHI4', 'NULL', 'Có', 'Không', '3-7-2023', 'DL03', 'KH8', 'NV006')
    into PhieuDatPhong VALUES('PHI5', 'NULL', 'Có', 'Không', '28-9-2023', 'DL05', 'KH50', 'NV0014')
    into PhieuDatPhong VALUES('PHI6', 'NULL', 'Có', 'Không', '28-11-2020', 'DL05', 'KH25', 'NV004')
    into PhieuDatPhong VALUES('PHI7', 'NULL', 'Có', 'Rý?u vang 1969', '21-7-2020', 'DL04', 'KH9', 'NV004')
    into PhieuDatPhong VALUES('PHI8', 'NULL', 'Không', 'Ph?ng view bi?n', '20-7-2021', 'DL05', 'KH30', 'NV0012')
    into PhieuDatPhong VALUES('PHI9', 'NULL', 'Có', 'Ph?ng view bi?n', '25-2-2020', 'DL03', 'KH49', 'NV0012')
    into PhieuDatPhong VALUES('PHI10', 'NULL', 'Có', 'Rý?u vang 1969', '25-12-2020', 'DL02', 'KH40', 'NV0011')
    into PhieuDatPhong VALUES('PHI11', 'NULL', 'Có', 'Không', '20-5-2022', 'DL02', 'KH11', 'NV0013')
    into PhieuDatPhong VALUES('PHI12', 'NULL', 'Có', 'Ph?ng view bi?n', '14-1-2022', 'DL01', 'KH19', 'NV002')
    into PhieuDatPhong VALUES('PHI13', 'NULL', 'Có', 'Không', '20-3-2020', 'DL05', 'KH42', 'NV008')
    into PhieuDatPhong VALUES('PHI14', 'NULL', 'Không', 'Rý?u vang 1969', '11-3-2021', 'DL01', 'KH28', 'NV0018')
    into PhieuDatPhong VALUES('PHI15', 'NULL', 'Không', 'Ph?ng view bi?n', '13-4-2020', 'DL04', 'KH18', 'NV0016')
    into PhieuDatPhong VALUES('PHI16', 'NULL', 'Có', 'Ph?ng view bi?n', '5-10-2020', 'DL03', 'KH40', 'NV009')
    into PhieuDatPhong VALUES('PHI17', 'NULL', 'Có', 'Ph?ng view bi?n', '1-1-2020', 'DL03', 'KH34', 'NV002')
    into PhieuDatPhong VALUES('PHI18', 'NULL', 'Không', 'Ph?ng view bi?n', '25-3-2021', 'DL05', 'KH4', 'NV0017')
    into PhieuDatPhong VALUES('PHI19', 'NULL', 'Không', 'Không', '13-10-2022', 'DL02', 'KH14', 'NV007')
    into PhieuDatPhong VALUES('PHI20', 'NULL', 'Có', 'Không', '2-12-2020', 'DL01', 'KH1', 'NV0020')
    into PhieuDatPhong VALUES('PHI21', 'NULL', 'Không', 'Ph?ng view bi?n', '3-8-2021', 'DL05', 'KH9', 'NV0011')
    into PhieuDatPhong VALUES('PHI22', 'NULL', 'Có', 'Bít t?t', '18-1-2022', 'DL04', 'KH7', 'NV0013')
    into PhieuDatPhong VALUES('PHI23', 'NULL', 'Không', 'Bít t?t', '25-9-2023', 'DL04', 'KH8', 'NV0012')
    into PhieuDatPhong VALUES('PHI24', 'NULL', 'Có', 'Rý?u vang 1969', '13-9-2020', 'DL03', 'KH23', 'NV009')
    into PhieuDatPhong VALUES('PHI25', 'NULL', 'Không', 'Ph?ng view bi?n', '30-12-2022', 'DL02', 'KH25', 'NV0016')
    into PhieuDatPhong VALUES('PHI26', 'NULL', 'Có', 'Không', '10-5-2020', 'DL04', 'KH16', 'NV0016')
    into PhieuDatPhong VALUES('PHI27', 'NULL', 'Có', 'Rý?u vang 1969', '17-7-2023', 'DL05', 'KH49', 'NV0010')
    into PhieuDatPhong VALUES('PHI28', 'NULL', 'Không', 'Bít t?t', '22-3-2022', 'DL05', 'KH4', 'NV0018')
    into PhieuDatPhong VALUES('PHI29', 'NULL', 'Không', 'Không', '8-9-2021', 'DL01', 'KH28', 'NV003')
    into PhieuDatPhong VALUES('PHI30', 'NULL', 'Không', 'Ph?ng view bi?n', '7-7-2022', 'DL04', 'KH46', 'NV0010')
    into PhieuDatPhong VALUES('PHI31', 'NULL', 'Không', 'Ph?ng view bi?n', '5-2-2023', 'DL04', 'KH37', 'NV001')
    into PhieuDatPhong VALUES('PHI32', 'NULL', 'Không', 'Rý?u vang 1969', '9-8-2023', 'DL01', 'KH38', 'NV0010')
    into PhieuDatPhong VALUES('PHI33', 'NULL', 'Không', 'Ph?ng view bi?n', '3-12-2022', 'DL05', 'KH24', 'NV007')
    into PhieuDatPhong VALUES('PHI34', 'NULL', 'Có', 'Không', '25-7-2023', 'DL05', 'KH25', 'NV0012')
    into PhieuDatPhong VALUES('PHI35', 'NULL', 'Có', 'Bít t?t', '13-12-2023', 'DL01', 'KH39', 'NV002')
    into PhieuDatPhong VALUES('PHI36', 'NULL', 'Có', 'Bít t?t', '6-3-2021', 'DL03', 'KH16', 'NV003')
    into PhieuDatPhong VALUES('PHI37', 'NULL', 'Có', 'Ph?ng view bi?n', '24-12-2021', 'DL01', 'KH38', 'NV009')
    into PhieuDatPhong VALUES('PHI38', 'NULL', 'Không', 'Không', '9-9-2020', 'DL05', 'KH21', 'NV0016')
    into PhieuDatPhong VALUES('PHI39', 'NULL', 'Không', 'Không', '7-8-2021', 'DL02', 'KH38', 'NV0018')
    into PhieuDatPhong VALUES('PHI40', 'NULL', 'Có', 'Ph?ng view bi?n', '18-7-2022', 'DL02', 'KH40', 'NV009')
    into PhieuDatPhong VALUES('PHI41', 'NULL', 'Có', 'Không', '16-4-2021', 'DL01', 'KH4', 'NV0014')
    into PhieuDatPhong VALUES('PHI42', 'NULL', 'Có', 'Ph?ng view bi?n', '3-10-2022', 'DL04', 'KH49', 'NV002')
    into PhieuDatPhong VALUES('PHI43', 'NULL', 'Không', 'Bít t?t', '26-5-2023', 'DL05', 'KH3', 'NV001')
    into PhieuDatPhong VALUES('PHI44', 'NULL', 'Có', 'Rý?u vang 1969', '3-7-2022', 'DL01', 'KH16', 'NV0019')
    into PhieuDatPhong VALUES('PHI45', 'NULL', 'Không', 'Rý?u vang 1969', '24-7-2021', 'DL01', 'KH7', 'NV0010')
    into PhieuDatPhong VALUES('PHI46', 'NULL', 'Có', 'Bít t?t', '3-7-2020', 'DL04', 'KH34', 'NV0016')
    into PhieuDatPhong VALUES('PHI47', 'NULL', 'Có', 'Ph?ng view bi?n', '19-11-2021', 'DL02', 'KH50', 'NV0013')
    into PhieuDatPhong VALUES('PHI48', 'NULL', 'Có', 'Bít t?t', '12-6-2020', 'DL04', 'KH13', 'NV002')
    into PhieuDatPhong VALUES('PHI49', 'NULL', 'Có', 'Không', '11-4-2023', 'DL02', 'KH5', 'NV005')
    into PhieuDatPhong VALUES('PHI50', 'NULL', 'Không', 'Không', '28-8-2023', 'DL05', 'KH19', 'NV0016')
select 1 from dual;
/
-------------- END ----------------


-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
/
--delete from DanhSachDatPhong
/

insert all
    into DanhSachDatPhong VALUES('DS001', '21-4-2023', 2, 'PHG15', 'PHI29')
    into DanhSachDatPhong VALUES('DS002', '21-11-2023', 1, 'PHG27', 'PHI6')
    into DanhSachDatPhong VALUES('DS003', '5-8-2022', 4, 'PHG28', 'PHI42')
    into DanhSachDatPhong VALUES('DS004', '22-6-2023', 4, 'PHG10', 'PHI14')
    into DanhSachDatPhong VALUES('DS005', '17-12-2021', 1, 'PHG11', 'PHI6')
    into DanhSachDatPhong VALUES('DS006', '29-12-2023', 4, 'PHG23', 'PHI13')
    into DanhSachDatPhong VALUES('DS007', '19-5-2020', 3, 'PHG16', 'PHI48')
    into DanhSachDatPhong VALUES('DS008', '26-7-2020', 4, 'PHG11', 'PHI3')
    into DanhSachDatPhong VALUES('DS009', '5-2-2023', 2, 'PHG4', 'PHI22')
    into DanhSachDatPhong VALUES('DS0010', '17-6-2023', 1, 'PHG23', 'PHI16')
    into DanhSachDatPhong VALUES('DS0011', '23-3-2021', 3, 'PHG23', 'PHI44')
    into DanhSachDatPhong VALUES('DS0012', '15-10-2022', 2, 'PHG22', 'PHI31')
    into DanhSachDatPhong VALUES('DS0013', '25-10-2020', 2, 'PHG29', 'PHI15')
    into DanhSachDatPhong VALUES('DS0014', '5-7-2021', 4, 'PHG1', 'PHI39')
    into DanhSachDatPhong VALUES('DS0015', '11-6-2023', 3, 'PHG2', 'PHI41')
    into DanhSachDatPhong VALUES('DS0016', '9-6-2022', 3, 'PHG19', 'PHI48')
    into DanhSachDatPhong VALUES('DS0017', '9-4-2022', 5, 'PHG13', 'PHI11')
    into DanhSachDatPhong VALUES('DS0018', '12-7-2023', 2, 'PHG13', 'PHI49')
    into DanhSachDatPhong VALUES('DS0019', '29-4-2022', 1, 'PHG19', 'PHI35')
    into DanhSachDatPhong VALUES('DS0020', '3-11-2020', 2, 'PHG13', 'PHI47')
    into DanhSachDatPhong VALUES('DS0021', '3-10-2022', 1, 'PHG3', 'PHI14')
    into DanhSachDatPhong VALUES('DS0022', '26-6-2020', 1, 'PHG10', 'PHI4')
    into DanhSachDatPhong VALUES('DS0023', '3-1-2021', 4, 'PHG24', 'PHI8')
    into DanhSachDatPhong VALUES('DS0024', '18-7-2021', 3, 'PHG27', 'PHI50')
    into DanhSachDatPhong VALUES('DS0025', '6-3-2020', 3, 'PHG12', 'PHI17')
    into DanhSachDatPhong VALUES('DS0026', '20-10-2023', 1, 'PHG22', 'PHI6')
    into DanhSachDatPhong VALUES('DS0027', '5-5-2022', 3, 'PHG26', 'PHI8')
    into DanhSachDatPhong VALUES('DS0028', '5-7-2020', 5, 'PHG4', 'PHI14')
    into DanhSachDatPhong VALUES('DS0029', '3-9-2020', 5, 'PHG28', 'PHI11')
    into DanhSachDatPhong VALUES('DS0030', '8-9-2021', 2, 'PHG14', 'PHI35')
    into DanhSachDatPhong VALUES('DS0031', '7-3-2023', 4, 'PHG17', 'PHI25')
    into DanhSachDatPhong VALUES('DS0032', '1-1-2023', 4, 'PHG15', 'PHI32')
    into DanhSachDatPhong VALUES('DS0033', '7-6-2020', 2, 'PHG17', 'PHI21')
    into DanhSachDatPhong VALUES('DS0034', '15-8-2022', 3, 'PHG10', 'PHI1')
    into DanhSachDatPhong VALUES('DS0035', '24-12-2020', 1, 'PHG1', 'PHI11')
    into DanhSachDatPhong VALUES('DS0036', '15-11-2023', 1, 'PHG28', 'PHI9')
    into DanhSachDatPhong VALUES('DS0037', '8-6-2022', 3, 'PHG26', 'PHI8')
    into DanhSachDatPhong VALUES('DS0038', '8-5-2023', 3, 'PHG1', 'PHI35')
    into DanhSachDatPhong VALUES('DS0039', '15-12-2022', 4, 'PHG4', 'PHI49')
    into DanhSachDatPhong VALUES('DS0040', '23-4-2023', 1, 'PHG14', 'PHI6')
    into DanhSachDatPhong VALUES('DS0041', '8-6-2022', 4, 'PHG1', 'PHI10')
    into DanhSachDatPhong VALUES('DS0042', '28-5-2020', 2, 'PHG8', 'PHI35')
    into DanhSachDatPhong VALUES('DS0043', '6-6-2022', 1, 'PHG13', 'PHI30')
    into DanhSachDatPhong VALUES('DS0044', '25-9-2021', 4, 'PHG21', 'PHI11')
    into DanhSachDatPhong VALUES('DS0045', '30-11-2023', 5, 'PHG20', 'PHI31')
    into DanhSachDatPhong VALUES('DS0046', '21-2-2021', 2, 'PHG30', 'PHI29')
    into DanhSachDatPhong VALUES('DS0047', '15-1-2020', 2, 'PHG22', 'PHI4')
    into DanhSachDatPhong VALUES('DS0048', '12-3-2020', 4, 'PHG30', 'PHI13')
    into DanhSachDatPhong VALUES('DS0049', '24-11-2023', 1, 'PHG19', 'PHI16')
    into DanhSachDatPhong VALUES('DS0050', '28-11-2021', 4, 'PHG8', 'PHI7')
select 1 from dual;
/

-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
/
--delete from HoSoThanhToan
/

insert all
    into HOSOTHANHTOAN VALUES('HS01', '28-4-2022', 'Thanh toán cho ph?ng DS004', '28-4-2022', '5000000', 'NV0020', 'DS004')
    into HOSOTHANHTOAN VALUES('HS02', '29-4-2023', 'Thanh toán cho ph?ng DS008', '29-4-2023', '7000000', 'NV0020', 'DS008')
    into HOSOTHANHTOAN VALUES('HS03', '12-12-2022', 'Thanh toán cho ph?ng DS0044', '12-12-2022', '8000000', 'NV0020', 'DS0044')
    into HOSOTHANHTOAN VALUES('HS04', '10-2-2021', 'Thanh toán cho ph?ng DS0049', '10-2-2021', '10000000', 'NV0020', 'DS0049')
    into HOSOTHANHTOAN VALUES('HS05', '13-4-2021', 'Thanh toán cho ph?ng DS008', '13-4-2021', '7000000', 'NV0020', 'DS008')
    into HOSOTHANHTOAN VALUES('HS06', '27-10-2023', 'Thanh toán cho ph?ng DS0046', '27-10-2023', '5000000', 'NV0020', 'DS0046')
    into HOSOTHANHTOAN VALUES('HS07', '27-9-2022', 'Thanh toán cho ph?ng DS008', '27-9-2022', '5000000', 'NV0020', 'DS008')
    into HOSOTHANHTOAN VALUES('HS08', '22-12-2020', 'Thanh toán cho ph?ng DS0029', '22-12-2020', '10000000', 'NV0020', 'DS0029')
    into HOSOTHANHTOAN VALUES('HS09', '29-5-2020', 'Thanh toán cho ph?ng DS0029', '29-5-2020', '6000000', 'NV0020', 'DS0029')
    into HOSOTHANHTOAN VALUES('HS010', '27-9-2020', 'Thanh toán cho ph?ng DS0014', '27-9-2020', '8000000', 'NV0020', 'DS0014')
    into HOSOTHANHTOAN VALUES('HS011', '25-11-2020', 'Thanh toán cho ph?ng DS0033', '25-11-2020', '10000000', 'NV0020', 'DS0033')
    into HOSOTHANHTOAN VALUES('HS012', '12-11-2021', 'Thanh toán cho ph?ng DS0030', '12-11-2021', '7000000', 'NV0020', 'DS0030')
    into HOSOTHANHTOAN VALUES('HS013', '18-1-2021', 'Thanh toán cho ph?ng DS0016', '18-1-2021', '7000000', 'NV0020', 'DS0016')
    into HOSOTHANHTOAN VALUES('HS014', '19-10-2022', 'Thanh toán cho ph?ng DS0034', '19-10-2022', '7000000', 'NV0020', 'DS0034')
    into HOSOTHANHTOAN VALUES('HS015', '24-2-2020', 'Thanh toán cho ph?ng DS0031', '24-2-2020', '6000000', 'NV0020', 'DS0031')
    into HOSOTHANHTOAN VALUES('HS016', '27-7-2022', 'Thanh toán cho ph?ng DS0031', '27-7-2022', '9000000', 'NV0020', 'DS0031')
    into HOSOTHANHTOAN VALUES('HS017', '23-12-2021', 'Thanh toán cho ph?ng DS009', '23-12-2021', '9000000', 'NV0020', 'DS009')
    into HOSOTHANHTOAN VALUES('HS018', '17-12-2020', 'Thanh toán cho ph?ng DS0034', '17-12-2020', '5000000', 'NV0020', 'DS0034')
    into HOSOTHANHTOAN VALUES('HS019', '22-1-2022', 'Thanh toán cho ph?ng DS0010', '22-1-2022', '8000000', 'NV0020', 'DS0010')
    into HOSOTHANHTOAN VALUES('HS020', '23-5-2023', 'Thanh toán cho ph?ng DS0040', '23-5-2023', '10000000', 'NV0020', 'DS0040')
    into HOSOTHANHTOAN VALUES('HS021', '18-7-2023', 'Thanh toán cho ph?ng DS0040', '18-7-2023', '8000000', 'NV0020', 'DS0040')
    into HOSOTHANHTOAN VALUES('HS022', '25-8-2022', 'Thanh toán cho ph?ng DS0020', '25-8-2022', '6000000', 'NV0020', 'DS0020')
    into HOSOTHANHTOAN VALUES('HS023', '21-7-2021', 'Thanh toán cho ph?ng DS0039', '21-7-2021', '6000000', 'NV0020', 'DS0039')
    into HOSOTHANHTOAN VALUES('HS024', '24-3-2020', 'Thanh toán cho ph?ng DS009', '24-3-2020', '8000000', 'NV0020', 'DS009')
    into HOSOTHANHTOAN VALUES('HS025', '5-9-2021', 'Thanh toán cho ph?ng DS0036', '5-9-2021', '9000000', 'NV0020', 'DS0036')
    into HOSOTHANHTOAN VALUES('HS026', '23-9-2022', 'Thanh toán cho ph?ng DS0011', '23-9-2022', '6000000', 'NV0020', 'DS0011')
    into HOSOTHANHTOAN VALUES('HS027', '21-11-2020', 'Thanh toán cho ph?ng DS0038', '21-11-2020', '8000000', 'NV0020', 'DS0038')
    into HOSOTHANHTOAN VALUES('HS028', '18-8-2021', 'Thanh toán cho ph?ng DS0028', '18-8-2021', '7000000', 'NV0020', 'DS0028')
    into HOSOTHANHTOAN VALUES('HS029', '25-12-2020', 'Thanh toán cho ph?ng DS0043', '25-12-2020', '7000000', 'NV0020', 'DS0043')
    into HOSOTHANHTOAN VALUES('HS030', '22-8-2021', 'Thanh toán cho ph?ng DS007', '22-8-2021', '7000000', 'NV0020', 'DS007')
select 1 from dual;
/
-------------- END ----------------

-----------------------------------
--- Nhap lieu cho bang DANHSACHTHAMGIATOUR
-----------------------------------
/
--delete from BangDanhGia
/

insert all 
    into BANGDANHGIA VALUES('BDG1', 'Ph?ng ð?p, tuy?t v?i!', 'DS0025', 'KH28')
    into BANGDANHGIA VALUES('BDG2', 'B?nh thý?ng', 'DS0019', 'KH20')
    into BANGDANHGIA VALUES('BDG3', 'B?nh thý?ng', 'DS002', 'KH23')
    into BANGDANHGIA VALUES('BDG4', 'Ph?ng ð?p, tuy?t v?i!', 'DS0043', 'KH18')
    into BANGDANHGIA VALUES('BDG5', 'B?nh thý?ng', 'DS008', 'KH43')
    into BANGDANHGIA VALUES('BDG6', 'B?nh thý?ng', 'DS0015', 'KH39')
    into BANGDANHGIA VALUES('BDG7', 'B?nh thý?ng', 'DS0037', 'KH23')
    into BANGDANHGIA VALUES('BDG8', 'Ph?ng ð?p, tuy?t v?i!', 'DS0049', 'KH12')
    into BANGDANHGIA VALUES('BDG9', 'B?nh thý?ng', 'DS0046', 'KH35')
    into BANGDANHGIA VALUES('BDG10', 'B?nh thý?ng', 'DS006', 'KH35')
    into BANGDANHGIA VALUES('BDG11', 'Ph?ng ð?p, tuy?t v?i!', 'DS0017', 'KH20')
    into BANGDANHGIA VALUES('BDG12', 'Ph?ng ð?p, tuy?t v?i!', 'DS0021', 'KH37')
    into BANGDANHGIA VALUES('BDG13', 'T?!', 'DS007', 'KH43')
    into BANGDANHGIA VALUES('BDG14', 'B?nh thý?ng', 'DS0045', 'KH19')
    into BANGDANHGIA VALUES('BDG15', 'Ph?ng ð?p, tuy?t v?i!', 'DS0012', 'KH43')
    into BANGDANHGIA VALUES('BDG16', 'B?nh thý?ng', 'DS0015', 'KH48')
    into BANGDANHGIA VALUES('BDG17', 'B?nh thý?ng', 'DS0010', 'KH28')
    into BANGDANHGIA VALUES('BDG18', 'B?nh thý?ng', 'DS0015', 'KH47')
    into BANGDANHGIA VALUES('BDG19', 'T?!', 'DS002', 'KH15')
    into BANGDANHGIA VALUES('BDG20', 'B?nh thý?ng', 'DS0036', 'KH15')
    into BANGDANHGIA VALUES('BDG21', 'T?!', 'DS009', 'KH11')
    into BANGDANHGIA VALUES('BDG22', 'T?!', 'DS0015', 'KH10')
    into BANGDANHGIA VALUES('BDG23', 'T?!', 'DS0036', 'KH1')
    into BANGDANHGIA VALUES('BDG24', 'T?!', 'DS0046', 'KH18')
    into BANGDANHGIA VALUES('BDG25', 'B?nh thý?ng', 'DS0015', 'KH49')
    into BANGDANHGIA VALUES('BDG26', 'T?!', 'DS0018', 'KH44')
    into BANGDANHGIA VALUES('BDG27', 'Ph?ng ð?p, tuy?t v?i!', 'DS0029', 'KH9')
    into BANGDANHGIA VALUES('BDG28', 'B?nh thý?ng', 'DS0010', 'KH37')
    into BANGDANHGIA VALUES('BDG29', 'T?!', 'DS0015', 'KH1')
select 1 from dual;
/

-------------- END ----------------

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