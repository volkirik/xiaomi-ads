#!/bin/bash

echo "📴 Xiaomi sistem öneri ve reklam ayarları kapatılıyor..."

# Reklam izinlerini (msa) kapat
adb shell settings put secure msa_auto_disable 1
adb shell settings put secure msa_disclaimer_shown 1
adb shell settings put global msa_enable 0

# MIUI Security – öneri/reklam kapat
adb shell settings put global com.miui.securitycenter_ad_recommend 0

# MIUI Cleaner – öneri kapat
adb shell settings put global com.miui.cleanmaster_ad_recommend 0

# MIUI Downloads – öneri kapat
adb shell settings put global com.android.providers.downloads.ui.AD_RECOMMEND 0

# MIUI Themes – öneri kapat
adb shell settings put global com.android.thememanager_ad_recommend 0

# Mi Video – öneri kapat
adb shell settings put global com.miui.videoplayer_ad_recommend 0

# Mi Music – öneri kapat
adb shell settings put global com.miui.player_ad_recommend 0

# Mi Browser – öneri kapat
adb shell settings put global com.android.browser_ad_recommend 0

# MIUI System Launcher – öneri kapat
adb shell settings put global com.miui.home_ad_recommend 0

# App Vault (sağ ekran öneri kartları)
adb shell settings put global com.mi.android.globalminusscreen_ad_recommend 0

echo "✅ Tüm sistem içi öneri ve reklam tercihleri kapatıldı!"
