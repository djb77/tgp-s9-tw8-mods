.class public Lcom/airbnb/lottie/animation/content/MergePathsContent;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/content/GreedyContent;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final firstPath:Landroid/graphics/Path;

.field private final mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final pathContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final remainderPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/MergePaths;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2e

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/MergePaths;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Merge paths are not supported pre-KitKat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addPaths()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private opFirstPathWithRest(Landroid/graphics/Path$Op;)V
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_13
    const/4 v6, 0x1

    if-ge v1, v6, :cond_35

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/PathContent;

    instance-of v6, v3, Lcom/airbnb/lottie/animation/content/ContentGroup;

    if-nez v6, :cond_78

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-interface {v3}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_2b
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void

    :cond_35
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    instance-of v6, v0, Lcom/airbnb/lottie/animation/content/ContentGroup;

    if-nez v6, :cond_4d

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_4d
    move-object v6, v0

    check-cast v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_5a
    if-ltz v2, :cond_4a

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    move-object v6, v0

    check-cast v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5a

    :cond_78
    move-object v6, v3

    check-cast v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2b

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_80
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    :cond_d
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_6

    :cond_14
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v0, Lcom/airbnb/lottie/animation/content/MergePathsContent$1;->$SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode:[I

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/MergePaths;->getMode()Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    :goto_16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    return-object v0

    :pswitch_19
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->addPaths()V

    goto :goto_16

    :pswitch_1d
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_23
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_29
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_2f
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_16

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
    .end packed-switch
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v1, p1, p2}, Lcom/airbnb/lottie/animation/content/PathContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
