.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi23Impl;
.super Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;
.source "PopupWindowCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void
.end method
