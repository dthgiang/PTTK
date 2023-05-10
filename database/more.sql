
-----------------------

create or replace view vw_myTour as
    select t.TENTOUR,'Tour' as "type", t.Gia, t.MOTA, ds.NgayBatDau from DBA_PTTK.TOUR t join DBA_PTTK.DANHSACHTHAMGIATOUR ds on t.MaTour = ds.tour
    where ds.NGUOIDANGKY in (select MaKH from DBA_PTTK.KHACHHANG where USERNAME =  SYS_CONTEXT('USERENV', 'SESSION_USER'));
/
create or replace view vw_myService as
    select s.TENDICHVU,'Dịch vụ' as "type", s.Gia,s.MOTA, ds.THOIGIANBATDAU from DBA_PTTK.DICHVU s join DBA_PTTK.PHIEUSUDUNGDICHVU ds on s.MADICHVU = ds.DICHVU
    where ds.MAKH in (select MaKH from DBA_PTTK.KHACHHANG where USERNAME =  SYS_CONTEXT('USERENV', 'SESSION_USER'));
/

create or replace view vw_myRoom as
    select ds.*, p.LOAIPHONG, p.GIA from DANHSACHDATPHONG ds JOIN PHONG p ON  ds.MAPHONG = p.MAPHONG 
    where ds.MaKH in (select MaKH from DBA_PTTK.KHACHHANG where USERNAME =  SYS_CONTEXT('USERENV', 'SESSION_USER'));
/
grant select on DBA_PTTK.VW_MYTOUR TO PTTK_RL_KHACHHANG;
grant select on DBA_PTTK.VW_MYSERVICE TO PTTK_RL_KHACHHANG;
grant select on DBA_PTTK.VW_MYROOM TO PTTK_RL_KHACHHANG;



select * from  DBA_PTTK.VW_MYROOM ;
/
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
insert into phieu

String sql = "insert into " + DataBaseConnector.getOwner() + ".DANHSACHTHAMGIATOUR (NguoiDangKy, Ten, Email, SDT, CMND, Tour, NgayBatDau, PhuongTien) values(?, ?, ?, ?, ?, ?, ?, ?)";

insert into DANHSACHTHAMGIATOUR (NguoiDangKy, Ten, Email, SDT, CMND, Tour, NgayBatDau, PhuongTien) values('KH2','Nguyen Van A', 'NVA@gmail.com', '0293293', '123123213', 'T01','05-03-2022', 'May Bay');

select * from LOAIPHONG