.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyguardBar()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackScroller()Landroid/view/ViewGroup;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
