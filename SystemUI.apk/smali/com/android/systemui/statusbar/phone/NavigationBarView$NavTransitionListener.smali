.class Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavTransitionListener"
.end annotation


# instance fields
.field private mBackTransitioning:Z

.field private mDuration:J

.field private mHomeAppearing:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mStartDelay:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0061

    if-ne v0, v1, :cond_d

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a020a

    if-ne v0, v1, :cond_c

    const/4 v0, 0x2

    if-ne p4, v0, :cond_c

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    goto :goto_c
.end method

.method public onBackAltCleared()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    if-nez v2, :cond_50

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v2

    if-nez v2, :cond_50

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(I)V

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v5, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_50
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 8

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0061

    if-ne v0, v1, :cond_d

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a020a

    if-ne v0, v1, :cond_c

    const/4 v0, 0x2

    if-ne p4, v0, :cond_c

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getStartDelay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mStartDelay:J

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mDuration:J

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_c
.end method
