.class public abstract Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;
.super Landroid/os/Binder;
.source "ISuwScriptPlayerCallback.java"

# interfaces
.implements Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_9
    const-string/jumbo v0, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayerCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_10
    const-string/jumbo v0, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;->onPlayCompleted()V

    return v1

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method