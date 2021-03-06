.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field broadcastUsers:[I

.field dataRemoved:Z

.field installReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field isRemovedPackageSystemUpdate:Z

.field isStaticSharedLib:Z

.field isUpdate:Z

.field origUsers:[I

.field final packageSender:Lcom/android/server/pm/PackageSender;

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSender;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isStaticSharedLib:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_93

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_14
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "android.intent.extra.DONT_KILL_APP"

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_36

    :cond_2f
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_36
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_65
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    const/high16 v4, 0x1000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_7f
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_92

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    const/4 v2, 0x0

    const/high16 v4, 0x1000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_92
    return-void

    :cond_93
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto/16 :goto_14
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .registers 15

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_67

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_11
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v7, "android.intent.action.MY_PACKAGE_REPLACED"

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v8, v5

    move-object v9, v5

    move v10, v4

    move-object v12, v5

    move-object v13, v5

    invoke-interface/range {v6 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v7, "android.intent.action.PACKAGE_ADDED"

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    move-object v9, v3

    move v10, v4

    move-object v12, v5

    move-object v13, v5

    invoke-interface/range {v6 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string/jumbo v7, "android.intent.action.PACKAGE_REPLACED"

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    move-object v9, v3

    move v10, v4

    move-object v12, v5

    move-object v13, v5

    invoke-interface/range {v6 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_66
    return-void

    :cond_67
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_11
.end method


# virtual methods
.method populateUsers([ILcom/android/server/pm/PackageSetting;)V
    .registers 7

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    if-nez v2, :cond_a

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    return-void

    :cond_a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get1()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_13
    if-ltz v0, :cond_29

    aget v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_20
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    goto :goto_1d

    :cond_29
    return-void
.end method

.method sendPackageRemovedBroadcasts(Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_d
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_20

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    :cond_20
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .registers 9

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_2a

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7, v5, v6}, Lcom/android/server/pm/PackageSender;->sendPackageAddedForNewUsers(Ljava/lang/String;ZI[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_28
    const/4 v2, 0x0

    goto :goto_a

    :cond_2a
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .registers 5

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_28

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_11
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_28

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_23

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_26
    const/4 v0, 0x0

    goto :goto_11

    :cond_28
    return-void
.end method
