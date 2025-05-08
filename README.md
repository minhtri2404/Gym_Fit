                                                                                🏋️‍♂️Gym_fit - Gym Management System


📜 Mô tả
Gym_fit là một hệ thống quản lý phòng gym được xây dựng với các công nghệ hiện đại. Hệ thống bao gồm một giao diện người dùng (UI) thân thiện và dễ sử dụng với frontend sử dụng HTML, CSS, Bootstrap và JavaScript, kết hợp với backend mạnh mẽ sử dụng Spring Boot và kiến trúc microservices.

🏗️ Cấu trúc dự án

💻 Frontend:

HTML: Cung cấp cấu trúc trang web.

CSS: Định dạng giao diện và bố cục của hệ thống.

Bootstrap: Thư viện CSS giúp thiết kế giao diện dễ dàng, responsive.

JavaScript: Xử lý logic và sự kiện trên giao diện người dùng.

🔧 Backend:
Spring Boot: Framework phát triển backend sử dụng Java, giúp dễ dàng tạo các ứng dụng web.

Microservices: Kiến trúc microservices cho phép các thành phần của hệ thống giao tiếp với nhau một cách độc lập và mở rộng dễ dàng.

🔨 Cài đặt và triển khai
1. Cài đặt Frontend
Clone repository này về máy của bạn.

Mở thư mục frontend/ và mở file index.html trong trình duyệt.

Các file CSS và JS sẽ tự động tải về và áp dụng cho giao diện người dùng.

2. Cài đặt Backend
Clone repository này về máy của bạn.

Cài đặt JDK (Java Development Kit).

Cài đặt Maven để quản lý dự án.

Mở terminal và di chuyển đến thư mục backend/ trong dự án.

Chạy lệnh sau để xây dựng dự án và chạy ứng dụng Spring Boot:

arduino
Sao chép
Chỉnh sửa
mvn clean install
mvn spring-boot:run
Backend sẽ chạy trên port 8080 (hoặc port khác nếu bạn đã cấu hình).

3. Cấu hình Microservices
Các microservices sẽ được triển khai dưới dạng các service độc lập, liên lạc với nhau qua API RESTful.

Mỗi microservice có thể được triển khai riêng biệt hoặc kết hợp với các service khác qua một API Gateway.

✨ Các tính năng chính
✅ Đăng nhập và đăng ký người dùng.

🗓️ Quản lý lịch trình các lớp học tại gym.

🏅 Quản lý khách hàng, thẻ thành viên.

🧑‍🏫 Quản lý các huấn luyện viên và thông tin cá nhân.

📊 Thống kê và báo cáo hoạt động gym.

🛠️ Các yêu cầu
Java 11 trở lên.

Maven.

Trình duyệt web hỗ trợ HTML5 và CSS3.

Cơ sở dữ liệu (MySQL, PostgreSQL hoặc tương tự) nếu cần.
