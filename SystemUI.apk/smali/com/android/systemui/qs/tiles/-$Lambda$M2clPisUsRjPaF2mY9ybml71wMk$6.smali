.class final synthetic Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->lambda$-com_android_systemui_qs_tiles_WifiCallingTile_29818(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$6;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$6;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method