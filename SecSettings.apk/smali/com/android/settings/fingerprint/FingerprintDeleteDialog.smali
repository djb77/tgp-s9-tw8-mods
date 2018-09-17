.class public Lcom/android/settings/fingerprint/FingerprintDeleteDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintDeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mButton:I

.field mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

.field private mMsg:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "FingerprintDeleteDialog created illegally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V
    .registers 6

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    iput-object p4, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    return-void
.end method


# virtual methods
.method public cancelDeleteDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    packed-switch p2, :pswitch_data_18

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_3

    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onNegativeClick()V

    goto :goto_3

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-nez v0, :cond_35

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerprintDeleteDialog"

    const v2, 0x7f12037f

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onCreateDialog can\'t make dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onCreateDialog illegalCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->dismiss()V

    return-object v3

    :cond_35
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3f

    const v0, 0x7f120609

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    :cond_3f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mButton:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6b
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 3

    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onResumeDialog()V

    :cond_15
    return-void
.end method