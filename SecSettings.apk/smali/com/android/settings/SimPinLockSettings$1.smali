.class Lcom/android/settings/SimPinLockSettings$1;
.super Landroid/os/Handler;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPinLockSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings$1;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const-wide/16 v4, 0x12c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/settings/SimPinLockSettings$1;->this$0:Lcom/android/settings/SimPinLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_24

    const/4 v2, 0x1

    :goto_d
    invoke-static {v3, v2}, Lcom/android/settings/SimPinLockSettings;->-set0(Lcom/android/settings/SimPinLockSettings;Z)Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_38

    const-string/jumbo v2, "SimPinLockSettings"

    const-string/jumbo v3, "Unexpected msg"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void

    :cond_24
    const/4 v2, 0x0

    goto :goto_d

    :pswitch_26
    new-instance v2, Lcom/android/settings/SimPinLockSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/SimPinLockSettings$1$1;-><init>(Lcom/android/settings/SimPinLockSettings$1;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    :pswitch_2f
    new-instance v2, Lcom/android/settings/SimPinLockSettings$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SimPinLockSettings$1$2;-><init>(Lcom/android/settings/SimPinLockSettings$1;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    :pswitch_data_38
    .packed-switch 0x64
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method