.class Lcom/samsung/android/settings/GlobalRoamingSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    :cond_30
    const-string/jumbo v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update LGT data roaming status :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    const v2, 0x7f120f8c

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    const v2, 0x7f120f8b

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_7b
.end method