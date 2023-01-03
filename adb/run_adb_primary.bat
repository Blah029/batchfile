@echo off

cd "D:\Program Files\Lab\CLI Programs\Android Debug Bridge"
cd platform-tools

adb devices
pause

for %%X in (
    "com.sec.android.app.shealth"
    "com.sec.android.autobackup"
    "com.sec.android.inputmethod"

    "com.google.android.music"
    "com.google.android.videos"

    "com.samsung.android.app.notes"
    "com.samsung.android.app.powerplanning"
    "com.samsung.android.app.routines"
    "com.samsung.android.app.settings.bixby"
    "com.samsung.android.app.sprotect"
    "com.samsung.android.bixby.agent"
    "com.samsung.android.dlp.service"
    "com.samsung.android.game.gametools"
    "com.samsung.android.smartglow"
    "com.samsung.android.visionintelligence"
    "com.samsung.android.voc"
    "com.samsung.systemui.bixby2"

    "com.opera.max.preinstall"
    "flipboard.boxer.app"
    ) do (
        adb shell pm disable-user --user 0 %%X
        )
pause

adb kill-server
cd ..\