.class Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUsimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 4

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_d
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .registers 3

    const-string/jumbo v0, "KeyguardUsimTextView"

    const-string/jumbo v1, "onRefreshCarrierInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 6

    const-string/jumbo v0, "KeyguardUsimTextView"

    const-string/jumbo v1, "onSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method