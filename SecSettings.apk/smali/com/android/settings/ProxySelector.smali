.class public Lcom/android/settings/ProxySelector;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ProxySelector$1;,
        Lcom/android/settings/ProxySelector$2;,
        Lcom/android/settings/ProxySelector$3;,
        Lcom/android/settings/ProxySelector$4;
    }
.end annotation


# instance fields
.field mClearButton:Landroid/widget/Button;

.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultButton:Landroid/widget/Button;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field mExclusionListField:Landroid/widget/EditText;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$1;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$2;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$3;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$4;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a03ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0641

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a02ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showDialog(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ProxySelector"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    const-string/jumbo v0, "ProxySelector"

    const-string/jumbo v1, "Unknown proxy settings error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_12
    const/4 v0, 0x0

    return v0

    :pswitch_14
    const v0, 0x7f121571

    return v0

    :pswitch_18
    const v0, 0x7f121574

    return v0

    :pswitch_1c
    const v0, 0x7f121572

    return v0

    :pswitch_20
    const v0, 0x7f121575

    return v0

    :pswitch_24
    const v0, 0x7f121573

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .registers 3

    const/16 v0, 0x23e

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x52

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    :goto_17
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_36
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const/4 v6, 0x0

    if-nez p1, :cond_59

    iget-object v4, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v3, v0}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f12156f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f121570

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_59
    return-object v6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f0d024f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/ProxySelector;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->populateFields()V

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method

.method populateFields()V
    .registers 13

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v4, ""

    const/4 v6, -0x1

    const-string/jumbo v3, ""

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    if-eqz v8, :cond_2a

    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    :cond_2a
    if-nez v4, :cond_2f

    const-string/jumbo v4, ""

    :cond_2f
    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, -0x1

    if-ne v6, v10, :cond_6b

    const-string/jumbo v7, ""

    :goto_3a
    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v10, "button-label"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5a

    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5a
    const-string/jumbo v10, "title"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6a

    invoke-virtual {v0, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6a
    return-void

    :cond_6b
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3a
.end method

.method saveToDb()Z
    .registers 11

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v3, v6, v2}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_36

    invoke-direct {p0, v9}, Lcom/android/settings/ProxySelector;->showDialog(I)V

    return v9

    :cond_36
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_40

    :try_start_3c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3f} :catch_57

    move-result v5

    :cond_40
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v3, v5, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    const/4 v8, 0x1

    return v8

    :catch_57
    move-exception v1

    return v9
.end method