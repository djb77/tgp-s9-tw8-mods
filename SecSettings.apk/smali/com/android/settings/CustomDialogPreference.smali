.class public Lcom/android/settings/CustomDialogPreference;
.super Landroid/support/v7/preference/SecDialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CustomDialogPreference;Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/CustomDialogPreference;->setFragment(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecDialogPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/SecDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SecDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setFragment(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CustomDialogPreference;->mFragment:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/CustomDialogPreference;->mFragment:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/settings/CustomDialogPreference;->mFragment:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 2

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    return-void
.end method
