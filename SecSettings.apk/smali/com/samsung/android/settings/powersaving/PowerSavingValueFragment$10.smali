.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_1a
    return v1
.end method