.class final synthetic Landroid/net/ip/-$Lambda$yDnD85pUPxzgrjWolXWWPPki110;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$yDnD85pUPxzgrjWolXWWPPki110;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    iget-object v1, p0, Landroid/net/ip/-$Lambda$yDnD85pUPxzgrjWolXWWPPki110;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->lambda$-android_net_ip_ConnectivityPacketTracker$PacketListener_4824(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$Lambda$yDnD85pUPxzgrjWolXWWPPki110;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/ip/-$Lambda$yDnD85pUPxzgrjWolXWWPPki110;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/-$Lambda$yDnD85pUPxzgrjWolXWWPPki110;->$m$0()V

    return-void
.end method