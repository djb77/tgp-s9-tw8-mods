.class public Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference$1;-><init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method