.class public Lcom/android/systemui/statusbar/policy/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;


# instance fields
.field private final mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperatorLogoIconListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_fc

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_23

    move v4, v5

    :goto_1f
    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;->setEmergencyCallsOnly(Z)V

    goto :goto_e

    :cond_23
    move v4, v6

    goto :goto_1f

    :pswitch_25
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    goto :goto_2b

    :pswitch_3f
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5a

    move v4, v5

    :goto_56
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(Z)V

    goto :goto_45

    :cond_5a
    move v4, v6

    goto :goto_56

    :pswitch_5c
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_62

    :pswitch_76
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_7c

    :pswitch_90
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_ab

    move v4, v5

    :goto_a7
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataEnabled(Z)V

    goto :goto_96

    :cond_ab
    move v4, v6

    goto :goto_a7

    :pswitch_ad
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_bc

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_bc
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :pswitch_c7
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_d6

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_d6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :pswitch_e1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_f0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_f0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_7

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_8
        :pswitch_25
        :pswitch_3f
        :pswitch_5c
        :pswitch_76
        :pswitch_90
        :pswitch_ad
        :pswitch_c7
        :pswitch_e1
    .end packed-switch
.end method

.method public setBtTetherVisible(Z)V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_c
    move v0, v1

    goto :goto_4
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .registers 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler$12;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_d
    move v0, v1

    goto :goto_4
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;Z)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    const/4 v0, 0x1

    :goto_4
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_e
    move v0, v1

    goto :goto_4
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_d
    move v0, v1

    goto :goto_4
.end method

.method public setMPTCPIndicators(ZIII)V
    .registers 11

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_d
    move v0, v1

    goto :goto_4
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 29

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 25

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNWBoosterIndicators(ZZIII)V
    .registers 13

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZZIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNoSims(Z)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_d
    move v0, v1

    goto :goto_4
.end method

.method public setOperatorLogoIconVisible(Z)V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$13;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler$13;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRssiTypeIcon(II)V
    .registers 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler$10;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSimIcon(ZI)V
    .registers 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSlotFocusVisible(ZI)V
    .registers 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSlotFocusVisible(ZII)V
    .registers 5

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CallbackHandler$11;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;Z)V
    .registers 19

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .registers 17

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method