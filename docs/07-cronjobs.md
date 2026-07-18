# Cron Job Automation

## Tổng quan

Triển khai Cron Job để tự động hóa việc thực thi các Bash Script theo lịch định sẵn.

Trong bài Lab này, Cron được sử dụng để tự động chạy các tác vụ quản trị như Backup và System Monitoring, giúp giảm thao tác thủ công và đảm bảo hệ thống luôn được kiểm tra định kỳ.

---

# Mục tiêu

- Hiểu cách hoạt động của Cron.
- Tự động thực thi Bash Script theo lịch.
- Kiểm tra và xác nhận Cron hoạt động đúng.
- Quản lý Cron Job của người dùng.

---

# Demo

## Kiểm tra Cron Service

```bash
sudo systemctl status cron
```

<img width="1122" height="351" alt="image" src="https://github.com/user-attachments/assets/ebdda0d7-fedd-45e7-8a6a-0f096d20bf9a" />

---

## Xem Cron Job hiện có

```bash
crontab -l
```

<img width="643" height="437" alt="image" src="https://github.com/user-attachments/assets/3c6ac914-957c-4da9-85c5-6b5cde0c8a96" />

---

## Chỉnh sửa Cron Job

```bash
crontab -e
```

<img width="693" height="472" alt="image" src="https://github.com/user-attachments/assets/d5c5c9c6-64c1-453c-9853-ad2e7d0b5e1d" />

---

## Kiểm tra Cron đã thực thi

Sau thời gian đã cấu hình, in kết quả vào cron_test.log:

<img width="892" height="802" alt="image" src="https://github.com/user-attachments/assets/0738756b-dc5c-4e9e-a1e3-095208536462" />

---

# Kết quả

✔ Cron Service hoạt động bình thường

✔ Script được thực thi theo lịch

✔ Backup có thể tự động tạo

✔ Monitoring có thể chạy định kỳ

✔ Có thể tạm dừng hoặc chỉnh sửa lịch dễ dàng

---
