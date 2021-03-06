.class public Landroid/support/v14/preference/SecRestrictedSwitchPreference;
.super Lcom/android/settingslib/RestrictedSwitchPreference;
.source "SecRestrictedSwitchPreference.java"


# instance fields
.field private mIsSummaryColorPrimaryDark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x7f0401ce

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2b

    instance-of v4, p0, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_2b
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->mIsSummaryColorPrimaryDark:Z

    if-eqz v4, :cond_48

    invoke-static {v1}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorPrimaryDark(Landroid/widget/TextView;)V

    :goto_47
    return-void

    :cond_48
    invoke-static {v1}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorSecondary(Landroid/widget/TextView;)V

    goto :goto_47
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method
