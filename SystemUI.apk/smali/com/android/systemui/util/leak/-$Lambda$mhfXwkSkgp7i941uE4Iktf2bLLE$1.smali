.class final synthetic Lcom/android/systemui/util/leak/-$Lambda$mhfXwkSkgp7i941uE4Iktf2bLLE$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/android/systemui/util/leak/LeakDetector;->-com_android_systemui_util_leak_LeakDetector-mthref-0(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/leak/-$Lambda$mhfXwkSkgp7i941uE4Iktf2bLLE$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
