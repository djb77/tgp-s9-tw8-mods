.class Lcom/android/settings/gestures/GesturePreference$2;
.super Ljava/lang/Object;
.source "GesturePreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/GesturePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/GesturePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/GesturePreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/gestures/GesturePreference$2;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method