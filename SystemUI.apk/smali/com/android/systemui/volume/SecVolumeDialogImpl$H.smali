.class final Lcom/android/systemui/volume/SecVolumeDialogImpl$H;
.super Landroid/os/Handler;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_48

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap20(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    goto :goto_6

    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    goto :goto_6

    :pswitch_17
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap15(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_6

    :pswitch_21
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap15(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_6

    :pswitch_28
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_31

    const/4 v0, 0x1

    :cond_31
    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap19(Lcom/android/systemui/volume/SecVolumeDialogImpl;IZ)V

    goto :goto_6

    :pswitch_35
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    goto :goto_6

    :pswitch_3b
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get49(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto :goto_6

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_17
        :pswitch_21
        :pswitch_28
        :pswitch_35
        :pswitch_3b
    .end packed-switch
.end method