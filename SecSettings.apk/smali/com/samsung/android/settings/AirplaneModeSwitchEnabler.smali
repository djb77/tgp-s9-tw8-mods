.class public Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;,
        Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;,
        Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;
    }
.end annotation


# static fields
.field private static final selectionArgs:[Ljava/lang/String;


# instance fields
.field private isAirplaneModeAllowed:I

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCheck:Landroid/widget/CheckBox;

.field private mCheckECM:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnDisplay:Z

.field private mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "false"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->setupSwitchBar()V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 11

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-boolean v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_19

    const-string/jumbo v3, "AirplaneModeSwitchEnabler"

    const-string/jumbo v4, "onAirplaneModeChanged : Cannot update checked status because current Fragment is not a Airplane mode settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v5, "isAirplaneModeAllowed"

    sget-object v6, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_54

    iget v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v3, v9, :cond_71

    iget v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v3, v7, :cond_71

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_62
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    :cond_70
    :goto_70
    return-void

    :cond_71
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_54

    :cond_7c
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_102

    const/4 v0, 0x1

    :goto_84
    const-string/jumbo v3, "AirplaneModeSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "AirplaneModeSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_104

    const/4 v1, 0x1

    :goto_cc
    if-ne v0, v1, :cond_70

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_e4

    iget v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v3, v9, :cond_106

    iget v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v3, v7, :cond_106

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_e4
    :goto_e4
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_f2

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_f2
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    goto/16 :goto_70

    :cond_102
    const/4 v0, 0x0

    goto :goto_84

    :cond_104
    const/4 v1, 0x0

    goto :goto_cc

    :cond_106
    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_e4
.end method

.method private setAirplaneModeOn(Z)V
    .registers 9

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz p1, :cond_9b

    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_31
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_a6

    const/4 v1, 0x1

    :goto_46
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_52
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5b
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    :cond_64
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    if-eqz p1, :cond_74

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "AIRP"

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_74
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0362

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz p1, :cond_93

    move v2, v3

    :cond_93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_9b
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_a6
    move v1, v2

    goto :goto_46
.end method


# virtual methods
.method public changeAirplaneMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_b

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    :cond_b
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p2, :cond_9

    return-void

    :cond_9
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    if-eqz v1, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    move v0, p2

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_1a

    :cond_2d
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_1a
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 9

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p2, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v3, "isAirplaneModeAllowed"

    sget-object v4, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_33

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_32
    return-void

    :cond_33
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    if-eqz v1, :cond_45

    :goto_44
    return-void

    :cond_45
    move v0, p2

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_44

    :cond_57
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_44
.end method

.method public pause()V
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_d

    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_38

    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/ToggleImageView;->setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_37
    return-void

    :catch_38
    move-exception v0

    const-string/jumbo v1, "AirplaneModeSwitchEnabler"

    const-string/jumbo v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public resume()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v3, "isAirplaneModeAllowed"

    sget-object v4, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_88

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v1, v5, :cond_88

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_2b
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_30
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_49
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V

    :cond_64
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    :cond_6d
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_87

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_87
    return-void

    :cond_88
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2b
.end method

.method public setupSwitchBar()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method