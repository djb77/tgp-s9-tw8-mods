.class public Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final convertTypePath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;>;",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;)V

    return-void
.end method


# virtual methods
.method convertType(Lcom/airbnb/lottie/model/content/ShapeData;)Landroid/graphics/Path;
    .registers 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    return-object v0
.end method

.method bridge synthetic convertType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertType(Lcom/airbnb/lottie/model/content/ShapeData;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->hasAnimation()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_e
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->initialValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertType(Lcom/airbnb/lottie/model/content/ShapeData;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
