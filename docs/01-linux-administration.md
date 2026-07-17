# Linux Administration (Quản trị hệ thống Linux)

## 1. Giới thiệu

Trong bài Lab này, tôi triển khai và quản trị một máy chủ Ubuntu Server trên môi trường máy ảo VirtualBox nhằm mô phỏng hệ thống máy chủ trong doanh nghiệp.

Thông qua quá trình thực hiện, tôi làm quen với các thao tác quản trị hệ thống cơ bản như quản lý gói phần mềm, kiểm tra thông tin hệ thống, quản lý dịch vụ, cấu hình mạng và sử dụng các lệnh Linux.

---

## 2. Môi trường thực hiện

| Thành phần | Phiên bản |
|------------|-----------|
| Ubuntu Server | 24.04 LTS |
| VirtualBox | 7.x |
| Máy Host | Windows 11 |

---

## 3. Các lệnh đã sử dụng

### Kiểm tra thông tin hệ thống

```bash
hostnamectl
```

Hiển thị:

- Hostname
- Phiên bản Ubuntu
- Kernel
- Kiến trúc CPU

<img width="531" height="257" alt="image" src="https://github.com/user-attachments/assets/62d15b05-933a-41f6-b1a7-76efeaeab536" />

---

### Kiểm tra phiên bản Ubuntu

```bash
lsb_release -a
```
<img width="583" height="115" alt="image" src="https://github.com/user-attachments/assets/307e6f36-ee4d-4223-96a2-baf64f70cdf2" />

---

### Kiểm tra Kernel

```bash
uname -r
```

---

### Kiểm tra dung lượng ổ đĩa

```bash
df -h
```

---

### Kiểm tra bộ nhớ RAM

```bash
free -h
```
<img width="602" height="132" alt="image" src="https://github.com/user-attachments/assets/9e9f2988-bb08-4bd1-ab6c-c7541d5e078a" />

---

### Kiểm tra CPU

```bash
lscpu
```
<img width="1277" height="800" alt="image" src="https://github.com/user-attachments/assets/e9f83ceb-2abf-480b-b90b-2e795480e3ed" />

---

### Kiểm tra địa chỉ IP

```bash
ip addr
```
<img width="865" height="353" alt="image" src="https://github.com/user-attachments/assets/74febe19-40e9-4786-b28b-e6acacaff390" />

Ở bài Lab của mình, tôi setup 2 card mạng: 1 là mạng NAT với mục đích có truy cập internet, 2 là mạng host-only với mục đích tạo kết nối giao tiếp giữa các máy ảo với máy gốc Windows của tôi.

---

### Kiểm tra bảng định tuyến

```bash
ip route
```
<img width="645" height="138" alt="image" src="https://github.com/user-attachments/assets/da6717f3-a8d2-425b-b884-51a9399faa2d" />

---

### Cập nhật danh sách Package

```bash
sudo apt update
```

---


---

## 5. Quản lý Service
Ví dụ: Service OpenSSH
Kiểm tra trạng thái dịch vụ SSH

```bash
systemctl status ssh
```
<img width="690" height="367" alt="image" src="https://github.com/user-attachments/assets/70c48a6d-203a-4e15-9117-1e7eb5cf8b14" />


Khởi động lại dịch vụ

```bash
sudo systemctl restart ssh
```

Cho phép tự khởi động cùng hệ thống

```bash
sudo systemctl enable ssh
```
<img width="852" height="106" alt="image" src="https://github.com/user-attachments/assets/a3468695-b0fc-4668-b703-dbd4bafbeef2" />
Có thể kiểm tra xem thiết lập trên có thực hiện được không bằng cách kiểm tra xem trạng thái ở lệnh "status" ở trên. Nếu có hiển thị "enable" thì có nghĩa là service này sẽ được khởi động cùng lúc hệ thống được mở.

---

## 4. Kỹ năng đạt được

- Làm quen với giao diện dòng lệnh Linux
- Quản lý Package bằng APT
- Quản lý Service bằng systemctl
- Kiểm tra thông tin phần cứng và hệ điều hành
- Quản lý địa chỉ IP và định tuyến
- Hiểu cấu trúc cơ bản của Ubuntu Server

---

## 5. Kết quả

Đã triển khai thành công Ubuntu Server và thực hiện các thao tác quản trị hệ thống cơ bản, tạo nền tảng cho các bài Lab tiếp theo như SSH, Samba, Firewall, Backup và Monitoring.
