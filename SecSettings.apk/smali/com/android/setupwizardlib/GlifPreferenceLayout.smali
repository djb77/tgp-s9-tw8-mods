.class public Lcom/android/setupwizardlib/GlifPreferenceLayout;
.super Lcom/android/setupwizardlib/GlifRecyclerLayout;
.source "GlifPreferenceLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .registers 3

    if-nez p1, :cond_4

    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    :cond_4
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .registers 5

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifPreferenceLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_4

    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_preference_template:I

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onTemplateInflated()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/setupwizardlib/R$layout;->suw_glif_preference_recycler_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-direct {v2, p0, v1}, Lcom/android/setupwizardlib/template/RecyclerMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/setupwizardlib/GlifPreferenceLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    return-void
.end method