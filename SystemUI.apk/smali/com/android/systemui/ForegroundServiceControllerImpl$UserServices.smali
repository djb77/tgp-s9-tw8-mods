.class Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServiceControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation


# instance fields
.field private mNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRunning:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDungeonNeeded()Z
    .registers 8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v4, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_9
    if-ge v2, v5, :cond_22

    aget-object v0, v4, v2

    iget-object v6, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_1f

    :cond_1d
    const/4 v2, 0x1

    return v2

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    return v3
.end method

.method public removeNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public setRunningServices([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_a
    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    return-void
.end method
