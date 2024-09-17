# ZingMP3
# Ứng Dụng Nghe Nhạc Trực Tuyến

**Ứng Dụng Nghe Nhạc Trực Tuyến** là một nền tảng phát nhạc trực tuyến, nơi người dùng có thể nghe, tạo playlist, tìm kiếm các bài hát yêu thích và lưu trữ các bài hát, ảnh bìa. Ứng dụng này mang đến trải nghiệm người dùng tương tự như các nền tảng nhạc trực tuyến phổ biến như **ZingMP3** và **NhacCuaTui**.

## Tính năng chính

- **Nghe nhạc trực tuyến**: Phát các bài hát chất lượng cao trực tiếp trên trình duyệt.
- **Tìm kiếm bài hát**: Tìm kiếm bài hát, nghệ sĩ, và album yêu thích.
- **Tạo và quản lý playlist**: Người dùng có thể tạo, chỉnh sửa và xóa playlist cá nhân.
- **Quản lý bài hát và album**: Lưu trữ thông tin chi tiết về bài hát, album và nghệ sĩ.
- **Tích hợp Firebase**: Lưu trữ file audio và ảnh bìa album trên Firebase.
- **Tự động phát tiếp**: Chức năng autoplay bài hát tiếp theo khi bài hát hiện tại kết thúc.
- **Giao diện người dùng trực quan**: Sử dụng ReactJS và SCSS để mang đến trải nghiệm người dùng mượt mà và hiện đại.

## Công nghệ sử dụng

### Backend:
- **Spring Boot**: Framework Java sử dụng mô hình MVC (Model-View-Controller) để phát triển các API backend.
- **MySQL**: Quản lý và lưu trữ dữ liệu người dùng, bài hát, album, và playlist.
- **Firebase**: Lưu trữ các file audio và ảnh bìa album.
  
### Frontend:
- **ReactJS**: Thư viện JavaScript cho việc xây dựng giao diện người dùng.
- **SCSS**: Công cụ tiền xử lý CSS cho việc viết mã CSS dễ dàng và có tổ chức hơn.
- **Thư viện lvq**: Cung cấp các component React và kiểu dữ liệu hữu ích cho việc xây dựng giao diện người dùng hiệu quả.

## Cài đặt và chạy dự án

### 1. Cài đặt và chạy Backend (Spring Boot)

```bash
# Clone dự án từ repository
git clone https://github.com/your-username/music-app-backend.git

# Di chuyển vào thư mục backend
cd backend

# Cài đặt các dependencies
./mvnw install

# Cấu hình cơ sở dữ liệu trong file application.properties
spring.datasource.url=jdbc:mysql://localhost:3306/music_db
spring.datasource.username=root
spring.datasource.password=yourpassword

# Chạy ứng dụng
./mvnw spring-boot:run
```

Server sẽ chạy tại `http://localhost:8080`.

### 2. Cài đặt và chạy Frontend (ReactJS)

```bash
# Clone dự án từ repository
git clone https://github.com/your-username/music-app-frontend.git

# Di chuyển vào thư mục frontend
cd frontend

# Cài đặt các dependencies
npm install

# Chạy ứng dụng React
npm start
```

Client sẽ chạy tại `http://localhost:3000`.

## Cấu trúc thư mục

```bash
backend/         # Mã nguồn cho phía backend (Spring Boot, Java, MySQL)
frontend/        # Mã nguồn cho phía frontend (ReactJS, SCSS)
firebase/        # Các file cấu hình liên quan đến Firebase
```

## Firebase

Ứng dụng này sử dụng **Firebase** để lưu trữ các file audio và ảnh bìa. Bạn cần cấu hình file `firebase-config.js` với thông tin xác thực Firebase của bạn:

```javascript
const firebaseConfig = {
  apiKey: "YOUR_API_KEY",
  authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
  projectId: "YOUR_PROJECT_ID",
  storageBucket: "YOUR_PROJECT_ID.appspot.com",
  messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
  appId: "YOUR_APP_ID"
};

export default firebaseConfig;
```

## Thư viện lvq

**Thư viện lvq** cung cấp các component React và kiểu dữ liệu hữu ích cho việc xây dựng giao diện người dùng. Để sử dụng, cài đặt thư viện bằng lệnh:

```bash
npm install lvq
```

### Hướng dẫn sử dụng thư viện lvq

#### Import và sử dụng component từ lvq

```javascript
import { Button, Input } from 'lvq';

// Sử dụng Button component
<Button onClick={handleClick}>Nhấn vào đây</Button>

// Sử dụng Input component
<Input placeholder="Tìm kiếm bài hát..." />
```

Thư viện cung cấp nhiều thành phần hữu ích như `Button`, `Input`, `Card`, `Modal`, giúp bạn dễ dàng tạo ra giao diện người dùng tương tác và đẹp mắt.

## Yêu cầu hệ thống

- **Java 21 hoặc cao hơn** để chạy Spring Boot
- **Node.js** và **npm** để chạy ReactJS
- **MySQL** để lưu trữ cơ sở dữ liệu
- **Firebase** để lưu trữ file audio và ảnh bìa album

## Thành viên dự án

- **Nguyễn Đức Dũng** - Phát triển hệ thống.
## Hướng dẫn đóng góp
---
