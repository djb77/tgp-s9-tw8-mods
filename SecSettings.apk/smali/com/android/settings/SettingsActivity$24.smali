.class Lcom/android/settings/SettingsActivity$24;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initMainScreenSearchView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsActivity;->-set1(Lcom/android/settings/SettingsActivity;Z)Z

    const/4 v0, 0x0

    return v0
.end method