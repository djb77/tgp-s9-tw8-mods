.class Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;
.super Ljava/lang/Object;
.source "SeslFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragment;->startPostponedEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    # invokes: Lcom/samsung/android/support/sesl/core/app/SeslFragment;->callStartTransitionListener()V
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->access$800(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    return-void
.end method