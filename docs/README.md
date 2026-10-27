# <h1 align="center">Hệ thống giám sát trạm cảm biến nông trại (SMARTFARM MONITOR)</h1>
## 1. Hướng dẫn chạy scripts
Lệnh
```powershell
./auto-report.ps1
```
- [x] Kiểm tra nguồn điện và kết nối LAN trạm.
- [ ] Kiểm tra tình trạng thẻ nhớ/SSD các trạm từ ST02 đến ST10.
- [ ] Thay thế modem và lắp anten gia tăng tín hiệu cho trạm sensor-03. 
## 2. Bảng thông số phần cứng
|Tên thiết bị|Đơn giá|Loại storage|
|-|-|-|
|Raspberry Pi 4 Model B|1.450.000|SSD|
|Intel NUC i3|6.200.000|SSD|
|Orange Pi 5|2.300.000|SSD|
|Dell Optiplex Micro|5.400.000|HDD|
|Mini PC Fanless N100|4.200.000|SSD|
|Synology DS220j NAS|3.900.000|HDD|
## 3. Phân tích hệ thống
|INPUT|PROCESS|OUTPUT|
|-|-|-|
|`File log-he-thong.log` (Đọc log dữ liệu thô)|`Get-Content pipeline Select-String` (Lọc CRITICAL/ERROR & Đếm dòng)|`File bao-cao-su-co.txt` (Tiêu đề, log lỗi & Tổng số lỗi)|
## 4. Phân loai phát biểu vào DIKW
```DKIW
D: 2026-10-12 08:15:01 [ERROR] sensor-03 Connection TIMEOUT after 30s
I: Hôm nay hệ thống ghi nhận 8 sự cố, trong đó 4 sự cố đến từ trạm sensor-03
K: Trạm sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, nên cần lắp thêm anten
W: Quyết định thay modem trạm sensor-03 trước thứ Sáu
```