.class public Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;
    }
.end annotation


# instance fields
.field private mAD:Landroid/app/AlertDialog;

.field private mAodStatus:I

.field private mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mApplyEventId:I

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mCancelEventId:I

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomiseEventId:I

.field private mDisableEventId:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

.field private mPowerSavingMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mScreenId:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApplyEventId:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancelEventId:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomiseEventId:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->updateApplyButtonText()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    const v4, 0x7f0a064a

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    const v4, 0x7f0a050b

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    if-eqz v33, :cond_5b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50b

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_501

    const v4, 0x7f080593

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5b
    :goto_5b
    const v4, 0x7f0a064b

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    const v4, 0x7f0a01f1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_97

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f08074a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_52c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_51b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "low_power_back_data_off"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    :goto_c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "psm_network_power_saving"

    move/from16 v0, v26

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPreviousPSMValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v5, 0x7f12158d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f121591

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_529

    const/4 v7, 0x0

    :goto_e9
    const-string/jumbo v10, "psm_network_power_saving"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f6
    :goto_f6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_168

    const-string/jumbo v4, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_127

    const-string/jumbo v4, "psm_always_on_display_mode"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v4, "psm_always_on_display_mode"

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_127
    const-string/jumbo v4, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPreviousPSMValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v5, 0x7f120178

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_595

    const/4 v7, 0x0

    :goto_15a
    const-string/jumbo v10, "psm_always_on_display_mode"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_168
    const-string/jumbo v4, "restricted_device_performance"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18f

    const-string/jumbo v4, "restricted_device_performance"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v4, "restricted_device_performance"

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_18f
    const-string/jumbo v4, "restricted_device_performance"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "restricted_device_performance"

    move/from16 v0, v38

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPreviousPSMValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v5, 0x7f121593

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f121594

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move/from16 v0, v38

    if-ne v0, v8, :cond_598

    const/4 v7, 0x1

    :goto_1c3
    const-string/jumbo v10, "restricted_device_performance"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f9

    const-string/jumbo v4, "limit_brightness_state"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v8, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v4, "limit_brightness_state"

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v8, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_1f9
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_213

    const-string/jumbo v4, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMbrightness(Landroid/content/Context;I)V

    :cond_213
    const-string/jumbo v4, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v23

    const/16 v27, 0x5a

    add-int/lit8 v37, v23, -0x5a

    if-lez v37, :cond_59b

    const-string/jumbo v4, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    const/16 v8, 0x5a

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const/16 v37, 0x0

    :cond_238
    :goto_238
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isCMCCupsm(I)Z

    move-result v4

    if-eqz v4, :cond_244

    const/16 v37, 0x1e

    :cond_244
    if-nez v37, :cond_5b4

    const/4 v7, 0x2

    :goto_247
    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    const/16 v4, -0xa

    invoke-static {v4}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, -0x5

    invoke-static {v4}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    const v4, 0x7f121cb3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v9, v5

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v4

    if-eqz v4, :cond_2b5

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, -0xa

    invoke-static {v5}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, -0x5

    invoke-static {v5}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    const v4, 0x7f121cb3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v9, v5

    :cond_2b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "limit_brightness_state"

    move/from16 v0, v23

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPreviousPSMValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isCMCCupsm(I)Z

    move-result v5

    if-eqz v5, :cond_5bf

    const v5, 0x7f120521

    :goto_2d0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "limit_brightness_state"

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMultiResolution()Z

    move-result v4

    if-eqz v4, :cond_39b

    const-string/jumbo v4, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_310

    const-string/jumbo v4, "screen_resolution_state"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v4, "screen_resolution_state"

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_310
    const-string/jumbo v4, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v13

    const/4 v4, 0x3

    new-array v15, v4, [Ljava/lang/String;

    const-string/jumbo v4, "HD"

    const/4 v5, 0x0

    aput-object v4, v15, v5

    const-string/jumbo v4, "FHD"

    const/4 v5, 0x1

    aput-object v4, v15, v5

    const-string/jumbo v4, "WQHD"

    const/4 v5, 0x2

    aput-object v4, v15, v5

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v39

    if-eqz v39, :cond_361

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    move-object/from16 v0, v39

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v40, v4, v5

    const v4, 0x3fe38e39

    cmpl-float v4, v40, v4

    if-lez v4, :cond_361

    const/4 v4, 0x3

    new-array v15, v4, [Ljava/lang/String;

    const-string/jumbo v4, "HD+"

    const/4 v5, 0x0

    aput-object v4, v15, v5

    const-string/jumbo v4, "FHD+"

    const/4 v5, 0x1

    aput-object v4, v15, v5

    const-string/jumbo v4, "WQHD+"

    const/4 v5, 0x2

    aput-object v4, v15, v5

    :cond_361
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v4

    if-eq v4, v13, :cond_36f

    const/16 v30, 0x1

    :cond_36f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "screen_resolution_state"

    invoke-static {v4, v5, v13}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPreviousPSMValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v10, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v4, 0x7f12178c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v30, :cond_5c4

    const v4, 0x7f120518

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_38f
    const-string/jumbo v16, "screen_resolution_state"

    const/4 v14, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39b
    new-instance v16, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    const v19, 0x7f0d01e3

    const/16 v20, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p0

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;IILjava/util/List;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v43, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v22, v0

    const v4, 0x7f0a0715

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v43

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v36

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v35

    sub-int v41, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v42

    const v4, 0x7f0a0116

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-lez v36, :cond_5c7

    if-lez v41, :cond_5c7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f1214d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextWithLowerCase(Ljava/lang/String;Ljava/lang/String;)V

    :goto_420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_43d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_43d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setEnabled(Z)V

    :cond_43d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v5, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0716

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v43

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x7f0a0116

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f12055d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v5, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5d9

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v4

    if-eqz v4, :cond_5d9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f12159c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f12159d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4d7
    const v4, 0x102000a

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ListView;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v4, 0x106000d

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelector(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    return-object v45

    :cond_501
    const v4, 0x7f080592

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5b

    :cond_50b
    const/16 v4, 0x8

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5b

    :cond_51b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ultra_power_mode_back_data_off"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_c3

    :cond_529
    const/4 v7, 0x1

    goto/16 :goto_e9

    :cond_52c
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f6

    const-string/jumbo v4, "psm_network_power_saving"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_550

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_network_power_saving"

    const-string/jumbo v6, "0,1"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_550
    const-string/jumbo v4, "psm_network_power_saving"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "psm_network_power_saving"

    move/from16 v0, v26

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPreviousPSMValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v5, 0x7f121596

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f121597

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_593

    const/4 v7, 0x1

    :goto_584
    const-string/jumbo v10, "psm_network_power_saving"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f6

    :cond_593
    const/4 v7, 0x0

    goto :goto_584

    :cond_595
    const/4 v7, 0x1

    goto/16 :goto_15a

    :cond_598
    const/4 v7, 0x0

    goto/16 :goto_1c3

    :cond_59b
    const/16 v4, -0xa

    move/from16 v0, v37

    if-ge v0, v4, :cond_238

    const-string/jumbo v4, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v6, 0x2

    const/16 v8, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const/16 v37, -0xa

    goto/16 :goto_238

    :cond_5b4
    const/4 v4, -0x5

    move/from16 v0, v37

    if-ne v0, v4, :cond_5bc

    const/4 v7, 0x1

    goto/16 :goto_247

    :cond_5bc
    const/4 v7, 0x0

    goto/16 :goto_247

    :cond_5bf
    const v5, 0x7f120791

    goto/16 :goto_2d0

    :cond_5c4
    const/4 v12, 0x0

    goto/16 :goto_38f

    :cond_5c7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f120600

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_420

    :cond_5d9
    if-lez v36, :cond_603

    if-lez v41, :cond_603

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v44, v4, v5

    const v5, 0x7f1206cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f1214dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4d7

    :cond_603
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f1206cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f1214de

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4d7
.end method

.method private initDialog()V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string/jumbo v4, "fromWhere"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    const-string/jumbo v4, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    iput v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "low_power"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2e

    move v2, v3

    :cond_2e
    iput-boolean v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    if-ne v2, v3, :cond_da

    const v2, 0x7f1214d2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "PowerSavingModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mScreenId:I

    :goto_51
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomiseEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0412

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0413

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancelEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0415

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mDisableEventId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->setupAlert()V

    return-void

    :cond_96
    const-string/jumbo v4, "battery_mode"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_cf

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c6

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-array v5, v3, [Ljava/lang/Object;

    const v6, 0x7f120cda

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const v2, 0x7f12013e

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_c2
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    return-void

    :cond_c6
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    goto :goto_c2

    :cond_cf
    const-string/jumbo v4, "battery_mode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    goto/16 :goto_20

    :cond_da
    const v2, 0x7f1214d3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "UltraPowerSavingModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0416

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mScreenId:I

    goto/16 :goto_51
.end method

.method private updateApplyButtonText()V
    .registers 7

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v1

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v0

    sub-int v2, v0, v1

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-eqz v4, :cond_25

    if-lez v1, :cond_26

    if-lez v2, :cond_26

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f1214d9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextWithLowerCase(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f120600

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method


# virtual methods
.method public finish()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    const v0, 0x7f010035

    const v1, 0x7f01002c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->resetPSMValue(Landroid/content/Context;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e6

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a064a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0a050b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_4c

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_66

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5f

    const v4, 0x7f080593

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4c
    :goto_4c
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    if-eqz v4, :cond_5e

    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f08074a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    const v4, 0x7f080592

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4c

    :cond_66
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    :cond_6d
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f120cda

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12013e

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mScreenId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    goto :goto_36
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method