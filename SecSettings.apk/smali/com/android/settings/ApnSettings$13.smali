.class Lcom/android/settings/ApnSettings$13;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->showWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ApnSettings$13;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/ApnSettings$13;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->-get4(Lcom/android/settings/ApnSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings$13;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->-get4(Lcom/android/settings/ApnSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void
.end method
