.class public Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;
.super Ljava/lang/Object;
.source "LeanbackTransitionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;,
        Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperKitKatImpl;,
        Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;
    }
.end annotation


# static fields
.field static sImpl:Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperKitKatImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;->loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;->loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
