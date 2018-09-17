.class public Lcom/caverock/androidsvg/SVGImageView;
.super Landroid/widget/ImageView;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;,
        Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;,
        Lcom/caverock/androidsvg/SVGImageView$LoadURITask;
    }
.end annotation


# static fields
.field private static setLayerTypeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "setLayerType"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "setLayerType"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1c} :catch_20

    :goto_1c
    invoke-direct {p0, p2, v3}, Lcom/caverock/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    return-void

    :catch_20
    move-exception v0

    goto :goto_1c
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "setLayerType"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_1b} :catch_1f

    :goto_1b
    invoke-direct {p0, p2, p3}, Lcom/caverock/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    return-void

    :catch_1f
    move-exception v0

    goto :goto_1b
.end method

.method static synthetic access$300(Lcom/caverock/androidsvg/SVGImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .registers 12

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/altamirasoft/path_animation/R$styleable;->SVGImageView:[I

    invoke-virtual {v5, p1, v6, p2, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_16
    sget v5, Lcom/altamirasoft/path_animation/R$styleable;->SVGImageView_svg:I

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v8, :cond_2c

    sget v5, Lcom/altamirasoft/path_animation/R$styleable;->SVGImageView_svg:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_42

    move-result-object v4

    if-nez v4, :cond_33

    :goto_27
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2b
    return-void

    :cond_2c
    :try_start_2c
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGImageView;->setImageResource(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_42

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_33
    :try_start_33
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/caverock/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;Z)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/SVGImageView;->setImageAsset(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_42

    goto :goto_27

    :catchall_42
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_47
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private internalSetImageURI(Landroid/net/Uri;Z)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_e} :catch_1d

    move-result-object v1

    new-instance v2, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;-><init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V

    new-array v3, v5, [Ljava/io/InputStream;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v5

    :catch_1d
    move-exception v0

    if-nez p2, :cond_21

    :goto_20
    return v4

    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SVGImageView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private setSoftwareLayerType()V
    .registers 7

    sget-object v2, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2e

    :try_start_4
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v2, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_2f

    :goto_2d
    return-void

    :cond_2e
    return-void

    :catch_2f
    move-exception v1

    const-string/jumbo v2, "SVGImageView"

    const-string/jumbo v3, "Unexpected failure calling setLayerType"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method


# virtual methods
.method public setImageAsset(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;-><init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImageResource(I)V
    .registers 6

    new-instance v0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;-><init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;Z)Z

    return-void
.end method

.method public setSVG(Lcom/caverock/androidsvg/SVG;)V
    .registers 4

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null value passed to setSVG()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method