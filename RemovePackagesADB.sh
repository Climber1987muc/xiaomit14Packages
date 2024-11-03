#!/bin/bash

echo "#######################################"
echo "# !!! FUER SCHAEDEN AM GERAET WIRD !!!#"
echo "# !!!!!!!!  NICHT  GEHAFFTET  !!!!!!! #"
echo "#######################################"

read -p "YES eingeben, um den HAFTUGSAUSCHLUSS ANZUERKENNEN: " input 
if [[ $input !=  "YES" ]]
then
    echo "Das Programm wurde ausssicherheitsgruenden abgebrochen!"
    exit 0
fi

adb usb &> /dev/null
ret=$?
if [[ $ret == 1 ]]
then
    echo Geraet nicht gefunden!
    exit 1
fi

if [[ $ret == 127 ]]
then
    echo "ADB wurde nicht gefunden!"
    exit 2
fi

androidbloatware="com.android.bips com.android.bookmarkprovider com.android.cellbroadcastreceiver  com.android.deskclock com.android.dreams.basic com.android.dreams.phototable com.android.egg com.android.emergency com.android.hotwordenrollment.okgoogle com.android.printspooler com.android.statementservice com.android.stk com.android.wallpaper.livepicker com.android.wallpaperbackup com.android.wallpapercropper com.android.thememanager"
for i in $androidbloatware
do
    echo $i
    adb uninstall  --user 0  $i
done

googlebloatware="com.google.android.apps.docs om.google.android.apps.photos com.google.android.apps.wellbeing com.google.android.feedback com.google.android.gms.location.history com.google.android.googlequicksearchbox com.google.android.inputmethod.latin com.google.android.marvin.talkback com.google.android.printservice.recommendation com.google.android.syncadapters.calendar com.google.android.tts  com.google.android.videos com.google.ar.lens"
for i in $googlebloatware
do
    echo $i
    adb uninstall  --user 0  $i
done

xiaomibloatware="com.mi.android.globallauncher com.mi.android.globalpersonalassistant com.mi.globalTrendNews com.mi.health com.mi.webkit.core com.mipay.wallet.id com.mipay.wallet.in com.miui.analytics com.miui.android.fashiongallery com.miui.aod com.miui.bugreport com.miui.calculator com.miui.cleanmaster com.miui.compass com.miui.fm com.miui.fmservice com.miui.hybrid com.miui.hybrid.accessory com.miui.micloudsync com.miui.mishare.connectivity com.miui.msa.global com.miui.notes com.miui.phrase com.miui.screenrecorder com.miui.smsextra com.miui.system com.miui.touchassistant com.miui.translation.kingsoft com.miui.userguide com.miui.videoplayer com.miui.weather2 com.miui.yellowpage"
for i in $xiaomibloatware
do
    echo $i
    adb uninstall  --user 0  $i
done

mibloatware="com.sohu.inputmethod.sogou.xiaomi com.xiaomi.calendar com.xiaomi.glgm com.xiaomi.joyose com.xiaomi.micloud.sdk com.xiaomi.midrop com.xiaomi.mipicks com.xiaomi.miplay_client com.xiaomi.mircs com.xiaomi.payment com.xiaomi.scanner com.miui.daemon"
for i in $mibloatware
do
    echo $i
    adb uninstall  --user 0  $i
done

bloatware="cn.wps.xiaomi.abroad.lite  com.autonavi.minimap com.caf.fmradio com.duokan.phone.remotecontroller com.miui.audiomonitor org.simalliance.openmobileapi.service com.duokan.phone.remotecontroller.peel.plugin in.amazon.mShop.android.shopping com.bsp.catchlog com.netflix.partner.activation com.netflix.mediaclient com.opera.app.news  com.opera.branding com.opera.branding.news com.opera.mini.native com.opera.preinstall com.tencent.soter.soterserver com.facebook.katana com.facebook.appmanager com.facebook.services  com.facebook.system"
for i in $bloatware
do
    echo $i
    adb uninstall  --user 0  $i
done
echo "!!!!!!!!!! Wennn was nicht geklappt hat, kann man das als hilfe verwerden: https://www.techbone.de/xiaomi/recovery-mode !!!!!!!!!!!!!!!"
echo -e "Overlays werden nicht deinstalliert! "
exit 0
overlays="com.miui.systemui.carriers.overlay com.android.phone.overlay.miui android.miui.overlay com.miui.miwallpaper.overlay.customize com.android.cellbroadcastreceiver.overlay.common com.android.wifi.mainline.resources.overlay com.android.systemui.overlay.miui  com.miui.core com.android.carrierconfig.overlay.miui com.miui.systemui.devices.overlay com.xiaomi.phone.overlay com.xiaomi.account com.android.inputsettings.overlay.miui com.miui.wallpaper.overlay com.miui.cleaner com.miui.wallpaper.overlay.customize com.google.android.cellbroadcastservice.overlay.miui com.google.android.overlay.gmsconfig.comms com.android.overlay.gmscontactprovider com.miui.settings.rro.device.systemui.overlay com.android.networkstack.overlay com.xiaomi.bluetooth.rro.device.config.overlay  android.miui.overlay.telephony com.miui.safetycenter.res.overlay com.miui.phone.carriers.overlay.vodafone com.google.android.overlay.gmsconfig.asi com.android.overlay.circletosearch com.miui.safetycenter.config.overlay com.android.providers.telephony.overlay.miui com.miui.permissioncontroller.overlay com.google.android.overlay.modules.documentsui com.miui.settings.rro.device.hide.statusbar.overlay com.google.android.overlay.modules.permissioncontroller com.android.server.telecom.overlay.miui com.android.systemui.navigation.bar.overlay com.android.settings.resource.overlay com.mediatek.frameworkresoverlay com.android.networkstack.overlay.miui com.android.managedprovisioning.overlay com.android.wifi.system.resources.overlay com.google.android.overlay.gmsconfig.geotz com.miui.systemui.overlay.devices.android com.android.settings.overlay.miui com.google.android.overlay.gmsconfig.personalsafety com.android.overlay.gmssettings com.android.thememanager.customizethemeconfig.config.overlay com.google.android.networkstack.overlay com.miui.settings.rro.device.type.overlay com.mediatek.cellbroadcastuiresoverlay com.google.android.overlay.modules.modulemetadata.forframework com.android.wifi.resources.overlay com.miui.phone.carriers.overlay.h3g com.google.android.overlay.gmsconfig.searchselector com.android.overlay.systemui com.android.camera.overlay com.xiaomi.phone.overlay com.android.networkstack.inprocess.overlay com.android.overlay.gmstelephony android.aosp.overlay.telephony com.android.phone.cust.overlay.miui com.android.networkstack.tethering.overlay com.google.android.networkstack.tethering.overlay com.android.wifi.system.mainline.resources.overlay com.android.se.resources.overlay com.miui.settings.rro.device.config.overlay com.miui.miwallpaper.config.overlay com.android.overlay.gmssettingprovider com.google.android.overlay.modules.ext.services com.android.stk.overlay.miui com.android.systemui.gesture.line.overlay android.aosp.overlay com.android.bluetooth.overlay com.android.overlay.gmstelecomm com.google.android.cellbroadcastreceiver.overlay.miui com.google.android.overlay.modules.captiveportallogin.forframework com.miui.system.overlay com.android.providers.settings.overlay com.google.android.overlay.gmsconfig.gsa com.android.networkstack.tethering.inprocess.overlay com.google.android.overlay.gmsconfig.common com.miui.miwallpaper.overlay com.android.systemui.overlay.miui com.google.android.overlay.devicelockcontroller com.google.android.cellbroadcastservice.overlay.miui com.android.provision.resource.overlay"
for i in $overlays
do
    echo $i
    adb uninstall  --user 0  $i
done
