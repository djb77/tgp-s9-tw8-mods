.class public Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field private final RETRY_COUNT:I

.field private final mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

.field private final mCompName:Landroid/content/ComponentName;

.field private mContPreserved:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mEnabled:Z

.field private final mLockCont:Ljava/lang/Object;

.field private final mLogger:Lcom/samsung/android/friends/common/Logger;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/common/Logger;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->RETRY_COUNT:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    iput-boolean v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    iput v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    iput-object p2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    new-instance v0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.mateagent"

    const-string/jumbo v2, "com.samsung.android.mateagent.interact.AgentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    return-void
.end method

.method private changeRefCount(Z)I
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_3
    iget v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    :cond_9
    :goto_9
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_18

    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_18

    goto :goto_9

    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private existAgentSvc()Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2

    :catch_13
    move-exception v0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_20
    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_23
    return v2
.end method

.method private getConnectedSvc()Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->existAgentSvc()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    return-object v0

    :cond_16
    invoke-virtual {p0, v2}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    :goto_19
    const/4 v0, 0x0

    return-object v0

    :cond_1b
    const-string/jumbo v0, "AgentSvcMgr"

    const-string/jumbo v1, "no FSvc"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_19
.end method

.method private getContPreserved()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRefCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetRefCount()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public closeable()Z
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v0

    const-string/jumbo v3, "AgentSvcMgr"

    const-string/jumbo v4, "closeable %d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v1, :cond_26

    xor-int/lit8 v2, v0, 0x1

    :cond_26
    return v2
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1b

    const-string/jumbo v1, "keepConnectionState"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getRefCount()I

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->close()V

    :cond_1b
    return-object v3
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return v0
.end method

.method public perform(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string/jumbo v5, "AgentSvcMgr"

    const-string/jumbo v7, "skipped action 0x%x - app cannot start"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v7, v8}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    return-object v6

    :cond_27
    const/4 v3, 0x2

    const/4 v2, 0x0

    :cond_29
    const/4 v0, 0x0

    :try_start_2a
    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getConnectedSvc()Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string/jumbo v4, "AgentSvcMgr"

    const-string/jumbo v5, "FSvc is connected"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_40} :catch_7f
    .catchall {:try_start_2a .. :try_end_40} :catchall_9c

    move-result-object v2

    if-eqz v0, :cond_46

    :try_start_43
    invoke-interface {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4a
    .catchall {:try_start_43 .. :try_end_46} :catchall_79

    :cond_46
    move-object v4, v6

    :goto_47
    if-eqz v4, :cond_55

    :try_start_49
    throw v4
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4a} :catch_4a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4a} :catch_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_79

    :catch_4a
    move-exception v1

    :try_start_4b
    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_79

    add-int/lit8 v3, v3, -0x1

    :goto_50
    if-gtz v3, :cond_29

    :goto_52
    return-object v2

    :catch_53
    move-exception v4

    goto :goto_47

    :cond_55
    const/4 v3, -0x1

    goto :goto_52

    :cond_57
    :try_start_57
    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    if-eqz v4, :cond_70

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string/jumbo v5, "AgentSvcMgr"

    const-string/jumbo v7, "failed to connect FSvc"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_70} :catch_7f
    .catchall {:try_start_57 .. :try_end_70} :catchall_9c

    :cond_70
    if-eqz v0, :cond_75

    :try_start_72
    invoke-interface {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_7d
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_75} :catch_4a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_4a
    .catchall {:try_start_72 .. :try_end_75} :catchall_79

    :cond_75
    move-object v4, v6

    :goto_76
    if-eqz v4, :cond_99

    :try_start_78
    throw v4
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_79} :catch_4a
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_79} :catch_4a
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v4

    add-int/lit8 v3, v3, -0x1

    throw v4

    :catch_7d
    move-exception v4

    goto :goto_76

    :catch_7f
    move-exception v4

    :try_start_80
    throw v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v5

    move-object v11, v5

    move-object v5, v4

    move-object v4, v11

    :goto_85
    if-eqz v0, :cond_8a

    :try_start_87
    invoke-interface {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_4a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_4a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_79

    :cond_8a
    :goto_8a
    if-eqz v5, :cond_98

    :try_start_8c
    throw v5

    :catch_8d
    move-exception v7

    if-nez v5, :cond_92

    move-object v5, v7

    goto :goto_8a

    :cond_92
    if-eq v5, v7, :cond_8a

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8a

    :cond_98
    throw v4
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_99} :catch_4a
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_99} :catch_4a
    .catchall {:try_start_8c .. :try_end_99} :catchall_79

    :cond_99
    add-int/lit8 v3, v3, -0x1

    goto :goto_50

    :catchall_9c
    move-exception v4

    move-object v5, v6

    goto :goto_85
.end method

.method public setContPreserved(Z)V
    .registers 7

    const-string/jumbo v0, "AgentSvcMgr"

    const-string/jumbo v1, "setContPreserved %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    :try_start_21
    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_2a

    monitor-exit v0

    if-nez p1, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->resetRefCount()V

    :cond_29
    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return-void
.end method
