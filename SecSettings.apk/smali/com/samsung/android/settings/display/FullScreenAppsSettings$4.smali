.class final Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    check-cast p2, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;->compare(Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)I

    move-result v0

    return v0
.end method