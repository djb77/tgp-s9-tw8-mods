.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "KeyguardServiceBoxViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsShowingOwnerInfoByAnim:Z

.field private mLastTouchTime:J

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mSwipeLocked:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mIsShowingOwnerInfoByAnim:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mIsShowingOwnerInfoByAnim:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isRtl()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mIsShowingOwnerInfoByAnim:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mLastTouchTime:J

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private isRtl()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrolledByUser()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mLastTouchTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    const/4 v2, 0x1

    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 14

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-ne v8, v9, :cond_3b

    const/4 v7, 0x1

    :goto_e
    if-eqz v7, :cond_47

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_40

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v1, :cond_3d

    invoke-virtual {p0, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v5, v2, :cond_38

    move v5, v2

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_3b
    const/4 v7, 0x0

    goto :goto_e

    :cond_3d
    if-eqz v5, :cond_40

    move v3, v5

    :cond_40
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    :cond_47
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mLastTouchTime:J

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-void
.end method

.method public setSwipeLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    return-void
.end method