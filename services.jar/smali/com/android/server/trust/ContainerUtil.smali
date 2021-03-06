.class Lcom/android/server/trust/ContainerUtil;
.super Ljava/lang/Object;
.source "ContainerUtil.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static mPersona:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getDurationInMsgGrantTrust(Landroid/content/Context;IJJ)J
    .registers 14

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_24

    invoke-virtual {v1, v7, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2f

    :goto_20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_2e
    return-wide v2

    :cond_2f
    move v4, v5

    goto :goto_20

    :cond_31
    move-wide v2, p2

    goto :goto_2e

    :cond_33
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_2e
.end method

.method private static getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_trust_ContainerUtil_2976(ILcom/android/server/SdpManagerService;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_trust_ContainerUtil_3162(ILcom/android/server/SdpManagerService;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I)V

    return-void
.end method

.method static onDeviceLockedChanged(IZ)V
    .registers 5

    invoke-static {}, Lcom/android/server/trust/ContainerUtil;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PersonaManagerService;->onDeviceLockedChanged(IZ)V

    if-eqz p1, :cond_21

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE;

    invoke-direct {v2, p0}, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_20
    return-void

    :cond_21
    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE$1;

    invoke-direct {v2, p0}, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE$1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_20

    :cond_37
    const-string/jumbo v1, "TrustAgentWrapper"

    const-string/jumbo v2, "onDeviceLockedChanged() - Service is not yet ready..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method static sendContainerLockedEvent(Landroid/content/Context;IZ)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x4

    :goto_3
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    return-void

    :cond_7
    const/4 v0, 0x5

    goto :goto_3
.end method
