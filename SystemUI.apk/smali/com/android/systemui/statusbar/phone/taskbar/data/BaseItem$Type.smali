.class public final enum Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;
.super Ljava/lang/Enum;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

.field public static final enum HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

.field public static final enum HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

.field public static final enum HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

.field public static final enum HOME_UNKNOWN:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

.field public static final enum MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const-string/jumbo v1, "HOME_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const-string/jumbo v1, "HOME_APPLICATION"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const-string/jumbo v1, "HOME_SHORTCUT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const-string/jumbo v1, "HOME_RUNNING_APPLICATION"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const-string/jumbo v1, "MENU_APP"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;
    .registers 2

    const-class v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;
    .registers 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    return-object v0
.end method