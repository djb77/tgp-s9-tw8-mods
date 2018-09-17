.class public Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiSelectHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

.field private mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

.field private mcheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const-string/jumbo v2, "ConnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "asktowlan_do_not_show"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    packed-switch p2, :pswitch_data_98

    :goto_38
    return-void

    :pswitch_39
    const-string/jumbo v2, "ConnHandler"

    const-string/jumbo v3, "Selected button is Yes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "ConnHandler"

    const-string/jumbo v3, "donotshow checked. asktowlan_value : BUTTON_POSITIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "asktowlan_value"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_63
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->sendIntent()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    return-void

    :pswitch_6a
    const-string/jumbo v2, "ConnHandler"

    const-string/jumbo v3, "Selected button is No"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "ConnHandler"

    const-string/jumbo v3, "donotshow checked. asktowlan_value : BUTTON_NEGATIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "asktowlan_value"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_94
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    goto :goto_38

    :pswitch_data_98
    .packed-switch -0x2
        :pswitch_6a
        :pswitch_39
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f0a028d

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "ConnHandler"

    const-string/jumbo v4, "CMCC Always Ask Pop Up Started"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "CMCC_wifi_settings"

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "asktowlan_do_not_show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "asktowlan_value"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_6c

    const-string/jumbo v3, "ConnHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5f

    const-string/jumbo v3, "ConnHandler"

    const-string/jumbo v4, "Setted button is Yes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->sendIntent()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    return-void

    :cond_5f
    const-string/jumbo v3, "ConnHandler"

    const-string/jumbo v4, "Setted button is No"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    return-void

    :cond_6c
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d03a5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12206f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120608

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120601

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120234

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v3, 0x1080027

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "asktowlan_do_not_show"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "asktowlan_value"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_51

    const-string/jumbo v2, "ConnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_44

    const-string/jumbo v2, "ConnHandler"

    const-string/jumbo v3, "Setted button is Yes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->sendIntent()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    return-void

    :cond_44
    const-string/jumbo v2, "ConnHandler"

    const-string/jumbo v3, "Setted button is No"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    return-void

    :cond_51
    return-void
.end method

.method public sendIntent()V
    .registers 4

    const-string/jumbo v1, "ConnHandler"

    const-string/jumbo v2, "WLAN dialog will be opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSelectHandlerActivity;->finish()V

    return-void
.end method