.class public Lcom/samsung/android/settings/GlobalLteRoaming;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GlobalLteRoaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GlobalLteRoaming$1;,
        Lcom/samsung/android/settings/GlobalLteRoaming$2;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/GlobalLteRoaming;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GlobalLteRoaming;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/GlobalLteRoaming;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getLteRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/GlobalLteRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->showChargeDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GlobalLteRoaming;->toggleLteRoaming(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/GlobalLteRoaming$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalLteRoaming$1;-><init>(Lcom/samsung/android/settings/GlobalLteRoaming;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/GlobalLteRoaming$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GlobalLteRoaming$2;-><init>(Lcom/samsung/android/settings/GlobalLteRoaming;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getLteRoamingState()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lte_roaming_mode_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private showChargeDialog()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121698

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const-string/jumbo v2, "GlobalLteRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showChargeDialog: mLteRoamingOnOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f121699

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/GlobalLteRoaming$4;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/GlobalLteRoaming$4;-><init>(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V

    const v3, 0x7f1208a6

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/GlobalLteRoaming$5;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/GlobalLteRoaming$5;-><init>(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V

    const v3, 0x7f12055d

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/GlobalLteRoaming$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/GlobalLteRoaming$6;-><init>(Lcom/samsung/android/settings/GlobalLteRoaming;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private toggleLteRoaming(Z)V
    .registers 6

    const-string/jumbo v1, "GlobalLteRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleLteRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "kr.co.uplus.SET_LTE_ROAMING_IMSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lte_roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->finish()V

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    const v0, 0x7f150071

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalLteRoaming;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "button_lte_roaming"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalLteRoaming;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/GlobalLteRoaming$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/GlobalLteRoaming$3;-><init>(Lcom/samsung/android/settings/GlobalLteRoaming;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v0, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_roaming_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/samsung/android/settings/GlobalLteRoaming;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalLteRoaming;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalLteRoaming;->getLteRoamingState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_45
.end method