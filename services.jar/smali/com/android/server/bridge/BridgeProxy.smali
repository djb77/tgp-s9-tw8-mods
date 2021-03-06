.class public Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$Apps;,
        Lcom/android/server/bridge/BridgeProxy$BridgeLog;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;,
        Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;,
        Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;,
        Lcom/android/server/bridge/BridgeProxy$IncomingHandler;,
        Lcom/android/server/bridge/BridgeProxy$PackageReceiver;,
        Lcom/android/server/bridge/BridgeProxy$PolicyChanged;,
        Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;,
        Lcom/android/server/bridge/BridgeProxy$RunnableCallback;,
        Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x1b58L

.field private static final DELETE_PERSONA:Ljava/lang/String; = "delete_persona"

.field private static final DIR_FILEPATH:Ljava/lang/String; = "/data/misc/BridgeProxy"

.field private static final DST_FILENAME:Ljava/lang/String; = "dstCreateFile"

.field private static final FILE_EXPORT_POLICY_TYPE:I = 0x1

.field private static final FILE_IMPORT_POLICY_TYPE:I = 0x2

.field private static final KNOX_DEBUG:Z

.field private static final MAX_INIT_COUNT:I = 0xa

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_INTERNALSD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_USB:Ljava/lang/String; = "/storage/"

.field private static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final RCP_POLICY_CHANGED_SECURE:Ljava/lang/String; = "com.samsung.knox.securefolder.intent.action.RCP_POLICY_CHANGED_SECURE"

.field private static final SRC_FILENAME:Ljava/lang/String; = "srcCreateFile"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

.field private final cb:Landroid/os/IRunnableCallback;

.field private currentPersona:I

.field private dbObserver:Lcom/android/server/bridge/operations/DbObserver;

.field private mAccountChanged:Z

.field private mBridgeContext:Landroid/content/Context;

.field private mBridgePackage:Ljava/lang/String;

.field private final mBridgeProviderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerInfoResult:Landroid/content/CustomCursor;

.field private mContainerAgentPkg:Ljava/lang/String;

.field private mContainerAgentSwitchActivity:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentInvalidKnoxName:Ljava/lang/String;

.field private mDelegateUserHandle:Landroid/os/UserHandle;

.field private mDelegateUserId:I

.field private mHandlerDoSync:Landroid/os/Handler;

.field private mHandlerPolicyChanged:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

.field private final mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

.field private final mIBridgeProvider:Landroid/content/IProviderCallBack;

.field private final mIBridgeSync:Landroid/content/ISyncCallBack;

.field private final mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

.field private final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field private final mListPolicyChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/bridge/BridgeProxy$PolicyChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mMoveContactItemActivity:Ljava/lang/String;

.field private mMoveToKnoxActivity:Ljava/lang/String;

.field private mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private mProviderServiceName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureFolderPkg:Ljava/lang/String;

.field private mSecureFolderSwitchActivity:Ljava/lang/String;

.field private final mSecureSyncerServiceClass:Ljava/lang/String;

.field private mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field private final mSyncerServiceClass:Ljava/lang/String;

.field private mSyncerServiceName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

.field private preInstalledAppsMinusEmail:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Landroid/content/CustomCursor;

.field private final resultLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/bridge/BridgeProxy;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/bridge/BridgeProxy;)I
    .registers 2

    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/IProviderCallBack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMoveContactItemActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMoveToKnoxActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/DbObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeProviderList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/bridge/BridgeProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .registers 2

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .registers 2

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getSyncPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/bridge/BridgeProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->doSyncForAllSyncers(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/bridge/BridgeProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->initDBObserver(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->policyChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->isBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/bridge/BridgeProxy;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bridge/BridgeProxy;->KNOX_DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeProviderList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mThreadMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mListPolicyChanged:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    iput-boolean v1, p0, Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/bridge/BridgeProxy;->currentPersona:I

    iput v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const-string/jumbo v0, "com.samsung.knox.rcp.components"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.knox.containeragent"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    const-string/jumbo v0, ".rcpcomponents.move.activity.MoveToKnoxActivity"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMoveToKnoxActivity:Ljava/lang/String;

    const-string/jumbo v0, ".rcpcomponents.move.activity.MoveContactItemActivity"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMoveContactItemActivity:Ljava/lang/String;

    const-string/jumbo v0, ".switcher.SwitchAliasActivity"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;

    const-string/jumbo v0, ".switcher.KnoxCoreSwitchMainActivity"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".rcpcomponents.sync.RCPSyncerSecure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".rcpcomponents.sync.RCPSyncerSecure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IncomingHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$RunnableCallback;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    iput p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BridgeProxyHandlerDoSync"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    return-void
.end method

.method private bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "bridgeCmd() , cmd :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v1, :cond_1c1

    const-string/jumbo v1, "contactsquery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v1, "projection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "sortOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/bridge/BridgeProxy;->getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_77
    const-string/jumbo v1, "contactsinsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v13

    :cond_b0
    const-string/jumbo v1, "contactsdelete"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v13

    :cond_ee
    const-string/jumbo v1, "contactsupdate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139

    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v13

    :cond_139
    const-string/jumbo v1, "contactsbulkInsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_189

    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    const/4 v8, 0x0

    if-eqz v18, :cond_16d

    move-object/from16 v0, v18

    array-length v1, v0

    new-array v8, v1, [Landroid/content/ContentValues;

    const/4 v10, 0x0

    :goto_15f
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v10, v1, :cond_16d

    aget-object v1, v18, v10

    check-cast v1, Landroid/content/ContentValues;

    aput-object v1, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_15f

    :cond_16d
    if-eqz v8, :cond_187

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v14

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v13

    :cond_187
    const/4 v1, 0x0

    return-object v1

    :cond_189
    const-string/jumbo v1, "contactsapplyBatch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    const-string/jumbo v1, "operations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v16, 0x0

    :try_start_19d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v19, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1ad
    .catch Landroid/content/OperationApplicationException; {:try_start_19d .. :try_end_1ad} :catch_1bc

    move-result-object v16

    :goto_1ae
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v13

    :catch_1bc
    move-exception v9

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1ae

    :cond_1c1
    const/4 v1, 0x0

    return-object v1
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v1, "Proxy"

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCallerPermissionFor, ServiceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , MethodName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_85

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0

    :cond_85
    return v5
.end method

.method private checkHandler()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " onReceive RCP_POLICY_CHANGED removeCallbacksAndMessages "

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    :cond_14
    return-void
.end method

.method private doSyncForAllSyncers(Z)V
    .registers 16

    const/4 v13, 0x0

    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , currentUserID :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , isUserSwitch : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eqz v10, :cond_16d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v10, "Contacts"

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "Calendar"

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_40
    :goto_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "syncerName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "knox-import-data"

    invoke-direct {p0, v8, v10}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , IMPORT_DATA policyValue  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d1

    if-eqz v6, :cond_9b

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    invoke-direct {p0, v8, v13}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    :cond_9b
    :goto_9b
    const-string/jumbo v10, "knox-export-data"

    invoke-direct {p0, v8, v10}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , EXPORT_DATA policyValue  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_146

    if-eqz v6, :cond_40

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget v11, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v10, v8, v11}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_40

    :cond_d1
    if-eqz v6, :cond_140

    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_140

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_110

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ea
    :goto_ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v10, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eq v10, v0, :cond_ea

    const-string/jumbo v10, "knox-import-data"

    invoke-direct {p0, v8, v10, v0}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ea

    const/4 v5, 0x0

    goto :goto_ea

    :cond_110
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " mUnRegisterFlag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , syncerName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_13b

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v10, v8, v13}, Lcom/samsung/android/knox/SemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V

    :cond_13b
    :goto_13b
    invoke-direct {p0, v8, v13}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_9b

    :cond_140
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v10, v8, v13}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V

    goto :goto_13b

    :cond_146
    if-eqz v6, :cond_163

    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_163

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v10, :cond_15a

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v10, v8}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    :cond_15a
    :goto_15a
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget v11, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v10, v8, v11}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_40

    :cond_163
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v10, :cond_15a

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v10, v8}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_15a

    :cond_16d
    return-void
.end method

.method private doSyncForSyncer(Ljava/lang/String;I)V
    .registers 15

    sget-object v9, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " doSyncForSyncer, syncerName :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , mUserID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_c1

    const-string/jumbo v9, "knox-import-data"

    invoke-direct {p0, p1, v9}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "knox-import-data"

    :cond_37
    :goto_37
    if-eqz v6, :cond_f1

    const-string/jumbo v9, "false"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f1

    const-string/jumbo v9, "syncer"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "doWhat"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "policy"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "delete_synced_data_of_user"

    invoke-virtual {v4, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v9, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " delete synced data policyName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " providerID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " SyncerID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " syncerName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    const/4 v1, 0x0

    iget v9, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_136

    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_ac
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    if-nez v9, :cond_16b

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p2}, Landroid/os/UserHandle;-><init>(I)V

    :goto_bb
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c0} :catch_16f

    :goto_c0
    return-void

    :cond_c1
    :try_start_c1
    const-string/jumbo v5, "knox-export-data"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "syncerName"

    invoke-virtual {v7, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "action"

    const-string/jumbo v10, "GetExportPolicy"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, p2, v7}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    const-string/jumbo v9, "policyValue"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_e8} :catch_eb

    move-result-object v6

    goto/16 :goto_37

    :catch_eb
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_37

    :cond_f1
    sget-object v9, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " start syncing for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "for policy name ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from provider"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "syncer"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.containeragent.ACTION_DB_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "provider_user"

    invoke-virtual {v4, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_97

    :cond_136
    iget v9, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_149

    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    :cond_149
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_15a

    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    :cond_15a
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_a9

    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    :cond_16b
    :try_start_16b
    iget-object v8, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_16d} :catch_16f

    goto/16 :goto_bb

    :catch_16f
    move-exception v3

    sget-object v9, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Unable to start service"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c0
.end method

.method private enableComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x1

    :try_start_1
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-interface {v3, v0, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    if-eq v4, v6, :cond_20

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v3, v0, v6, v7, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_20} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20

    :catch_26
    move-exception v1

    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", component :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not installed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private fillPreInstalledAppsMap()V
    .registers 3

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstalled apps start"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.infraware.polarisviewer5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.browser.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.setupwizard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gsf.login"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.feedback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.partnersetup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.street"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.backuptransport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.configupdater"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.syncadapters.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.syncadapters.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.gd.mobicore.pa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.map.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.amap.android.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.locationhistory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.widgetapp.digitalclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.soundalive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.osp.app.signin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.billing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.sprextension"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.mdm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.externalstorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.everglades.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.videoplayer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.SamsungContentsAgent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.app.pinboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.enterprise.mdm.vpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.helphub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstall apps end"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getBridgeContext()Landroid/content/Context;
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    :catch_c
    move-exception v1

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private getBridgeStringResource(I)Ljava/lang/String;
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v2

    return-object v2

    :catch_13
    move-exception v0

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    :catch_19
    move-exception v0

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "string"

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v3

    return-object v3

    :catch_1c
    move-exception v0

    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bridge package not found: "

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method private getBridgeStringResourceId(Ljava/lang/String;)I
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string"

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_18

    move-result v2

    return v2

    :catch_18
    move-exception v0

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private getFilesPolicy(II)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/PersonaPolicyManager;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v1, v5, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_5e

    move-result-object v4

    :goto_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_5e
    move-exception v0

    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mUserID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/PersonaPolicyManager;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_49} :catch_67

    move-result-object v4

    :goto_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_67
    move-exception v0

    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a
.end method

.method private getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Landroid/database/CursorWindow;

    const-string/jumbo v4, "contactsquery"

    invoke-direct {v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/database/CrossProcessCursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    new-instance v1, Landroid/content/CustomCursor;

    invoke-direct {v1, v3}, Landroid/content/CustomCursor;-><init>(Landroid/database/CursorWindow;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setColumnNames([Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setAutoClose(Z)V

    invoke-virtual {v0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    :cond_2a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v2
.end method

.method private getSyncPolicy()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSyncPolicy() called"

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/PersonaPolicyManager;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    const-string/jumbo v3, "Contacts"

    invoke-virtual {v1, v3}, Landroid/os/PersonaPolicyManager;->getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_3c

    move-result-object v2

    :goto_22
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): policy value returned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_3c
    move-exception v0

    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method private initDBObserver(I)V
    .registers 6

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initDBObserver  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v0, :cond_36

    new-instance v0, Lcom/android/server/bridge/operations/DbObserver;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/DbObserver;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    :cond_35
    :goto_35
    return-void

    :cond_36
    const/16 v0, 0xa

    if-gt p1, v0, :cond_35

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDBObserver postDelayed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$2;-><init>(Lcom/android/server/bridge/BridgeProxy;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35
.end method

.method private static isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    .registers 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "com.android.providers.contacts"

    aput-object v2, v0, v3

    const-string/jumbo v2, "com.android.systemui"

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAllowedPackagesForBridgeCmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2b

    return v3

    :cond_2b
    array-length v4, v0

    move v2, v3

    :goto_2d
    if-ge v2, v4, :cond_3b

    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    return v6

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3b
    return v3
.end method

.method private static isBridgeCmd(Ljava/lang/String;)Z
    .registers 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "contactsquery"

    aput-object v2, v0, v3

    const-string/jumbo v2, "contactsinsert"

    aput-object v2, v0, v6

    const-string/jumbo v2, "contactsdelete"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string/jumbo v2, "contactsupdate"

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string/jumbo v2, "contactsbulkInsert"

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const-string/jumbo v2, "contactsapplyBatch"

    const/4 v4, 0x5

    aput-object v2, v0, v4

    if-nez p0, :cond_2a

    return v3

    :cond_2a
    array-length v4, v0

    move v2, v3

    :goto_2c
    if-ge v2, v4, :cond_3a

    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    return v6

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3a
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBridgeCmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private kioskSetup()V
    .registers 9

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v1, v5, [[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    aput-object v4, v2, v3

    const-string/jumbo v4, "com.android.settings.TetherSettings"

    aput-object v4, v2, v7

    aput-object v2, v1, v3

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    aput-object v4, v2, v3

    const-string/jumbo v4, "com.android.settings.Settings$TetherSettingsActivity"

    aput-object v4, v2, v7

    aput-object v2, v1, v7

    array-length v4, v1

    move v2, v3

    :goto_23
    if-ge v2, v4, :cond_31

    aget-object v0, v1, v2

    aget-object v5, v0, v3

    aget-object v6, v0, v7

    invoke-direct {p0, v5, v6}, Lcom/android/server/bridge/BridgeProxy;->enableComponent(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_31
    return-void
.end method

.method private policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 25

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "policyChanged , syncerName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " , policyname :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " , policyChangedForUser : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ,mDelegateUserId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/bridge/BridgeProxy;->currentPersona:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_6f

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "parent == policyChangedForUser so retur"

    invoke-static/range {v18 .. v19}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    const/16 v17, 0x0

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v18

    if-eqz v18, :cond_159

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    const-string/jumbo v18, "knox-import-data"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f9

    const-string/jumbo v18, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_28e

    const-string/jumbo v18, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v18

    if-eqz v18, :cond_112

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " delete synced data policyName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " userId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " parent = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " syncerName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v12

    const/4 v15, 0x1

    if-eqz v12, :cond_176

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_125
    :goto_125
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_176

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v8, :cond_125

    const-string/jumbo v18, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_125

    const/4 v15, 0x0

    goto :goto_125

    :cond_159
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v18

    if-eqz v18, :cond_8d

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    :cond_176
    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " mUnRegisterFlag : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " , syncerName : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_1b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V

    :cond_1b3
    :try_start_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v18

    if-eqz v18, :cond_24a

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "RCP_POLICY_CHANGED | send request to delete IMPORT| "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v18, "syncer"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "policy"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "doWhat"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_223
    .catch Ljava/lang/SecurityException; {:try_start_1b3 .. :try_end_223} :catch_26f

    :goto_223
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string/jumbo v18, "proxy"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p3, :cond_2f8

    :try_start_23f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_246} :catch_2ec

    move-result-object v13

    if-nez v13, :cond_2f8

    return-void

    :cond_24a
    :try_start_24a
    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "user "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "not running, hence not triggering sync request"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26e
    .catch Ljava/lang/SecurityException; {:try_start_24a .. :try_end_26e} :catch_26f

    goto :goto_223

    :catch_26f
    move-exception v7

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Security exception while trying to sync for user:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_223

    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v18

    if-eqz v18, :cond_2d9

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " start syncing provider "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "for policy name ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " for syncer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V

    goto/16 :goto_223

    :catch_2ec
    move-exception v6

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "Unable to start service"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f8
    :goto_2f8
    return-void

    :cond_2f9
    const-string/jumbo v18, "knox-export-data"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f8

    const-string/jumbo v18, "knox-export-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3df

    const-string/jumbo v18, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3df

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/bridge/BridgeProxy;->unRegisterObserver(Ljava/lang/String;)V

    :try_start_327
    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "RCP_POLICY_CHANGED | send request to delete EXPORT | "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v18

    if-eqz v18, :cond_3b9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v18, "syncer"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "policy"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "doWhat"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_397
    .catch Ljava/lang/SecurityException; {:try_start_327 .. :try_end_397} :catch_399

    goto/16 :goto_2f8

    :catch_399
    move-exception v7

    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Security exception while trying to sync for user:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f8

    :cond_3b9
    :try_start_3b9
    sget-object v18, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "user "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "not running, hence not triggering sync request"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3dd
    .catch Ljava/lang/SecurityException; {:try_start_3b9 .. :try_end_3dd} :catch_399

    goto/16 :goto_2f8

    :cond_3df
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/bridge/BridgeProxy;->registerObserver(Ljava/lang/String;)V

    goto/16 :goto_2f8
.end method


# virtual methods
.method public registerObserver(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dbObserver.registerObserver called!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$3;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy is starting for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy user id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->fillPreInstalledAppsMap()V

    const/16 v15, 0x80

    :try_start_87
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move-object/from16 v0, v16

    invoke-interface {v0, v15, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_169

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_a4

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_c2
    :goto_c2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_c2

    const-string/jumbo v2, "RCPSyncerName_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cd

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "RCPSyncerName_"

    const-string/jumbo v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; syncerName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_c2

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding syncer for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_163
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_163} :catch_165

    goto/16 :goto_c2

    :catch_165
    move-exception v13

    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " BridgeProxy onCreate"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v3, "ALL_PROVIDERS"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerSync(Landroid/content/ISyncCallBack;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    :try_start_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1e3} :catch_362

    :goto_1e3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/bridge/BridgeProxy;->initDBObserver(I)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.knox.securefolder.intent.action.RCP_POLICY_CHANGED_SECURE"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eqz v2, :cond_27f

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_27f
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2bc

    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->kioskSetup()V

    :cond_2bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$1;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2cd
    :try_start_2cd
    const-string/jumbo v2, "RCPProviderName_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "RCPProviderName_"

    const-string/jumbo v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; providerName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_c2

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding provider for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_360
    .catch Landroid/os/RemoteException; {:try_start_2cd .. :try_end_360} :catch_165

    goto/16 :goto_c2

    :catch_362
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1e3
.end method

.method public stop()V
    .registers 5

    const/4 v3, 0x0

    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "----- stop called -----"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_14
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1f
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_2a} :catch_2e

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v3}, Lcom/android/server/bridge/BridgeProxy;->unRegisterObserver(Ljava/lang/String;)V

    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dbObserver.unRegisterObserver called!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$4;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method
