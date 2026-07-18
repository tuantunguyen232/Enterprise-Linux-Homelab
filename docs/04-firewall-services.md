# Firewall (UFW)

## Tổng quan

Triển khai tường lửa UFW (Uncomplicated Firewall) nhằm bảo vệ Ubuntu Server, chỉ cho phép các dịch vụ cần thiết hoạt động và ngăn chặn các kết nối không mong muốn.

Firewall được cấu hình theo nguyên tắc:

> Chỉ mở những cổng thực sự cần sử dụng.

---

# Mô hình

Windows Client
        │
Ubuntu Desktop
        │
        ▼
Ubuntu Server
        │
     Firewall (UFW)
        │
 ┌──────┴─────────┐
 │                │
SSH            Samba
22/TCP        445/TCP

---

# Các tính năng đã triển khai

## 1. Kích hoạt UFW

Firewall đã được kích hoạt để quản lý các kết nối mạng đến máy chủ.

### Demo

```bash
sudo ufw status verbose
```

Kết quả: Hiển thị trạng thái của Firewall

<img width="557" height="231" alt="image" src="https://github.com/user-attachments/assets/24700a0d-646b-4973-bf23-b483acdc6161" />

Firewall được cấu hình với nguyên tắc:

- Từ chối toàn bộ kết nối đến (Incoming)
- Cho phép toàn bộ kết nối đi (Outgoing)

---

## 2. Kiểm tra Rule

Hiển thị toàn bộ Rule đang áp dụng.

### Demo

```bash
sudo ufw status numbered
```

Hiển thị danh sách các Rules được thiết lập:

<img width="563" height="157" alt="image" src="https://github.com/user-attachments/assets/df910899-c7ac-4983-bbd3-acb02001de1f" />

---

# Kết quả

✔ Firewall hoạt động ổn định

✔ Chỉ cho phép các dịch vụ cần thiết

✔ SSH hoạt động bình thường

✔ Samba hoạt động bình thường
