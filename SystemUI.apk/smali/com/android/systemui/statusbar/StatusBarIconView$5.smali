.class Lcom/android/systemui/statusbar/StatusBarIconView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$runRunnable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$runRunnable:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->-set2(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$runRunnable:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->-wrap0(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method