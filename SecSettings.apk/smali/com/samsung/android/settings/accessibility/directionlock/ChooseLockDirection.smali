.class public Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "ChooseLockDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$1;,
        Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;,
        Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mChallenge:J

.field private mChallengeFace:J

.field private mChallengeIris:J

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurScreenState:I

.field private mCurrentPwd:Ljava/lang/String;

.field private mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEmptyString:Ljava/lang/String;

.field private mFirstPassword:Ljava/lang/String;

.field private mFirstPwd:Ljava/lang/String;

.field private mFlgToChkConfChng:Z

.field private mForFace:Z

.field private mForFingerprint:Z

.field private mForIris:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderString:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHelpBitmap:Landroid/graphics/Bitmap;

.field private mHelpBitmapHeight:I

.field private mHelpBitmapHeightState:I

.field private mHelpBitmapWidth:I

.field private mHelpBitmapWidthState:I

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsFaceVerified:Z

.field private mIsFingerVerified:Z

.field private mIsIrisVerified:Z

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockVirgin:Z

.field private mMinimumDirectionLength:I

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mResultIntent:Landroid/content/Intent;

.field private mRightBtnState:Z

.field private mRightButton:Landroid/widget/Button;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldFinish:Z

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private mUserPassword:Ljava/lang/String;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeFace:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForIris:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/view/animation/AlphaAnimation;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFaceVerified:Z

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeIris:J

    return-wide v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockVirgin:Z

    return v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mMinimumDirectionLength:I

    return v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/view/animation/AlphaAnimation;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get27(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/os/AsyncTask;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get29(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get30(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mShouldFinish:Z

    return v0
.end method

.method static synthetic -get31(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFace:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFaceVerified:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mShouldFinish:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->handleConfirmScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->clearStepCircles()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForFace()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForFingerprint()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForIris()V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeIris:J

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeFace:J

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFingerprint:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForIris:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFace:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFaceVerified:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mResultIntent:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mShouldFinish:Z

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mUserPassword:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    return-void
.end method

.method private attachListeners()V
    .registers 3

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearStepCircles()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "ChooseLockDirection"

    const-string/jumbo v2, "clearStepCircles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_58

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListIterator:Ljava/util/Iterator;

    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_3a

    :cond_58
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_61
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_74
    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    :cond_78
    return-void
.end method

.method private endOngoingAnimations()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_22
    return-void
.end method

.method private freeUpMemory()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_36
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    :cond_41
    return-void
.end method

.method private handleConfirmScreen()Z
    .registers 5

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "handle Confirm Screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->partialInputCheck()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12103a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "handle Confirm Screen - return false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120840

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12084f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_74
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "handle Confirm Screen - return true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, -0x2

    const-string/jumbo v1, "ChooseLockDirection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleStepCircle with Direction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_25

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_c8

    :cond_25
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_56
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    :goto_61
    const-string/jumbo v1, "UP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    :goto_6c
    if-eqz p2, :cond_89

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_89

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v3, -0x3b3b3c

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_89
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p2, :cond_9d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_c2

    :cond_9d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_b2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_b2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c2
    if-nez p2, :cond_112

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->performAnimations()V

    :goto_c7
    return-void

    :cond_c8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v3, -0x50506

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_61

    :cond_ea
    const-string/jumbo v1, "LEFT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    goto/16 :goto_6c

    :cond_f7
    const-string/jumbo v1, "RIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    goto/16 :goto_6c

    :cond_104
    const-string/jumbo v1, "DOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    goto/16 :goto_6c

    :cond_111
    return-void

    :cond_112
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c7
.end method

.method private initializeAnimations()V
    .registers 15

    const-wide/16 v12, 0x64

    const/4 v10, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v2, "ChooseLockDirection"

    const-string/jumbo v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-array v2, v10, [F

    fill-array-data v2, :array_d6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    div-long/2addr v4, v12

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$3;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$4;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070170

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    new-array v2, v10, [F

    double-to-float v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v8, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    div-long/2addr v4, v12

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$5;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_d6
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .registers 3

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    return-void
.end method

.method private initializing()V
    .registers 2

    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->freeUpMemory()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializeIdentifiers()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->loadCustomSettings()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializeDirectionView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->loadDimensAndBitmap()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializeAnimations()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setInitialState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->attachListeners()V

    const v0, 0x7f1205af

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setTitle(I)V

    return-void
.end method

.method private isVibrationSupport()Z
    .registers 3

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    :cond_17
    const/4 v1, 0x0

    return v1

    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method private loadCustomSettings()V
    .registers 6

    const/4 v4, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "universal_lock_voice"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_47

    :cond_25
    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVoice:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "universal_lock_beep"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_3a
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playBeep:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_4b

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVibration:Z

    :goto_44
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->showArrow:Z

    return-void

    :cond_47
    move v0, v2

    goto :goto_26

    :cond_49
    move v0, v2

    goto :goto_3a

    :cond_4b
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVibration:Z

    goto :goto_44
.end method

.method private loadDimensAndBitmap()V
    .registers 6

    const v3, 0x7f07016a

    const v2, 0x7f070169

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "loadDimensAndBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0812

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    const v4, 0x7f080145

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080146

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080149

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080147

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080148

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_e1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_fc
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    goto/16 :goto_6a
.end method

.method private partialInputCheck()Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v2, "ChooseLockDirection"

    const-string/jumbo v3, "partialInputCheck"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    if-nez v1, :cond_52

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->clearStepCircles()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->showErrorImage()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_43
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_66

    if-eqz v1, :cond_66

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_66
    return v1
.end method

.method private performAnimations()V
    .registers 3

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2c
    return-void
.end method

.method private reloadHelpBitmapView()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    const v4, 0x7f080145

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_26
    return-void
.end method

.method private setDefaultInitState()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "setDefaultInitState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "Setting with help image initially"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_30
    return-void
.end method

.method private setInitialState()V
    .registers 13

    const v7, 0x7f0704f7

    const/4 v6, 0x6

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v3, "ChooseLockDirection"

    const-string/jumbo v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v9, v5, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_138

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v3

    if-ne v3, v6, :cond_103

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1205ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120850

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_68
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120856

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f1205b8

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ab
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    if-eqz v3, :cond_1eb

    iput-boolean v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_cf

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DirectionLockView;->showDirectionArrow(C)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v9}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :cond_cf
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    if-nez v3, :cond_162

    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    :goto_d5
    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v4, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v3, v4, :cond_e7

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->reloadHelpBitmapView()V

    :cond_e7
    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_f0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_176

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1f8

    :goto_fd
    invoke-direct {p0, v0, v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    :cond_103
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1205ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120850

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    :cond_138
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v3

    if-ne v3, v6, :cond_150

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1205ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    :cond_150
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1205ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    :cond_162
    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    goto/16 :goto_d5

    :sswitch_166
    const-string/jumbo v0, "UP"

    goto :goto_fd

    :sswitch_16a
    const-string/jumbo v0, "RIGHT"

    goto :goto_fd

    :sswitch_16e
    const-string/jumbo v0, "DOWN"

    goto :goto_fd

    :sswitch_172
    const-string/jumbo v0, "LEFT"

    goto :goto_fd

    :cond_176
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v4, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v3, v4, :cond_1ee

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f121039

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v3, :cond_1a1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1a5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1ee

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_1ca

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_1ca
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v3, v4, v9, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a5

    :cond_1eb
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setDefaultInitState()V

    :cond_1ee
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1f7

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setRequestedOrientation(I)V

    :cond_1f7
    return-void

    :sswitch_data_1f8
    .sparse-switch
        0x44 -> :sswitch_16e
        0x4c -> :sswitch_172
        0x52 -> :sswitch_16a
        0x55 -> :sswitch_166
    .end sparse-switch
.end method

.method private updateDataForIrisAndFingerPrint(Landroid/content/Intent;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mMinimumDirectionLength:I

    const-string/jumbo v0, "for_fingerprint"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFingerprint:Z

    const-string/jumbo v0, "for_iris"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForIris:Z

    const-string/jumbo v0, "for_face"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFace:Z

    return-void
.end method

.method private verifyForFace()V
    .registers 7

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "verifyForFace"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeFace:J

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeFace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFaceVerified:Z

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeFace:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$11;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$11;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_1c
.end method

.method private verifyForFingerprint()V
    .registers 7

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "verifyForFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFingerPrint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$9;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_1c
.end method

.method private verifyForIris()V
    .registers 7

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "verifyForIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForIris()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeIris:J

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeIris:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallengeIris:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_1c
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x17fb

    return v0
.end method

.method initializeIdentifiers()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "initializeIdentifiers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const v0, 0x7f0a0708

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    const v0, 0x7f0a0493

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->updateDataForIrisAndFingerPrint(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v1, "ChooseLockDirection"

    const-string/jumbo v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_19
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->endOngoingAnimations()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_39

    const/4 v0, 0x0

    :cond_39
    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    :cond_57
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializing()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->reloadHelpBitmapView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iput-object p0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_74

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onCreate savedInstanceState is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "currentPwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    const-string/jumbo v0, "headerString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    const-string/jumbo v0, "currentScreenState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    const-string/jumbo v0, "leftBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    const-string/jumbo v0, "rightBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    const-string/jumbo v0, "firstPwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    const-string/jumbo v0, "helpBitmapHeightState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    const-string/jumbo v0, "helpBitmapWidthState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    :cond_74
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isInMultiWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setRequestedOrientation(I)V

    :goto_9a
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "challenge"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    const-string/jumbo v0, "ChooseLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: challenge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_e0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializing()V

    goto :goto_9a
.end method

.method protected onDestroy()V
    .registers 3

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->freeUpMemory()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_15
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "ChooseLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_32

    const v0, 0x7f120ffe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    return-void

    :cond_32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockVirgin:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_7d

    const/4 v0, 0x0

    :goto_1e
    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    const-string/jumbo v0, "currentPwd"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "headerString"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "currentScreenState"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "leftBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "rightBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "firstPwd"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "helpBitmapHeightState"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "helpBitmapWidthState"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_7d
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public onStop()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onStop()V

    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_19
    return-void
.end method