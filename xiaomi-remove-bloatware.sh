#!/bin/bash

echo "🔧 Xiaomi reklam ve bloatware temizleme işlemi başlıyor..."

# Reklam servisleri
adb shell pm uninstall --user 0 com.miui.systemAdSolution
adb shell pm uninstall --user 0 com.miui.analytics
adb shell pm uninstall --user 0 com.miui.bugreport
adb shell pm uninstall --user 0 com.xiaomi.ad
adb shell pm uninstall --user 0 com.miui.daemon
adb shell pm uninstall --user 0 com.miui.msa.global

# Mi Browser öneri/çöp
adb shell pm uninstall --user 0 com.android.browser

# Mi Video reklamları
adb shell pm uninstall --user 0 com.miui.videoplayer

# Themes önerileri
adb shell pm uninstall --user 0 com.android.thememanager

# Cleaner, Scanner, SecurityCenter reklam modülleri
adb shell pm uninstall --user 0 com.miui.cleanmaster
adb shell pm uninstall --user 0 com.miui.securitycenter
adb shell pm uninstall --user 0 com.miui.securityadd

# App Vault (sağ ekran çöp)
adb shell pm uninstall --user 0 com.mi.android.globalminusscreen

# Feedback (gereksiz)
adb shell pm uninstall --user 0 com.miui.bugreport

# Mi Recommender (öneri sistemi)
adb shell pm uninstall --user 0 com.miui.hybrid

# Mi Pay (TR'de çalışmaz)
adb shell pm uninstall --user 0 com.miui.mipay

echo "✅ Temizlik tamamlandı. Cihazı yeniden başlatabilirsiniz."
