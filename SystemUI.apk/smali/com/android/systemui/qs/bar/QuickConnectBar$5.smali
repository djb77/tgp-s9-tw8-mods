.class Lcom/android/systemui/qs/bar/QuickConnectBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/QuickConnectBar;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$5;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$5;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/QuickConnectBar;->-set0(Lcom/android/systemui/qs/bar/QuickConnectBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method