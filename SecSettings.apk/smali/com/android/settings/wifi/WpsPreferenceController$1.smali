.class Lcom/android/settings/wifi/WpsPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsPreferenceController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WpsPreferenceController$1;->this$0:Lcom/android/settings/wifi/WpsPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController$1;->this$0:Lcom/android/settings/wifi/WpsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsPreferenceController;->-wrap0(Lcom/android/settings/wifi/WpsPreferenceController;)V

    return-void
.end method