# System Monitoring

## Tổng quan

Xây dựng Bash Script để kiểm tra nhanh trạng thái của hệ thống Linux.

Script giúp quản trị viên theo dõi các dịch vụ quan trọng và tài nguyên hệ thống mà không cần thực hiện nhiều lệnh riêng lẻ.

---

Script thực hiện các chức năng:

- Kiểm tra trạng thái SSH Service
- Kiểm tra trạng thái Samba Service
- Kiểm tra Firewall (UFW)
- Kiểm tra CPU Load
- Kiểm tra Memory Usage
- Kiểm tra Disk Usage
- Kiểm tra Uptime

Nội dung Script HealthCheck:

<img width="783" height="736" alt="image" src="https://github.com/user-attachments/assets/a21df712-a846-479a-94f0-4cb23ce023e8" />

<img width="791" height="756" alt="image" src="https://github.com/user-attachments/assets/831577c0-6834-4a59-9fec-c41deb516a07" />

<img width="627" height="385" alt="image" src="https://github.com/user-attachments/assets/8b4d0510-396a-4a12-ad42-169cdd175619" />

---

## Chạy Script

```bash
sudo bash ~/scripts/healthcheck.sh
```

<img width="662" height="340" alt="image" src="https://github.com/user-attachments/assets/41256044-3cfe-451e-aa7d-70cb7e9a7bb0" />

# Các tính năng được sử dụng trong script

## 1. Kiểm tra SSH Service

Script sử dụng `systemctl` để xác định dịch vụ SSH có đang hoạt động hay không.

<img width="966" height="408" alt="image" src="https://github.com/user-attachments/assets/448760d1-23d7-489c-967c-6cefe5d1f2a8" />

---

## 2. Kiểm tra Samba Service

Kiểm tra trạng thái dịch vụ chia sẻ tệp Samba.

### Demo

<img width="1152" height="357" alt="image" src="https://github.com/user-attachments/assets/87c01e01-e7d9-493f-b273-757ffe696f27" />

---

## 3. Kiểm tra Firewall

Hiển thị trạng thái của UFW.

<img width="573" height="162" alt="image" src="https://github.com/user-attachments/assets/8ec05bf8-de92-4f33-b38d-64c957f7bde1" />

---

## 4. Kiểm tra CPU Load

Hiển thị giá trị Load Average của hệ thống.

<img width="531" height="53" alt="image" src="https://github.com/user-attachments/assets/614aef3a-f736-403d-95af-00884c8a49d8" />

---

## 5. Kiểm tra Memory

Hiển thị RAM đang sử dụng.

<img width="675" height="91" alt="image" src="https://github.com/user-attachments/assets/be96895e-5943-4f56-995a-7fa4c1011672" />

---

## 6. Kiểm tra Disk

Hiển thị dung lượng phân vùng hiện tại.

Nếu vượt ngưỡng 80%, script sẽ cảnh báo.

<img width="532" height="131" alt="image" src="https://github.com/user-attachments/assets/db7c275e-9939-41f5-8ab9-f66c879b72bf" />

---


# Kết quả

✔ SSH hoạt động bình thường

✔ Samba hoạt động bình thường

✔ Firewall đang bảo vệ hệ thống

✔ CPU Load ổn định

✔ RAM còn đủ tài nguyên

✔ Disk chưa vượt ngưỡng cảnh báo

