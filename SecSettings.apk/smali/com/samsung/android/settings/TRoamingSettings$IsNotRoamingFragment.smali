.class public Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNotRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/TRoamingSettings;)V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "DialogIsNotRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a56

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121353

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;)V

    const v2, 0x7f1208a6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
