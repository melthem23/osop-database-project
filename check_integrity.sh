#!/bin/bash
echo "--- OSOP Sistem Kontrolü Başlatılıyor ---"

# Kontrol edilecek dosyalar (Klasör yapısına göre)
FILES=("researchs/index.html" "researchs/infographic.png" "project_info.json")

for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "[OK] $file bulundu."
    else
        echo "[HATA] $file eksik! (Klasör yolunu kontrol edin)"
    fi
done

echo "--- Kontrol Tamamlandı ---"
