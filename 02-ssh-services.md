# SSH Server (OpenSSH)

## Tổng quan

Dịch vụ OpenSSH được triển khai nhằm cho phép quản trị máy chủ từ xa thông qua giao thức SSH.

Hệ thống hỗ trợ hai phương thức xác thực:

- Password Authentication
- SSH Key Authentication

Việc triển khai SSH giúp quản trị viên có thể quản lý máy chủ từ Windows và Ubuntu Desktop mà không cần thao tác trực tiếp trên máy chủ.

---

# Mô hình

Ubuntu Desktop / Windows Client

↓

SSH

↓

Ubuntu Server

---

# Các tính năng đã triển khai

## 1. SSH Server

Đã cài đặt và kích hoạt dịch vụ OpenSSH Server.

### Demo

Kiểm tra trạng thái dịch vụ

```bash
systemctl status ssh
```

Kết quả

<img width="687" height="272" alt="image" src="https://github.com/user-attachments/assets/851abc31-0afd-4d6c-9004-de6cd1ea5ac1" />

Đã thiết lập service OpenSSH tự động khởi chạy khi hệ thống được boot.

---

## 2. Đăng nhập từ xa

Máy Client có thể kết nối đến Ubuntu Server bằng giao thức SSH.

### Demo

Kết nối SSH từ máy Windows bằng tài khoản admin (đăng nhập bằng cách xác thực mật khẩu)

```bash
ssh admin@192.168.56.102
```

Kết quả:

<img width="1161" height="1017" alt="image" src="https://github.com/user-attachments/assets/631842a4-2fcc-4bb8-b5ce-8a55621cfa00" />

---

## 3. SSH Key Authentication

Đã triển khai xác thực bằng Public Key.

### Demo

#### Trên Client (Ubuntu Desktop)
Xem cặp khóa đã được tạo

```
id_ed25519
id_ed25519.pub
```

<img width="1280" height="866" alt="image" src="https://github.com/user-attachments/assets/8a0096e6-763d-4c77-87e5-5015a0d00c35" />

Khóa được tạo trên Client:

<img width="1272" height="402" alt="image" src="https://github.com/user-attachments/assets/784b9de7-be5f-4b2c-93f8-baaac66c0d74" />

#### Trên Server (Ubuntu Server)

Xem file chứa các host đã được biết và tạo khóa trên server, để có thể đăng nhập mà không cần hỏi mật khẩu. (Nhưng vẫn có thể yêu cầu Passphrase nếu có cài đặt)

```
~/.ssh/
    authorized_keys
```

<img width="541" height="127" alt="image" src="https://github.com/user-attachments/assets/629ee8f1-a85f-4b92-8bb1-cd42a4d28c9f" />

Khóa được lưu trên server:

<img width="796" height="82" alt="image" src="https://github.com/user-attachments/assets/f8639f5a-63ec-4298-a7fd-a0a0c3647b4b" />


Kiểm tra việc đăng nhập từ Ubuntu Desktop

```bash
ssh admin@192.168.56.102
```

Kết quả

Máy chủ xác thực bằng SSH Key mà không yêu cầu nhập mật khẩu tài khoản (Nhưng có yêu cầu Passphrase vì đã được cài đặt).

<img width="1280" height="895" alt="image" src="https://github.com/user-attachments/assets/d8e68ac5-caf7-4fc0-ad1e-853dacd59193" />

---

## 4. Cấu hình bảo mật

Các thiết lập đã áp dụng (các file config có thể xem ở mục config)

| Thiết lập | Trạng thái |
|-----------|------------|
| PubkeyAuthentication | Enabled |
| PasswordAuthentication | Enabled |
| PermitRootLogin | prohibit-password |

---

# Kết quả

✔ SSH Server hoạt động ổn định

✔ Hỗ trợ đăng nhập từ xa

✔ Xác thực bằng Password

✔ Xác thực bằng SSH Key

✔ Kiểm tra thành công trên nhiều Client

---
