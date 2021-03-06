.class public Lcom/sec/ims/scab/CABManager;
.super Ljava/lang/Object;
.source "CABManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/scab/CABManager$1;,
        Lcom/sec/ims/scab/CABManager$CABServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CABManager"

.field private static mImsCABService:Lcom/sec/ims/scab/ICABService;


# instance fields
.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;


# direct methods
.method static synthetic -get0(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/ims/scab/ICABService;)Lcom/sec/ims/scab/ICABService;
    .registers 1

    sput-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    new-instance v0, Lcom/sec/ims/scab/CABManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/scab/CABManager$1;-><init>(Lcom/sec/ims/scab/CABManager;)V

    iput-object v0, p0, Lcom/sec/ims/scab/CABManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isServiceBinded()Z
    .registers 3

    sget-object v0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "CABManager"

    const-string/jumbo v1, "Failed to bind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addBatchOfContacts(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addBatchOfContacts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_25

    :try_start_20
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1}, Lcom/sec/ims/scab/ICABService;->addBatchOfContacts(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method public businessLineReadyForSync(Ljava/lang/String;Z)V
    .registers 7

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "businessLineReadyForSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_30

    :try_start_2b
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1, p2}, Lcom/sec/ims/scab/ICABService;->businessLineReadyForSync(Ljava/lang/String;Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30
.end method

.method public connectService()V
    .registers 6

    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    if-nez v1, :cond_45

    const-string/jumbo v1, "CABManager"

    const-string/jumbo v2, "Connecting to Converged Address Book Service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.imsservice"

    const-string/jumbo v2, "com.sec.internal.ims.imsservice.CABService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/scab/CABManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service bounding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void

    :cond_45
    const-string/jumbo v1, "CABManager"

    const-string/jumbo v2, "mImsCABService is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    invoke-interface {v1}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onConnected()V

    goto :goto_44

    :cond_58
    const-string/jumbo v1, "CABManager"

    const-string/jumbo v2, "CABServiceListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public deleteBatchOfContacts(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteBatchOfContacts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_25

    :try_start_20
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1}, Lcom/sec/ims/scab/ICABService;->deleteBatchOfContacts(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method public disableService()V
    .registers 4

    const-string/jumbo v1, "CABManager"

    const-string/jumbo v2, "disableService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_14

    :try_start_f
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1}, Lcom/sec/ims/scab/ICABService;->disableService()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public disconnectService()V
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "CABManager"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/ims/scab/CABManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    invoke-interface {v0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onDisconnected()V

    goto :goto_1b
.end method

.method public enableService()V
    .registers 4

    const-string/jumbo v1, "CABManager"

    const-string/jumbo v2, "enableService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_14

    :try_start_f
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1}, Lcom/sec/ims/scab/ICABService;->enableService()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public isPendingUploadContactsExists()Z
    .registers 4

    const-string/jumbo v1, "CABManager"

    const-string/jumbo v2, "isPendingUploadContactsExists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_1a

    :try_start_f
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1}, Lcom/sec/ims/scab/ICABService;->isPendingUploadContactsExists()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    return v1

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public onBufferDBReadResult(JZ)V
    .registers 9

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBufferDBReadResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_30

    :try_start_2b
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/ims/scab/ICABService;->onBufferDBReadResult(JZ)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30
.end method

.method public processUndownloadedBusinessContacts(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processUndownloadedBusinessContacts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_25

    :try_start_20
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1}, Lcom/sec/ims/scab/ICABService;->processUndownloadedBusinessContacts(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method public setCABServiceListener(Lcom/sec/ims/scab/CABManager$CABServiceListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    return-void
.end method

.method public updateBatchOfContacts(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchOfContacts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_25

    :try_start_20
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1}, Lcom/sec/ims/scab/ICABService;->updateBatchOfContacts(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method public uploadAddressBook(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "CABManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadAddressBook:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_25

    :try_start_20
    sget-object v1, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {v1, p1}, Lcom/sec/ims/scab/ICABService;->uploadAddressBook(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method
