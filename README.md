# Enterprise-Linux-Homelab
Đây là dự án tự xây dựng nhằm mô phỏng một hệ thống Linux Server trong môi trường doanh nghiệp. Dự án được triển khai trên VirtualBox với Ubuntu Server và Ubuntu Desktop nhằm thực hành các kỹ năng quản trị hệ thống Linux, bảo mật, chia sẻ dữ liệu, tự động hóa và giám sát hệ thống.

## Mục tiêu dự án
- Thực hành quản trị Linux trong môi trường doanh nghiệp.
- Nâng cao kỹ năng System Administration.
- Tự động hóa các tác vụ quản trị.
- Hiểu cách triển khai các dịch vụ cơ bản trên Linux Server.
- Chuẩn bị kiến thức cho vị trí Intern IT Helpdesk / IT Support / IT System.

| Thành phần    | Công nghệ               |
| ------------- | ----------------------- |
| Hypervisor    | Oracle VirtualBox       |
| Server        | Ubuntu Server 24.04 LTS |
| Client        | Ubuntu Desktop 26.04 LTS, Windows 11          |
| Firewall      | UFW                     |
| File Sharing  | Samba                   |
| Remote Access | OpenSSH                 |

## Các nội dung đã triển khai

### Linux Administration
- Quản lý User
- Quản lý Group
- File Permission
- Ownership
- sudo

### SSH
- Cài đặt OpenSSH Server
- Đăng nhập bằng Password
- SSH Key Authentication
- Quản lý Public Key

### Samba
Cấu hình Samba Server
- Tạo Department Share
- Public Share
- Samba User
- Kiểm tra truy cập từ Windows
- Kiểm tra truy cập từ Ubuntu Desktop

### Firewall
- Cấu hình UFW
- Allow Rule
- Deny Rule
- Mở Port SSH
- Mở Port Samba

### Backup
- Backup bằng tar
-  Restore dữ liệu
- Bash Script tự động Backup

### Cron
Tự động chạy Backup Script
Kiểm tra Cron Job
Bash Script

### Xây dựng Health Check Script có khả năng:
- Kiểm tra SSH Service
- Kiểm tra Samba Service
- Kiểm tra Firewall
- Kiểm tra CPU Load
- Kiểm tra Memory Usage
- Kiểm tra Disk Usage
- Kiểm tra Uptime

## Kỹ năng đạt được
- Linux Administration
- Bash Scripting
- SSH
- Samba
- UFW Firewall
- Backup & Restore
- Cron Job

## Định hướng phát triển

Dự án sẽ tiếp tục được mở rộng với các nội dung:

- Apache Web Server
- Nginx
- Docker
- DNS Server
- Reverse Proxy
- Monitoring
- Log Management
