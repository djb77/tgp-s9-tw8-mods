.class Lcom/android/systemui/statusbar/SignalClusterView$3;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$3;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string/jumbo v1, "Wifi"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandDeskSettingsPanel(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method