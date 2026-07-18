# Samba File Server

## Tổng quan

Triển khai dịch vụ Samba nhằm chia sẻ dữ liệu giữa Ubuntu Server và các máy Windows/Linux trong mạng nội bộ.

Hệ thống mô phỏng môi trường doanh nghiệp với các thư mục dùng chung, thư mục phòng ban và phân quyền theo nhóm người dùng.

---

# Mô hình

Windows Client
        │
Ubuntu Desktop
        │
        │ SMB/CIFS
        ▼
Ubuntu Server (Samba)

---

# Các tính năng đã triển khai

## 1. Chia sẻ thư mục Public

Triển khai thư mục dùng chung để tất cả người dùng trong mạng nội bộ có thể truy cập.

### Demo

Kiểm tra Share

```bash
testparm -s
```
<img width="737" height="802" alt="image" src="https://github.com/user-attachments/assets/06cb6d6f-9bf6-4711-867c-ce6c1e19af71" />

Kiểm tra thư mục

```bash
ls -ld /srv/samba/public
```
<img width="592" height="147" alt="image" src="https://github.com/user-attachments/assets/ac7735a0-51c9-41a4-b98e-6d56f30af3c5" />

Thiết lập thư mục Public để mọi người đều có thể truy cập vào và đọc file.

Kết quả

- Public Share hoạt động
- Người dùng có thể truy cập từ Windows File Explorer

---

## 2. Chia sẻ theo phòng ban

Mỗi phòng ban sở hữu thư mục riêng.

Ví dụ:

- Kỹ Thuật
- Nhân Sự
- Kết Toán

Các thư mục chỉ cho phép thành viên thuộc đúng Group truy cập.

### Demo

Kiểm tra

```bash
ls -l /srv/samba
```

Danh sách các thư mục của các phòng ban:

<img width="557" height="180" alt="image" src="https://github.com/user-attachments/assets/4641368e-e836-4a45-afaa-baf46efcc05a" />


---

## 3. Xác thực người dùng Samba

Mỗi tài khoản Linux được thêm vào cơ sở dữ liệu Samba.

### Demo

Liệt kê User Samba:

```bash
sudo pdbedit -L
```

<img width="507" height="192" alt="image" src="https://github.com/user-attachments/assets/8cbc3c04-a6ed-4e8d-932d-79283364e1b8" />

---

## 4. Đăng nhập từ Windows

Windows có thể truy cập File Server bằng Samba.

### Demo

File Explorer

```
\\192.168.56.102\kythuat
```

Đăng nhập bằng user tobi (thành viên của phòng ban kỹ thuật)
Sau khi xác thực thành công sẽ hiển thị các thư mục gồm public và các phòng ban:

<img width="1152" height="503" alt="image" src="https://github.com/user-attachments/assets/294c129c-8fa7-40d3-83ed-ac2e9bbb8286" />

Khi cố truy cập vào phòng ban khác (kế toán) thì bị denied, vì user tobi không thuộc phòng ban này:

<img width="1157" height="730" alt="image" src="https://github.com/user-attachments/assets/9774fd72-9651-4623-aa03-901f2cd72a35" />

Khi vào được phòng ban kỹ thuật:

<img width="1158" height="387" alt="image" src="https://github.com/user-attachments/assets/0e75653b-6455-4072-9cb6-ac94439f3af5" />

Tạo một file ở trên phòng ban này:

<img width="1151" height="607" alt="image" src="https://github.com/user-attachments/assets/806b16c3-b8c6-4734-ba27-2950471e6e7e" />

Đăng nhập vào một tài khoản khác thuộc phòng ban kỹ thuật (dùng tài khoản admin) trên máy client Ubuntu Desktop để kiểm tra file vừa tạo:

<img width="1261" height="816" alt="image" src="https://github.com/user-attachments/assets/bcf3e290-3e69-4ed8-9a10-ba86be9302c3" />

Mở file txt đã tạo trên Windows và chỉnh sửa:

<img width="1270" height="900" alt="image" src="https://github.com/user-attachments/assets/3b0fc0b8-4646-423d-9343-d2dec93a23a7" />

Kiểm tra file trên Windows:

<img width="1153" height="605" alt="image" src="https://github.com/user-attachments/assets/dff6f91a-aa46-4e4d-9599-df74f5347f70" />

---

## 5. Kiểm tra dịch vụ Samba

```bash
systemctl status smbd
```

Kết quả

<img width="1107" height="512" alt="image" src="https://github.com/user-attachments/assets/f233a88f-9955-4e6c-aec5-9a21d9c21ad6" />

---

## 6. Kiểm tra cấu hình

```bash
testparm
```

Kết quả

<img width="658" height="143" alt="image" src="https://github.com/user-attachments/assets/335f425e-3c8b-4974-a52b-be6ceaf87cec" />

---

# Kết quả

✔ Samba Server hoạt động ổn định

✔ Windows truy cập thành công

✔ Ubuntu Desktop truy cập thành công

✔ Chia sẻ dữ liệu trong LAN

✔ Xác thực bằng User Samba

✔ Phân quyền theo Group

✔ Public Share

✔ Department Share

