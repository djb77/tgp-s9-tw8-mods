.class final Lcom/android/settingslib/applications/ApplicationsState$17;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 6

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    monitor-enter v2

    :try_start_3
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v1, v3

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_19

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :goto_13
    monitor-exit v2

    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_13

    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init()V
    .registers 1

    return-void
.end method