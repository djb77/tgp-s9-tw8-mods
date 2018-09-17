.class Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v2, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    if-nez v2, :cond_21

    :try_start_6
    const-class v2, Landroid/os/Bundle;

    const-string/jumbo v3, "getIBinder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1f} :catch_34

    :goto_1f
    sput-boolean v7, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    :cond_21
    sget-object v2, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4b

    :try_start_25
    sget-object v2, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_33} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_33} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_33} :catch_3f

    return-object v2

    :catch_34
    move-exception v1

    const-string/jumbo v2, "BundleCompatBaseImpl"

    const-string/jumbo v3, "Failed to retrieve getIBinder method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_3f
    move-exception v0

    const-string/jumbo v2, "BundleCompatBaseImpl"

    const-string/jumbo v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v8, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    :cond_4b
    return-object v8
.end method