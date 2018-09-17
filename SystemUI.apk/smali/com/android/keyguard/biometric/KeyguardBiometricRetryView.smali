.class public Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;
.super Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.source "KeyguardBiometricRetryView.java"


# instance fields
.field private mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field private mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Lcom/android/systemui/widget/SystemUIImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardBiometricRetryIcon"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a020f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4c
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_73
    :goto_73
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconDrawable(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconVisibility()V

    return-void

    :cond_7b
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120541

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_42

    :cond_98
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120507

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_42

    :cond_b5
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12052b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_73

    :cond_d2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120505

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_73
.end method

.method protected updateIconDrawable(I)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_7e

    :cond_5
    :pswitch_5
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_cancel"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_cancel_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_22
    :goto_22
    return-void

    :pswitch_23
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v2, :cond_41

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_retry_pressed"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_retry_pressed_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_22

    :cond_41
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_cancel_pressed"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_cancel_pressed_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_22

    :cond_5f
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_retry"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "ic_biometric_retry_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_22

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_5
        :pswitch_23
    .end packed-switch
.end method

.method protected updateIconVisibility()V
    .registers 6

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-eq v0, v4, :cond_13

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    :cond_13
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconDrawable(I)V

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v4, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :goto_20
    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_20

    :cond_2f
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    :cond_38
    return-void
.end method