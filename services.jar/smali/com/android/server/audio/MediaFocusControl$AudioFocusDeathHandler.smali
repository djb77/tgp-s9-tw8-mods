.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v3, "AudioFocus audio focus client died"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get4(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap1(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_a4

    :cond_1d
    :goto_1d
    monitor-exit v2

    return-void

    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v1

    if-eqz v1, :cond_a7

    const/4 v0, 0x0

    :goto_2c
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set0(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap2(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_59
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set0(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;

    :goto_6d
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    :try_end_a2
    .catchall {:try_start_1f .. :try_end_a2} :catchall_a4

    goto/16 :goto_1d

    :catchall_a4
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_a7
    :try_start_a7
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap2(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_a4

    goto :goto_6d
.end method