### Helper: 
có nhiệm vụ tạo các hàm hỗ trợ cho nhiều class khác nhau ở Package Controller:
- InitHelper: Hỗ trợ các hàm khởi tạo hình ảnh
- SwithchScreenHelper: Hỗ trợ chuyển đổi giữa các màn hình qua lại
- ScreenName: Hỗ trợ nhập tên các màn hình khác
- Helper: Hỗ trợ gọi toàn bộ các helper trên -> Để gọi các helper trên chỉ việc: **Helper.\<ClassHelper>.\<Method>** Có thể dùng Helper ở bất kì file nào.

### Model
Có nhiệm vụ giao tiếp giữa Database và Controller (Tầng thứ 2 trong mô hình 3 lớp - truyền tải thông tin qua lại giữa 2 layer):
Tầng này phụ trách giao tiếp với database và hỗ trợ các hàm trong Controller.

### DatabaseConnector
Có nhiệm vụ duy nhất: Connect to database.
Để lấy connection chỉ cần gọi: **DatabaseConnector.getConnection(username, password)**
### Controller
Có nhiệm vụ set up hiển thị cho màn hình, những thông tin để hiển thị cho người dùng sẽ được chỉnh sửa ở những file này.