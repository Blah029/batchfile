@echo off

cd "D:\Program Files\CLI Programs\Android Debug Bridge"
cd platform-tools

adb devices
pause

for %%X in (
    "com.android.chrome"

    "com.diotek.diodict4.EDictionary"
    "com.diotek.sec.lookup.dictionary"

    "com.facebook.services"
    "com.facebook.system"
    "com.facebook.appmanager"

    "com.google.android.apps.tachyon"
    "com.google.android.gm"
    "com.google.android.webview"

    "com.microsoft.appmanager"
    "com.microsoft.skydrive"

    "com.samsung.android.ardrawing"
    "com.samsung.android.aremoji"
    "com.samsung.android.arzone"
    "com.samsung.android.easysetup"
    "com.samsung.android.beaconmanager"
    "com.samsung.android.ststub"
    "com.samsung.android.game.gamehome"
    "com.samsung.android.livestickers"

    "com.sec.android.app.billing"
    ) do (
        adb shell pm disable-user --user 0 %%X
        )
pause

adb kill-server
cd ..\