.class Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxViewPager.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isClockPage(I)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_c

    return v4

    :cond_c
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "servicebox_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_25
    const/4 v3, 0x1

    return v3

    :cond_27
    return v4
.end method

.method private playOwnerInfoAnimation(IF)V
    .registers 8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getOwnerInfo()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    cmpl-float v1, p2, v3

    if-eqz v1, :cond_21

    cmpl-float v1, p2, v4

    if-nez v1, :cond_61

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->isClockPage(I)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-set0(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;Z)Z

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "playOwnerInfoAnimation() show ownerinfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isShowServiceBox()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_59
    :goto_59
    return-void

    :cond_5a
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_59

    :cond_61
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-set0(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;Z)Z

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "playOwnerInfoAnimation() hide ownerinfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isShowServiceBox()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_59

    :cond_94
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_59
.end method

.method private updateClockPositionFraction(IF)V
    .registers 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    if-eqz p1, :cond_14

    if-ne p1, v1, :cond_35

    :cond_14
    move v0, p2

    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2b

    sub-float v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_2b
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->updateClockPageLocation(F)V

    :cond_34
    return-void

    :cond_35
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_15

    sub-float v0, v3, p2

    goto :goto_15
.end method


# virtual methods
.method protected isFirstPageLocated(IF)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-wrap0(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-ne p1, v1, :cond_19

    cmpl-float v0, p2, v2

    if-nez v0, :cond_19

    return v1

    :cond_12
    if-nez p1, :cond_19

    cmpl-float v0, p2, v2

    if-nez v0, :cond_19

    return v1

    :cond_19
    return v3
.end method

.method protected isLastPageLocated(IF)Z
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-wrap0(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-ne p1, v0, :cond_26

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_26

    return v2

    :cond_1e
    if-ne p1, v0, :cond_26

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isScrolledByUser()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->hideArrowAnimation()V

    :cond_2c
    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    if-ne v0, v1, :cond_7e

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_7e

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->isFirstPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_66

    iput v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageScrolled() move to last page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->playOwnerInfoAnimation(IF)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->updateClockPositionFraction(IF)V

    return-void

    :cond_66
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->isLastPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_5f

    iput v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageScrolled() move to first page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_7e
    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    if-nez v0, :cond_5f

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_5f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_5f

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    goto :goto_5f
.end method

.method public onPageSelected(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->onPageSelected(Ljava/lang/String;)V

    :cond_25
    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSelected() packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
