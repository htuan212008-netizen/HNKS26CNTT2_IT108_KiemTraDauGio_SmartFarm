# Tac gia: Hồ Anh Tuấn
# Lớp: CNTT2

Write-Output "Dang Loc Canh Bao......"
"========================================" > ../backup/bao-cao-su-co.txt
"BAO CAO SU CO - SMARTFARM" >> ../backup/bao-cao-su-co.txt
"Ngay gio: $(Get-Date -Format 'dd/MM/yyyy HH:mm')" >> ../backup/bao-cao-su-co.txt
"========================================" >> ../backup/bao-cao-su-co.txt
gc ../data/log-he-thong.log | select-string "ERROR" >> ../backup/bao-cao-su-co.txt
gc ../data/log-he-thong.log | select-string "CRITICAL" >> ../backup/bao-cao-su-co.txt
"----------------------------------------" >> ../backup/bao-cao-su-co.txt
Write-Output "Hoan thanh!"
"TONG SO SU CO" >> ../backup/bao-cao-su-co.txt
(gc ../data/log-he-thong.log | select-string "ERROR", "CRITICAL" | Measure-object).Count >> ../backup/bao-cao-su-co.txt

