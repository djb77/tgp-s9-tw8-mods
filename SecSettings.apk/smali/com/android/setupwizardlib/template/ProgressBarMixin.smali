.class public Lcom/android/setupwizardlib/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .registers 5

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v2, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v3, Lcom/android/setupwizardlib/R$id;->suw_layout_progress_stub:I

    invoke-virtual {v2, v3}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_15
    iget-object v2, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public isShown()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v3, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {v2, v3}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mColor:Landroid/content/res/ColorStateList;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_19

    if-eqz p1, :cond_1c

    :cond_19
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1c
    return-void
.end method

.method public setShown(Z)V
    .registers 4

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method