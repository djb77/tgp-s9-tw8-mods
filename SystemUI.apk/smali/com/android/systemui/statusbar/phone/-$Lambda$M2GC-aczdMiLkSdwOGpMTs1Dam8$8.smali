.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;->$m$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method