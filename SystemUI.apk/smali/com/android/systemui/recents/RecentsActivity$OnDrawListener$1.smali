.class Lcom/android/systemui/recents/RecentsActivity$OnDrawListener$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get3(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method