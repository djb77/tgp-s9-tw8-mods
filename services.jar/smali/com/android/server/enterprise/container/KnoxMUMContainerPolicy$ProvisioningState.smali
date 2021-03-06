.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningState"
.end annotation


# static fields
.field static final PACKAGE_MANAGED_PROVISIONING:Ljava/lang/String; = "com.android.managedprovisioning"


# instance fields
.field adminPackageName:Ljava/lang/String;

.field containerId:I

.field creatorUid:I

.field isCLType:Z

.field pidKnox:I

.field pidProvision:I

.field pwdRstToken:Ljava/lang/String;

.field requestId:I

.field state:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    iput-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isCLType:Z

    iput-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method

.method private notifyAdminCreationStatus(Ljava/lang/String;I)V
    .registers 16

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.knox.container.creation.status"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_15

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    const-string/jumbo v9, "code"

    invoke-virtual {v6, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "requestId"

    iget v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "admin_uid"

    iget v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v10

    const-string/jumbo v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v9, v6, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v9, v6, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-lez p2, :cond_ef

    move v0, p2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "enterprise.container.created.nonactive"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "containerid"

    invoke-virtual {v2, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "admin_uid"

    iget v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v9, v2, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v9, v2, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "enterprise.container.setup.success"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "containerid"

    invoke-virtual {v8, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_b6
    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get14(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_bd
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get13()Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v9

    if-eqz v9, :cond_ed

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "create callback found, updating callback.."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x3ea

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    if-lez v9, :cond_159

    const/16 v7, 0x3e9

    const-string/jumbo v9, "containerid"

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_e2
    .catchall {:try_start_bd .. :try_end_e2} :catchall_172

    :goto_e2
    :try_start_e2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get13()Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v9

    invoke-interface {v9, v7, v4}, Lcom/samsung/android/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e9} :catch_17e
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_172

    :goto_e9
    const/4 v9, 0x0

    :try_start_ea
    invoke-static {v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set4(Lcom/samsung/android/knox/IEnterpriseContainerCallback;)Lcom/samsung/android/knox/IEnterpriseContainerCallback;
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_172

    :cond_ed
    monitor-exit v10

    return-void

    :cond_ef
    const/16 v9, -0x3f9

    if-ne p2, v9, :cond_12d

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "enterprise.container.cancelled"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "containerid"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "requestid"

    iget v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v9, v1, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v9, v1, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_b6

    :cond_12d
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "enterprise.container.setup.failure"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v9, v3, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v9, v3, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_b6

    :cond_159
    :try_start_159
    iget v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    const/16 v11, -0x3f9

    if-ne v9, v11, :cond_175

    const/16 v7, 0x3f8

    const-string/jumbo v9, "containerid"

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "requestid"

    iget v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_170
    .catchall {:try_start_159 .. :try_end_170} :catchall_172

    goto/16 :goto_e2

    :catchall_172
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_175
    :try_start_175
    const-string/jumbo v9, "containerid"

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_e2

    :catch_17e
    move-exception v5

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catchall {:try_start_175 .. :try_end_19e} :catchall_172

    goto/16 :goto_e9
.end method


# virtual methods
.method getProcessId(Ljava/lang/String;)I
    .registers 3

    const-string/jumbo v0, "com.android.managedprovisioning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    return v0

    :cond_c
    const-string/jumbo v0, "com.samsung.android.knox.containercore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    return v0

    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method getState()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isBBCContainerProvisioning()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isBBCContainerProvisioning(): type object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    const-string/jumbo v1, "knox-b2b-bbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    return v2
.end method

.method isBasicContainerProvisioning()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isBasicContainerProvisioning(): type object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    const-string/jumbo v0, "knox-po-basic"

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    return v2
.end method

.method isDeviceOwnerProvisioning()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isDeviceOwnerProvisioning(): type object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    const-string/jumbo v0, "knox-do-basic"

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    return v2
.end method

.method isProvisioingKnoxPremium()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    const-string/jumbo v1, "knox-po"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    const-string/jumbo v1, "knox-do"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method notifyAdminCreationStatus(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    array-length v3, v0

    :goto_13
    if-ge v2, v3, :cond_20

    aget-object v1, v0, v2

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->notifyAdminCreationStatus(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->notifyAdminCreationStatus(Ljava/lang/String;I)V

    :cond_20
    return-void
.end method

.method setState(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method start(Landroid/os/Bundle;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Provisioning started... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    const-string/jumbo v0, "requestId"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    const-string/jumbo v0, "pidProvision"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    const-string/jumbo v0, "adminPackageName"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    const-string/jumbo v0, "isCLType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isCLType:Z

    const-string/jumbo v0, "pwdRstToken"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    const-string/jumbo v0, "creatorUid"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    if-nez v0, :cond_70

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tyep not specified, provisioning fails"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_70
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    if-nez v0, :cond_7f

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "admin not specified, provisioning fails"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7f
    const/4 v0, 0x1

    return v0
.end method

.method startProvisioningObserver()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {v3, v4, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)V

    invoke-static {v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set2(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    :cond_16
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Process kill observer registered."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_2d} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_2f

    const/4 v2, 0x1

    return v2

    :catch_2f
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException :("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_50
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException :("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_c
    const-string/jumbo v1, "state"

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "requestId"

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "adminPackageName"

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "creatorUid"

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "containerId"

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pidProvision"

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pidKnox"

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isCLType"

    iget-boolean v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isCLType:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "pwdRstToken"

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5e

    monitor-exit v2

    return-object v0

    :catchall_5e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10

    if-nez p1, :cond_b

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "null"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v4

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    const-string/jumbo v4, "%s:%s "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_53
    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method update(Landroid/os/Bundle;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ProvisioningState.update():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ProvisioningState.update(): appying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_4b
    const-string/jumbo v1, "state"

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_83

    move-result v1

    packed-switch v1, :pswitch_data_140

    :cond_56
    :goto_56
    :pswitch_56
    monitor-exit v4

    const/4 v1, 0x1

    return v1

    :pswitch_59
    const/4 v1, 0x2

    :try_start_5a
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "ManagedProvisioning service started"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->startProvisioningObserver()Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "failed to start provisioning"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_83

    monitor-exit v4

    return v6

    :cond_7f
    :try_start_7f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_56

    :catchall_83
    move-exception v1

    monitor-exit v4

    throw v1

    :pswitch_86
    :try_start_86
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "KnoxCore extension service started"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    const-string/jumbo v1, "containerId"

    const/16 v5, -0x3f6

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    const-string/jumbo v1, "pidKnox"

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    if-gez v1, :cond_b8

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "container id is not provided"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_86 .. :try_end_b6} :catchall_83

    monitor-exit v4

    return v6

    :cond_b8
    :try_start_b8
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    if-nez v1, :cond_56

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e2

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    const-string/jumbo v1, "creatorUid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ee

    const-string/jumbo v1, "creatorUid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    goto/16 :goto_56

    :cond_e2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "type not provided"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_83

    monitor-exit v4

    return v6

    :cond_ee
    :try_start_ee
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "creatorUid not provided"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_83

    monitor-exit v4

    return v6

    :pswitch_fa
    :try_start_fa
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "cancelled"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/16 v5, -0x3f9

    invoke-static {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap14(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    goto/16 :goto_56

    :pswitch_111
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "failed"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/16 v5, -0x3f6

    invoke-static {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap14(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    goto/16 :goto_56

    :pswitch_128
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "finished"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    invoke-static {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap14(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    :try_end_13d
    .catchall {:try_start_fa .. :try_end_13d} :catchall_83

    goto/16 :goto_56

    nop

    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_59
        :pswitch_86
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_128
        :pswitch_111
        :pswitch_fa
    .end packed-switch
.end method
