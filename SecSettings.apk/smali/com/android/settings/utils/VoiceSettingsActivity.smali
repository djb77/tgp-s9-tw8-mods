.class public abstract Lcom/android/settings/utils/VoiceSettingsActivity;
.super Landroid/app/Activity;
.source "VoiceSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected notifyFailure(Ljava/lang/CharSequence;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    invoke-direct {v1, p1, v2}, Landroid/app/VoiceInteractor$AbortVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_13
    return-void
.end method

.method protected notifySuccess(Ljava/lang/CharSequence;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/VoiceSettingsActivity$1;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/utils/VoiceSettingsActivity$1;-><init>(Lcom/android/settings/utils/VoiceSettingsActivity;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/VoiceSettingsActivity;->onVoiceSettingInteraction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->finish()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string/jumbo v0, "VoiceSettingsActivity"

    const-string/jumbo v1, "Cannot modify settings without voice interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->finish()V

    goto :goto_16
.end method

.method protected abstract onVoiceSettingInteraction(Landroid/content/Intent;)Z
.end method
