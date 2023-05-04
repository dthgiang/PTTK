-- Tao proc xoa bang
create or replace procedure dropTable(p_tableName IN VARCHAR2)
as
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE ' || UPPER(P_tableName) ||' cascade constraint';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
--------------------------------------
--- Tao bang va xoa neu trung bang ---
--------------------------------------


exec dropTable('DoAn');
/
create table DoAn
(
	MaDoan varchar2(10)  primary key,
    TenDoan nvarchar2(100),
    TenNguoiDangKy nvarchar2(100),
    SoNguoi number
);
/

exec dropTable('CongTyDuLich');
/
create table CongTyDuLich
(
	MaCongTy varchar2(10)  primary key,
    TenCongTy nvarchar2(100),
    SoDienThoai varchar2(10),
    Email varchar2(100),
    DiaChi nvarchar2(100)
);
/

exec dropTable('DichVu');
/
create table DichVu
(
	MaDichVu varchar(10)  primary key,
    TenDichVu nvarchar2(100),
    Gia number,
    MoTa nvarchar2(100),
    TheLoai nvarchar2(100),
    Image varchar2(100)
);
/

exec dropTable('DaiLy');
/
create table DaiLy
(
	MaDaiLy varchar2(10)  primary key,
    TenDaiLy nvarchar2(100),
    DiaChi nvarchar2(100),
    SoDienThoai varchar(10)
);
/

exec dropTable('LoaiPhong');
/
create table LoaiPhong
(
	LoaiPhong nvarchar2(20) primary key, 
    MoTa nvarchar2(100)
);
/

exec dropTable('Tour');
/
create table Tour 
(
	MaTour varchar2(10)  primary key,
    TenTour nvarchar2(100),
    Gia number,
    TinhThanh nvarchar2(100),
    MoTa nvarchar2(300),
    KhuVuc nvarchar2(100),
    MaCongTy varchar2(10),
    Image varchar2(100),
    ThoiGian int
) ;
/

exec dropTable('DichVuPhong');
/
create table DichVuPhong
(
	LoaiPhong nvarchar2(20),
    MaDichVu varchar2(10),
    
    Constraint PK_DVP
	Primary key (LoaiPhong, MaDichVu)
);
/

exec dropTable('Phong');
/
create table Phong
(
	MaPhong varchar2(10) primary key,
    Gia int,
    SoLuong number,
    TrangThaiVeSinh nvarchar2(50),
    LoaiPhong nvarchar2(10)
) ;
/

exec dropTable('KhachHang');
/
create table KhachHang 
(
	MaKH varchar2(10)  primary key,
    Ten nvarchar2(50),
    DiaChi nvarchar2(100),
    SoDienThoai varchar2(10),
    Tax varchar2(50),
    Email varchar2(100),
    CMND VARCHAR2(20),
    MaDoan varchar(10),
    Username varchar2(100) not null unique,
    Password varchar2(100)
);
/

exec dropTable('NhanVien');
/
create table NhanVien
(
	MaNV varchar2(10)  primary key,
    TenNV nvarchar2(100),
    SoDienThoai varchar2(50),
    DiaChi nvarchar2(100),
    LoaiNhanVien nvarchar2(50),
    Username varchar2(100) not null unique,
    Password varchar2(100)
) ;
/

exec dropTable('PhieuDatPhong');
/
create table PhieuDatPhong
 (
	MaPhieu varchar2(10) primary key,
	TrangThai varchar2(20),
	DKVanChuyenHanhLy varchar2(10),
	YeuCauDacBiet nvarchar2(40),
	NgayLap date,
	MaDaiLy varchar2(10),
	MaKhachHang varchar2(10),
	NhanVienXuLy varchar2(10)
) ;
/

exec dropTable('DanhSachThamGiaTour');
/
create table DanhSachThamGiaTour
(
	MaThamGiaTour varchar2(10) not null,
	Tour varchar2(10),
	KhachHang varchar2(10),
	NgayBatDau date,

	Constraint PK_DSThamGiaTour
	Primary key (MaThamGiaTour)
) ;
/

exec dropTable('DanhSachDatPhong');
/
create table DanhSachDatPhong
(
	MaDatPhong varchar2(10) not null,
	NgayDen date,
	ThoiGianLuuTru int,
	MaPhong varchar2(10),
	MaPhieuDatPhong varchar2(10),

	Constraint PK_DSDatPhong
	Primary key (MaDatPhong)
) ;
/

exec dropTable('PhieuSuDungDichVu');
/
create table PhieuSuDungDichVu 
(
	MaPhieuDichVu varchar2(10) not null,
	ThoiGianSuDung int,
	ThoiGianBatDau date,
	Gia int,
	TrangThai nvarchar2(20),
	DichVu varchar2 (50),
	MaPhongDat varchar2(10),

	Constraint PK_PhieuSuDungDichVu
	Primary key (MaPhieuDichVu)
) ;
/

exec dropTable('HoSoThanhToan');
/
create table HoSoThanhToan
(
	MaHoSo varchar2(10) not null,
	NgayLap date,
	NoiDung varchar2(40),
	NgayThanhToan date,
	TongTien int,
	KeToan varchar2(10),
    PhongDat varchar2(10),

    Constraint PK_HoSoThanhToan  
    Primary key (MaHoSo)
) ;
/

exec dropTable('BangDanhGia');
/
create table BangDanhGia
(
	MaDanhGia varchar2(10) primary key, 
    NoiDung nvarchar2(100),
    MaPhong varchar2(10),
    MaKH varchar2(10)
) ;
/

exec dropTable('KhachHangTour');
/

create table KhachHangTour (
    MaKhachHangTour  NUMBER(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    Ten VARCHAR2(50),
    SDT VARCHAR2(15),
    EMAIL VARCHAR2(100),
    CMND VARCHAR2(15),
    NGUOIDANGKY VARCHAR2(100),
    CONSTRAINT KhachHangTour_pk PRIMARY KEY (MaKhachHangTour)
);
/
----------------Khoa ngoai
--Tour
Alter table Tour
Add constraint FK_Tour_CTYDuLich foreign key (MaCongTy) references CongTyDuLich (MaCongTy);

--Dich vu phong
Alter table DichVuPhong
Add constraint FK_DichVuPhong_LoaiPhong foreign key (LoaiPhong) references LoaiPhong (LoaiPhong);

Alter table DichVuPhong
add constraint FK_DichVuPhong_DichVu foreign key (MaDichVu) references DichVu (MaDichVu);

--Phong
Alter table Phong
Add constraint FK_Phong_LoaiPhong foreign key (LoaiPhong) references LoaiPhong (LoaiPhong);

--Khach hang
Alter table KhachHang
Add constraint FK_KhachHang_Doan foreign key (MaDoan) references Doan (MaDoan);

--Phieu dat phong
Alter table PhieuDatPhong
add constraint FK_PhieuDatPhong_DaiLy foreign key (MaDaiLy) references DaiLy (MaDaiLy);

Alter table PhieuDatPhong
add constraint FK_PhieuDatPhong_KhachHang foreign key (MaKhachHang) references KhachHang (MaKH);

Alter table PhieuDatPhong
add constraint FK_PhieuDatPhong_NhanVien foreign key (NhanVienXuLy) references NhanVien (MaNV);

--DS tham gia tour
Alter table DanhSachThamGiaTour
add constraint FK_DSThamGiaTour_Tour foreign key (Tour) references Tour (MaTour);

Alter table DanhSachThamGiaTour
Add constraint FK_DSThamGiaTour_KhachHang foreign key (KhachHang) references KhachHang (MaKH);

--DS dat phong
Alter table DanhSachDatPhong
Add constraint FK_DSDatPhong_Phong foreign key (MaPhong) references Phong (MaPhong);

Alter table DanhSachDatPhong
Add constraint FK_DSDatPhong_PhieuDatPhong foreign key (MaPhieuDatPhong) references PhieuDatPhong (MaPhieu);

--Phieu su dung dich vu
Alter table PhieuSuDungDichVu
Add constraint FK_PhieuSuDungDV_DichVu foreign key (DichVu) references DichVu (MaDichVu);

Alter table PhieuSuDungDichVu
Add constraint FK_PhieuSuDungDV_DSDatPhong foreign key (MaPhongDat) references DanhSachDatPhong (MaDatPhong);

--Ho so thanh toan
Alter table HoSoThanhToan
Add constraint FK_HoSoThanhToan_NhanVien foreign key (KeToan) references NhanVien (MaNV);

Alter table HoSoThanhToan
add constraint FK_HoSoThanhToan_DSDatPhong foreign key (PhongDat) references DanhSachDatPhong (MaDatPhong);

--Bang danh gia
alter table BangDanhGia
add constraint FK_BangDanhGia_KhachHang foreign key (MaKH) references KhachHang (MaKH);

alter table BangDanhGia
add constraint FK_BangDanhGia_DSDatPhong foreign key (MaPhong) references DanhSachDatPhong (MaDatPhong);

-- KhachHangTour

alter table KhachHangTour
add constraint FK_KhachHangTour_KhachHang foreign key (NguoiDangKy) references KhachHang (Username);