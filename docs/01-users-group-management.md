# User & Group Management

## Tổng quan

Triển khai hệ thống người dùng và nhóm nhằm mô phỏng cơ cấu phòng ban trong doanh nghiệp.

---

# Các tính năng đã triển khai

## Tạo người dùng

Tạo các tài khoản đại diện cho các nhân viên.

### Demo

```bash
cat /etc/passwd
```

Hoặc

```bash
id tobi
```
Danh sách một số tài khoản đã được tạo trong hệ thống:
<img width="767" height="242" alt="image" src="https://github.com/user-attachments/assets/6827e80a-f538-42ea-a366-689426017253" />

Thông tin về tài khoản tobi trong hệ thống:

<img width="623" height="77" alt="image" src="https://github.com/user-attachments/assets/9f8778b8-390c-41d6-bab4-3eb2aa7b5c6e" />

---

## Quản lý Group

Đã tạo các Group

- HR
- Sales
- IT
- Accounting

Xem danh sách các groups phòng ban đã được tạo:

```bash
cat /etc/group
```
<img width="487" height="271" alt="image" src="https://github.com/user-attachments/assets/d554e269-e622-40b3-a019-044c01b10584" />

---

## Phân quyền theo phòng ban

Người dùng được gán vào Group tương ứng.

### Demo

```bash
groups bang
```

Kết quả: Danh sách các group mà user bang và tobi được gán vào

<img width="492" height="107" alt="image" src="https://github.com/user-attachments/assets/884b3d9d-a59b-4bcc-b995-a094b3c5088d" />

---

## Home Directory

Mỗi User có Home Directory riêng.

### Demo

```bash
ls -l /home
```
Danh sách các Home Directory của các users:

<img width="455" height="176" alt="image" src="https://github.com/user-attachments/assets/c12b7941-383a-4fda-a042-0bf8c854d1d1" />

---


# Kết quả

✔ Quản lý nhiều User

✔ Quản lý nhiều Group

✔ Phân quyền theo phòng ban

✔ Quản lý Home Directory

✔ Quản lý Password

