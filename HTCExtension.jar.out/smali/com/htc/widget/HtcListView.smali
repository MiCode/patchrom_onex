.class public Lcom/htc/widget/HtcListView;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListView$CheckForItemReleased;,
        Lcom/htc/widget/HtcListView$IntroAnimatorListener;,
        Lcom/htc/widget/HtcListView$CheckForPressAnimation;,
        Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListView$FocusSelector;,
        Lcom/htc/widget/HtcListView$FixedViewInfo;
    }
.end annotation


# static fields
.field static final ANIMATION_TYPE_COUNT:I = 0x5

.field public static final DEFAULT_INTRO_ANIMATION:I = 0x0

.field public static final DOWN_INTRO_ANIMATION:I = 0x1

.field static final INTRO_ANIMATION_DURATIONS:[I = null

.field public static final LEFT_INTRO_ANIMATION:I = 0x4

.field private static MAX_DIFF:I = 0x0

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_DIFF:I = 0xf

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field private static final NONSENSITIVE_FACTOR:I = 0xa

.field static final NO_POSITION:I = -0x1

.field public static final RIGHT_INTRO_ANIMATION:I = 0x3

.field static final STATE_DRAGGING:I = 0x3

.field public static final UP_INTRO_ANIMATION:I = 0x2


# instance fields
.field animatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field isIgnoreFooterViewInBouncing:Z

.field m2DPressAnimationEnabled:Z

.field mAddAniSet:Landroid/animation/AnimatorSet;

.field mAddAnimationFlag:Z

.field mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mAddOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAddOtherViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAddedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAddedViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

.field protected mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

.field mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

.field private mCheckForPressAnimationDelay:J

.field mClickAnimationScaleX:F

.field mClickAnimationScaleY:F

.field private mCurrent:F

.field mDarKModeEnabled:Z

.field mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDefaultIntroAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mDirectionIntroAnimationDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerChangedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDummyDivider:Landroid/graphics/drawable/Drawable;

.field mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mEmptyHeight:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mFirstAddedPos:I

.field private mFocusSelector:Lcom/htc/widget/HtcListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

.field mInAddAnimation:Z

.field private mInBouncing:Z

.field mInDeleteAnimation:Z

.field private mIntroAnimatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroAnimationDelay:I

.field private mIntroAnimationRunnable:Ljava/lang/Runnable;

.field private mIntroAnimationType:I

.field mIntroAnimatorListenerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mIntroAnimatorSet:Landroid/animation/AnimatorSet;

.field mIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mIsCacheColorOpaque:Z

.field private mIsDisableAnimation:Z

.field private mItemsCanFocus:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriAdapter:Landroid/widget/ListAdapter;

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private mOverScrollShadow:Landroid/graphics/drawable/Drawable;

.field private mOverScrollShadowHeight:I

.field private mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

.field private mPre:F

.field mPressAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

.field private mPressedView:Landroid/view/View;

.field mPressedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mPreventOverScroll:Z

.field private mReleaseAnimationDuration:I

.field mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mResetToLastPos:Z

.field private mSame:Z

.field mScaleXDifference:F

.field mScaleYDifference:F

.field private mScrollCount:I

.field private mScrollEnd:Z

.field mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

.field mShouldDrawBottomShadow:Z

.field mShouldDrawPressShadow:Z

.field mShouldTriggerAnimation:Z

.field private mStart:F

.field private final mTempRect:Landroid/graphics/Rect;

.field shouldHideIntroAnimatedViews:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/HtcListView;->INTRO_ANIMATION_DURATIONS:[I

    .line 3983
    const/16 v0, 0x24

    sput v0, Lcom/htc/widget/HtcListView;->MAX_DIFF:I

    return-void

    .line 194
    nop

    :array_0
    .array-data 0x4
        0x5et 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 370
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 373
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 374
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 129
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mAreAllItemsSelectable:Z

    .line 131
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    .line 134
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    .line 139
    new-instance v7, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListView$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    .line 145
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mDarKModeEnabled:Z

    .line 150
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    .line 160
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    .line 165
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    .line 184
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mIntroAnimationType:I

    .line 189
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mShouldTriggerAnimation:Z

    .line 204
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mIntroAnimationDelay:I

    .line 209
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3fd9999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDefaultIntroAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 214
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f99999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 219
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3e99999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroAnimationDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 235
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mShouldDrawPressShadow:Z

    .line 240
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mShouldDrawBottomShadow:Z

    .line 245
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    .line 250
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    .line 252
    const/high16 v7, 0x4120

    iput v7, p0, Lcom/htc/widget/HtcListView;->mScaleXDifference:F

    .line 253
    const/high16 v7, 0x4120

    iput v7, p0, Lcom/htc/widget/HtcListView;->mScaleYDifference:F

    .line 254
    const v7, 0x3f666666

    iput v7, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleX:F

    .line 255
    const v7, 0x3f666666

    iput v7, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleY:F

    .line 257
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    .line 265
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    .line 270
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    .line 281
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mAddAnimationFlag:Z

    .line 286
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mDelAnimationFlag:Z

    .line 291
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mInAddAnimation:Z

    .line 296
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 301
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f99999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 306
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 307
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->animatorList:Ljava/util/ArrayList;

    .line 308
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOriFirstPosition:I

    .line 309
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mOriLastPage:Z

    .line 310
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    .line 311
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    .line 313
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    .line 314
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    .line 315
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mFirstAddedPos:I

    .line 319
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    .line 320
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    .line 321
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    .line 322
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    .line 323
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    .line 324
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mResetToLastPos:Z

    .line 325
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mScrollEnd:Z

    .line 326
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListView;->mScrollCount:I

    .line 328
    new-instance v7, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    .line 350
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 351
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    .line 352
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 353
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    .line 354
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    .line 357
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    .line 366
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mIsDisableAnimation:Z

    .line 3981
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mSame:Z

    .line 3985
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    .line 4012
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->isIgnoreFooterViewInBouncing:Z

    .line 4209
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mPressedView:Landroid/view/View;

    .line 4210
    const/16 v7, 0x3c

    iput v7, p0, Lcom/htc/widget/HtcListView;->mReleaseAnimationDuration:I

    .line 4211
    const-wide/16 v7, 0x64

    iput-wide v7, p0, Lcom/htc/widget/HtcListView;->mCheckForPressAnimationDelay:J

    .line 4380
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 4507
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->shouldHideIntroAnimatedViews:Z

    .line 4526
    new-instance v7, Lcom/htc/widget/HtcListView$3;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcListView$3;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mIntroAnimationRunnable:Ljava/lang/Runnable;

    .line 4549
    new-instance v7, Lcom/htc/widget/HtcListView$4;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcListView$4;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    .line 379
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 382
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 384
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 385
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 390
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_1
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 397
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 398
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_2
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 403
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 408
    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 410
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 411
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->setDividerHeight(I)V

    .line 414
    :cond_4
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mHeaderDividersEnabled:Z

    .line 415
    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mFooterDividersEnabled:Z

    .line 417
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 424
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    .line 425
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mShouldTriggerAnimation:Z

    .line 426
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->setDividerHeight(I)V

    .line 430
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->set2DPressAnimationEnabled(Z)V

    .line 431
    new-instance v7, Landroid/view/GestureDetector;

    invoke-direct {v7, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080198

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    .line 436
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x208017a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    .line 440
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->setScrollToCorrectPosListener(Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;)V

    .line 442
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_INTRO "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 445
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_PRESS "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 447
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_RELEASE "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 450
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_BOUNCING "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 452
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_ADD "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 454
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_DELETE "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 459
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 460
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x20e00ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/htc/widget/HtcListView;->mScaleXDifference:F

    .line 461
    const v7, 0x20e00bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/htc/widget/HtcListView;->mScaleYDifference:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v6           #res:Landroid/content/res/Resources;
    :goto_0
    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    const-string v8, "4.0a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 466
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListView;->mIsDisableAnimation:Z

    .line 468
    :cond_5
    return-void

    .line 462
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mResetToLastPos:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->playUpIntroAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->playRightIntroAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->playLeftIntroAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->startAddShowAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/widget/HtcListView;->mFirstAddedPos:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcListView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2401(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/widget/HtcListView;->mScrollCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/htc/widget/HtcListView;->mScrollCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/htc/widget/HtcListView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/widget/HtcListView;->mScrollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mScrollCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mScrollEnd:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcListView;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/widget/HtcListView;->mIntroAnimationType:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->playDefaultIntroAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->playDownIntroAnimation()V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3260
    add-int/lit8 v2, p2, -0x1

    .line 3261
    .local v2, abovePosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3262
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3263
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3265
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3269
    add-int/lit8 v2, p2, 0x1

    .line 3270
    .local v2, belowPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3271
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3272
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3274
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 486
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 489
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 492
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 494
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 497
    iget v3, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 499
    :cond_0
    if-gez v2, :cond_1

    .line 501
    const/4 v2, 0x0

    .line 519
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 520
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->offsetChildrenTopAndBottom(I)V

    .line 523
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 505
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 506
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 508
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 511
    iget v3, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 514
    :cond_4
    if-lez v2, :cond_1

    .line 515
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2875
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2876
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2878
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    .line 2880
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2881
    add-int/lit8 v3, v7, -0x1

    .line 2882
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2883
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2886
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2887
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2889
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2890
    .local v1, goalBottom:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2891
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2894
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2896
    const/4 v10, 0x0

    .line 2942
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2899
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2902
    const/4 v10, 0x0

    goto :goto_0

    .line 2905
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2907
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2909
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2910
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2913
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2915
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2916
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2917
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2919
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2920
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2921
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2922
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2923
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2925
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2927
    const/4 v10, 0x0

    goto :goto_0

    .line 2930
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2933
    const/4 v10, 0x0

    goto :goto_0

    .line 2936
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2937
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2939
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2940
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2942
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 3134
    const/4 v0, 0x0

    .line 3135
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3136
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/htc/widget/HtcListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3137
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3138
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3139
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3140
    if-lez p3, :cond_0

    .line 3141
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3153
    :cond_0
    :goto_0
    return v0

    .line 3145
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3146
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3147
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3148
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3149
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 3032
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 3034
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3035
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3036
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3061
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3062
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3066
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3067
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3068
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 3071
    :cond_1
    const/4 v14, 0x0

    .line 3093
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 3038
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 3039
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 3040
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 3042
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3046
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3058
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 3039
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 3040
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 3042
    goto :goto_4

    .line 3048
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 3050
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 3052
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3056
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 3048
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 3050
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 3052
    goto :goto_8

    .line 3075
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/htc/widget/HtcListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3077
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getMaxScrollAmount()I

    move-result v6

    .line 3078
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 3080
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->populate(II)V

    .line 3082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3083
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3088
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3089
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->populate(II)V

    .line 3090
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3093
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2659
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2733
    :cond_0
    :goto_0
    return v9

    .line 2663
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2664
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 2666
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2667
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListView;->amountToScroll(II)I

    move-result v0

    .line 2670
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;->arrowScrollFocused(I)Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2671
    .local v1, focusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2672
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2673
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2676
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2677
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2678
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/htc/widget/HtcListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2679
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->setSelectedPositionInt(I)V

    .line 2680
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->setNextSelectedPositionInt(I)V

    .line 2681
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2682
    move v5, v4

    .line 2683
    iget-boolean v7, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2686
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2687
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2688
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2691
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2692
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->checkSelectionChanged()V

    .line 2695
    :cond_4
    if-lez v0, :cond_5

    .line 2696
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListView;->scrollListItemsBy(I)V

    .line 2697
    const/4 v3, 0x1

    .line 2702
    :cond_5
    iget-boolean v7, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2704
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2705
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/htc/widget/HtcListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2706
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2711
    .end local v2           #focused:Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Lcom/htc/widget/HtcListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2713
    const/4 v6, 0x0

    .line 2714
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->hideSelector()V

    .line 2718
    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2721
    :cond_8
    if-eqz v3, :cond_0

    .line 2722
    if-eqz v6, :cond_9

    .line 2723
    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/HtcListView;->positionSelector(ILandroid/view/View;)V

    .line 2724
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 2726
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2727
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 2729
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2730
    goto/16 :goto_0

    .line 2670
    .end local v1           #focusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2676
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_d
    move v7, v9

    .line 2678
    goto :goto_3

    .line 2696
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 798
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 800
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 801
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v0, v4, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 802
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 803
    .local v3, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 804
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 800
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2351
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2498
    :cond_1
    :goto_0
    return v4

    .line 2355
    :cond_2
    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2356
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->layoutChildren()V

    .line 2359
    :cond_3
    const/4 v2, 0x0

    .line 2360
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2362
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2363
    sparse-switch p1, :sswitch_data_0

    .line 2479
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2483
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2487
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2498
    goto :goto_0

    .line 2365
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2366
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2367
    if-nez v2, :cond_4

    move v1, p2

    .line 2368
    .end local p2
    .local v1, count:I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2369
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2370
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_2

    .line 2376
    .end local v1           #count:I
    .restart local p2
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2377
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2382
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2383
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2384
    if-nez v2, :cond_4

    move v1, p2

    .line 2385
    .end local p2
    .restart local v1       #count:I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2386
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2387
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_4

    .line 2393
    .end local v1           #count:I
    .restart local p2
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2394
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2399
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2400
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2405
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2406
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2412
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2413
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2414
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2416
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->keyPressed()V

    .line 2417
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2423
    :sswitch_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2424
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2425
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2429
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2425
    goto :goto_6

    .line 2426
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2427
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2434
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2435
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2436
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2437
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2442
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2443
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2444
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2445
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2450
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2451
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2456
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2457
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2489
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2492
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2495
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2363
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1654
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1655
    .local v6, lastPosition:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1658
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1661
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1664
    .local v4, lastBottom:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1668
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1669
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1670
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1674
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1675
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1677
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1680
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->offsetChildrenTopAndBottom(I)V

    .line 1681
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1684
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    .line 1686
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1691
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1703
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1706
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1709
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1712
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1715
    .local v6, start:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1719
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1720
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1721
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1722
    .local v3, lastBottom:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1726
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1727
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1728
    :cond_0
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1730
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1733
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListView;->offsetChildrenTopAndBottom(I)V

    .line 1734
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1737
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    .line 1739
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1746
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1741
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1742
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 3164
    const/4 v0, 0x0

    .line 3165
    .local v0, distance:I
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3166
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3167
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3168
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3169
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3173
    :cond_0
    :goto_0
    return v0

    .line 3170
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3171
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private drawPressShadow(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 5730
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 5731
    .local v6, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v13, :cond_0

    .line 5732
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListView;->isIgnoreFooterViewInBouncing:Z

    if-eqz v13, :cond_1

    add-int/lit8 v13, v6, -0x1

    if-ne v8, v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_1

    .line 5755
    :cond_0
    return-void

    .line 5735
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5736
    .local v3, animatedView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v9

    .line 5737
    .local v9, scaleX:F
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v10

    .line 5738
    .local v10, scaleY:F
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v12, v13

    .line 5739
    .local v12, width:F
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v7, v13

    .line 5740
    .local v7, height:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcListView;->mScaleXDifference:F

    sub-float v13, v12, v13

    div-float v1, v13, v12

    .line 5741
    .local v1, animScaleX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcListView;->mScaleYDifference:F

    sub-float v13, v7, v13

    div-float v2, v13, v7

    .line 5742
    .local v2, animScaleY:F
    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v1

    const v15, 0x3f333333

    mul-float/2addr v14, v15

    sub-float v4, v13, v14

    .line 5743
    .local v4, boundX:F
    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v2

    const v15, 0x3f333333

    mul-float/2addr v14, v15

    sub-float v5, v13, v14

    .line 5744
    .local v5, boundY:F
    cmpg-float v13, v9, v4

    if-ltz v13, :cond_2

    cmpg-float v13, v10, v5

    if-gez v13, :cond_3

    .line 5745
    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 5746
    .local v11, shadowBounds:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, v11, Landroid/graphics/Rect;->top:I

    .line 5747
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v13

    iput v13, v11, Landroid/graphics/Rect;->bottom:I

    .line 5748
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, v11, Landroid/graphics/Rect;->left:I

    .line 5749
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v13

    iput v13, v11, Landroid/graphics/Rect;->right:I

    .line 5751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5731
    .end local v11           #shadowBounds:Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 1068
    iget v0, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 1069
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 1070
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    .line 1071
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1072
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    .line 1078
    :goto_0
    return-void

    .line 1074
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    .line 1075
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1076
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 951
    const/4 v8, 0x0

    .line 953
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int v7, v0, v1

    .line 954
    .local v7, end:I
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 958
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 960
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 961
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 963
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 964
    if-eqz v5, :cond_1

    .line 965
    move-object v8, v6

    .line 967
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 968
    goto :goto_0

    .line 960
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 970
    :cond_3
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 1036
    sub-int v6, p2, p1

    .line 1038
    .local v6, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1040
    .local v1, position:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 1042
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1044
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1045
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 1046
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1049
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1051
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 1052
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListView;->correctTooHigh(I)V

    .line 1057
    :goto_0
    return-object v7

    .line 1054
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1093
    .local v8, fadingEdgeLength:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1097
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/htc/widget/HtcListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 1099
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/htc/widget/HtcListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 1102
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1106
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 1109
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 1113
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 1114
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1117
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1133
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/htc/widget/HtcListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1135
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1136
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListView;->correctTooHigh(I)V

    .line 1141
    :goto_1
    return-object v10

    .line 1118
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 1121
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 1125
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 1126
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1129
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1138
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 1016
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1017
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1018
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1021
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1606
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1607
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1609
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1614
    iget v9, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 1615
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1616
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1618
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1619
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1620
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v8

    .line 1621
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1622
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListView;->correctTooHigh(I)V

    .line 1635
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1640
    .end local v10           #temp:Landroid/view/View;
    :goto_2
    return-object v10

    .line 1606
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1625
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1627
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1628
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1629
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v8

    .line 1630
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1631
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListView;->correctTooLow(I)V

    goto :goto_1

    .line 1637
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1638
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1640
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 984
    const/4 v8, 0x0

    .line 986
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 987
    .local v7, end:I
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 988
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 991
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 993
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 994
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 995
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 996
    if-eqz v5, :cond_1

    .line 997
    move-object v8, v6

    .line 999
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 1000
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v3

    .line 993
    goto :goto_1

    .line 1002
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1004
    return-object v8
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 13
    .parameter "animatedView"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5517
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 5518
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 5519
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 5520
    .local v6, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 5522
    .local v0, height:F
    iget v7, p0, Lcom/htc/widget/HtcListView;->mScaleYDifference:F

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .line 5523
    .local v5, scaleY:F
    iget v7, p0, Lcom/htc/widget/HtcListView;->mScaleXDifference:F

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .line 5526
    .local v4, scaleX:F
    const-string v7, "scaleX"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 5527
    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 5528
    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5529
    .local v1, pressAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5530
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5531
    return-object v1
.end method

.method private get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 12
    .parameter "animatedView"
    .parameter "onlyRelease"

    .prologue
    .line 5541
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 5542
    .local v7, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 5544
    .local v1, height:F
    iget v8, p0, Lcom/htc/widget/HtcListView;->mScaleYDifference:F

    sub-float v8, v1, v8

    div-float v6, v8, v1

    .line 5545
    .local v6, scaleY:F
    iget v8, p0, Lcom/htc/widget/HtcListView;->mScaleXDifference:F

    sub-float v8, v7, v8

    div-float v5, v8, v7

    .line 5547
    .local v5, scaleX:F
    const/4 v2, 0x0

    .line 5548
    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .line 5549
    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    iget v8, p0, Lcom/htc/widget/HtcListView;->mReleaseAnimationDuration:I

    add-int/lit8 v0, v8, 0x64

    .line 5550
    .local v0, duration:I
    if-eqz p2, :cond_0

    .line 5551
    const-string v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 5552
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 5553
    iget v0, p0, Lcom/htc/widget/HtcListView;->mReleaseAnimationDuration:I

    .line 5558
    :goto_0
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {p1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 5559
    .local v4, releaseAnimation:Landroid/animation/ObjectAnimator;
    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5560
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5561
    return-object v4

    .line 5555
    .end local v4           #releaseAnimation:Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v8, "scaleX"

    const/4 v9, 0x3

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 5556
    const-string v8, "scaleY"

    const/4 v9, 0x3

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto :goto_0
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 8
    .parameter "index"
    .parameter "child"
    .parameter "startValue"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4761
    const/4 v0, 0x0

    .line 4762
    .local v0, animator:Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 4763
    const-string v3, "y"

    new-array v4, v4, [F

    aput p3, v4, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4764
    .local v2, y:Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-static {p2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4765
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4774
    :goto_0
    return-object v0

    .line 4767
    .end local v2           #y:Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 4768
    .restart local v0       #animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 4769
    .local v1, pvhArray:[Landroid/animation/PropertyValuesHolder;
    aget-object v2, v1, v6

    .line 4770
    .restart local v2       #y:Landroid/animation/PropertyValuesHolder;
    new-array v3, v4, [F

    aput p3, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 4771
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2859
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1154
    move v0, p1

    .line 1155
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1156
    sub-int/2addr v0, p2

    .line 1158
    :cond_0
    return v0
.end method

.method private getIntroAnimatorListener(I)Landroid/animation/AnimatorListenerAdapter;
    .locals 2
    .parameter "index"

    .prologue
    .line 4601
    const/4 v0, 0x0

    .line 4602
    .local v0, listener:Landroid/animation/AnimatorListenerAdapter;
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4603
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #listener:Landroid/animation/AnimatorListenerAdapter;
    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    .line 4604
    .restart local v0       #listener:Landroid/animation/AnimatorListenerAdapter;
    :cond_0
    return-object v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1171
    move v0, p1

    .line 1172
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 1173
    add-int/2addr v0, p2

    .line 1175
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2594
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2595
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2599
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 2600
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2601
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2602
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2605
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2606
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2608
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2610
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2611
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2612
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2613
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2614
    const/4 v5, 0x1

    .line 2628
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2621
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2623
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2624
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2628
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2751
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2752
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2762
    :cond_0
    const/4 v5, 0x0

    .line 2763
    .local v5, topSelected:Z
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2764
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2765
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2766
    move v7, v2

    .line 2767
    .local v7, topViewIndex:I
    move v1, v4

    .line 2768
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2769
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2770
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2778
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 2781
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2782
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2783
    invoke-direct {p0, v6, v7, v3}, Lcom/htc/widget/HtcListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2787
    :cond_1
    if-eqz v0, :cond_2

    .line 2788
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2789
    invoke-direct {p0, v0, v1, v3}, Lcom/htc/widget/HtcListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2791
    :cond_2
    return-void

    .line 2772
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2773
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2774
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2775
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2782
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2788
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private hideIntroAnimatedViews(Z)V
    .locals 3
    .parameter "isCacheView"

    .prologue
    .line 4509
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4510
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4511
    .local v0, animatedView:Landroid/view/View;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4512
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 4509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4514
    .end local v0           #animatedView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 2018
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2019
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2020
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2021
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 2032
    :goto_1
    return v5

    .line 2020
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2025
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2026
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2027
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 2028
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 2029
    goto :goto_1

    .line 2027
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2032
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 3116
    if-ne p1, p2, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return v1

    .line 3120
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3121
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2979
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 2980
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2981
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2984
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 3019
    :cond_0
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_1
    move v5, v1

    .line 2981
    goto :goto_0

    .line 2987
    .restart local v5       #startPos:I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2988
    move v5, v1

    .line 2991
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v3

    .line 2992
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2993
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2994
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2993
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3000
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 3001
    .local v2, last:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 3004
    .restart local v5       #startPos:I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 3005
    goto :goto_1

    .line 3001
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 3007
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 3008
    move v5, v2

    .line 3011
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3012
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 3013
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3012
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 3019
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 2053
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2056
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2064
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2076
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 2071
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2074
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2076
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2801
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2802
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;->measureItem(Landroid/view/View;)V

    .line 2803
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2805
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2808
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2809
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2810
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2813
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2821
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2822
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2823
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2828
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2830
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2832
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2833
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2837
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2838
    return-void

    .line 2835
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1453
    .local v3, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1454
    new-instance v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v3           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1456
    .restart local v3       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1459
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 1461
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1463
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1465
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1466
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1470
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1471
    return-void

    .line 1468
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1218
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1222
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/htc/widget/HtcListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1224
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/htc/widget/HtcListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1227
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 1249
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1252
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 1255
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1259
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1262
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1265
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1268
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1269
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1270
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1273
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1275
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1279
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    .line 1363
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 1284
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    .line 1285
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    .line 1286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1288
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1309
    if-eqz p2, :cond_4

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1321
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1323
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1326
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1329
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1330
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1331
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1334
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1338
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/widget/HtcListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1316
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1341
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1346
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1349
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1352
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1353
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1355
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1360
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/widget/HtcListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private playDefaultIntroAnimation()V
    .locals 20

    .prologue
    .line 4608
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 4609
    .local v3, childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isIntroAnimationEnabled()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 4611
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4612
    const-string v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 4613
    .local v11, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 4614
    .local v12, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    sget-object v16, Lcom/htc/widget/HtcListView;->INTRO_ANIMATION_DURATIONS:[I

    const/16 v17, 0x0

    aget v7, v16, v17

    .line 4615
    .local v7, initialDuration:I
    const/4 v4, 0x0

    .line 4616
    .local v4, delay:I
    const/16 v5, 0x32

    .line 4617
    .local v5, delayDelta:I
    const/4 v10, 0x0

    .line 4618
    .local v10, originY:F
    const/high16 v14, -0x3d4c

    .line 4619
    .local v14, x:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 4620
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4621
    .local v2, child:Landroid/view/View;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 4622
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getMeasuredHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 4623
    const/high16 v16, -0x3d4c

    cmpl-float v16, v14, v16

    if-ltz v16, :cond_0

    const/high16 v14, -0x3d10

    .line 4624
    :cond_0
    const/high16 v16, 0x4170

    add-float v14, v14, v16

    .line 4625
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0xa

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v10, v0

    .line 4628
    :goto_1
    const-string v16, "rotationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v14, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 4629
    .local v13, rotateX:Landroid/animation/PropertyValuesHolder;
    const-string v16, "y"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 4630
    .local v15, y:Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    const/16 v17, 0x2

    aput-object v15, v16, v17

    const/16 v17, 0x3

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4631
    .local v8, introAnimation:Landroid/animation/ObjectAnimator;
    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4632
    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDefaultIntroAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4634
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListView;->getIntroAnimatorListener(I)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListView$IntroAnimatorListener;

    .line 4635
    .local v9, listener:Lcom/htc/widget/HtcListView$IntroAnimatorListener;
    if-nez v9, :cond_1

    .line 4636
    new-instance v9, Lcom/htc/widget/HtcListView$IntroAnimatorListener;

    .end local v9           #listener:Lcom/htc/widget/HtcListView$IntroAnimatorListener;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcListView$IntroAnimatorListener;-><init>(Lcom/htc/widget/HtcListView;)V

    .line 4637
    .restart local v9       #listener:Lcom/htc/widget/HtcListView$IntroAnimatorListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4639
    :cond_1
    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->setChildIndex(I)V

    .line 4640
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4642
    add-int/lit8 v16, v6, 0x1

    mul-int v4, v5, v16

    .line 4619
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 4626
    .end local v8           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v9           #listener:Lcom/htc/widget/HtcListView$IntroAnimatorListener;
    .end local v13           #rotateX:Landroid/animation/PropertyValuesHolder;
    .end local v15           #y:Landroid/animation/PropertyValuesHolder;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v10, v0

    goto/16 :goto_1

    .line 4644
    .end local v2           #child:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 4646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 4649
    .end local v4           #delay:I
    .end local v5           #delayDelta:I
    .end local v6           #i:I
    .end local v7           #initialDuration:I
    .end local v10           #originY:F
    .end local v11           #pvhScaleX:Landroid/animation/PropertyValuesHolder;
    .end local v12           #pvhScaleY:Landroid/animation/PropertyValuesHolder;
    .end local v14           #x:F
    :cond_4
    return-void

    .line 4612
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4613
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playDownIntroAnimation()V
    .locals 15

    .prologue
    .line 4652
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 4653
    .local v1, childCount:I
    if-gtz v1, :cond_1

    .line 4677
    :cond_0
    :goto_0
    return-void

    .line 4654
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isIntroAnimationEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4656
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4657
    sget-object v11, Lcom/htc/widget/HtcListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v12, 0x1

    aget v5, v11, v12

    .line 4658
    .local v5, initialDuration:I
    const/4 v3, 0x0

    .line 4659
    .local v3, deltaTop:I
    move v9, v5

    .line 4661
    .local v9, time:I
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 4662
    .local v8, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x0

    .local v7, pos:F
    add-int/lit8 v11, v1, -0x1

    int-to-float v2, v11

    .line 4663
    .local v2, count:F
    add-int/lit8 v4, v1, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_2

    .line 4664
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4665
    .local v0, child:Landroid/view/View;
    const-string v11, "y"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    int-to-float v14, v3

    aput v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 4666
    .local v10, y:Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 4667
    .local v6, introAnimation:Landroid/animation/ObjectAnimator;
    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4668
    int-to-long v11, v9

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4669
    int-to-float v7, v4

    .line 4670
    int-to-float v11, v9

    iget-object v12, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v13, v2, v7

    div-float/2addr v13, v2

    invoke-virtual {v12, v13}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int v9, v5, v11

    .line 4671
    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4672
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v3, v11

    .line 4663
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4674
    .end local v0           #child:Landroid/view/View;
    .end local v6           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v10           #y:Landroid/animation/PropertyValuesHolder;
    :cond_2
    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v12, p0, Lcom/htc/widget/HtcListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4675
    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 4661
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playLeftIntroAnimation()V
    .locals 15

    .prologue
    .line 4733
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 4734
    .local v1, childCount:I
    if-gtz v1, :cond_1

    .line 4755
    :cond_0
    :goto_0
    return-void

    .line 4735
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isIntroAnimationEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4737
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4738
    sget-object v10, Lcom/htc/widget/HtcListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v11, 0x4

    aget v4, v10, v11

    .line 4739
    .local v4, initialDuration:I
    move v8, v4

    .line 4740
    .local v8, time:I
    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 4741
    .local v7, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x0

    .local v6, pos:F
    add-int/lit8 v10, v1, -0x1

    int-to-float v2, v10

    .line 4742
    .local v2, count:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 4743
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4744
    .local v0, child:Landroid/view/View;
    const-string v10, "x"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 4745
    .local v9, x:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-static {v0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4746
    .local v5, introAnimation:Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4747
    int-to-long v10, v8

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4748
    int-to-float v6, v3

    .line 4749
    int-to-float v10, v8

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v12, v6, v2

    invoke-virtual {v11, v12}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v8, v4, v10

    .line 4750
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4742
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4752
    .end local v0           #child:Landroid/view/View;
    .end local v5           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v9           #x:Landroid/animation/PropertyValuesHolder;
    :cond_2
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4753
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 4740
    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playRightIntroAnimation()V
    .locals 15

    .prologue
    .line 4708
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 4709
    .local v1, childCount:I
    if-gtz v1, :cond_1

    .line 4730
    :cond_0
    :goto_0
    return-void

    .line 4710
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isIntroAnimationEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4712
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4713
    sget-object v10, Lcom/htc/widget/HtcListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v11, 0x3

    aget v4, v10, v11

    .line 4714
    .local v4, initialDuration:I
    move v8, v4

    .line 4715
    .local v8, time:I
    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 4716
    .local v7, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x0

    .local v6, pos:F
    add-int/lit8 v10, v1, -0x1

    int-to-float v2, v10

    .line 4717
    .local v2, count:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 4718
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4719
    .local v0, child:Landroid/view/View;
    const-string v10, "x"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 4720
    .local v9, x:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-static {v0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4721
    .local v5, introAnimation:Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4722
    int-to-long v10, v8

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4723
    int-to-float v6, v3

    .line 4724
    int-to-float v10, v8

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v12, v6, v2

    invoke-virtual {v11, v12}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v8, v4, v10

    .line 4725
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4717
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4727
    .end local v0           #child:Landroid/view/View;
    .end local v5           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v9           #x:Landroid/animation/PropertyValuesHolder;
    :cond_2
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v11, p0, Lcom/htc/widget/HtcListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4728
    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 4715
    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playUpIntroAnimation()V
    .locals 17

    .prologue
    .line 4680
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 4681
    .local v3, childCount:I
    if-gtz v3, :cond_1

    .line 4705
    :cond_0
    :goto_0
    return-void

    .line 4682
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isIntroAnimationEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 4684
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4685
    sget-object v13, Lcom/htc/widget/HtcListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v14, 0x2

    aget v7, v13, v14

    .line 4686
    .local v7, initialDuration:I
    const/4 v5, 0x0

    .line 4687
    .local v5, deltaTop:I
    move v11, v7

    .line 4688
    .local v11, time:I
    const-string v13, "scaleY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 4689
    .local v10, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x0

    .local v9, pos:F
    add-int/lit8 v13, v3, -0x1

    int-to-float v4, v13

    .line 4690
    .local v4, count:F
    add-int/lit8 v13, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 4691
    .local v1, bottom:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 4692
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4693
    .local v2, child:Landroid/view/View;
    const-string v13, "y"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    add-int v16, v5, v1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 4694
    .local v12, y:Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v2, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4695
    .local v8, introAnimation:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4696
    int-to-long v13, v11

    invoke-virtual {v8, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4697
    int-to-float v9, v6

    .line 4698
    int-to-float v13, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v15, v9, v4

    invoke-virtual {v14, v15}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int v11, v7, v13

    .line 4699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4700
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v5, v13

    .line 4691
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4702
    .end local v2           #child:Landroid/view/View;
    .end local v8           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v12           #y:Landroid/animation/PropertyValuesHolder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4703
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 4688
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 3102
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3103
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3104
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3105
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3108
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2847
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2848
    .local v4, h:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2849
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2850
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2851
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2852
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2853
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 602
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 603
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView$FixedViewInfo;

    .line 604
    .local v1, info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    iget-object v3, v1, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 605
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    .end local v1           #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :cond_0
    return-void

    .line 602
    .restart local v1       #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 3184
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->offsetChildrenTopAndBottom(I)V

    .line 3186
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3187
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3188
    .local v6, listTop:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 3190
    .local v8, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3194
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    .line 3195
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3196
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3197
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3198
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3199
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3200
    add-int/lit8 v7, v7, 0x1

    .line 3204
    goto :goto_0

    .line 3209
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3210
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListView;->offsetChildrenTopAndBottom(I)V

    .line 3214
    :cond_1
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3215
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3216
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 3217
    .local v4, layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v9, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3218
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3219
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3223
    :goto_2
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3224
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_1

    .line 3221
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3228
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3231
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3232
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/htc/widget/HtcListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3233
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_3

    .line 3238
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3239
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListView;->offsetChildrenTopAndBottom(I)V

    .line 3242
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3243
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3246
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3247
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 3248
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v9, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3249
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3250
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3254
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3255
    goto :goto_4

    .line 3252
    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3257
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setDelViewLocation()V
    .locals 22

    .prologue
    .line 5239
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 5240
    .local v12, nowFirstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 5241
    .local v14, positionDiff:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v10

    .line 5242
    .local v10, nowCurChildCount:I
    const/4 v13, 0x0

    .line 5243
    .local v13, nowLastPage:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 5244
    const/4 v13, 0x1

    .line 5246
    :cond_0
    const/4 v11, 0x0

    .line 5247
    .local v11, nowFirstPage:Z
    if-nez v12, :cond_1

    .line 5248
    const/4 v11, 0x1

    .line 5250
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getTop()I

    move-result v18

    .line 5251
    .local v18, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getBottom()I

    move-result v2

    .line 5253
    .local v2, bottom:I
    const/4 v3, 0x0

    .line 5254
    .local v3, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    .line 5255
    .local v4, childCount:I
    const/16 v7, 0x64

    .line 5257
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 5258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    .line 5262
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 5263
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5262
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5260
    .end local v8           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 5267
    .restart local v8       #i:I
    :cond_3
    const/4 v5, 0x1

    .line 5268
    .local v5, childIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mOriLastPage:Z

    move/from16 v19, v0

    if-nez v19, :cond_16

    .line 5269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 5270
    if-nez v13, :cond_5

    .line 5436
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    sub-int v6, v19, v20

    .line 5437
    .local v6, diff:I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_1d

    .line 5438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5437
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5273
    .end local v6           #diff:I
    :cond_5
    if-nez v11, :cond_7

    .line 5275
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 5276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5275
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5279
    :cond_6
    const/4 v5, 0x1

    .line 5280
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5282
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 5286
    :cond_7
    if-nez v11, :cond_4

    .line 5287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 5288
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_8

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5288
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 5292
    :cond_8
    const/4 v5, 0x1

    .line 5293
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5295
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 5298
    :cond_9
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_a

    .line 5299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5298
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 5302
    :cond_a
    const/4 v5, 0x1

    .line 5303
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5305
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 5312
    :cond_b
    if-nez v13, :cond_d

    .line 5313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_c

    .line 5314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 5316
    :cond_c
    const/4 v8, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5316
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 5321
    :cond_d
    if-nez v11, :cond_12

    .line 5322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 5323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_f

    .line 5324
    const/4 v8, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_e

    .line 5325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5324
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 5329
    :cond_e
    const/4 v5, 0x1

    .line 5330
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5332
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 5335
    :cond_f
    const/4 v8, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_10

    .line 5336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5335
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 5338
    :cond_10
    const/4 v8, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_11

    .line 5339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5338
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 5342
    :cond_11
    const/4 v5, 0x1

    .line 5343
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5345
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 5350
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 5352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    .line 5353
    const/4 v8, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_13

    .line 5354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5353
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 5357
    :cond_13
    const/4 v5, 0x1

    .line 5358
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5360
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 5363
    :cond_14
    const/4 v8, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_15

    .line 5364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    mul-int v20, v20, v7

    add-int v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5363
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 5367
    :cond_15
    const/4 v5, 0x1

    .line 5368
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5370
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 5378
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 5379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 5382
    if-eqz v14, :cond_4

    .line 5383
    const/4 v5, 0x1

    .line 5384
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5386
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 5391
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    move/from16 v19, v0

    if-nez v19, :cond_1a

    .line 5392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_18

    .line 5393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 5394
    const/4 v5, 0x1

    .line 5395
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5397
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 5400
    :cond_18
    const/4 v8, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_19

    .line 5401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5400
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 5403
    :cond_19
    const/4 v5, 0x1

    .line 5404
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5406
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 5410
    :cond_1a
    if-nez v11, :cond_1c

    .line 5411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1b

    .line 5412
    const/4 v5, 0x1

    .line 5413
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5415
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 5418
    :cond_1b
    const/4 v5, 0x1

    .line 5419
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5421
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 5425
    :cond_1c
    const/4 v5, 0x1

    .line 5426
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    .line 5427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    mul-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5428
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 5441
    .restart local v6       #diff:I
    :cond_1d
    const/4 v9, 0x0

    .line 5442
    .local v9, invertCount:I
    add-int/lit8 v8, v4, -0x1

    :goto_1b
    if-ltz v8, :cond_20

    .line 5443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 5444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5442
    :cond_1e
    :goto_1c
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    .line 5446
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e

    .line 5447
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 5451
    :cond_20
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v9, v0, :cond_22

    .line 5452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 5453
    .local v17, tmpViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 5454
    .local v15, tmpOriTopList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 5455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 5456
    const/16 v16, 0x0

    .line 5457
    .local v16, tmpPos:I
    const/4 v8, 0x0

    :goto_1d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_22

    .line 5458
    if-ge v8, v9, :cond_21

    .line 5459
    sub-int v19, v9, v8

    add-int/lit8 v16, v19, -0x1

    .line 5463
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5457
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 5461
    :cond_21
    move/from16 v16, v8

    goto :goto_1e

    .line 5467
    .end local v15           #tmpOriTopList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16           #tmpPos:I
    .end local v17           #tmpViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_22
    return-void
.end method

.method private setIntroAnimationEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4493
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 4495
    :goto_0
    return-void

    .line 4494
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 2095
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 2096
    .local v11, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 2097
    .local v17, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2098
    .local v13, mode:I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 2100
    .local v10, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 2101
    .local v16, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 2105
    .local v14, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 2106
    .local v15, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 2107
    new-instance v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v15           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 2110
    .restart local v15       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 2112
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 2114
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/htc/widget/HtcListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2123
    :goto_6
    if-eqz v17, :cond_4

    .line 2124
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2127
    :cond_4
    if-eqz v16, :cond_5

    .line 2128
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2131
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2132
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 2133
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2140
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 2141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2143
    .local v8, childWidthSpec:I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2145
    .local v12, lpHeight:I
    if-lez v12, :cond_13

    .line 2146
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2150
    .local v5, childHeightSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2155
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2156
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2157
    .local v9, h:I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2159
    .local v7, childTop:I
    :goto_a
    if-eqz v14, :cond_16

    .line 2160
    add-int v6, p5, v18

    .line 2161
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 2162
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2168
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 2169
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2172
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 2174
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2176
    :cond_8
    return-void

    .line 2095
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2096
    .restart local v11       #isSelected:Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2098
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2100
    .restart local v10       #isPressed:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 2101
    .restart local v16       #updateChildPressed:Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 2114
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 2116
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 2117
    iget v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2118
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2120
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/htc/widget/HtcListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    .line 2134
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 2148
    .restart local v8       #childWidthSpec:I
    .restart local v12       #lpHeight:I
    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto/16 :goto_8

    .line 2152
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2157
    .restart local v9       #h:I
    .restart local v18       #w:I
    :cond_15
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 2164
    .restart local v7       #childTop:I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2165
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private setupDividerChangedList()V
    .locals 3

    .prologue
    .line 4520
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4521
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4522
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4524
    :cond_0
    return-void
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 823
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 824
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 826
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 828
    .local v3, listBottom:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 814
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 815
    .local v0, listTop:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startAddDropAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4931
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4933
    .local v6, size:I
    if-nez v6, :cond_0

    .line 4934
    iput-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 4935
    iput-boolean v12, p0, Lcom/htc/widget/HtcListView;->mInAddAnimation:Z

    .line 4979
    :goto_0
    return-void

    .line 4939
    :cond_0
    iput-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 4943
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    .line 4945
    const/16 v4, 0x64

    .line 4946
    .local v4, minDuration:I
    const/16 v7, 0x64

    .line 4947
    .local v7, time:I
    const/4 v8, 0x0

    .line 4949
    .local v8, top:I
    const/4 v1, 0x0

    .line 4951
    .local v1, child:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4952
    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_1

    .line 4954
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #child:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 4955
    .restart local v1       #child:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4958
    int-to-float v5, v3

    .local v5, pos:F
    add-int/lit8 v9, v6, -0x1

    int-to-float v2, v9

    .line 4959
    .local v2, count:F
    int-to-float v9, v7

    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v11, v2, v5

    div-float/2addr v11, v2

    invoke-virtual {v10, v11}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v7, v9, 0x64

    .line 4961
    add-int/lit8 v9, v6, -0x1

    sub-int/2addr v9, v3

    int-to-float v10, v8

    invoke-direct {p0, v9, v1, v10}, Lcom/htc/widget/HtcListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4962
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v9, v7

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4963
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4965
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    new-array v10, v13, [Landroid/animation/Animator;

    aput-object v0, v10, v12

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4952
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4968
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v2           #count:F
    .end local v5           #pos:F
    :cond_1
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/htc/widget/HtcListView$6;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcListView$6;-><init>(Lcom/htc/widget/HtcListView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4976
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v9, :cond_2

    .line 4977
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v9}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4978
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private startAddShowAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 4879
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4880
    .local v6, size:I
    if-nez v6, :cond_0

    .line 4881
    iput-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 4882
    iput-boolean v10, p0, Lcom/htc/widget/HtcListView;->mAddAnimationFlag:Z

    .line 4883
    iput-boolean v10, p0, Lcom/htc/widget/HtcListView;->mInAddAnimation:Z

    .line 4928
    :goto_0
    return-void

    .line 4888
    :cond_0
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    .line 4890
    const/16 v7, 0x12c

    .line 4893
    .local v7, time:I
    const-string v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4894
    .local v3, pvhAlpha:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleX"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 4895
    .local v4, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    new-array v9, v11, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 4897
    .local v5, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 4898
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4899
    .local v1, child:Landroid/view/View;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v8, v10

    aput-object v4, v8, v12

    aput-object v3, v8, v11

    invoke-static {v1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4900
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4901
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4902
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    new-array v9, v12, [Landroid/animation/Animator;

    aput-object v0, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4897
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4905
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v1           #child:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/htc/widget/HtcListView$5;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcListView$5;-><init>(Lcom/htc/widget/HtcListView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4925
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v8, :cond_2

    .line 4926
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v8}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4927
    :cond_2
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mAddAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 4893
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4894
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4895
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private startDelDropAnimation()V
    .locals 10

    .prologue
    .line 5191
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 5193
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->setDelViewLocation()V

    .line 5195
    const/16 v4, 0x96

    .line 5196
    .local v4, minDuration:I
    const/16 v6, 0x96

    .line 5197
    .local v6, time:I
    const/4 v1, 0x0

    .line 5199
    .local v1, child:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 5201
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #child:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 5203
    .restart local v1       #child:Landroid/view/View;
    int-to-float v5, v3

    .line 5204
    .local v5, pos:F
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v2, v7

    .line 5205
    .local v2, count:F
    int-to-float v7, v6

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v9, v5, v2

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit16 v6, v7, 0x96

    .line 5206
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v3, v1, v7}, Lcom/htc/widget/HtcListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5207
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v7, v6

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5209
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5210
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5213
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v2           #count:F
    .end local v5           #pos:F
    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/htc/widget/HtcListView$8;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcListView$8;-><init>(Lcom/htc/widget/HtcListView;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5232
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v7, :cond_1

    .line 5233
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v7}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 5234
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 5235
    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 5108
    iput-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 5110
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5111
    .local v6, size:I
    if-nez v6, :cond_3

    .line 5112
    iput-boolean v10, p0, Lcom/htc/widget/HtcListView;->mDelAnimationFlag:Z

    .line 5113
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    .line 5114
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v8, v8, Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v8, :cond_1

    .line 5115
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v8

    check-cast v8, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 5185
    :cond_0
    :goto_0
    return-void

    .line 5116
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v8, v8, Landroid/widget/BaseAdapter;

    if-eqz v8, :cond_2

    .line 5117
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 5118
    :cond_2
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v8, :cond_0

    .line 5119
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_0

    .line 5126
    :cond_3
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 5127
    const/16 v7, 0x12c

    .line 5131
    .local v7, time:I
    const-string v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 5132
    .local v3, pvhAlpha:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleX"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 5133
    .local v4, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    new-array v9, v11, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 5135
    .local v5, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 5136
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5137
    .local v1, child:Landroid/view/View;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v8, v12

    aput-object v4, v8, v10

    aput-object v3, v8, v11

    invoke-static {v1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5138
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5139
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5140
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v9, v10, [Landroid/animation/Animator;

    aput-object v0, v9, v12

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5143
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v1           #child:Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/htc/widget/HtcListView$7;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcListView$7;-><init>(Lcom/htc/widget/HtcListView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5182
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v8, :cond_5

    .line 5183
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v8}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 5184
    :cond_5
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 5131
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 5132
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data

    .line 5133
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method private triggerIntroAniamtion()V
    .locals 1

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    if-eqz v0, :cond_0

    .line 4499
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;->onAnimationStart()V

    .line 4500
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;->onAnimationEnd()V

    .line 4502
    :cond_0
    return-void
.end method


# virtual methods
.method public addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 4401
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4402
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 655
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 656
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 631
    new-instance v0, Lcom/htc/widget/HtcListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListView;)V

    .line 632
    .local v0, info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 633
    iput-object p2, v0, Lcom/htc/widget/HtcListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 634
    iput-boolean p3, v0, Lcom/htc/widget/HtcListView$FixedViewInfo;->isSelectable:Z

    .line 635
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 642
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 571
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListView;)V

    .line 546
    .local v0, info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 547
    iput-object p2, v0, Lcom/htc/widget/HtcListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 548
    iput-boolean p3, v0, Lcom/htc/widget/HtcListView$FixedViewInfo;->isSelectable:Z

    .line 549
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 556
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2640
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 2641
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2642
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2643
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2647
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2180
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelPressAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 5568
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    if-eqz v3, :cond_0

    .line 5569
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5571
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5572
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5573
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 5574
    .local v0, anim:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_1

    .line 5575
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 5576
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5578
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 5579
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 5571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5581
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcListView;->mPressedView:Landroid/view/View;

    .line 5582
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5583
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 5584
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 46
    .parameter "canvas"

    .prologue
    .line 3368
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isOverScrollAnimationEnabled()Z

    move-result v42

    if-eqz v42, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    move/from16 v42, v0

    if-nez v42, :cond_2

    .line 3369
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v12

    .line 3370
    .local v12, childCount:I
    const/16 v38, 0x0

    .line 3371
    .local v38, shadowHeight:I
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_1

    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_1

    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTranslationY()F

    move-result v42

    const/16 v43, 0x0

    cmpl-float v42, v42, v43

    if-lez v42, :cond_1

    .line 3372
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 3373
    .local v9, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v38, v0

    .line 3374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v38, v0

    .line 3375
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1

    if-lez v38, :cond_1

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v44

    add-int v45, v9, v38

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3380
    .end local v9           #bottom:I
    :cond_1
    const/16 v26, 0x1

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v12, :cond_2

    .line 3381
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3382
    .local v11, child:Landroid/view/View;
    add-int/lit8 v42, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3383
    .local v31, nextChild:Landroid/view/View;
    if-nez v11, :cond_c

    .line 3398
    .end local v11           #child:Landroid/view/View;
    .end local v12           #childCount:I
    .end local v26           #i:I
    .end local v31           #nextChild:Landroid/view/View;
    .end local v38           #shadowHeight:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v42, v0

    if-eqz v42, :cond_3

    .line 3399
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    .line 3403
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 3404
    .local v14, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    .line 3405
    .local v34, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3406
    .local v33, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v34, :cond_f

    const/16 v17, 0x1

    .line 3407
    .local v17, drawOverscrollHeader:Z
    :goto_1
    if-eqz v33, :cond_10

    const/16 v16, 0x1

    .line 3408
    .local v16, drawOverscrollFooter:Z
    :goto_2
    if-lez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_11

    const/4 v15, 0x1

    .line 3410
    .local v15, drawDividers:Z
    :goto_3
    if-nez v15, :cond_4

    if-nez v17, :cond_4

    if-eqz v16, :cond_15

    .line 3412
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    .line 3413
    .local v10, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v42, v0

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 3414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v13

    .line 3417
    .local v13, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 3418
    .local v24, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    .line 3419
    .local v27, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    sub-int v42, v27, v42

    add-int/lit8 v23, v42, -0x1

    .line 3420
    .local v23, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mHeaderDividersEnabled:Z

    move/from16 v25, v0

    .line 3421
    .local v25, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mFooterDividersEnabled:Z

    move/from16 v22, v0

    .line 3422
    .local v22, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    .line 3423
    .local v21, first:I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcListView;->mAreAllItemsSelectable:Z

    .line 3424
    .local v8, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3429
    .local v5, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isOpaque()Z

    move-result v42

    if-eqz v42, :cond_12

    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v42

    if-nez v42, :cond_12

    const/16 v20, 0x1

    .line 3431
    .local v20, fillForMissingDividers:Z
    :goto_4
    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v42, v0

    if-nez v42, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mIsCacheColorOpaque:Z

    move/from16 v42, v0

    if-eqz v42, :cond_5

    .line 3432
    new-instance v42, Landroid/graphics/Paint;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v42, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCacheColorHint()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Landroid/graphics/Paint;->setColor(I)V

    .line 3435
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    .line 3437
    .local v35, paint:Landroid/graphics/Paint;
    const/16 v19, 0x0

    .line 3438
    .local v19, effectivePaddingTop:I
    const/16 v18, 0x0

    .line 3439
    .local v18, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v42, v0

    and-int/lit8 v42, v42, 0x22

    const/16 v43, 0x22

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_6

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 3444
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    sub-int v42, v42, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v43, v0

    add-int v29, v42, v43

    .line 3445
    .local v29, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v42, v0

    if-nez v42, :cond_17

    .line 3446
    const/4 v9, 0x0

    .line 3449
    .restart local v9       #bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v37, v0

    .line 3450
    .local v37, scrollY:I
    if-lez v13, :cond_7

    if-gez v37, :cond_7

    .line 3451
    if-eqz v17, :cond_13

    .line 3452
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3453
    move/from16 v0, v37

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/widget/HtcListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3462
    :cond_7
    :goto_5
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_6
    move/from16 v0, v26

    if-ge v0, v13, :cond_14

    .line 3463
    if-nez v25, :cond_8

    add-int v42, v21, v26

    move/from16 v0, v42

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    :cond_8
    if-nez v22, :cond_9

    add-int v42, v21, v26

    move/from16 v0, v42

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 3465
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3466
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 3469
    if-eqz v15, :cond_b

    move/from16 v0, v29

    if-ge v9, v0, :cond_b

    if-eqz v16, :cond_a

    add-int/lit8 v42, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v42

    if-eq v0, v1, :cond_b

    .line 3483
    :cond_a
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 3484
    add-int v42, v9, v14

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3485
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3462
    .end local v11           #child:Landroid/view/View;
    :cond_b
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 3385
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #areAllItemsSelectable:Z
    .end local v9           #bottom:I
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v13           #count:I
    .end local v14           #dividerHeight:I
    .end local v15           #drawDividers:Z
    .end local v16           #drawOverscrollFooter:Z
    .end local v17           #drawOverscrollHeader:Z
    .end local v18           #effectivePaddingBottom:I
    .end local v19           #effectivePaddingTop:I
    .end local v20           #fillForMissingDividers:Z
    .end local v21           #first:I
    .end local v22           #footerDividers:Z
    .end local v23           #footerLimit:I
    .end local v24           #headerCount:I
    .end local v25           #headerDividers:Z
    .end local v27           #itemCount:I
    .end local v29           #listBottom:I
    .end local v33           #overscrollFooter:Landroid/graphics/drawable/Drawable;
    .end local v34           #overscrollHeader:Landroid/graphics/drawable/Drawable;
    .end local v35           #paint:Landroid/graphics/Paint;
    .end local v37           #scrollY:I
    .restart local v11       #child:Landroid/view/View;
    .restart local v12       #childCount:I
    .restart local v31       #nextChild:Landroid/view/View;
    .restart local v38       #shadowHeight:I
    :cond_c
    const/16 v38, 0x0

    .line 3386
    if-eqz v31, :cond_d

    .line 3387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v38, v0

    .line 3388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    if-le v0, v1, :cond_d

    .line 3389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v38, v0

    .line 3391
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    move/from16 v42, v0

    if-eqz v42, :cond_e

    if-lez v38, :cond_e

    .line 3392
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getBottom()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getTranslationY()F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    add-int v9, v42, v43

    .line 3393
    .restart local v9       #bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v44

    add-int v45, v9, v38

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3380
    .end local v9           #bottom:I
    :cond_e
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 3406
    .end local v11           #child:Landroid/view/View;
    .end local v12           #childCount:I
    .end local v26           #i:I
    .end local v31           #nextChild:Landroid/view/View;
    .end local v38           #shadowHeight:I
    .restart local v14       #dividerHeight:I
    .restart local v33       #overscrollFooter:Landroid/graphics/drawable/Drawable;
    .restart local v34       #overscrollHeader:Landroid/graphics/drawable/Drawable;
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3407
    .restart local v17       #drawOverscrollHeader:Z
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 3408
    .restart local v16       #drawOverscrollFooter:Z
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3429
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v8       #areAllItemsSelectable:Z
    .restart local v10       #bounds:Landroid/graphics/Rect;
    .restart local v13       #count:I
    .restart local v15       #drawDividers:Z
    .restart local v21       #first:I
    .restart local v22       #footerDividers:Z
    .restart local v23       #footerLimit:I
    .restart local v24       #headerCount:I
    .restart local v25       #headerDividers:Z
    .restart local v27       #itemCount:I
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 3455
    .restart local v9       #bottom:I
    .restart local v18       #effectivePaddingBottom:I
    .restart local v19       #effectivePaddingTop:I
    .restart local v20       #fillForMissingDividers:Z
    .restart local v29       #listBottom:I
    .restart local v35       #paint:Landroid/graphics/Paint;
    .restart local v37       #scrollY:I
    :cond_13
    if-eqz v15, :cond_7

    .line 3456
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3457
    neg-int v0, v14

    move/from16 v42, v0

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3458
    const/16 v42, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 3490
    .restart local v26       #i:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v43, v0

    add-int v32, v42, v43

    .line 3491
    .local v32, overFooterBottom:I
    if-eqz v16, :cond_15

    add-int v42, v21, v13

    move/from16 v0, v42

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    move/from16 v0, v32

    if-le v0, v9, :cond_15

    .line 3493
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 3494
    move/from16 v0, v32

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/widget/HtcListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3551
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #areAllItemsSelectable:Z
    .end local v9           #bottom:I
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v13           #count:I
    .end local v18           #effectivePaddingBottom:I
    .end local v19           #effectivePaddingTop:I
    .end local v20           #fillForMissingDividers:Z
    .end local v21           #first:I
    .end local v22           #footerDividers:Z
    .end local v23           #footerLimit:I
    .end local v24           #headerCount:I
    .end local v25           #headerDividers:Z
    .end local v26           #i:I
    .end local v27           #itemCount:I
    .end local v29           #listBottom:I
    .end local v32           #overFooterBottom:I
    .end local v35           #paint:Landroid/graphics/Paint;
    .end local v37           #scrollY:I
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mAddAnimationFlag:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_25

    .line 3552
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mAddAnimationFlag:Z

    .line 3554
    const/4 v7, 0x0

    .line 3555
    .local v7, addUpperChildCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 3556
    .local v30, listLength:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v13

    .line 3558
    .restart local v13       #count:I
    const/4 v6, 0x0

    .line 3559
    .local v6, addPos:I
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_8
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_21

    .line 3560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Integer;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v42, v0

    move/from16 v0, v42

    if-ge v6, v0, :cond_16

    .line 3562
    add-int/lit8 v7, v7, 0x1

    .line 3559
    :cond_16
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 3500
    .end local v6           #addPos:I
    .end local v7           #addUpperChildCount:I
    .end local v26           #i:I
    .end local v30           #listLength:I
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v8       #areAllItemsSelectable:Z
    .restart local v10       #bounds:Landroid/graphics/Rect;
    .restart local v18       #effectivePaddingBottom:I
    .restart local v19       #effectivePaddingTop:I
    .restart local v20       #fillForMissingDividers:Z
    .restart local v21       #first:I
    .restart local v22       #footerDividers:Z
    .restart local v23       #footerLimit:I
    .restart local v24       #headerCount:I
    .restart local v25       #headerDividers:Z
    .restart local v27       #itemCount:I
    .restart local v29       #listBottom:I
    .restart local v35       #paint:Landroid/graphics/Paint;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v37, v0

    .line 3502
    .restart local v37       #scrollY:I
    if-lez v13, :cond_18

    if-eqz v17, :cond_18

    .line 3503
    move/from16 v0, v37

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3504
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v42

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3505
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/widget/HtcListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3508
    :cond_18
    if-eqz v17, :cond_1d

    const/16 v39, 0x1

    .line 3509
    .local v39, start:I
    :goto_9
    move/from16 v26, v39

    .restart local v26       #i:I
    :goto_a
    move/from16 v0, v26

    if-ge v0, v13, :cond_1f

    .line 3510
    if-nez v25, :cond_19

    add-int v42, v21, v26

    move/from16 v0, v42

    move/from16 v1, v24

    if-lt v0, v1, :cond_1c

    :cond_19
    if-nez v22, :cond_1a

    add-int v42, v21, v26

    move/from16 v0, v42

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c

    .line 3512
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3513
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v40

    .line 3515
    .local v40, top:I
    move/from16 v0, v40

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    .line 3516
    if-nez v8, :cond_1b

    add-int v42, v21, v26

    move/from16 v0, v42

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v42

    if-eqz v42, :cond_1e

    add-int/lit8 v42, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v42

    if-eq v0, v1, :cond_1b

    add-int v42, v21, v26

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v42

    if-eqz v42, :cond_1e

    .line 3519
    :cond_1b
    sub-int v42, v40, v14

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3520
    move/from16 v0, v40

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3525
    add-int/lit8 v42, v26, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3509
    .end local v11           #child:Landroid/view/View;
    .end local v40           #top:I
    :cond_1c
    :goto_b
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 3508
    .end local v26           #i:I
    .end local v39           #start:I
    :cond_1d
    const/16 v39, 0x0

    goto :goto_9

    .line 3526
    .restart local v11       #child:Landroid/view/View;
    .restart local v26       #i:I
    .restart local v39       #start:I
    .restart local v40       #top:I
    :cond_1e
    if-eqz v20, :cond_1c

    .line 3527
    sub-int v42, v40, v14

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3528
    move/from16 v0, v40

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3529
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b

    .line 3535
    .end local v11           #child:Landroid/view/View;
    .end local v40           #top:I
    :cond_1f
    if-lez v13, :cond_15

    if-lez v37, :cond_15

    .line 3536
    if-eqz v16, :cond_20

    .line 3537
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    .line 3538
    .local v4, absListBottom:I
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3539
    add-int v42, v4, v37

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/widget/HtcListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3541
    .end local v4           #absListBottom:I
    :cond_20
    if-eqz v15, :cond_15

    .line 3542
    move/from16 v0, v29

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3543
    add-int v42, v29, v14

    move/from16 v0, v42

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 3544
    const/16 v42, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7

    .line 3566
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #areAllItemsSelectable:Z
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v18           #effectivePaddingBottom:I
    .end local v19           #effectivePaddingTop:I
    .end local v20           #fillForMissingDividers:Z
    .end local v21           #first:I
    .end local v22           #footerDividers:Z
    .end local v23           #footerLimit:I
    .end local v24           #headerCount:I
    .end local v25           #headerDividers:Z
    .end local v27           #itemCount:I
    .end local v29           #listBottom:I
    .end local v35           #paint:Landroid/graphics/Paint;
    .end local v37           #scrollY:I
    .end local v39           #start:I
    .restart local v6       #addPos:I
    .restart local v7       #addUpperChildCount:I
    .restart local v30       #listLength:I
    :cond_21
    const/16 v41, 0x0

    .line 3567
    .local v41, totalHeight:I
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v13, :cond_24

    .line 3568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v42, v0

    add-int v36, v42, v26

    .line 3569
    .local v36, position:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3570
    .restart local v11       #child:Landroid/view/View;
    const/16 v40, 0x0

    .line 3572
    .restart local v40       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_23

    .line 3573
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3575
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v42

    add-int v41, v41, v42

    .line 3567
    :cond_22
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 3577
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-eqz v42, :cond_22

    .line 3578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v40, v42, v41

    .line 3580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 3584
    .end local v11           #child:Landroid/view/View;
    .end local v36           #position:I
    .end local v40           #top:I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->startAddDropAnimation()V

    .line 3589
    .end local v6           #addPos:I
    .end local v7           #addUpperChildCount:I
    .end local v13           #count:I
    .end local v26           #i:I
    .end local v30           #listLength:I
    .end local v41           #totalHeight:I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDelAnimationFlag:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_26

    .line 3590
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mDelAnimationFlag:Z

    .line 3591
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->startDelDropAnimation()V

    .line 3596
    :cond_26
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    move/from16 v42, v0

    if-nez v42, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mShouldDrawPressShadow:Z

    move/from16 v42, v0

    if-eqz v42, :cond_27

    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->drawPressShadow(Landroid/graphics/Canvas;)V

    .line 3604
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mShouldDrawBottomShadow:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_28

    .line 3605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->isIgnoreFooterViewInBouncing:Z

    move/from16 v42, v0

    if-eqz v42, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v42

    if-nez v42, :cond_29

    .line 3606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v43, v0

    add-int v42, v42, v43

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_28

    .line 3607
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v42

    add-int/lit8 v42, v42, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 3608
    .local v28, lastChild:Landroid/view/View;
    if-eqz v28, :cond_28

    .line 3609
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v42

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTranslationY()F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    add-int v9, v42, v43

    .line 3610
    .restart local v9       #bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v45, v0

    add-int v45, v45, v9

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3626
    .end local v9           #bottom:I
    .end local v28           #lastChild:Landroid/view/View;
    :cond_28
    :goto_e
    return-void

    .line 3614
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v42, v0

    if-nez v42, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v42

    if-nez v42, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_28

    .line 3616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_28

    .line 3617
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 3618
    .restart local v28       #lastChild:Landroid/view/View;
    if-eqz v28, :cond_28

    .line 3619
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v42

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTranslationY()F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    add-int v9, v42, v43

    .line 3620
    .restart local v9       #bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadowHeight:I

    move/from16 v45, v0

    add-int v45, v45, v9

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_e
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2322
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2323
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2325
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2326
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2329
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2332
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 5705
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFastScroller;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 5706
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 5707
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    .line 5711
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 5712
    .local v0, is2Point:Z
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_2

    .line 5713
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 5716
    :cond_2
    iget-boolean v2, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v2, :cond_4

    .line 5717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5719
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 5726
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 5708
    .end local v0           #is2Point:Z
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isOverScrollAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5709
    iput-boolean v0, p0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    goto :goto_0

    .line 5720
    .restart local v0       #is2Point:Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_7

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-ne v1, v4, :cond_7

    .line 5721
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    goto :goto_1

    .line 5722
    :cond_7
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 5723
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    goto :goto_1
.end method

.method protected doAnimFinalize()V
    .locals 4

    .prologue
    .line 4244
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v0

    .line 4245
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4246
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4245
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4248
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 4250
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    .line 4251
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 4252
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 4456
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->triggerIntroAniamtion()V

    .line 4457
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 4458
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3630
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3631
    .local v0, more:Z
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3632
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    .line 3634
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3648
    iget-boolean v1, p0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcListView;->mInAddAnimation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcListView;->mInDeleteAnimation:Z

    if-eqz v1, :cond_1

    .line 3654
    :cond_0
    :goto_0
    return-void

    .line 3651
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3652
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3653
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 0
    .parameter "canvas"
    .parameter "bottomPos"
    .parameter "drawEndRound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4347
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3350
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3352
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3353
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3355
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3356
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3357
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3360
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3361
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3364
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3333
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3335
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3336
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3338
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3339
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3340
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3343
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3344
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3347
    return-void
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"
    .parameter "paint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4342
    return-void
.end method

.method public enableAnimation(IZ)V
    .locals 1
    .parameter "anim_id"
    .parameter "enable"

    .prologue
    .line 5795
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->enableAnimation(IZ)V

    .line 5796
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 5797
    iput-boolean p2, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    .line 5799
    :cond_0
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 917
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v0

    .line 918
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 919
    const/4 v2, 0x0

    .line 920
    .local v2, paddingTop:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getListPaddingTop()I

    move-result v2

    .line 923
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 925
    .local v3, startOffset:I
    :goto_0
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;

    .line 926
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListView;->correctTooHigh(I)V

    .line 937
    .end local v2           #paddingTop:I
    :goto_1
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_1
    move v3, v2

    .line 923
    goto :goto_0

    .line 928
    .end local v2           #paddingTop:I
    :cond_2
    const/4 v1, 0x0

    .line 929
    .local v1, paddingBottom:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 930
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getListPaddingBottom()I

    move-result v1

    .line 932
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 934
    .restart local v3       #startOffset:I
    :goto_2
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    .line 935
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListView;->correctTooLow(I)V

    goto :goto_1

    .line 932
    .end local v3           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v0

    .line 1574
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1575
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1576
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1577
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1578
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1579
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1591
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1576
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1583
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1584
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1585
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1586
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1583
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1591
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3959
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3960
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3963
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3964
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3966
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3967
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3969
    if-eqz v2, :cond_0

    .line 3975
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3963
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3975
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3937
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3938
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3939
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3940
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3949
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3944
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3945
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3946
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3949
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3864
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3865
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3868
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3869
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3871
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3872
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3874
    if-eqz v2, :cond_0

    .line 3880
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3868
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3880
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3845
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3846
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3847
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3848
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3856
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3851
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3852
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3853
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3856
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3910
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3911
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3914
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3915
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3917
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3918
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3920
    if-eqz v2, :cond_0

    .line 3926
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3914
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3926
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3890
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3891
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3892
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3893
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3902
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3897
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3898
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3899
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3902
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2555
    const/4 v0, 0x0

    .line 2556
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2557
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2558
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2559
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2560
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2561
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->setSelectionInt(I)V

    .line 2562
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V

    .line 2564
    :cond_0
    const/4 v0, 0x1

    .line 2578
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2579
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->awakenScrollBars()Z

    .line 2580
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 2583
    :cond_2
    return v0

    .line 2566
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2567
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2568
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2569
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2570
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2571
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->setSelectionInt(I)V

    .line 2572
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V

    .line 2574
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4270
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4271
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 4300
    :cond_0
    :goto_0
    return-object v5

    .line 4276
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4277
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4278
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4279
    .local v3, count:I
    new-array v5, v3, [J

    .line 4280
    .local v5, ids:[J
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4282
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4283
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 4284
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4285
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4283
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 4291
    :cond_2
    if-eq v2, v3, :cond_0

    .line 4294
    new-array v6, v2, [J

    .line 4295
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 4297
    goto :goto_0

    .line 4300
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 4451
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3662
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3690
    iget v0, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3295
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getListSelectorPressed()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4377
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 475
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method ignoreFooterViewInBouncing(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 4014
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->isIgnoreFooterViewInBouncing:Z

    .line 4015
    return-void
.end method

.method public isFootAdjusted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4364
    const/4 v0, 0x0

    return v0
.end method

.method isInBouncing()Z
    .locals 1

    .prologue
    .line 4255
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3300
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3302
    .local v4, retValue:Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3304
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3305
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3306
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3316
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3300
    goto :goto_0

    .line 3304
    .restart local v4       #retValue:Z
    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    goto :goto_1

    .line 3309
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3311
    .local v2, listBottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3312
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3313
    goto :goto_2

    .line 3309
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_8
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method public isOverListHeight()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4351
    const/4 v0, 0x0

    return v0
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1750
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1751
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 1752
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1758
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 1760
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 1762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1763
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->resetList()V

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    if-nez v8, :cond_0

    .line 2007
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 1768
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1769
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1771
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v10

    .line 1772
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1773
    .local v19, index:I
    const/4 v5, 0x0

    .line 1776
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1777
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1778
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1780
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1783
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1798
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1799
    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    .line 1800
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1804
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1806
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1807
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1811
    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1815
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1816
    .local v11, dataChanged:Z
    if-eqz v11, :cond_5

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->handleDataChanged()V

    .line 1822
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->resetList()V

    .line 1824
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    if-nez v8, :cond_0

    .line 2007
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1785
    .end local v11           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1786
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1787
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1826
    .restart local v11       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_9

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v2, :cond_7

    .line 1828
    const-string v24, "ListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "please check your Adapter "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2006
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_8

    .line 2007
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_8
    throw v2

    .line 1837
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setSelectedPositionInt(I)V

    .line 1841
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1842
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1845
    .local v22, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1849
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_a

    .line 1850
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_b

    .line 1851
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1850
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1858
    .end local v18           #i:I
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1865
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1866
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_e

    .line 1871
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1872
    :cond_c
    move-object/from16 v13, v17

    .line 1874
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1875
    if-eqz v14, :cond_d

    .line 1877
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1880
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 1884
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->detachAllViewsFromParent()V

    .line 1886
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1920
    if-nez v10, :cond_18

    .line 1921
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_17

    .line 1922
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1923
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelectedPositionInt(I)V

    .line 1924
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1945
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1947
    if-eqz v23, :cond_20

    .line 1950
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1951
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_10
    const/4 v15, 0x1

    .line 1953
    .local v15, focusWasTaken:Z
    :goto_4
    if-nez v15, :cond_1e

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1958
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_11

    .line 1959
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1961
    :cond_11
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListView;->positionSelector(ILandroid/view/View;)V

    .line 1969
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1988
    :cond_12
    :goto_6
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1990
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1993
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1994
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1995
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1996
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setNextSelectedPositionInt(I)V

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->updateScrollIndicators()V

    .line 2000
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v2, :cond_14

    .line 2001
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->checkSelectionChanged()V

    .line 2004
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2006
    if-nez v8, :cond_0

    .line 2007
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1888
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_2
    if-eqz v4, :cond_15

    .line 1889
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/widget/HtcListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1891
    .end local v23           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/HtcListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1893
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1895
    .end local v23           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListView;->mScrollEnd:Z

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListView;->mResetToLastPos:Z

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_16

    .line 1896
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListView;->mScrollEnd:Z

    .line 1897
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListView;->mResetToLastPos:Z

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    .line 1899
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1902
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1903
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1905
    .end local v23           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1906
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1909
    .end local v23           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1910
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1911
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1914
    .end local v23           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1915
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1917
    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1918
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1926
    .end local v23           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1927
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelectedPositionInt(I)V

    .line 1928
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1929
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1931
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_1a

    .line 1932
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_19

    .end local v6           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    .line 1934
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_1c

    .line 1935
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v20, :cond_1b

    .end local v6           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_1b
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1938
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1951
    .end local v6           #childrenTop:I
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1963
    .restart local v15       #focusWasTaken:Z
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1967
    .end local v15           #focusWasTaken:Z
    :cond_1f
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1971
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-lez v2, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_22

    .line 1972
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1973
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/htc/widget/HtcListView;->positionSelector(ILandroid/view/View;)V

    .line 1981
    .end local v9           #child:Landroid/view/View;
    :cond_21
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v14, :cond_12

    .line 1982
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1975
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    .line 1783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1886
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2268
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2269
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2295
    :cond_0
    :goto_0
    return v2

    .line 2273
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2274
    .local v1, count:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2275
    if-eqz p2, :cond_2

    .line 2276
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2277
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2278
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2281
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2282
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2283
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2287
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2290
    goto :goto_0

    .line 2292
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2295
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1513
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1514
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1568
    :cond_0
    :goto_0
    return v6

    .line 1518
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1519
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 1522
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1527
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1528
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 1529
    .local v7, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->recycleOnMeasure()Z

    move-result v8

    .line 1530
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 1532
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1533
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1535
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/htc/widget/HtcListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1537
    if-lez v4, :cond_3

    .line 1539
    add-int/2addr v9, v3

    .line 1543
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1545
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1548
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1550
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1553
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1519
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1561
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1562
    move v6, v9

    .line 1532
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1568
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 4462
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4463
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 4464
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 5687
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->onDetachedFromWindow()V

    .line 5689
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    if-eqz v0, :cond_0

    .line 5690
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5692
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5693
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5695
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 5696
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5698
    :cond_2
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 5473
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3827
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->onFinishInflate()V

    .line 3829
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v0

    .line 3830
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3831
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3832
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 3831
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3834
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->removeAllViews()V

    .line 3836
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 5498
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3772
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3774
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3775
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    .line 3776
    .local v2, closetChildIndex:I
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3777
    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3781
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 3782
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3783
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->layoutChildren()V

    .line 3788
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mTempRect:Landroid/graphics/Rect;

    .line 3789
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3790
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 3791
    .local v1, childCount:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3793
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 3795
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3793
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3799
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3800
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3801
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3802
    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3804
    .local v3, distance:I
    if-ge v3, v6, :cond_1

    .line 3805
    move v6, v3

    .line 3806
    move v2, v5

    goto :goto_1

    .line 3811
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v2, :cond_4

    .line 3812
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 3816
    :goto_2
    return-void

    .line 3814
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3992
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isOverScrollAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    if-nez v0, :cond_0

    .line 3993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->mStart:F

    iput v0, p0, Lcom/htc/widget/HtcListView;->mPre:F

    .line 3994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListView;->mSame:Z

    .line 3997
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2337
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2342
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2347
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 5494
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1402
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    .line 1404
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1405
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1406
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1407
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1409
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1410
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1411
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1413
    .local v8, childState:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1414
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1418
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/htc/widget/HtcListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1420
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1421
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1422
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/htc/widget/HtcListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1424
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1430
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1431
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1437
    :goto_1
    if-nez v10, :cond_2

    .line 1438
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1442
    :cond_2
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1444
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1447
    :cond_3
    invoke-virtual {p0, v12, v4}, Lcom/htc/widget/HtcListView;->setMeasuredDimension(II)V

    .line 1448
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 1449
    return-void

    .line 1413
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1434
    :cond_5
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 4430
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 5488
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 5489
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 5490
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 4445
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 5478
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 5482
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1385
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1386
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1387
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1388
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1389
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1390
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mFocusSelector:Lcom/htc/widget/HtcListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1391
    new-instance v5, Lcom/htc/widget/HtcListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcListView$FocusSelector;-><init>(Lcom/htc/widget/HtcListView;Lcom/htc/widget/HtcListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mFocusSelector:Lcom/htc/widget/HtcListView$FocusSelector;

    .line 1393
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mFocusSelector:Lcom/htc/widget/HtcListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/htc/widget/HtcListView$FocusSelector;->setup(II)Lcom/htc/widget/HtcListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->post(Ljava/lang/Runnable;)Z

    .line 1396
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->onSizeChanged(IIII)V

    .line 1397
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4020
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4021
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 4023
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 4024
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 4025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4028
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->findMotionRow(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v15, v17, v18

    .line 4029
    .local v15, pressedPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4030
    .local v4, animatedChild:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->releaseItem(Landroid/view/View;)V

    .line 4032
    .end local v4           #animatedChild:Landroid/view/View;
    .end local v15           #pressedPos:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isOverScrollAnimationEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 4033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSame:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    .line 4034
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSame:Z

    .line 4035
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 4036
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4037
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_7

    .line 4038
    const/4 v9, 0x1

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 4039
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_6

    .line 4056
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/htc/widget/HtcListView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView$2;-><init>(Lcom/htc/widget/HtcListView;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    .line 4080
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 4202
    .end local v9           #i:I
    :goto_1
    return v8

    .line 4041
    .restart local v9       #i:I
    :cond_6
    const-string v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 4042
    .local v16, pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4043
    .local v5, childScaleTransAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v17, 0x82

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4038
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4047
    .end local v5           #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    .end local v9           #i:I
    .end local v16           #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    add-int/lit8 v9, v17, -0x2

    .restart local v9       #i:I
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v9, v0, :cond_5

    .line 4048
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 4050
    const-string v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 4051
    .restart local v16       #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4052
    .restart local v5       #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v17, 0x82

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4047
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 4082
    .end local v5           #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    .end local v9           #i:I
    .end local v16           #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/high16 v17, -0x3cb8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListView;->mPre:F

    .line 4184
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 4185
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->findMotionRow(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v15, v17, v18

    .line 4186
    .restart local v15       #pressedPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4187
    .restart local v4       #animatedChild:Landroid/view/View;
    if-eqz v4, :cond_b

    .line 4188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    if-nez v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v15

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v17

    if-nez v17, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26

    .line 4189
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/widget/HtcListView;->mPressedView:Landroid/view/View;

    .line 4190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    .line 4191
    new-instance v17, Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView$CheckForPressAnimation;-><init>(Lcom/htc/widget/HtcListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    .line 4193
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->setAnimatedView(Landroid/view/View;)V

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/widget/HtcListView;->mCheckForPressAnimationDelay:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4201
    .end local v4           #animatedChild:Landroid/view/View;
    .end local v15           #pressedPos:I
    :cond_b
    :goto_4
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 4202
    .local v8, handled:Z
    goto/16 :goto_1

    .line 4084
    .end local v8           #handled:Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    .line 4085
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 4086
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 4088
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isOverScrollAnimationEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mPreventOverScroll:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 4089
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListView;->mCurrent:F

    .line 4090
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSame:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_e

    .line 4091
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSame:Z

    .line 4093
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_18

    .line 4094
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v17

    if-nez v17, :cond_10

    .line 4095
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getPaddingTop()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->findMotionRow(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 4097
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->doAnimFinalize()V

    .line 4098
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4101
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->doAnimFinalize()V

    .line 4102
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4105
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4170

    cmpl-float v17, v17, v18

    if-lez v17, :cond_14

    .line 4106
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    .line 4111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPre:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_15

    .line 4112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4120

    div-float v6, v17, v18

    .line 4116
    .local v6, dist:F
    :goto_5
    sget v17, Lcom/htc/widget/HtcListView;->MAX_DIFF:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v6, v17

    if-lez v17, :cond_12

    .line 4117
    sget v17, Lcom/htc/widget/HtcListView;->MAX_DIFF:I

    move/from16 v0, v17

    int-to-float v6, v0

    .line 4118
    :cond_12
    const/4 v13, 0x0

    .line 4119
    .local v13, mPreSpace:I
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    .line 4120
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_16

    .line 4125
    :cond_13
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4108
    .end local v6           #dist:F
    .end local v9           #i:I
    .end local v13           #mPreSpace:I
    :cond_14
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4114
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPre:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4120

    div-float v6, v17, v18

    .restart local v6       #dist:F
    goto :goto_5

    .line 4121
    .restart local v9       #i:I
    .restart local v13       #mPreSpace:I
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    int-to-float v0, v13

    move/from16 v18, v0

    add-float v18, v18, v6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationY(F)V

    .line 4122
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_17

    .line 4123
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    float-to-int v13, v0

    .line 4119
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 4126
    .end local v6           #dist:F
    .end local v9           #i:I
    .end local v13           #mPreSpace:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_24

    .line 4127
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v14

    .line 4128
    .local v14, p:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4129
    .local v12, m:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->isIgnoreFooterViewInBouncing:Z

    move/from16 v17, v0

    if-eqz v17, :cond_19

    .line 4130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 v11, v17, -0x1

    .line 4131
    .local v11, lastPosition:I
    if-ltz v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_19

    .line 4132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v11, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4133
    .local v7, footerView:Landroid/view/View;
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    if-lez v17, :cond_19

    .line 4134
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4138
    .end local v7           #footerView:Landroid/view/View;
    .end local v11           #lastPosition:I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 4139
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->findMotionRow(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 4142
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->doAnimFinalize()V

    .line 4143
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4146
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->doAnimFinalize()V

    .line 4147
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4149
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4170

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1f

    .line 4150
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    .line 4155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPre:F

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_20

    .line 4156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mCurrent:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4120

    div-float v6, v17, v18

    .line 4160
    .restart local v6       #dist:F
    :goto_7
    sget v17, Lcom/htc/widget/HtcListView;->MAX_DIFF:I

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_1d

    .line 4161
    sget v17, Lcom/htc/widget/HtcListView;->MAX_DIFF:I

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v6, v0

    .line 4162
    :cond_1d
    const/4 v13, 0x0

    .line 4164
    .restart local v13       #mPreSpace:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->isIgnoreFooterViewInBouncing:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    add-int/lit8 v10, v17, -0x3

    .line 4165
    .local v10, index:I
    :goto_8
    move v9, v10

    .restart local v9       #i:I
    :goto_9
    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v9, v0, :cond_1e

    .line 4166
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_22

    .line 4171
    :cond_1e
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4152
    .end local v6           #dist:F
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v13           #mPreSpace:I
    :cond_1f
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 4158
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPre:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4120

    div-float v6, v17, v18

    .restart local v6       #dist:F
    goto :goto_7

    .line 4164
    .restart local v13       #mPreSpace:I
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v17

    add-int/lit8 v10, v17, -0x2

    goto :goto_8

    .line 4167
    .restart local v9       #i:I
    .restart local v10       #index:I
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    int-to-float v0, v13

    move/from16 v18, v0

    add-float v18, v18, v6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationY(F)V

    .line 4168
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mStart:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_23

    .line 4169
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    float-to-int v13, v0

    .line 4165
    :cond_23
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 4173
    .end local v6           #dist:F
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v12           #m:Landroid/view/View;
    .end local v13           #mPreSpace:I
    .end local v14           #p:I
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListView;->mPre:F

    goto/16 :goto_3

    .line 4175
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    if-nez v17, :cond_9

    .line 4177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    if-eqz v17, :cond_9

    .line 4180
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4195
    .restart local v4       #animatedChild:Landroid/view/View;
    .restart local v15       #pressedPos:I
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 4196
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    goto/16 :goto_4
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 5673
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onWindowFocusChanged(Z)V

    .line 5674
    if-nez p1, :cond_1

    .line 5675
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    if-eqz v0, :cond_0

    .line 5676
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5681
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->cancelPressAnimation()V

    .line 5683
    :cond_1
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2509
    const/4 v1, -0x1

    .line 2510
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2512
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2513
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2519
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2520
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2521
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2522
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2523
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 2525
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2526
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2529
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2530
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2533
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->setSelectionInt(I)V

    .line 2534
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invokeOnItemScrollListener()V

    .line 2535
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2536
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 2543
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2514
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2515
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2516
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2543
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/high16 v1, 0x3f80

    .line 5661
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 5662
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    if-nez v0, :cond_1

    .line 5663
    new-instance v0, Lcom/htc/widget/HtcListView$CheckForItemReleased;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcListView$CheckForItemReleased;-><init>(Lcom/htc/widget/HtcListView;Lcom/htc/widget/HtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    .line 5665
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mCheckForItemReleased:Lcom/htc/widget/HtcListView$CheckForItemReleased;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView$CheckForItemReleased;->start(Landroid/view/View;IJ)V

    .line 5666
    const/4 v0, 0x1

    .line 5668
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 4005
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4006
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1480
    const/4 v0, 0x1

    return v0
.end method

.method protected releaseItem()V
    .locals 0

    .prologue
    .line 5586
    return-void
.end method

.method protected releaseItem(Landroid/view/View;)V
    .locals 7
    .parameter "releasedView"

    .prologue
    const/high16 v6, 0x3f80

    .line 5593
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 5594
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5595
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 5596
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 5597
    .local v0, animator:Landroid/animation/Animator;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/htc/widget/HtcListView;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5598
    .local v2, releaseAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5599
    new-instance v4, Lcom/htc/widget/HtcListView$9;

    invoke-direct {v4, p0, v0}, Lcom/htc/widget/HtcListView$9;-><init>(Lcom/htc/widget/HtcListView;Landroid/animation/Animator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5613
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 5593
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5616
    .end local v3           #v:Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressedView:Landroid/view/View;

    if-ne v4, p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5619
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListView;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5620
    .restart local v2       #releaseAnim:Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/htc/widget/HtcListView$10;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcListView$10;-><init>(Lcom/htc/widget/HtcListView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5631
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 5633
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5634
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 5635
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 677
    :cond_0
    const/4 v0, 0x1

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 682
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 586
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 592
    :cond_0
    const/4 v0, 0x1

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 597
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 836
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 839
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 842
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v6

    .line 843
    .local v6, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getScrollY()I

    move-result v8

    .line 844
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 845
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 847
    .local v5, fadingEdge:I
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 849
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 850
    :cond_0
    add-int/2addr v8, v5

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 855
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 857
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 859
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 861
    :cond_2
    sub-int/2addr v7, v5

    .line 865
    :cond_3
    const/4 v11, 0x0

    .line 867
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 874
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 881
    :goto_0
    sub-int v4, v1, v7

    .line 882
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 902
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 903
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 904
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/htc/widget/HtcListView;->scrollListItemsBy(I)V

    .line 905
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/htc/widget/HtcListView;->positionSelector(ILandroid/view/View;)V

    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 907
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 909
    :cond_5
    return v10

    .line 877
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 883
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 890
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 897
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 898
    .local v12, top:I
    sub-int v3, v12, v8

    .line 899
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 893
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 902
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 789
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 791
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 793
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 794
    return-void
.end method

.method public scrollToFirstAddedPosition(I)V
    .locals 5
    .parameter "pos"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 4781
    iput p1, p0, Lcom/htc/widget/HtcListView;->mFirstAddedPos:I

    .line 4782
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 4783
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mScrollEnd:Z

    .line 4784
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    if-eqz v1, :cond_0

    .line 4785
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    invoke-interface {v1}, Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;->onScrollEnd()V

    .line 4807
    :cond_0
    :goto_0
    return-void

    .line 4790
    :cond_1
    const/16 v0, 0x8

    .line 4791
    .local v0, startPos:I
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollToFirstAddedPosition(I)V

    .line 4792
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gt p1, v1, :cond_3

    .line 4793
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v1, p1

    if-le v1, v4, :cond_2

    .line 4794
    add-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 4796
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/htc/widget/HtcListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 4798
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 4799
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mScrollEnd:Z

    .line 4800
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mResetToLastPos:Z

    .line 4802
    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v4, :cond_5

    .line 4803
    add-int/lit8 v1, p1, -0x8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 4805
    :cond_5
    invoke-virtual {p0, p1, v3}, Lcom/htc/widget/HtcListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method

.method public set2DPressAnimationEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 5505
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    .line 5506
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5507
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 5508
    return-void
.end method

.method public setActivatedPortrait(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 4317
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 724
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 728
    :cond_0
    if-eqz p1, :cond_1

    .line 729
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->resetList()V

    .line 733
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 735
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 736
    :cond_2
    new-instance v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 741
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 742
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 745
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 746
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 747
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mAreAllItemsSelectable:Z

    .line 748
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 749
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 750
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->checkFocus()V

    .line 752
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 753
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 755
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 758
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 759
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 763
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setSelectedPositionInt(I)V

    .line 764
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setNextSelectedPositionInt(I)V

    .line 766
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v1, :cond_3

    .line 768
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->checkSelectionChanged()V

    .line 777
    .end local v0           #position:I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 778
    return-void

    .line 738
    :cond_4
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 761
    :cond_5
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 771
    .end local v0           #position:I
    :cond_6
    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mAreAllItemsSelectable:Z

    .line 772
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->checkFocus()V

    .line 774
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAddPositionsList(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 4811
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-ne v1, v2, :cond_1

    .line 4875
    :cond_0
    :goto_0
    return-void

    .line 4814
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isAddAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsDisableAnimation:Z

    if-ne v1, v2, :cond_6

    .line 4815
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    .line 4816
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_4

    .line 4817
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 4825
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    if-eqz v1, :cond_0

    .line 4826
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v1}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationStart()V

    .line 4827
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v1}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 4818
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_5

    .line 4819
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 4820
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_3

    .line 4821
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_1

    .line 4832
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4833
    .local v0, listLength:I
    if-eqz v0, :cond_0

    .line 4836
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 4837
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 4838
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    .line 4842
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 4843
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    .line 4847
    :goto_3
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    .line 4848
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    .line 4852
    :goto_4
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 4853
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    .line 4857
    :goto_5
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    if-eqz v1, :cond_7

    .line 4858
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v1}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationStart()V

    .line 4861
    :cond_7
    iput-boolean v2, p0, Lcom/htc/widget/HtcListView;->mInAddAnimation:Z

    .line 4863
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    .line 4864
    iput-boolean v2, p0, Lcom/htc/widget/HtcListView;->mAddAnimationFlag:Z

    .line 4866
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 4867
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_c

    .line 4868
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 4840
    :cond_8
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 4845
    :cond_9
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 4850
    :cond_a
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 4855
    :cond_b
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 4869
    :cond_c
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_d

    .line 4870
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 4871
    :cond_d
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 4872
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    goto/16 :goto_0
.end method

.method public setAdjustFooter(Z)V
    .locals 0
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4356
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3321
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3322
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListView;->mIsCacheColorOpaque:Z

    .line 3323
    if-eqz v0, :cond_1

    .line 3324
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3325
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3327
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3329
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 3330
    return-void

    .line 3321
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClickAnimationScaleX(F)V
    .locals 0
    .parameter "scaleX"

    .prologue
    .line 5841
    return-void
.end method

.method public setClickAnimationScaleY(F)V
    .locals 0
    .parameter "scaleY"

    .prologue
    .line 5848
    return-void
.end method

.method public setDarkModeEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 5783
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mDarKModeEnabled:Z

    .line 5784
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mDarKModeEnabled:Z

    if-eqz v0, :cond_0

    .line 5785
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5786
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 5791
    :cond_0
    :goto_0
    return-void

    .line 5788
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, d:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4987
    iget-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-ne v9, v12, :cond_1

    .line 5104
    :cond_0
    :goto_0
    return-void

    .line 4990
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isDelAnimationEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/htc/widget/HtcListView;->mIsDisableAnimation:Z

    if-ne v9, v12, :cond_6

    .line 4991
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_3

    .line 4992
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v9, v9, Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v9, :cond_4

    .line 4993
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v9}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 5000
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v9, :cond_0

    .line 5001
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationStart()V

    .line 5002
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 4994
    :cond_4
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v9, v9, Landroid/widget/BaseAdapter;

    if-eqz v9, :cond_5

    .line 4995
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Landroid/widget/BaseAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 4996
    :cond_5
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v9, :cond_3

    .line 4997
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_1

    .line 5007
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5008
    .local v6, listLength:I
    if-eqz v6, :cond_0

    .line 5011
    iput-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 5012
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v9, :cond_7

    .line 5013
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationStart()V

    .line 5016
    :cond_7
    iput-boolean v12, p0, Lcom/htc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 5018
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v9, p0, Lcom/htc/widget/HtcListView;->mOriFirstPosition:I

    .line 5019
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 5021
    .local v2, childCount:I
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/2addr v10, v6

    if-ne v9, v10, :cond_8

    .line 5022
    iput-boolean v12, p0, Lcom/htc/widget/HtcListView;->mOriLastPage:Z

    .line 5027
    :goto_2
    iput v11, p0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    .line 5028
    iput v11, p0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    .line 5030
    iput v11, p0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    .line 5031
    iput v11, p0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    .line 5033
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v9, :cond_9

    .line 5034
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    .line 5038
    :goto_3
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v9, :cond_a

    .line 5039
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 5043
    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v9, :cond_b

    .line 5044
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    .line 5049
    :goto_5
    const/4 v3, 0x0

    .line 5050
    .local v3, delPos:I
    const/4 v0, 0x0

    .line 5051
    .local v0, belowDeleteCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v6, :cond_e

    .line 5052
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5053
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ge v3, v9, :cond_c

    .line 5054
    iget v9, p0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    .line 5051
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 5024
    .end local v0           #belowDeleteCount:I
    .end local v3           #delPos:I
    .end local v4           #i:I
    :cond_8
    iput-boolean v11, p0, Lcom/htc/widget/HtcListView;->mOriLastPage:Z

    goto :goto_2

    .line 5036
    :cond_9
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 5041
    :cond_a
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 5046
    :cond_b
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 5055
    .restart local v0       #belowDeleteCount:I
    .restart local v3       #delPos:I
    .restart local v4       #i:I
    :cond_c
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    if-ge v3, v9, :cond_d

    .line 5056
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5057
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v3, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5058
    iget v9, p0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    goto :goto_7

    .line 5060
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5063
    :cond_e
    const/4 v5, 0x0

    .line 5065
    .local v5, isDel:Z
    iget v9, p0, Lcom/htc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-gtz v9, :cond_f

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10

    .line 5066
    :cond_f
    const/4 v5, 0x1

    .line 5069
    :cond_10
    const/4 v7, 0x0

    .line 5070
    .local v7, pos:I
    if-nez v5, :cond_13

    .line 5071
    iput-boolean v11, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 5072
    iput-boolean v11, p0, Lcom/htc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 5073
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_0

    .line 5074
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v9, v9, Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v9, :cond_11

    .line 5075
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v9}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 5076
    :cond_11
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    instance-of v9, v9, Landroid/widget/BaseAdapter;

    if-eqz v9, :cond_12

    .line 5077
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Landroid/widget/BaseAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 5078
    :cond_12
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v9, :cond_0

    .line 5079
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    goto/16 :goto_0

    .line 5083
    :cond_13
    const/4 v1, 0x0

    .line 5085
    .local v1, child:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 5086
    .local v8, size:I
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_16

    .line 5087
    if-lez v8, :cond_15

    .line 5088
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v7, v9, v4

    .line 5089
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 5090
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5091
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5086
    :cond_14
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 5094
    :cond_15
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5095
    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 5099
    :cond_16
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcListView;->mOriCurDeleteCount:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/HtcListView;->mOriCurLeftCount:I

    .line 5100
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/htc/widget/HtcListView;->mOriBelowLeftCount:I

    .line 5102
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->startDelGoneAnimation()V

    goto/16 :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v1, 0x0

    .line 3672
    if-eqz p1, :cond_2

    .line 3673
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 3677
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3678
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcListView;->mDividerIsOpaque:Z

    .line 3679
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mDarKModeEnabled:Z

    if-nez v0, :cond_1

    .line 3680
    iput v1, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 3682
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 3683
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 3684
    return-void

    .line 3675
    :cond_2
    iput v1, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3678
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3700
    iput p1, p0, Lcom/htc/widget/HtcListView;->mDividerHeight:I

    .line 3701
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 3702
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 3703
    return-void
.end method

.method public setDrawBottomShadow(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 5868
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mShouldDrawBottomShadow:Z

    .line 5869
    return-void
.end method

.method public setDrawPressShadow(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 5860
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mShouldDrawPressShadow:Z

    .line 5861
    return-void
.end method

.method public setFastScrollSectionsDirty()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4321
    return-void
.end method

.method public setFillEmpty(Z)V
    .locals 0
    .parameter "fillEmpty"

    .prologue
    .line 4410
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 5808
    if-eqz p1, :cond_0

    .line 5818
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 5821
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 5822
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 5834
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    return-void
.end method

.method public setFootAdjusted(Z)V
    .locals 0
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4369
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3727
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mFooterDividersEnabled:Z

    .line 3728
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 3729
    return-void
.end method

.method public setForceAdjustFooter(Z)V
    .locals 0
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4373
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3714
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mHeaderDividersEnabled:Z

    .line 3715
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 3716
    return-void
.end method

.method public setIntroAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 4489
    iput p1, p0, Lcom/htc/widget/HtcListView;->mIntroAnimationDelay:I

    .line 4490
    return-void
.end method

.method public setIntroAnimationType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 4471
    iput p1, p0, Lcom/htc/widget/HtcListView;->mIntroAnimationType:I

    .line 4472
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3284
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mItemsCanFocus:Z

    .line 3285
    if-nez p1, :cond_0

    .line 3286
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setDescendantFocusability(I)V

    .line 3288
    :cond_0
    return-void
.end method

.method public setListBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4337
    return-void
.end method

.method public setMiddleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4329
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3759
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3760
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 3761
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3738
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3739
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3740
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 3742
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 706
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 707
    return-void
.end method

.method public setRoundBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4333
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 2193
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2305
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2306
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 2317
    :goto_0
    return-void

    .line 2310
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2311
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 2313
    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 2314
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2210
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2211
    if-ltz p1, :cond_2

    .line 2212
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->setNextSelectedPositionInt(I)V

    .line 2218
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2219
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2220
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 2222
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2223
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 2224
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 2227
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->requestLayout()V

    goto :goto_0

    .line 2215
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2238
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->setNextSelectedPositionInt(I)V

    .line 2239
    const/4 v0, 0x0

    .line 2241
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 2243
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2244
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 2245
    const/4 v0, 0x1

    .line 2251
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->layoutChildren()V

    .line 2253
    if-eqz v0, :cond_1

    .line 2254
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->awakenScrollBars()Z

    .line 2256
    :cond_1
    return-void

    .line 2246
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2247
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "selector"

    .prologue
    .line 5758
    iget-boolean v3, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v3, :cond_2

    .line 5760
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v4, "list_selector_background_pressed"

    const v5, 0x208026f

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 5762
    .local v0, highlightId:I
    const/4 v2, 0x0

    .line 5763
    .local v2, listSelectionHighlight:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 5764
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5766
    :cond_0
    if-eqz v2, :cond_1

    .line 5767
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 5768
    .local v1, keypadSeletor:Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5769
    invoke-super {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5771
    .end local v1           #keypadSeletor:Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->setDrawSelectorOnTop(Z)V

    .line 5775
    .end local v0           #highlightId:I
    .end local v2           #listSelectionHighlight:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 5773
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5768
    :array_0
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 4305
    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 0
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4325
    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4360
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 4308
    const/4 v0, 0x1

    return v0
.end method

.method skipScroll()Z
    .locals 1

    .prologue
    .line 5852
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mInBouncing:Z

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1195
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollByOffset(I)V

    .line 1196
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1185
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollToPosition(I)V

    .line 1186
    return-void
.end method

.method public startIntroAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4479
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListView;->setIntroAnimationEnabled(Z)V

    .line 4480
    iput-boolean v0, p0, Lcom/htc/widget/HtcListView;->mShouldTriggerAnimation:Z

    .line 4481
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 4482
    return-void
.end method
