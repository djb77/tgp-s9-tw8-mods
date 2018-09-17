.class Lcom/android/settings/dashboard/DashboardAdapter$IconCache;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconCache"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->mMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method