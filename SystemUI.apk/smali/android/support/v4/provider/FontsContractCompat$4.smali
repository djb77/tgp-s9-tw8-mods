.class final Landroid/support/v4/provider/FontsContractCompat$4;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback",
        "<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroid/graphics/Typeface;)V
    .registers 7

    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->-get0()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->-get1()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->-get1()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2e

    monitor-exit v3

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v2, p1}, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_31
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/support/v4/provider/FontsContractCompat$4;->onReply(Landroid/graphics/Typeface;)V

    return-void
.end method