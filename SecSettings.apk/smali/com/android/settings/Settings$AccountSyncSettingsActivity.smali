.class public Lcom/android/settings/Settings$AccountSyncSettingsActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSyncSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    :cond_7
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_c
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/Settings$AccountSyncSettingsActivity;->onBackPressed()V

    const/4 v1, 0x1

    return v1

    :pswitch_data_1e
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
