.class public Lcom/android/server/desktopmode/DockManager$DockMsgState;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockMsgState"
.end annotation


# instance fields
.field private mMsgState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/desktopmode/DockManager;IIIII)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz p3, :cond_2e

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    if-eqz p4, :cond_3f

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-eqz p5, :cond_50

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    if-eqz p6, :cond_61

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    return-void
.end method

.method private msgStateToString(I)Ljava/lang/String;
    .registers 4

    sparse-switch p1, :sswitch_data_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_REQUEST_UNDEFINED"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_REQUEST_CREATE"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_UNDEFINED"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_ERROR_UNDEFINED"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_ERROR"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_VERSION_UNDEFINED"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_EXTRA_UNDEFINED"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "MSG_DOCK_FAST_CHARGING_EXTRA_ERROR_UPDATED"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "MSG_DOCK_FOTA_REQUEST_UNDEFINED"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "MSG_DOCK_FOTA_REQUEST_CREATE"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "MSG_DOCK_FOTA_REQUEST_CHECK"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "MSG_DOCK_FOTA_REQUEST_START"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "MSG_DOCK_FOTA_REQUEST_DESTROY"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "MSG_DOCK_FOTA_RESPONSE_UNDEFINED"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "MSG_DOCK_FOTA_RESPONSE_ONBOOT"

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "MSG_DOCK_FOTA_RESPONSE_ONCHECK"

    return-object v0

    :sswitch_70
    const-string/jumbo v0, "MSG_DOCK_FOTA_RESPONSE_ONSTART"

    return-object v0

    :sswitch_74
    const-string/jumbo v0, "MSG_DOCK_FOTA_RESPONSE_ONPROGRESS"

    return-object v0

    :sswitch_78
    const-string/jumbo v0, "MSG_DOCK_FOTA_RESPONSE_ONEND"

    return-object v0

    :sswitch_7c
    const-string/jumbo v0, "MSG_DOCK_FOTA_ERROR_UNDEFINED"

    return-object v0

    :sswitch_80
    const-string/jumbo v0, "MSG_DOCK_FOTA_ERROR_ONERROR"

    return-object v0

    :sswitch_data_84
    .sparse-switch
        0xc8 -> :sswitch_18
        0xc9 -> :sswitch_1c
        0xca -> :sswitch_20
        0xcb -> :sswitch_24
        0xcc -> :sswitch_28
        0xd2 -> :sswitch_2c
        0xd3 -> :sswitch_30
        0xd4 -> :sswitch_34
        0xdc -> :sswitch_38
        0xdd -> :sswitch_3c
        0xe6 -> :sswitch_40
        0xe7 -> :sswitch_44
        0xf0 -> :sswitch_48
        0xf1 -> :sswitch_4c
        0x12c -> :sswitch_50
        0x12d -> :sswitch_54
        0x12e -> :sswitch_58
        0x12f -> :sswitch_5c
        0x130 -> :sswitch_60
        0x136 -> :sswitch_64
        0x137 -> :sswitch_68
        0x138 -> :sswitch_6c
        0x139 -> :sswitch_70
        0x13a -> :sswitch_74
        0x13b -> :sswitch_78
        0x140 -> :sswitch_7c
        0x141 -> :sswitch_80
    .end sparse-switch
.end method

.method private msgTypeToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "MSG_TYPE_REQUEST"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "MSG_TYPE_RESPONSE"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "MSG_TYPE_ERROR"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "MSG_TYPE_VERSION"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "MSG_TYPE_EXTRA"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x64
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public setLast(IILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
