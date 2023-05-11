
-----------------------

create or replace view vw_myTour as
    select t.TENTOUR,'Tour' as "type", t.Gia, t.MOTA, ds.NgayBatDau from DBA_PTTK.TOUR t join DBA_PTTK.DANHSACHTHAMGIATOUR ds on t.MaTour = ds.tour
    where ds.NGUOIDANGKY in (select MaKH from DBA_PTTK.KHACHHANG where USERNAME =  SYS_CONTEXT('USERENV', 'SESSION_USER'));
/
create or replace view vw_myService as
    select s.TENDICHVU,'Dịch vụ' as "type", s.Gia,s.MOTA, ds.THOIGIANBATDAU, ds.TRANGTHAI from DBA_PTTK.DICHVU s join DBA_PTTK.PHIEUSUDUNGDICHVU ds on s.MADICHVU = ds.DICHVU
    where ds.MAKH in (select MaKH from DBA_PTTK.KHACHHANG where USERNAME =  SYS_CONTEXT('USERENV', 'SESSION_USER'));
/

create or replace view vw_myRoom as
    select ds.*, p.LOAIPHONG, p.GIA from DANHSACHDATPHONG ds JOIN PHONG p ON  ds.MAPHONG = p.MAPHONG 
    where ds.MaKH in (select MaKH from DBA_PTTK.KHACHHANG where USERNAME =  SYS_CONTEXT('USERENV', 'SESSION_USER'));
/
grant select on DBA_PTTK.VW_MYTOUR TO PTTK_RL_KHACHHANG;
grant select on DBA_PTTK.VW_MYSERVICE TO PTTK_RL_KHACHHANG;
grant select on DBA_PTTK.VW_MYROOM TO PTTK_RL_KHACHHANG;
grant insert on DBA_PTTK.PHIEUSUDUNGDICHVU TO PTTK_RL_KHACHHANG;
grant insert on DBA_PTTK.DANHSACHTHAMGIATOUR TO PTTK_RL_KHACHHANG;
/


CREATE INDEX idx_tourdes ON TOUR(MOTA) INDEXTYPE IS CTXSYS.CONTEXT;
/
EXECUTE CTX_DDL.SYNC_INDEX('idx_tourdes');
/
CREATE INDEX idx_servicedes ON DICHVU(MOTA) INDEXTYPE IS CTXSYS.CONTEXT;
/
EXECUTE CTX_DDL.SYNC_INDEX('idx_servicedes');
/
SELECT * FROM TOUR WHERE CONTAINS(mota, 'Biển') > 0;

------------------ Test area
SELECT * FROM KHACHHANGTOUR;
select * from DANHSACHTHAMGIATOUR;
select * from TOUR;
select * from DICHVU;
select * from DICHVUPHONG;
select * from DANHSACHDATPHONG;
select * from PHONG;
select * from PHIEUSUDUNGDICHVU;
select * from DBA_PTTK.VW_MYTOUR;
select * from KHACHHANG;
insert into  PHIÉUUDUNGDICHVU

String sql = "insert into " + DataBaseConnector.getOwner() + ".DANHSACHTHAMGIATOUR (NguoiDangKy, Ten, Email, SDT, CMND, Tour, NgayBatDau, PhuongTien) values(?, ?, ?, ?, ?, ?, ?, ?)";
--PHIEUSUDUNGDICHVU(ThoiGianSuDung, ThoiGianBatDau, Gia, TrangThai, DichVu, MaPhongDat, MaKH) VALUES(

insert into DANHSACHTHAMGIATOUR (NguoiDangKy, Ten, Email, SDT, CMND, Tour, NgayBatDau, PhuongTien) values('KH2','Nguyen Van A', 'NVA@gmail.com', '0293293', '123123213', 'T01','05-03-2022', 'May Bay');

insert into DBA_PTTK.PHIEUSUDUNGDICHVU(ThoiGianSuDung, ThoiGianBatDau, Gia, TrangThai, DichVu, MaPhongDat, MaKH) values(2, TO_DATE('05-04-2022 12:00', 'mm-dd-yyyy hh24-mi'), 999999, 'Đã sử dụng', 'DV04', 'DS001', 'KH10')
SELECT *
FROM all_ind_columns 
WHERE table_name = 'TOUR';

select *from DBA_PTTK.VW_MYROOM;
select *from DBA_PTTK.VW_MYSERVICE;

select * from LOAIPHONG

