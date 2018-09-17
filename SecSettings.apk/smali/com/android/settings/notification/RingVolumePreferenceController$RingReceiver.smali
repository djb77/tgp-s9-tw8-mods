.class Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/notification/RingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->-get1(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RingVolumePreferenceController$H;->sendEmptyMessage(I)Z

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->-get1(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RingVolumePreferenceController$H;->sendEmptyMessage(I)Z

    goto :goto_17
.end method

.method public register(Z)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_24

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->-get0(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_21
    iput-boolean p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->mRegistered:Z

    return-void

    :cond_24
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->-get0(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_21
.end method