select * from DBA_PTTK.KHACHHANG;
select * from DBA_PTTK.NHANVIEN;

CREATE OR REPLACE PROCEDURE createEmp
AS
    -- fetch username to cur
    CURSOR CUR IS (SELECT USERNAME, PASSWORD FROM DBA_PTTK.NHANVIEN
    WHERE USERNAME NOT IN (SELECT USERNAME FROM ALL_USERS));
    
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    PW VARCHAR2(200);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR, PW;
            EXIT WHEN CUR%NOTFOUND;
            STR := 'ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE';
            EXECUTE IMMEDIATE (STR);
            STR := 'CREATE USER '||USR||' IDENTIFIED BY ' || PW;
            EXECUTE IMMEDIATE (STR);
            STR := 'GRANT CONNECT TO '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT" = FALSE';
        EXECUTE IMMEDIATE (STR);
        dbms_output.put_line( 'All user are created' );
    END;
/

CREATE OR REPLACE PROCEDURE createCus
AS
    -- fetch username to cur
    CURSOR CUR IS (SELECT USERNAME, PASSWORD FROM DBA_PTTK.KHACHHANG
    WHERE USERNAME NOT IN (SELECT USERNAME FROM ALL_USERS));
    
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    PW VARCHAR2(200);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR, PW;
            EXIT WHEN CUR%NOTFOUND;
            STR := 'ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE';
            EXECUTE IMMEDIATE (STR);
            STR := 'CREATE USER '||USR||' IDENTIFIED BY ' || PW;
            EXECUTE IMMEDIATE (STR);
            STR := 'GRANT CONNECT TO '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        STR := 'ALTER SESSION SET "_ORACLE_SCRIPT" = FALSE';
        EXECUTE IMMEDIATE (STR);
        dbms_output.put_line( 'All user are created' );
    END;
/
----------------
-- this proc have permission to delete user by username and pw in db
----------------

CREATE OR REPLACE PROCEDURE dropUser
AS
     CURSOR CUR IS (SELECT USERNAME FROM DBA_PTTK.NHANVIEN
    WHERE USERNAME IN (SELECT USERNAME FROM ALL_USERS));
    
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'drop USER '||USR || ' CASCADE';
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are droped' );
    END;
/

----------------------------
---- Grant role Area -------
----------------------------

-------------------------
-- this proc have responsibility to grant Role NhanVien  to all user have vai tro = nhan vien
-------------------------
CREATE OR REPLACE PROCEDURE grantEmpRole
AS
    CURSOR CUR IS (SELECT USERNAME FROM DBA_PTTK.NHANVIEN WHERE USERNAME NOT IN 
        (SELECT grantee FROM DBA_ROLE_PRIVS
            where granted_role = 'PTTK_RL_NHANVIEN'));
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            
            STR := 'grant PTTK_RL_NHANVIEN to '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are granted' );
    END;
/

CREATE OR REPLACE PROCEDURE grantCusRole
AS
    CURSOR CUR IS (SELECT USERNAME FROM DBA_PTTK.KHACHHANG WHERE USERNAME NOT IN 
        (SELECT grantee FROM DBA_ROLE_PRIVS
            where granted_role = 'PTTK_RL_KHACHHANG'));
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            STR := 'grant PTTK_RL_KHACHHANG to '||USR;
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are granted' );
    END;
/


--- exec:
exec createEmp;
exec createCus;
/
create role PTTK_RL_NHANVIEN;
/
create role PTTK_RL_KHACHHANG;
/


exec grantEmpRole;
exec grantCusRole;

/

CREATE OR REPLACE PROCEDURE grantAllTable(p_owner IN VARCHAR2, p_role IN VARCHAR2, p_privilege IN VARCHAR2)
AS
    CURSOR CUR IS (SELECT table_name 
        FROM all_tables 
        WHERE owner = UPPER(p_owner));
    STR VARCHAR(1000);
    USR VARCHAR2(100);
    BEGIN
        OPEN CUR;
        LOOP
            FETCH CUR INTO USR;
            EXIT WHEN CUR%NOTFOUND;
            STR := 'grant ' || UPPER(p_privilege) || ' on ' || UPPER(p_owner) || '.' || UPPER(USR) || ' to '|| UPPER(p_role);
            dbms_output.put_line( STR );
            EXECUTE IMMEDIATE (STR);
        END LOOP;
        dbms_output.put_line( 'All user are granted' );
    END;
/

---
grant SELECT ANY TABLE TO PTTK_RL_NHANVIEN;
grant INSERT ANY TABLE TO PTTK_RL_NHANVIEN;
grant UPDATE ANY TABLE TO PTTK_RL_NHANVIEN;
grant DELETE ANY TABLE TO PTTK_RL_NHANVIEN;


SET SERVEROUTPUT ON;
grant SELECT ANY TABLE TO PTTK_RL_KHACHHANG;
GRANT insert on DBA_PTTK.KHACHHANGTOUR TO PTTK_RL_KHACHHANG;
GRANT insert on DBA_PTTK.PHIEUSUDUNGDICHVU TO PTTK_RL_KHACHHANG;
GRANT insert on DBA_PTTK.DANHSACHTHAMGIATOUR TO PTTK_RL_KHACHHANG;

