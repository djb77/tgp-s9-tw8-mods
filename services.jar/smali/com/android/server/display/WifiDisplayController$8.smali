.class Lcom/android/server/display/WifiDisplayController$8;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;)V
    .registers 19

    sparse-switch p1, :sswitch_data_3d0

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onNotify Error,  msg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void

    :sswitch_20
    const-string/jumbo v12, "WifiDisplayController"

    const-string/jumbo v13, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1f

    :sswitch_3f
    const-string/jumbo v12, "WifiDisplayController"

    const-string/jumbo v13, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1f

    :sswitch_5e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v13, v5, 0x2

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set19(Lcom/android/server/display/WifiDisplayController;I)I

    const-string/jumbo v13, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_ff

    const-string/jumbo v12, "TCP"

    :goto_88
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "audio"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set17(Lcom/android/server/display/WifiDisplayController;I)I

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "send command: current stream vol : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get26(Lcom/android/server/display/WifiDisplayController;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "vol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get26(Lcom/android/server/display/WifiDisplayController;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f3
    const/4 v12, 0x1

    if-gt v5, v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1f

    :cond_ff
    const-string/jumbo v12, "UDP"

    goto :goto_88

    :sswitch_103
    const-string/jumbo v12, "WifiDisplayController"

    const-string/jumbo v13, "    onNotify received : NOTIFY_WEAK_NETWORK"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v13

    const v14, 0x103012b

    invoke-direct {v12, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v13, 0x1040b2d

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1f

    :sswitch_129
    :try_start_129
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "isSupportDisplayVolumeControl"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set12(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_13e
    .catch Lorg/json/JSONException; {:try_start_129 .. :try_end_13e} :catch_162

    :goto_13e
    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_SUPPORT, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get18(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :catch_162
    move-exception v2

    const-string/jumbo v12, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    :sswitch_16e
    :try_start_16e
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "minVol"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set9(Lcom/android/server/display/WifiDisplayController;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "maxVol"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set8(Lcom/android/server/display/WifiDisplayController;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "curVol"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set7(Lcom/android/server/display/WifiDisplayController;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "isMute"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_1ad
    .catch Lorg/json/JSONException; {:try_start_16e .. :try_end_1ad} :catch_250

    :goto_1ad
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "minVol"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "maxVol"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "curVol"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "isMute"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v13, 0x9

    invoke-static {v12, v13, v11}, Lcom/android/server/display/WifiDisplayController;->-wrap20(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS, mDisplayMinVolume = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDisplayMaxVolume = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDisplayCurrentVolume = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mIsDisplayVolumeMuted = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :catch_250
    move-exception v2

    const-string/jumbo v12, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ad

    :sswitch_25d
    :try_start_25d
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "renameAvailable"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set15(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_272
    .catch Lorg/json/JSONException; {:try_start_25d .. :try_end_272} :catch_274

    goto/16 :goto_1f

    :catch_274
    move-exception v2

    const-string/jumbo v12, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :sswitch_281
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "rotation"

    invoke-virtual {v3, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v3, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v12, 0x1

    if-eq v8, v12, :cond_2c0

    const/4 v12, 0x3

    if-ne v8, v12, :cond_2ce

    :cond_2c0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_1f

    :cond_2ce
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_1f

    :sswitch_2dc
    :try_start_2dc
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "UibcAvailable"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v12, "UibcVersion"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", UibcVersion = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v12, v9}, Lcom/android/server/display/WifiDisplayController;->startUIBCVirtualSoftkey(Z)V

    if-eqz v9, :cond_344

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/display/WFDUibcManager;->start()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/display/WFDUibcManager;->setSinkUIBCVersion(I)V
    :try_end_335
    .catch Lorg/json/JSONException; {:try_start_2dc .. :try_end_335} :catch_337

    goto/16 :goto_1f

    :catch_337
    move-exception v2

    const-string/jumbo v12, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_344
    :try_start_344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/display/WFDUibcManager;->stop()Z
    :try_end_34f
    .catch Lorg/json/JSONException; {:try_start_344 .. :try_end_34f} :catch_337

    goto/16 :goto_1f

    :sswitch_351
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NOTIFY_GET_PROCESS_NAME_BY_PID pid : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12, v7}, Lcom/android/server/display/WifiDisplayController;->-wrap9(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1f

    :sswitch_378
    :try_start_378
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v13, "isSupportInitiatedMirroring"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/display/WifiDisplayController;->-set13(Lcom/android/server/display/WifiDisplayController;Z)Z

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "    onNotify received : NOTIFY_SUPPORT_INITIATE_FROM_TV = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v14}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3af
    .catch Lorg/json/JSONException; {:try_start_378 .. :try_end_3af} :catch_3b1

    goto/16 :goto_1f

    :catch_3b1
    move-exception v2

    const-string/jumbo v12, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :sswitch_3be
    const-string/jumbo v12, "WifiDisplayController"

    const-string/jumbo v13, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-wrap31(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1f

    :sswitch_data_3d0
    .sparse-switch
        0x1 -> :sswitch_25d
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3f
        0x7 -> :sswitch_5e
        0x9 -> :sswitch_2dc
        0xa -> :sswitch_281
        0x1e -> :sswitch_103
        0x28 -> :sswitch_378
        0x32 -> :sswitch_3be
        0x3c -> :sswitch_129
        0x46 -> :sswitch_16e
        0x50 -> :sswitch_351
    .end sparse-switch
.end method