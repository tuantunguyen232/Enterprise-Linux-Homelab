# Backup & Restore

## Tổng quan

Triển khai giải pháp sao lưu dữ liệu bằng Bash Script nhằm đảm bảo dữ liệu có thể được phục hồi khi xảy ra sự cố.

Trong bài Lab này, quá trình Backup được tự động hóa bằng script và có thể khôi phục dữ liệu khi cần thiết.

---

# Mô hình

                Ubuntu Server

                     │

        ┌────────────┴────────────┐

        │                         │

   Shared Folder            Backup Folder

        │                         │

        └────────► backup.sh ◄────┘

                     │

              Backup Archive

---

# Các tính năng đã triển khai

## 1. Backup dữ liệu

Sử dụng Bash Script để nén dữ liệu thành file lưu trữ.

### Demo

Script được tạo để thực hiện back up trên hệ thống được lưu ở /scripts

<img width="627" height="542" alt="image" src="https://github.com/user-attachments/assets/618da8db-7b0b-44d4-a1c9-4c798bb64d53" />

Kết quả khi chạy lệnh

<img width="560" height="246" alt="image" src="https://github.com/user-attachments/assets/62ec64f7-20a3-4f54-bd75-b118c40bc581" />

Một file backup mới sẽ được tạo trong thư mục Backup.

---

## 2. Kiểm tra nội dung Backup

Kiểm tra file đã được nén.

### Demo

```bash
tar -tf /backup/daily/samba_2026-07-18.tar.gz
```

Kết quả khi đọc file backup đã nén:

<img width="581" height="371" alt="image" src="https://github.com/user-attachments/assets/c80d3d88-ad76-4ae2-a6e7-c98125198293" />

---

## 3. Restore dữ liệu

Khôi phục dữ liệu từ file Backup.

### Demo

Script Restore được tạo và lưu trữ ở thư mục /scripts

<img width="755" height="742" alt="image" src="https://github.com/user-attachments/assets/8702be3a-4341-4bb3-bfc8-d01fad2ae521" />

Tạo thư mục /restore_test/samba để kiểm tra việc restore:

<img width="437" height="76" alt="image" src="https://github.com/user-attachments/assets/8f080ba3-5c5d-4238-96d4-968ef901b54b" />

Chạy script restore.sh:

<img width="552" height="305" alt="image" src="https://github.com/user-attachments/assets/8a9cfc90-5742-4e2f-b795-a36596540148" />

Sau khi Restore, dữ liệu được phục hồi về đúng vị trí (restore_test/samba):

<img width="577" height="521" alt="image" src="https://github.com/user-attachments/assets/ea4e1c73-1571-4542-8917-00919e55e3fa" />

---

# Kết quả

✔ Backup thành công

✔ File được nén thành định dạng tar.gz

✔ Không ghi đè Backup cũ

✔ Có thể Restore dữ liệu

✔ Script hoạt động ổn định

---
