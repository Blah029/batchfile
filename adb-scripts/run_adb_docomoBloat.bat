@echo off

cd "D:\Program Files\CLI Programs\Android Debug Bridge"
cd platform-tools

adb devices
pause

for %%X in (
	"com.android.contacts"
	"com.android.dialer"

	"com.felicanetworks.mfm.main"
	"com.felicanetworks.mfs"
	"com.felicanetworks.mfw.a.main"
	"com.felicanetworks.mfw.a.boot"

	"com.nextbit.app"

	"com.nttdocomo.android.accountauthenticator"
	"com.nttdocomo.android.anmane2"
	"com.nttdocomo.android.anshinsecurity"
	"com.nttdocomo.android.apnsw"
	"com.nttdocomo.android.applicationmanager"
	"com.nttdocomo.android.applicationmanagerrecommendshortcut"
	"com.nttdocomo.android.applicationmanagersub"
	"com.nttdocomo.android.areamail"
	"com.nttdocomo.android.atf"
	"com.nttdocomo.android.bugreport"
	"com.nttdocomo.android.cloudset"
	"com.nttdocomo.android.cloudstorageservice"
	"com.nttdocomo.android.databackup"
	"com.nttdocomo.android.devicehelp"
	"com.nttdocomo.android.dhome"
	"com.nttdocomo.android.dmenu2"
	"com.nttdocomo.android.docomoset"
	"com.nttdocomo.android.dpoint"
	"com.nttdocomo.android.felicaremotelock"
	"com.nttdocomo.android.homezozo"
	"com.nttdocomo.android.idmanager"
	"com.nttdocomo.android.initialization"
	"com.nttdocomo.android.mascot"
	"com.nttdocomo.android.msg"
	"com.nttdocomo.android.mydocomo"
	"com.nttdocomo.android.mymagazine"
	"com.nttdocomo.android.networkservice"
	"com.nttdocomo.android.offhostcontrol"
	"com.nttdocomo.android.pf.dcmippushaggregator"
	"com.nttdocomo.android.pf.dcmwappush"
	"com.nttdocomo.android.phonemotion"
	"com.nttdocomo.android.photocollection"
	"com.nttdocomo.android.remotelock"
	"com.nttdocomo.android.schedulememo"
	"com.nttdocomo.android.screenlockservice"
	"com.nttdocomo.android.sdcardbackup"
	"com.nttdocomo.android.store"
	"com.nttdocomo.android.voiceeditor"
	"com.nttdocomo.android.voicetranslation"
	"com.nttdocomo.android.wipe"
	"com.nttdocomo.dcard"
	"com.nttdocomo.keitai.payment"
	"com.nttdocomo.osaifu.tsmproxy"

	"com.rsupport.rs.activity.ntt"
	"com.sec.android.japan.manual.sc51b"

	"jp.co.nttdocomo.anshinmode"
	"jp.co.nttdocomo.bridgelauncher"
	"jp.co.nttdocomo.carriermail"
	"jp.co.nttdocomo.lcsapp"
	"jp.co.nttdocomo.saigaiban"

	"jp.co.mcdonalds.android"
	"jp.co.disney.apps.gm.disneydx"
	"jp.co.fsi.fs1seg"
	"jp.co.nttdocomo.lcsappsub"
	"jp.co.omronsoft.android.decoemojimanager_docomo"
	"jp.co.omronsoft.mushroom.commonphrase"
	"jp.dmapnavi.navi02"
	"jp.id_credit_sp.android"
    ) do (
        adb shell pm disable-user --user 0 %%X
        )
pause

adb kill-server
cd ..\