.class public Lcom/android/server/BBCManagerService;
.super Ljava/lang/Object;
.source "BBCManagerService.java"


# static fields
.field static final ACCESS_PERSONAL_APPS:Ljava/lang/String; = "accessPersonalApps"

.field private static final BBC_ACTIVITY_METADATA:Ljava/lang/String; = "com.samsung.android.bbc.launcher"

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field static final GENERAL_INFO:Ljava/lang/String; = "general_info"

.field static final MANAGE_BBC_APP_INFO:Ljava/lang/String; = "manage_bbc_app_info"

.field static final NFC_APP:Ljava/lang/String; = "com.android.nfc"

.field static final PACKAGE_UID_INFO:Ljava/lang/String; = "packageUidInfo"

.field static final PRINT_BBC_APP_INFO:Ljava/lang/String; = "print_bbc_app_info"

.field static final TAG:Ljava/lang/String; = "BBCManagerService"

.field static mBbcDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add_bbc_info(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "packageName"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "uid"

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v1, :cond_8f

    const/4 v0, 0x0

    const-string/jumbo v8, "accessPersonalApps"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "accessPersonalApps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "accessPersonalApps"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_33
    if-eqz v3, :cond_a7

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_38
    if-lez v7, :cond_6a

    const/4 v5, 0x0

    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ab

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    const-string/jumbo v8, "general_info"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v2, 0x0

    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8a
    if-eqz v4, :cond_8f

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8f
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "result"

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_9b
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "accessPersonalApps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_33

    :cond_a7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_38

    :cond_ab
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_53

    :cond_b7
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_8a
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 7

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v4, p0

    if-ge v1, v4, :cond_4a

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    const/4 v4, 0x2

    if-le v2, v4, :cond_36

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_36
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_47

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/BBCManagerService;->changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Landroid/content/pm/ActivityInfo;
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-nez p1, :cond_5

    return-object v9

    :cond_5
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_15

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "com.samsung.android.bbc.launcher"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    return-object v9

    :cond_15
    const/16 v6, 0x81

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_28

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/BBCManagerService;->isPreloadedKeaApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    return-object p1

    :cond_28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3b

    const-string/jumbo v7, "com.samsung.android.knoxenabled"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3c

    :cond_3b
    return-object p1

    :cond_3c
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v5, :cond_4b

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/BBCManagerService;->isActiveBbcContainerApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    return-object p1

    :cond_4b
    invoke-static {p2}, Lcom/android/server/BBCManagerService;->isFromBBCAgent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_52

    return-object p1

    :cond_52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.bbc.bbcagent.LAUNCH_ACTION"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v7, 0x10480

    invoke-virtual {v2, v0, v7, v10}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_a0

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_6f
    if-eqz v3, :cond_9d

    const-string/jumbo v7, "com.samsung.bbc.INTENT"

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.bbc.PACKAGE"

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.bbc.IGNORE_TARGET_SECURITY"

    invoke-virtual {p2, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_9d
    if-eqz v3, :cond_a2

    :goto_9f
    return-object v3

    :cond_a0
    const/4 v3, 0x0

    goto :goto_6f

    :cond_a2
    move-object v3, p1

    goto :goto_9f
.end method

.method public static changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p0, v0, p2}, Lcom/android/server/BBCManagerService;->changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)Landroid/content/pm/ActivityInfo;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p0, v0, p2, p3}, Lcom/android/server/BBCManagerService;->changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static changeUriForBBCApp(Landroid/content/Intent;I)V
    .registers 10

    :try_start_0
    const-string/jumbo v6, "output"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_15

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v6, "output"

    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_15
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ClipData;->fixUris(I)V

    :cond_22
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_37

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_37
    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_74

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_74

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_5c

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_74
    :goto_74
    return-void

    :cond_75
    :try_start_75
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_74

    :cond_7c
    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_74

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_a8} :catch_70

    goto :goto_74
.end method

.method private static getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    const-string/jumbo v14, "package"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    const/16 v6, 0x40

    const/4 v9, 0x0

    const/4 v14, 0x0

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v6, v14}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_17

    move-result-object v9

    if-nez v9, :cond_26

    const/4 v14, 0x0

    return-object v14

    :catch_17
    move-exception v1

    const-string/jumbo v14, "BBCManagerService"

    const-string/jumbo v15, "Cannot find pkg info"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v14, 0x0

    return-object v14

    :cond_26
    iget-object v13, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v13, :cond_35

    const-string/jumbo v14, "BBCManagerService"

    const-string/jumbo v15, "Cannot find signatures"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return-object v14

    :cond_35
    const/4 v11, 0x0

    const/4 v14, 0x0

    :try_start_37
    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;
    :try_end_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_37 .. :try_end_3c} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3c} :catch_4a

    move-result-object v11

    :goto_3d
    if-nez v11, :cond_54

    const-string/jumbo v14, "BBCManagerService"

    const-string/jumbo v15, "Cannot find public key"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return-object v14

    :catch_4a
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3d

    :catch_4f
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_3d

    :cond_54
    invoke-interface {v11}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    :try_start_59
    const-string/jumbo v14, "SHA-256"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/BBCManagerService;->byte2HexFormatted([B)Ljava/lang/String;
    :try_end_67
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_59 .. :try_end_67} :catch_8f
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_67} :catch_8a

    move-result-object v5

    :goto_68
    const-string/jumbo v14, "BBCManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sha256 Result ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_8a
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_68

    :catch_8f
    move-exception v3

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_68
.end method

.method public static handleExchangeDataBBC(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_5

    return-object v3

    :cond_5
    const-string/jumbo v3, "action"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "BBCManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ExchangeDataBBC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_47
    const-string/jumbo v3, "manage_bbc_app_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    const-string/jumbo v3, "add"

    const-string/jumbo v4, "type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-static {p2}, Lcom/android/server/BBCManagerService;->add_bbc_info(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_64
    :goto_64
    return-object v2

    :cond_65
    const-string/jumbo v3, "remove"

    const-string/jumbo v4, "type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    const-string/jumbo v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BBCManagerService;->remove_bbc_info(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_64

    :cond_81
    const-string/jumbo v3, "print_bbc_app_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-static {}, Lcom/android/server/BBCManagerService;->printBbcInformation()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8d} :catch_8e

    goto :goto_64

    :catch_8e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64
.end method

.method public static isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    return v7

    :cond_b
    :try_start_b
    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v6, "accessPersonalApps"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez p0, :cond_60

    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v6, "packageUidInfo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-eqz v4, :cond_60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_60

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    return v7

    :cond_60
    if-eqz v0, :cond_d0

    if-eqz p0, :cond_d0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez p2, :cond_79

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_79

    const/4 v3, 0x1

    :cond_79
    if-eqz v1, :cond_95

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/BBCManagerService;->verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_94

    :cond_8b
    const-string/jumbo v5, "*"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    :cond_94
    const/4 v3, 0x1

    :cond_95
    const-string/jumbo v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAccessPersonalApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d0} :catch_d1

    :cond_d0
    :goto_d0
    return v3

    :catch_d1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0
.end method

.method public static isActiveBbcContainerApp(I)Z
    .registers 4

    sget-object v1, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v2, "packageUidInfo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    return v1

    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method public static isActiveBbcContainerApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "general_info"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string/jumbo v3, "knoxcontainer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public static isActiveBbcPersonalApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "general_info"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string/jumbo v3, "knoxcontainer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method private static isFromBBCAgent(Landroid/content/Intent;)Z
    .registers 7

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_31

    const-string/jumbo v4, "com.samsung.android.bbc"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string/jumbo v4, "com.samsung.android.bbc"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/PendingIntent;

    move-object v3, v0

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_27

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_31

    const/4 v4, 0x1

    return v4

    :catch_27
    move-exception v1

    const-string/jumbo v4, "BBCManagerService"

    const-string/jumbo v5, "Error isFromBBCAgent "

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    const/4 v4, 0x0

    return v4
.end method

.method public static isPreloadedKeaApp(Ljava/lang/String;)Z
    .registers 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "com.bmwgroup.touchcommand_integration"

    aput-object v2, v0, v3

    const-string/jumbo v2, "com.bmwgroup.touchcommand"

    aput-object v2, v0, v6

    array-length v4, v0

    move v2, v3

    :goto_11
    if-ge v2, v4, :cond_1f

    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    return v6

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    return v3
.end method

.method public static needToForwardBBC(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 11

    const/4 v6, -0x1

    :try_start_1
    invoke-static {p1}, Lcom/android/server/BBCManagerService;->isActiveBbcContainerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string/jumbo v4, "com.android.nfc"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, -0x1

    invoke-static {p1, v4, p0}, Lcom/android/server/BBCManagerService;->isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    return p3

    :cond_18
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/16 v3, 0x81

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_32

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_37

    return p2

    :cond_31
    return p2

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return p2

    :cond_37
    return v6
.end method

.method public static printBbcInformation()V
    .registers 10

    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_gerneral_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "general_info"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " val : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_79
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_gerneral_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_UID_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "packageUidInfo"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_d6

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " val : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    :cond_d6
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_UID_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_accessPersonalApps_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "accessPersonalApps"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_158

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_fd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_158

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_117
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    :cond_158
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_accessPersonalApps_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static remove_bbc_info(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-object v4

    :cond_4
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "accessPersonalApps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1a
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "packageUidInfo"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_48
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "general_info"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_5e

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static startActivityBBCAppLockFromRecents(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)I
    .registers 10

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz p3, :cond_1f

    if-eqz v0, :cond_1f

    invoke-static {p3}, Lcom/android/server/BBCManagerService;->isActiveBbcContainerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "TimeToLive"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1e
    return v5

    :cond_1f
    if-eqz p3, :cond_40

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_40

    invoke-static {p3}, Lcom/android/server/BBCManagerService;->isActiveBbcPersonalApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "com.samsung.android.bbc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_3c

    const-string/jumbo v2, "com.samsung.android.bbc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    :cond_40
    const-string/jumbo v2, "BBCManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityBBCAppLockFromRecents fail, isBBCContainer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private static verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parameter ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_42

    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string/jumbo v5, "*"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    :cond_42
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "public key is null. All pkg is granted"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4c
    :try_start_4c
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v2, p0, v5, v6}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/16 v3, 0x81

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_7b

    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "System app. Do not need to verify public key. Return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6d} :catch_6e

    return v9

    :catch_6e
    move-exception v1

    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "Exception has occured while verifying public key"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7b
    invoke-static {p0}, Lcom/android/server/BBCManagerService;->getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8a

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    :cond_8a
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "target is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_94
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "publicKey is verified"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_a4
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "publicKey is not matched"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method