.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get7(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get7(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get8(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    if-lt v1, v2, :cond_4d

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get4(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const v1, 0x7f121080

    :goto_30
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get8(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get3(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    return-object v6

    :cond_4e
    const v1, 0x7f121089

    goto :goto_30
.end method