.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

.field final synthetic val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted()V

    return-void
.end method