.class public Lcom/android/systemui/servicebox/utils/SecTransitionOption;
.super Ljava/lang/Object;
.source "SecTransitionOption.java"


# instance fields
.field private mClipFace:I

.field private mCustomInterpolator:Landroid/animation/TimeInterpolator;

.field private mDuration:I

.field private mMovePivot:I

.field private mScalePivot:I

.field private mSourceViewCustomAnimator:Landroid/animation/Animator;

.field private mStartDelay:I

.field private mTargetViewCustomAnimator:Landroid/animation/Animator;

.field private mTransitionType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->copyFrom(Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public static final combineOptions(Lcom/android/systemui/servicebox/utils/SecTransitionOption;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 5

    const/4 v2, -0x1

    new-instance v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>(Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    iget v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    if-eq v1, v2, :cond_e

    iget v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    :cond_e
    iget v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    if-eq v1, v2, :cond_16

    iget v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    :cond_16
    iget v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iget v2, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iget v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iget v2, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iget v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iget v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    iget v2, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    iget-object v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_37

    iget-object v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    :cond_37
    iget-object v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3f

    iget-object v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iput-object v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    :cond_3f
    iget-object v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_47

    iget-object v1, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    iput-object v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    :cond_47
    return-object v0
.end method

.method public static final generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 1

    const/16 v0, 0x24

    invoke-static {v0, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateCompositeOption(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 4

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateEmptyOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setPivot(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    return-object v0
.end method

.method public static final generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDefaultOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    if-eqz p0, :cond_b

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setMovePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_b
    return-object v0
.end method

.method private static final generateEmptyOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    new-instance v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v1, 0x14d

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    return-object v0
.end method

.method public static final generateMoveOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateMoveOption(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMoveOption(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateEmptyOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setMovePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    return-object v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    iget v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iget v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iget v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iget v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iget v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    iget-object v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iget-object v0, p1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public getClipFace()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    return v0
.end method

.method public getCustomInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    return v0
.end method

.method public getMovePivot()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    return v0
.end method

.method public getScalePivot()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return v0
.end method

.method public getSourceViewCustomAnimator()Landroid/animation/Animator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getStartDelay()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mStartDelay:I

    return v0
.end method

.method public getTargetViewCustomAnimator()Landroid/animation/Animator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getTransitionType()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    return v0
.end method

.method public hasCustomInterpolator()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSourceViewCustomAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasTargetViewCustomAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFadeEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isMoveEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isScaleEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public needToTransition()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public setClipFace(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mClipFace:I

    return-object p0
.end method

.method public setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mDuration:I

    return-object p0
.end method

.method public setMovePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    return-object p0
.end method

.method public setPivot(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 3

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput p2, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return-object p0
.end method

.method public setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return-object p0
.end method

.method public setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->mTransitionType:I

    return-object p0
.end method
