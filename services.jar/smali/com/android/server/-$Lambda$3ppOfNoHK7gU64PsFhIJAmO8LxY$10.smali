.class final synthetic Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$10;->-$f0:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LockSettingsService;->lambda$-com_android_server_LockSettingsService_100074(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$10;->-$f0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$10;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
