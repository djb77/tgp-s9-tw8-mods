.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeystoreReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "KeystoreReceiver onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "KeystoreReceiver ACTION_PACKAGE_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_56
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v3, v1, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap1(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v3, v1, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    :cond_68
    return-void

    :cond_69
    const/4 v0, 0x0

    goto :goto_56
.end method