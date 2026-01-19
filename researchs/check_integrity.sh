#!/bin/bash
# OSOP Otomatik Kontrol Sistemi

echo "Sistem kontrolü başlatılıyor..."

FILES=("researchs/index.html" "researchs/infographic.png" "project_info.json")

for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "[OK] $file dosyası başarıyla doğrulandı."
    else
        echo "[HATA] $file dosyası eksik veya yeri yanlış!"
    fi
done

echo "Kontrol tamamlandı."
