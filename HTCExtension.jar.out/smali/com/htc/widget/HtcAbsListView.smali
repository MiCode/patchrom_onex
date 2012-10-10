.class public abstract Lcom/htc/widget/HtcAbsListView;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;,
        Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;,
        Lcom/htc/widget/HtcAbsListView$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;,
        Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAbsListView$PositionScroller;,
        Lcom/htc/widget/HtcAbsListView$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView$SmoothScroller;,
        Lcom/htc/widget/HtcAbsListView$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView$PerformClick;,
        Lcom/htc/widget/HtcAbsListView$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView$SavedState;,
        Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;,
        Lcom/htc/widget/HtcAbsListView$OnScrollListener;,
        Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;,
        Lcom/htc/widget/HtcAbsListView$AddAnimationListener;,
        Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field public static final ANIM_ADD:I = 0x8

.field public static final ANIM_CLICK:I = 0x4

.field public static final ANIM_DEL:I = 0x10

.field public static final ANIM_INTRO:I = 0x2

.field public static final ANIM_OVERSCROLL:I = 0x1

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final RAISE_THREAD_PRIORITY:I = -0x5

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

.field mAnimationRunning:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field protected mEnabledAnimationType:I

.field mFastScrollEnabled:Z

.field mFastScroller:Lcom/htc/widget/HtcFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field mHtcScrollerEnabled:Z

.field mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLogFps:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollForAddAnimation:Z

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

.field mScrollToCorrectPosListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field protected mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field mSmoothScroll:Z

.field private mSmoothScrollbarEnabled:Z

.field mSmoothScroller:Lcom/htc/widget/HtcAbsListView$SmoothScroller;

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private prevPriority:I

.field private priorityRaised:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 814
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 237
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 270
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 290
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 295
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 305
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 310
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 316
    new-instance v1, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 321
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 326
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 331
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 336
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 341
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 346
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 394
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 425
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 463
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 483
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 485
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 511
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 514
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 517
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 525
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 526
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 596
    const/high16 v1, 0x3fa0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    .line 598
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 608
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 656
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 659
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 688
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 714
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 3169
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroll:Z

    .line 4060
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 4122
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    .line 6847
    const/16 v1, 0x1f

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 815
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 817
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 818
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 819
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 820
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 821
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 824
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 825
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 828
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 270
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 290
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 295
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 305
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 310
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 316
    new-instance v9, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 321
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 326
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 331
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 336
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 341
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 346
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 394
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 425
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 463
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 483
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 485
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 511
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 514
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 517
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 525
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 526
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 596
    const/high16 v9, 0x3fa0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    .line 598
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 608
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 656
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 659
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 688
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 714
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 3169
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroll:Z

    .line 4060
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 4122
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    .line 6847
    const/16 v9, 0x1f

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 829
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 831
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 834
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 835
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 836
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 839
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 842
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 843
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setStackFromBottom(Z)V

    .line 845
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 846
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 848
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 849
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->setTextFilterEnabled(Z)V

    .line 851
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 853
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setTranscriptMode(I)V

    .line 855
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 856
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 858
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 859
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    .line 861
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 862
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 864
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setChoiceMode(I)V

    .line 865
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 868
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 871
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setOverScrollMode(I)V

    .line 875
    new-instance v9, Lcom/htc/widget/HtcAbsListView$SmoothScroller;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView$SmoothScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroller:Lcom/htc/widget/HtcAbsListView$SmoothScroller;

    .line 877
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/widget/HtcAbsListView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/widget/HtcAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/HtcAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/HtcAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/widget/HtcAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/widget/HtcAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$CheckForLongPress;)Lcom/htc/widget/HtcAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6132
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 6150
    :cond_0
    return v2

    .line 6133
    :cond_1
    const/4 v2, 0x1

    .line 6135
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6136
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6137
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6138
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6139
    const/4 v2, 0x0

    .line 6140
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6143
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 6144
    const/4 v2, 0x0

    .line 6145
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1253
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1254
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return v1

    .line 1255
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1257
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4946
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 4947
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4948
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4949
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    .line 4951
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 5829
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 5830
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5831
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 5832
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 5834
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 5839
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 5841
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 5842
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5843
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5844
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5845
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5846
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5847
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5848
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5849
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5850
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 5851
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5852
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 5854
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 5855
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5859
    :goto_0
    return-void

    .line 5857
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 5582
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5583
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5585
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2447
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2449
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2450
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2452
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6154
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6155
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6156
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6158
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 5628
    sparse-switch p2, :sswitch_data_0

    .line 5661
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5630
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5631
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5632
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5633
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5665
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 5666
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 5667
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5636
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5637
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5638
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5639
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5640
    .restart local v1       #dY:I
    goto :goto_0

    .line 5642
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5643
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5644
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5645
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5646
    .restart local v1       #dY:I
    goto :goto_0

    .line 5648
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5649
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 5650
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5651
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5652
    .restart local v1       #dY:I
    goto :goto_0

    .line 5655
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5656
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5657
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5658
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5659
    .restart local v1       #dY:I
    goto :goto_0

    .line 5628
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 881
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setClickable(Z)V

    .line 882
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFocusableInTouchMode(Z)V

    .line 883
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setWillNotDraw(Z)V

    .line 884
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 885
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 887
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 888
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    .line 889
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    .line 890
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    .line 891
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    .line 892
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mOverflingDistance:I

    .line 894
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    .line 897
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileLogFps()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 899
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3904
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3908
    :goto_0
    return-void

    .line 3906
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 3911
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3912
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3914
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 4018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4020
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4021
    .local v1, pointerId:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 4025
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 4026
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 4027
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 4028
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 4029
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 4031
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 4025
    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5601
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5602
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5603
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getLocationOnScreen([I)V

    .line 5606
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 5607
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5608
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5613
    :goto_0
    return-void

    .line 5611
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2319
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3918
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3921
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 6773
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6774
    .local v1, size:I
    if-lez v1, :cond_2

    .line 6776
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 6777
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6778
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v3, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 6780
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6786
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 6776
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6784
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 6786
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .parameter "y"

    .prologue
    .line 3202
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3203
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3204
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3207
    .local v18, incrementalDeltaY:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 3208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroller:Lcom/htc/widget/HtcAbsListView$SmoothScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->clearBuffer()V

    .line 3212
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 3220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_1

    .line 3222
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3225
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 3229
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_2

    .line 3231
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3232
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_2

    .line 3233
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3238
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_c

    .line 3239
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3246
    .local v19, motionIndex:I
    :goto_1
    const/16 v22, 0x0

    .line 3247
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3248
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_3

    .line 3249
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3253
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroll:Z

    if-eqz v3, :cond_4

    .line 3254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroller:Lcom/htc/widget/HtcAbsListView$SmoothScroller;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->addMovement(I)V

    .line 3255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSmoothScroller:Lcom/htc/widget/HtcAbsListView$SmoothScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->getCurrentDelta()I

    move-result v18

    .line 3260
    :cond_4
    const/16 v16, 0x0

    .line 3261
    .local v16, atEdge:Z
    if-eqz v18, :cond_5

    .line 3262
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3266
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3267
    if-eqz v21, :cond_9

    .line 3270
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3271
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_8

    .line 3274
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3276
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3278
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 3280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_6

    .line 3281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3285
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3286
    .local v27, overscrollMode:I
    if-eqz v27, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3289
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 3290
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3291
    if-lez v29, :cond_d

    .line 3292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3304
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_8
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3305
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3307
    .end local v23           #motionViewRealTop:I
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v3, :cond_a

    .line 3310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v4, v0, v6, v7}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 3380
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_a
    :goto_3
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_b
    move/from16 v18, v17

    .line 3204
    goto/16 :goto_0

    .line 3243
    .restart local v18       #incrementalDeltaY:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_1

    .line 3296
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_d
    if-gez v29, :cond_8

    .line 3297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 3314
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 3315
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 3316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v26, v0

    .line 3317
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3318
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_17

    const/16 v24, 0x1

    .line 3320
    .local v24, newDirection:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    if-nez v3, :cond_f

    .line 3321
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    .line 3324
    :cond_f
    move/from16 v0, v18

    neg-int v8, v0

    .line 3325
    .local v8, overScrollDistance:I
    if-gez v25, :cond_10

    if-gez v26, :cond_11

    :cond_10
    if-lez v25, :cond_18

    if-gtz v26, :cond_18

    .line 3326
    :cond_11
    move/from16 v0, v26

    neg-int v8, v0

    .line 3327
    add-int v18, v18, v8

    .line 3332
    :goto_5
    if-eqz v8, :cond_14

    .line 3333
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3335
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3336
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3339
    :cond_12
    if-lez v29, :cond_19

    .line 3340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3350
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3354
    .end local v27           #overscrollMode:I
    :cond_14
    if-eqz v18, :cond_16

    .line 3356
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentIfNeeded()V

    .line 3360
    if-eqz v18, :cond_15

    .line 3361
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    .line 3364
    :cond_15
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3368
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 3370
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3371
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3372
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_1a

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3373
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3374
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3376
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_16
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3377
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3318
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_17
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 3329
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3344
    .restart local v27       #overscrollMode:I
    :cond_19
    if-gez v29, :cond_13

    .line 3345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 3372
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 5592
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5593
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 5594
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 5596
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkFocus()V

    .line 5598
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3130
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 3131
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3132
    .local v1, distance:I
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 3133
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_7

    .line 3134
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 3135
    if-eqz v4, :cond_5

    .line 3136
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3137
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3142
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3146
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 3147
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3149
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3150
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3151
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3152
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3154
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3157
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3158
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3159
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3161
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 3165
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 3132
    goto :goto_0

    .line 3139
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3140
    if-lez v0, :cond_6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 3165
    goto :goto_2
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1544
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4042
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    .line 4043
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 4044
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4046
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 4057
    :cond_0
    return-void

    .line 4050
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 4051
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4052
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4053
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4055
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4050
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 5955
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 5913
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5820
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 5992
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1052
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1053
    return-void
.end method

.method protected clearScrollingCache()V
    .locals 1

    .prologue
    .line 4958
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4959
    new-instance v0, Lcom/htc/widget/HtcAbsListView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$2;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 4974
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4975
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 5865
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 5866
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 5868
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5869
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 5872
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1923
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1924
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1925
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1926
    mul-int/lit8 v2, v1, 0x64

    .line 1928
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1929
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1930
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1931
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1932
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1935
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1936
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1937
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1938
    if-lez v3, :cond_1

    .line 1939
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1947
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1944
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1947
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1956
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1957
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1958
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1959
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1960
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1961
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1962
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1963
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1964
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1980
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1969
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1970
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1971
    const/4 v4, 0x0

    .line 1977
    .local v4, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1972
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1973
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1975
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1990
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1991
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1992
    .local v0, result:I
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1994
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1999
    :cond_0
    :goto_0
    return v0

    .line 1997
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 5376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5378
    const/4 v7, 0x0

    .line 5379
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 5380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 5381
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5383
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 5384
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 5386
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 5387
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5388
    .local v9, end:I
    const/4 v10, 0x0

    .line 5389
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 5390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5391
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 5392
    const/4 v10, 0x1

    .line 5393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5399
    .end local v13           #searchId:J
    :cond_0
    if-nez v10, :cond_1

    .line 5400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5401
    add-int/lit8 v8, v8, -0x1

    .line 5402
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 5403
    const/4 v7, 0x1

    .line 5404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 5405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5379
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 5389
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 5410
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5414
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 5415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 5417
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2792
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6196
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2327
    const/4 v2, 0x0

    .line 2328
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2329
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2330
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2331
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    .line 2332
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2333
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2336
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 2339
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 2340
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 2341
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2344
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2346
    if-eqz v1, :cond_2

    .line 2347
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2350
    :cond_2
    if-eqz v0, :cond_3

    .line 2351
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2352
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 2354
    :cond_3
    return-void

    .line 2328
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3025
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 6919
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6920
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 3846
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3847
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    .line 3848
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3849
    .local v4, scrollY:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3851
    .local v2, restoreCount:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 3852
    .local v1, leftPadding:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 3853
    .local v3, rightPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 3855
    .local v5, width:I
    int-to-float v6, v1

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3857
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3858
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3859
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3861
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3863
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v5           #width:I
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3865
    .restart local v2       #restoreCount:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 3866
    .restart local v1       #leftPadding:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 3867
    .restart local v3       #rightPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 3868
    .restart local v5       #width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v0

    .line 3870
    .local v0, height:I
    neg-int v6, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3872
    const/high16 v6, 0x4334

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3873
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3874
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3875
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3877
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3880
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v4           #scrollY:I
    .end local v5           #width:I
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v6, :cond_4

    .line 3881
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3882
    .restart local v4       #scrollY:I
    if-eqz v4, :cond_5

    .line 3884
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3885
    .restart local v2       #restoreCount:I
    int-to-float v6, v4

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3886
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v6, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3887
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3892
    .end local v2           #restoreCount:I
    .end local v4           #scrollY:I
    :cond_4
    :goto_0
    return-void

    .line 3889
    .restart local v4       #scrollY:I
    :cond_5
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v6, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2575
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    .line 2576
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 2577
    return-void
.end method

.method public enableAnimation(IZ)V
    .locals 2
    .parameter "anim_id"
    .parameter "enable"

    .prologue
    .line 6882
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    .line 6884
    :goto_0
    return-void

    .line 6883
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    goto :goto_0
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 5229
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 5230
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 5235
    :cond_0
    :goto_0
    return v1

    .line 5234
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v1

    .line 5235
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 5974
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 5983
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 2030
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2031
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 2041
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 2034
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2035
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 2038
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2039
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    .line 2040
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2041
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2398
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6061
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1027
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1028
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1039
    :cond_1
    return-object v3

    .line 1031
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1032
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1033
    .local v0, count:I
    new-array v3, v0, [J

    .line 1035
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1036
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1035
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 991
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 992
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 995
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1011
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1530
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1533
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1534
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1539
    :goto_0
    return-void

    .line 1537
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5172
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5162
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2371
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2389
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2165
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2166
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6025
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1860
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1863
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 6791
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 2009
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2010
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 2019
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 2013
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2014
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2017
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2018
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2019
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2380
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6016
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5421
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 5422
    .local v1, count:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mLastHandledItemCount:I

    .line 5423
    .local v4, lastHandledItemCount:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLastHandledItemCount:I

    .line 5425
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5426
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->confirmCheckedPositionsById()V

    .line 5429
    :cond_0
    if-lez v1, :cond_e

    .line 5434
    iget-boolean v10, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 5436
    iput-boolean v12, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 5438
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 5439
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5554
    :cond_1
    :goto_0
    return-void

    .line 5441
    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 5442
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 5443
    iput-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mForceTranscriptScroll:Z

    .line 5444
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 5447
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 5448
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5449
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5450
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5451
    .local v2, lastBottom:I
    :goto_1
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 5453
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2           #lastBottom:I
    :cond_4
    move v2, v5

    .line 5450
    goto :goto_1

    .line 5458
    .restart local v2       #lastBottom:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 5461
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5509
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 5511
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5514
    .local v6, newPos:I
    if-lt v6, v1, :cond_8

    .line 5515
    add-int/lit8 v6, v1, -0x1

    .line 5517
    :cond_8
    if-gez v6, :cond_9

    .line 5518
    const/4 v6, 0x0

    .line 5522
    :cond_9
    invoke-virtual {p0, v6, v9}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5524
    .local v7, selectablePos:I
    if-ltz v7, :cond_c

    .line 5525
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5463
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5468
    iput v14, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5469
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 5475
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->findSyncPosition()I

    move-result v6

    .line 5476
    .restart local v6       #newPos:I
    if-ltz v6, :cond_7

    .line 5478
    invoke-virtual {p0, v6, v9}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5479
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_7

    .line 5481
    iput v6, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 5483
    iget-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 5486
    iput v14, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5494
    :goto_2
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5490
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 5502
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_1
    iput v14, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5503
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 5529
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v6, v12}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5530
    if-ltz v7, :cond_e

    .line 5531
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5538
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_d
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 5546
    :cond_e
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5547
    iput v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 5548
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 5549
    iput v13, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 5550
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 5551
    iput-boolean v12, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 5552
    iput v13, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 5553
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 5546
    goto :goto_3

    .line 5461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 5882
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5186
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5187
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5188
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5190
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5191
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5193
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 5194
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 5195
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 5197
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 5243
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 5244
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 5245
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 5246
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1422
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1428
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/widget/HtcAbsListView;->onScrollChanged(IIII)V

    .line 1429
    return-void
.end method

.method isAddAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6862
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCLICKAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6870
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDelAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6866
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1346
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method isInBouncing()Z
    .locals 1

    .prologue
    .line 7096
    const/4 v0, 0x0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 5676
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method isIntroAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6858
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 974
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverScrollAnimationEnabled()Z
    .locals 1

    .prologue
    .line 6854
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2362
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2632
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->jumpDrawablesToCurrentState()V

    .line 2633
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2634
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2513
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2548
    :cond_0
    :goto_0
    return-void

    .line 2517
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2518
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2519
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2522
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2524
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2525
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2526
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2528
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2530
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v1

    .line 2531
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2532
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2533
    if-eqz v1, :cond_6

    .line 2534
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2540
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2541
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2542
    new-instance v5, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    .line 2544
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2545
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2537
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2126
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2241
    aput-boolean v3, p2, v3

    .line 2244
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 2247
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 2256
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInBouncing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2260
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2267
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_2

    .line 2268
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2269
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 2270
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2291
    :cond_1
    :goto_0
    return-object v0

    .line 2277
    :cond_2
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 2278
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 2281
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2282
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 2283
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2642
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    .line 2644
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2645
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2646
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2647
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2650
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2651
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 2652
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2655
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 2656
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 2657
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 2659
    :cond_1
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    .line 2660
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 6101
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 6103
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 6105
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 6107
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3600(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 6108
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 6109
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 6110
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 6111
    const/4 v4, 0x0

    .line 6112
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6109
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6103
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 6119
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3700(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 6120
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 6121
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3800(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 6122
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 6123
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 6124
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 6123
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6128
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 2586
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2588
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2614
    :cond_0
    :goto_0
    return-object v3

    .line 2594
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2599
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2600
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2601
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2602
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2603
    move v0, v2

    .line 2609
    :cond_2
    if-ltz v0, :cond_0

    .line 2610
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2601
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 5761
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5765
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 5766
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 5767
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 5768
    new-instance v0, Lcom/htc/widget/HtcAbsListView$3;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcAbsListView$3;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 5802
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5804
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5805
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 5807
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2668
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    .line 2671
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2674
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 2676
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2677
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2678
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2679
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2680
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2683
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2684
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2685
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 2688
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 2689
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2690
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2693
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 2694
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2695
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2698
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2699
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2702
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 2703
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 2706
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2707
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2710
    :cond_6
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 2711
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2714
    :cond_7
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 2715
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2716
    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2718
    :cond_8
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    .line 2719
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 5562
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onDisplayHint(I)V

    .line 5563
    sparse-switch p1, :sswitch_data_0

    .line 5575
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    .line 5576
    return-void

    .line 5565
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5566
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0

    .line 5570
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5571
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    goto :goto_0

    .line 5575
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5563
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 5962
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 5963
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5964
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 5966
    :cond_0
    return-void
.end method

.method protected onFling(I)V
    .locals 8
    .parameter "initialVelocity"

    .prologue
    const/4 v7, 0x0

    .line 7015
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 7016
    .local v0, childCount:I
    if-lez v0, :cond_6

    .line 7017
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    .line 7018
    .local v3, firstChildTop:I
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 7019
    .local v4, lastChildBottom:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 7020
    .local v2, contentTop:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 7022
    .local v1, contentBottom:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    if-le v5, v6, :cond_4

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    sub-int v5, v2, v5

    if-ne v3, v5, :cond_0

    if-gtz p1, :cond_4

    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    add-int/2addr v5, v1

    if-ne v4, v5, :cond_1

    if-ltz p1, :cond_4

    .line 7025
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v5, :cond_2

    .line 7026
    new-instance v5, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 7028
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 7029
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v6, p1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 7042
    .end local v1           #contentBottom:I
    .end local v2           #contentTop:I
    .end local v3           #firstChildTop:I
    .end local v4           #lastChildBottom:I
    :cond_3
    :goto_0
    return-void

    .line 7031
    .restart local v1       #contentBottom:I
    .restart local v2       #contentTop:I
    .restart local v3       #firstChildTop:I
    .restart local v4       #lastChildBottom:I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 7032
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v5, :cond_5

    .line 7033
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 7035
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 7036
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    goto :goto_0

    .line 7040
    .end local v1           #contentBottom:I
    .end local v2           #contentTop:I
    .end local v3           #firstChildTop:I
    .end local v4           #lastChildBottom:I
    :cond_6
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1872
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1874
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    .line 1875
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 1879
    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1880
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 1883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1884
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 1885
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1887
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 1889
    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 3822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3837
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 3825
    :pswitch_0
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3826
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3827
    .local v1, vscroll:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 3828
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 3829
    .local v0, delta:I
    invoke-virtual {p0, v0, v0}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3830
    const/4 v2, 0x1

    goto :goto_0

    .line 3823
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 5890
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5892
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 5893
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 5902
    :cond_0
    :goto_0
    return-void

    .line 5897
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5898
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3940
    .local v0, action:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v10, :cond_0

    .line 3941
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v10, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3942
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 4014
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 3947
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 4014
    goto :goto_0

    .line 3949
    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3950
    .local v4, touchMode:I
    const/4 v10, 0x6

    if-eq v4, v10, :cond_2

    const/4 v10, 0x5

    if-ne v4, v10, :cond_3

    .line 3951
    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 3955
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 3956
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 3957
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3959
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v2

    .line 3960
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 3963
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3964
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3965
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3966
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3967
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3968
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3969
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3971
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3972
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initOrResetVelocityTracker()V

    .line 3973
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3974
    if-ne v4, v12, :cond_1

    goto :goto_0

    .line 3981
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 3983
    :pswitch_3
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3984
    .local v3, pointerIndex:I
    if-ne v3, v11, :cond_5

    .line 3985
    const/4 v3, 0x0

    .line 3986
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3988
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 3989
    .restart local v7       #y:I
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initVelocityTrackerIfNotExists()V

    .line 3990
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3991
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 4001
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4002
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 4003
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 4004
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 4009
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 3947
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3981
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2985
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2994
    sparse-switch p1, :sswitch_data_0

    .line 3014
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2997
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3000
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3004
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3005
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3006
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3007
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3009
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 2994
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2078
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 2079
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 2080
    if-eqz p1, :cond_1

    .line 2081
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 2082
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2083
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2082
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2085
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2088
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_2

    .line 2089
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcFastScroller;->onItemCountChanged(II)V

    .line 2092
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2093
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 2095
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverscrollMax:I

    .line 2096
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 2052
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2053
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->useDefaultSelector()V

    .line 2055
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2056
    .local v4, listPadding:Landroid/graphics/Rect;
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2057
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2058
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2059
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2062
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2063
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 2064
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2065
    .local v3, listBottom:I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2066
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2067
    .local v1, lastBottom:I
    :goto_0
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mForceTranscriptScroll:Z

    .line 2070
    .end local v0           #childCount:I
    .end local v1           #lastBottom:I
    .end local v2           #lastChild:Landroid/view/View;
    .end local v3           #listBottom:I
    :cond_1
    return-void

    .restart local v0       #childCount:I
    .restart local v2       #lastChild:Landroid/view/View;
    .restart local v3       #listBottom:I
    :cond_2
    move v1, v3

    .line 2066
    goto :goto_0

    .line 2067
    .restart local v1       #lastBottom:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 3807
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 3808
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/htc/widget/HtcAbsListView;->onScrollChanged(IIII)V

    .line 3809
    iput p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3810
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentIfNeeded()V

    .line 3812
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 3814
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 1

    .prologue
    .line 6219
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6236
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1769
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView$SavedState;

    .line 1771
    .local v0, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1772
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1774
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    .line 1776
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 1777
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1778
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1779
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1780
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1781
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    .line 1794
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1796
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1797
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1800
    :cond_1
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1801
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1804
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1806
    iget-boolean v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1808
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1811
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1812
    return-void

    .line 1782
    :cond_4
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1783
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1785
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1786
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 1787
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1788
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1789
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1790
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1791
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1696
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 1698
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1700
    .local v9, superState:Landroid/os/Parcelable;
    new-instance v8, Lcom/htc/widget/HtcAbsListView$SavedState;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1702
    .local v8, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_2

    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v12, :cond_2

    const/4 v3, 0x1

    .line 1703
    .local v3, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1704
    .local v6, selectedId:J
    iput-wide v6, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    .line 1705
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    .line 1707
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_3

    .line 1709
    iget v12, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1710
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1711
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1738
    :goto_1
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1739
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v12, :cond_0

    .line 1740
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1741
    .local v10, textFilter:Landroid/widget/EditText;
    if-eqz v10, :cond_0

    .line 1742
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1743
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 1744
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1749
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v10           #textFilter:Landroid/widget/EditText;
    :cond_0
    iget v12, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->inActionMode:Z

    .line 1751
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_1

    .line 1752
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1754
    :cond_1
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_8

    .line 1755
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1756
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1757
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_7

    .line 1758
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1757
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1702
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1713
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_3
    if-eqz v3, :cond_5

    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v12, :cond_5

    .line 1723
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1724
    .local v11, v:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1725
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1726
    .local v2, firstPos:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lt v2, v12, :cond_4

    .line 1727
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 1729
    :cond_4
    iput v2, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1730
    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1732
    .end local v2           #firstPos:I
    .end local v11           #v:Landroid/view/View;
    :cond_5
    const/4 v12, 0x0

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1733
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1734
    const/4 v12, 0x0

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1749
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 1760
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iput-object v5, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1762
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget v12, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    iput v12, v8, Lcom/htc/widget/HtcAbsListView$SavedState;->checkedItemCount:I

    .line 1764
    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2404
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    .line 2405
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 2410
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 2412
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 2415
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_2

    .line 2416
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 2418
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 5921
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5922
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5923
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 5924
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 5926
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 5927
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 5933
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 5934
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 5936
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 5937
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 5944
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 5928
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 5930
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 5931
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_0

    .line 5939
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 3425
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v26

    if-nez v26, :cond_2

    .line 3428
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v26

    if-eqz v26, :cond_1

    :cond_0
    const/16 v26, 0x1

    .line 3798
    :goto_0
    return v26

    .line 3428
    :cond_1
    const/16 v26, 0x0

    goto :goto_0

    .line 3432
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 3433
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    .line 3437
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 3438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    .line 3439
    .local v16, intercepted:Z
    if-eqz v16, :cond_4

    .line 3440
    const/16 v26, 0x1

    goto :goto_0

    .line 3444
    .end local v16           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3448
    .local v4, action:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->initVelocityTrackerIfNotExists()V

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3451
    and-int/lit16 v0, v4, 0xff

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 3798
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v26, 0x1

    goto :goto_0

    .line 3453
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1

    .line 3469
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3470
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3471
    .local v24, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3472
    .local v25, y:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v18

    .line 3473
    .local v18, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    .line 3474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    if-ltz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v26

    check-cast v26, Landroid/widget/ListAdapter;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 3479
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_6

    .line 3483
    new-instance v26, Lcom/htc/widget/HtcAbsListView$CheckForTap;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3485
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3498
    :cond_7
    :goto_2
    if-ltz v18, :cond_8

    .line 3500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3501
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3503
    .end local v22           #v:Landroid/view/View;
    :cond_8
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3504
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3505
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3506
    const/high16 v26, -0x8000

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3511
    .end local v18           #motionPosition:I
    .end local v24           #x:I
    .end local v25           #y:I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 3512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 3513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3455
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 3456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 3457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 3459
    :cond_9
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3460
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3461
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3462
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3463
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3464
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3487
    .restart local v18       #motionPosition:I
    .restart local v24       #x:I
    .restart local v25       #y:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 3489
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 3490
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3491
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3492
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v18

    .line 3493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 3520
    .end local v18           #motionPosition:I
    .end local v24           #x:I
    .end local v25           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 3521
    .local v21, pointerIndex:I
    const/16 v26, -0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 3522
    const/16 v21, 0x0

    .line 3523
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3525
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3526
    .restart local v25       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3532
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 3536
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->skipScroll()Z

    move-result v26

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 3543
    .end local v21           #pointerIndex:I
    .end local v25           #y:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_3

    .line 3684
    :cond_c
    :goto_4
    :pswitch_8
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3692
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3694
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3695
    .local v11, handler:Landroid/os/Handler;
    if-eqz v11, :cond_e

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3699
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3701
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StrictMode$Span;->finish()V

    .line 3712
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 3547
    .end local v11           #handler:Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v18, v0

    .line 3548
    .restart local v18       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3550
    .local v5, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    .line 3551
    .local v24, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v24, v26

    if-lez v26, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v24, v26

    if-gez v26, :cond_15

    const/4 v13, 0x1

    .line 3553
    .local v13, inList:Z
    :goto_5
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v26

    if-nez v26, :cond_19

    if-eqz v13, :cond_19

    .line 3554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 3555
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3558
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v26, v0

    if-nez v26, :cond_10

    .line 3559
    new-instance v26, Lcom/htc/widget/HtcAbsListView$PerformClick;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    .line 3562
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v20, v0

    .line 3563
    .local v20, performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    .line 3564
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3566
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 3569
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3570
    .restart local v11       #handler:Landroid/os/Handler;
    if-eqz v11, :cond_12

    .line 3571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    if-nez v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    :goto_6
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3574
    :cond_12
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 3576
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 3578
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 3579
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3581
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 3583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3584
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_13

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 3585
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3588
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    .line 3589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3591
    :cond_14
    new-instance v26, Lcom/htc/widget/HtcAbsListView$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/widget/HtcAbsListView$1;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Lcom/htc/widget/HtcAbsListView$PerformClick;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3608
    :goto_7
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 3551
    .end local v11           #handler:Landroid/os/Handler;
    .end local v13           #inList:Z
    .end local v20           #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3571
    .restart local v11       #handler:Landroid/os/Handler;
    .restart local v13       #inList:Z
    .restart local v20       #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v26, v0

    goto/16 :goto_6

    .line 3605
    :cond_17
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3606
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    goto :goto_7

    .line 3609
    .end local v11           #handler:Landroid/os/Handler;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 3610
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAbsListView$PerformClick;->run()V

    .line 3613
    .end local v20           #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_19
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3614
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    goto/16 :goto_4

    .line 3617
    .end local v5           #child:Landroid/view/View;
    .end local v13           #inList:Z
    .end local v18           #motionPosition:I
    .end local v24           #x:F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    .line 3618
    .local v6, childCount:I
    if-lez v6, :cond_20

    .line 3619
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3620
    .local v10, firstChildTop:I
    add-int/lit8 v26, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getBottom()I

    move-result v17

    .line 3621
    .local v17, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 3622
    .local v8, contentTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    .line 3623
    .local v7, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    if-nez v26, :cond_1a

    if-lt v10, v8, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v26

    sub-int v26, v26, v7

    move/from16 v0, v17

    move/from16 v1, v26

    if-gt v0, v1, :cond_1a

    .line 3626
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3627
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3629
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    .line 3630
    .local v23, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v26, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v15, v0

    .line 3638
    .local v15, initialVelocity:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    if-nez v26, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    move/from16 v26, v0

    sub-int v26, v8, v26

    move/from16 v0, v26

    if-eq v10, v0, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverscrollDistance:I

    move/from16 v26, v0

    add-int v26, v26, v7

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    .line 3643
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_1d

    .line 3644
    new-instance v26, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3646
    :cond_1d
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    neg-int v0, v15

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 3650
    :cond_1e
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3651
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    .line 3653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 3655
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    goto/16 :goto_4

    .line 3661
    .end local v7           #contentBottom:I
    .end local v8           #contentTop:I
    .end local v10           #firstChildTop:I
    .end local v15           #initialVelocity:I
    .end local v17           #lastChildBottom:I
    .end local v23           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_20
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3662
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3667
    .end local v6           #childCount:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_21

    .line 3668
    new-instance v26, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3670
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    .line 3671
    .restart local v23       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v26, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v15, v0

    .line 3674
    .restart local v15       #initialVelocity:I
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3675
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    neg-int v0, v15

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    .line 3678
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 3718
    .end local v15           #initialVelocity:I
    .end local v23           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_4

    .line 3731
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3732
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 3734
    .local v19, motionView:Landroid/view/View;
    if-eqz v19, :cond_23

    .line 3735
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3737
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3739
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3740
    .restart local v11       #handler:Landroid/os/Handler;
    if-eqz v11, :cond_24

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3744
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3747
    .end local v11           #handler:Landroid/os/Handler;
    .end local v19           #motionView:Landroid/view/View;
    :goto_8
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3751
    :cond_25
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3754
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3755
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto/16 :goto_1

    .line 3720
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    if-nez v26, :cond_26

    .line 3721
    new-instance v26, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3723
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_8

    .line 3762
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v24, v0

    .line 3764
    .local v24, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v25, v0

    .line 3765
    .restart local v25       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v18

    .line 3766
    .restart local v18       #motionPosition:I
    if-ltz v18, :cond_27

    .line 3768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3769
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3770
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3772
    .end local v22           #v:Landroid/view/View;
    :cond_27
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3778
    .end local v18           #motionPosition:I
    .end local v24           #x:I
    .end local v25           #y:I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 3779
    .local v14, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 3780
    .local v12, id:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3781
    .restart local v24       #x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3782
    .restart local v25       #y:I
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 3783
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3784
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3785
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3786
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v18

    .line 3787
    .restart local v18       #motionPosition:I
    if-ltz v18, :cond_28

    .line 3789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3790
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3791
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3793
    .end local v22           #v:Landroid/view/View;
    :cond_28
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3453
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 3526
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3543
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3718
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 3387
    if-eqz p1, :cond_2

    .line 3389
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 3393
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3396
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 3398
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 3417
    :cond_1
    :goto_0
    return-void

    .line 3400
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3401
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3402
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3403
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 3405
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3406
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 3409
    :cond_5
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3410
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 3411
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentCaches()V

    .line 3412
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->finishGlows()V

    .line 3413
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2727
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    .line 2729
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2731
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 2732
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2733
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2734
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2737
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 2738
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 2739
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 2741
    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2742
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2743
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidateParentCaches()V

    .line 2744
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->finishGlows()V

    .line 2745
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2749
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2751
    if-ne v0, v2, :cond_2

    .line 2753
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2777
    :cond_2
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 2778
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 2729
    goto :goto_0

    .line 2756
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2758
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 2762
    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2764
    if-ne v0, v2, :cond_6

    .line 2766
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2770
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 2771
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2772
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1132
    const/4 v7, 0x0

    .line 1133
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1135
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1136
    const/4 v7, 0x1

    .line 1138
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 1141
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1142
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    if-eqz v5, :cond_6

    .line 1144
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1149
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1150
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1154
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1157
    const/4 v6, 0x0

    .line 1174
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1175
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 1176
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1179
    :cond_3
    if-eqz v6, :cond_4

    .line 1180
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1183
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 1140
    goto :goto_0

    .line 1146
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1152
    :cond_7
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1159
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 1160
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 1161
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 1162
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1163
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1164
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1165
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1166
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1168
    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 1160
    goto :goto_4

    .line 1169
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1170
    :cond_c
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2904
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2905
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2907
    invoke-virtual {p0, p2, v6}, Lcom/htc/widget/HtcAbsListView;->setItemChecked(IZ)V

    .line 2908
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    .line 2925
    :cond_0
    :goto_0
    return v6

    .line 2913
    :cond_1
    const/4 v6, 0x0

    .line 2914
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 2915
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2918
    :cond_2
    if-nez v6, :cond_3

    .line 2919
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2920
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2922
    :cond_3
    if-eqz v6, :cond_0

    .line 2923
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3036
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3037
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3038
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3039
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3042
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 3043
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3044
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3045
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3046
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3047
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3048
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3052
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 3043
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3052
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3069
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v0

    .line 3070
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 3071
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3073
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 2295
    if-eq p1, v6, :cond_0

    .line 2296
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 2299
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2300
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2301
    instance-of v2, p2, Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2302
    check-cast v2, Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/htc/widget/HtcAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2304
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(IIII)V

    .line 2307
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 2308
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2309
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 2310
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2311
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->refreshDrawableState()V

    .line 2314
    :cond_2
    return-void

    .line 2309
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6076
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 6077
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3500(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    move-result-object v3

    .line 6080
    .local v3, listener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6081
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6082
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 6084
    .local v4, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6085
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6086
    if-eqz v3, :cond_0

    .line 6088
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6080
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6092
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6093
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 6094
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 5205
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 5206
    .local v0, position:I
    if-gez v0, :cond_0

    .line 5207
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5209
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5210
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5211
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 8
    .parameter "newState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x5

    const/4 v5, 0x1

    .line 4072
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    if-eq p1, v2, :cond_3

    .line 4074
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    if-ne v2, v5, :cond_1

    .line 4075
    const/4 v0, 0x0

    .line 4076
    .local v0, activity:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 4077
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4079
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4098
    .end local v0           #activity:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v2, :cond_2

    .line 4099
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v2, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 4101
    :cond_2
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 4103
    packed-switch p1, :pswitch_data_1

    .line 4120
    :cond_3
    :goto_1
    return-void

    .line 4081
    .restart local v0       #activity:Ljava/lang/String;
    :pswitch_0
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_IDLE, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    sput-boolean v7, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_0

    .line 4086
    :pswitch_1
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_TOUCH_SCROLL, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_0

    .line 4091
    :pswitch_2
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_FLING, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_0

    .line 4105
    .end local v0           #activity:Ljava/lang/String;
    :pswitch_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4106
    iput-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_1

    .line 4111
    :pswitch_4
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 4112
    .local v1, pri:I
    if-eq v1, v6, :cond_3

    .line 4113
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    .line 4114
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4115
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_1

    .line 4079
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4103
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 3925
    if-eqz p1, :cond_0

    .line 3926
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->recycleVelocityTracker()V

    .line 3928
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3929
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1893
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1894
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 1896
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 1582
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1583
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1585
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1902
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 1903
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1905
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1906
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1907
    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1908
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 1909
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1910
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1911
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1912
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    .line 1913
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1914
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1915
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5273
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 5275
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 5276
    const/16 v17, 0x0

    .line 5371
    :goto_0
    return v17

    .line 5279
    :cond_0
    const/4 v13, 0x0

    .line 5281
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5282
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5283
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 5284
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5285
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 5287
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5288
    move v12, v14

    .line 5290
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5291
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5292
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5295
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 5296
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5352
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 5353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 5357
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 5358
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 5359
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 5360
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5361
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5362
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 5363
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 5364
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->setSelectionInt(I)V

    .line 5365
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 5369
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 5371
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 5297
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5298
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 5302
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5304
    move v12, v7

    .line 5305
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5306
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5307
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5309
    .local v15, top:I
    if-nez v8, :cond_6

    .line 5311
    move v13, v15

    .line 5313
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5316
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5319
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5321
    add-int v12, v7, v8

    .line 5322
    move v13, v15

    .line 5323
    goto/16 :goto_1

    .line 5305
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5327
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 5328
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 5329
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5331
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 5332
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5333
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5334
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5336
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5337
    move v13, v15

    .line 5338
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5339
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5343
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5344
    add-int v12, v7, v8

    .line 5345
    move v13, v15

    .line 5346
    goto/16 :goto_1

    .line 5331
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5367
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 5371
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 5253
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5254
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 5255
    const/4 v0, 0x1

    .line 5257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollToFirstAddedPosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, 0x1

    .line 6990
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 6991
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 6992
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 1440
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1442
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1443
    .local v1, lastVisiblePosition:I
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1452
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_0
    return-void

    .line 1447
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_0
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1448
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1451
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5688
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 5749
    :cond_0
    :goto_0
    return v2

    .line 5692
    :cond_1
    const/4 v2, 0x0

    .line 5693
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 5694
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 5726
    :goto_1
    if-eqz v3, :cond_0

    .line 5727
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 5729
    move-object v1, p3

    .line 5730
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 5731
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5734
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5735
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5737
    :pswitch_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5738
    goto :goto_0

    .line 5701
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 5702
    goto :goto_1

    .line 5704
    :sswitch_1
    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5705
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 5707
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 5708
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 5709
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5711
    :cond_3
    const/4 v2, 0x1

    .line 5718
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 5719
    goto :goto_1

    .line 5712
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 5714
    const/4 v2, 0x1

    .line 5715
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5722
    :sswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_1

    .line 5741
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5742
    goto :goto_0

    .line 5745
    :pswitch_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 5694
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 5735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 929
    if-eqz p1, :cond_0

    .line 930
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 943
    :cond_2
    return-void
.end method

.method public setAddAnimationListener(Lcom/htc/widget/HtcAbsListView$AddAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6999
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    .line 7000
    return-void
.end method

.method public setAddPositionsList(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 6895
    .local p1, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 6832
    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6810
    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6800
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 6979
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 6039
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6040
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    .line 6041
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 6042
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6043
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6042
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6045
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6047
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1209
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 1210
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1214
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1216
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1219
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1222
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1223
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    .line 1224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 1227
    :cond_3
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 6906
    .local p1, d:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setDeleteAnimationListener(Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 7007
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    .line 7008
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 2464
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 2465
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 1300
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->setAlwaysShow(Z)V

    .line 1308
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->computeOpaqueFlags()V

    .line 1309
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->recomputePadding()V

    .line 1310
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1271
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    .line 1272
    if-eqz p1, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 1274
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 1279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1831
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1832
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 1835
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1837
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1839
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1841
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1845
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 1846
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1849
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2103
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2105
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 2109
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2110
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2111
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 2115
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 2109
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 4781
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4782
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 4784
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    #getter for: Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->access$1000(Lcom/htc/widget/HtcAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4785
    return-void
.end method

.method setHtcScrollEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 4124
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    .line 4125
    return-void
.end method

.method public setIntroAnimationListener(Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6934
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    .line 6935
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1064
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1070
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1073
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 1074
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1075
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1076
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    if-eqz p2, :cond_7

    .line 1078
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1083
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 1084
    if-eqz p2, :cond_8

    .line 1085
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 1090
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 1091
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1092
    .local v3, id:J
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1119
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1120
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1121
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 1122
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    goto :goto_0

    .line 1080
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1087
    :cond_8
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1096
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 1099
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1100
    :cond_a
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1101
    if-eqz v7, :cond_b

    .line 1102
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1107
    :cond_b
    if-eqz p2, :cond_e

    .line 1108
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1109
    if-eqz v7, :cond_c

    .line 1110
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1112
    :cond_c
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 1096
    goto :goto_4

    .line 1113
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1114
    :cond_f
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1244
    new-instance v0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V

    .line 1247
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1415
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 1416
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 3898
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingLeft:I

    .line 3899
    iput p2, p0, Lcom/htc/widget/HtcAbsListView;->mGlowPaddingRight:I

    .line 3900
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 907
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 910
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 911
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 917
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->setOverScrollMode(I)V

    .line 918
    return-void

    .line 914
    :cond_1
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 915
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 6250
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$3502(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    .line 6251
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 6184
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    .line 2556
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    .line 2557
    return-void
.end method

.method public setScrollToAddedPositionListener(Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6954
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    .line 6955
    return-void
.end method

.method public setScrollToCorrectPosListener(Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6975
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToCorrectPosListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    .line 6976
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1487
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 1489
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    .line 1490
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 2475
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2476
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 2479
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2480
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2481
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2483
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2485
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2486
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 2487
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 2488
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 2489
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 2490
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2491
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->updateSelectorState()V

    .line 2492
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1389
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1390
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1574
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    .line 1575
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayoutIfNecessary()V

    .line 1577
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1503
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    .line 1504
    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 6823
    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6814
    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6796
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 6006
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    .line 6007
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 4798
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F

    .line 4799
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1355
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->setVerticalScrollbarPosition(I)V

    .line 1356
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->setScrollbarPosition(I)V

    .line 1359
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2443
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 2940
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v3

    .line 2941
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2942
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2943
    .local v1, id:J
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2944
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2945
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2946
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 2949
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 2958
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2959
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2960
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2961
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2963
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2967
    :cond_0
    if-nez v6, :cond_1

    .line 2968
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2971
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2976
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method skipScroll()Z
    .locals 1

    .prologue
    .line 7045
    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 4884
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 4885
    new-instance v5, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 4889
    :cond_0
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 4890
    .local v2, firstPos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 4891
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 4892
    .local v3, lastPos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingTop()I

    move-result v4

    .line 4893
    .local v4, topLimit:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4895
    .local v0, bottomLimit:I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 4899
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 4900
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 4901
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 4907
    :cond_3
    :goto_0
    return-void

    .line 4904
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 4905
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 4913
    const/4 v2, -0x1

    .line 4914
    .local v2, index:I
    if-gez p1, :cond_3

    .line 4915
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4920
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 4921
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4922
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4923
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4924
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4926
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 4927
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 4928
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 4929
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 4930
    .local v6, visibleThreshold:F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 4933
    add-int/lit8 v2, v2, 0x1

    .line 4940
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->smoothScrollToPosition(I)V

    .line 4943
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 4916
    :cond_3
    if-lez p1, :cond_0

    .line 4917
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 4934
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 4937
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 4811
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4812
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4814
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    .line 4815
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4873
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4875
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(II)V

    .line 4876
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 4852
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4853
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4855
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->startWithOffset(II)V

    .line 4856
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4835
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 4837
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->startWithOffset(III)V

    .line 4838
    return-void
.end method

.method public startIntroAnimation()V
    .locals 0

    .prologue
    .line 6927
    return-void
.end method

.method protected startScrollListView(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7056
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 7057
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 7058
    .local v1, distance:I
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 7060
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    if-lez v1, :cond_7

    .line 7061
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 7062
    if-eqz v4, :cond_5

    .line 7063
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 7064
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 7069
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 7073
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 7074
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7076
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 7077
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7078
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 7079
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 7081
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 7084
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 7085
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 7086
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7088
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 7092
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 7058
    goto :goto_0

    .line 7066
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 7067
    if-lez v0, :cond_6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 7092
    goto :goto_2
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2426
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2431
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2429
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 4986
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    .line 4987
    .local v8, childCount:I
    if-nez v8, :cond_0

    .line 4988
    const/16 v29, 0x1

    .line 5152
    :goto_0
    return v29

    .line 4991
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4992
    .local v16, firstTop:I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 4994
    .local v22, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 4999
    .local v23, listPadding:Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 5000
    .local v13, effectivePaddingTop:I
    const/4 v12, 0x0

    .line 5001
    .local v12, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 5002
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5003
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 5007
    :cond_1
    sub-int v25, v13, v16

    .line 5008
    .local v25, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 5009
    .local v14, end:I
    sub-int v26, v22, v14

    .line 5011
    .local v26, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 5012
    .local v19, height:I
    if-gez p1, :cond_3

    .line 5013
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5018
    :goto_1
    if-gez p2, :cond_4

    .line 5019
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5024
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 5027
    .local v15, firstPosition:I
    if-nez v15, :cond_5

    .line 5028
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    .line 5032
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 5033
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    .line 5038
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 5040
    .local v5, cannotScrollDown:Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 5043
    .local v6, cannotScrollUp:Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 5044
    :cond_2
    if-eqz p2, :cond_9

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 5015
    .end local v5           #cannotScrollDown:Z
    .end local v6           #cannotScrollUp:Z
    .end local v15           #firstPosition:I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 5021
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 5030
    .restart local v15       #firstPosition:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 5035
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 5038
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 5040
    .restart local v5       #cannotScrollDown:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 5044
    .restart local v6       #cannotScrollUp:Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 5047
    :cond_a
    if-gez p2, :cond_13

    const/4 v11, 0x1

    .line 5049
    .local v11, down:Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v21

    .line 5050
    .local v21, inTouchMode:Z
    if-eqz v21, :cond_b

    .line 5051
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 5054
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 5055
    .local v18, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 5057
    .local v17, footerViewsStart:I
    const/16 v27, 0x0

    .line 5058
    .local v27, start:I
    const/4 v10, 0x0

    .line 5060
    .local v10, count:I
    if-eqz v11, :cond_16

    .line 5062
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 5063
    .local v28, top:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 5064
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 5066
    :cond_c
    const/16 v20, 0x0

    .local v20, i:I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 5067
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5068
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_14

    .line 5113
    .end local v7           #child:Landroid/view/View;
    .end local v28           #top:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewTop:I

    .line 5115
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 5117
    if-lez v10, :cond_e

    .line 5118
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/htc/widget/HtcAbsListView;->detachViewsFromParent(II)V

    .line 5120
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5122
    if-eqz v11, :cond_f

    .line 5123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 5126
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 5128
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5129
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v25

    if-lt v0, v3, :cond_10

    move/from16 v0, v26

    if-ge v0, v3, :cond_11

    .line 5130
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcAbsListView;->fillGap(Z)V

    .line 5133
    :cond_11
    if-nez v21, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_19

    .line 5134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5135
    .local v9, childIndex:I
    if-ltz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_12

    .line 5136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5147
    .end local v9           #childIndex:I
    :cond_12
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 5149
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 5150
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 5152
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 5047
    .end local v3           #absIncrementalDeltaY:I
    .end local v10           #count:I
    .end local v11           #down:Z
    .end local v17           #footerViewsStart:I
    .end local v18           #headerViewsCount:I
    .end local v20           #i:I
    .end local v21           #inTouchMode:Z
    .end local v27           #start:I
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 5071
    .restart local v7       #child:Landroid/view/View;
    .restart local v10       #count:I
    .restart local v11       #down:Z
    .restart local v17       #footerViewsStart:I
    .restart local v18       #headerViewsCount:I
    .restart local v20       #i:I
    .restart local v21       #inTouchMode:Z
    .restart local v27       #start:I
    .restart local v28       #top:I
    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 5072
    add-int v24, v15, v20

    .line 5073
    .local v24, position:I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 5075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5066
    :cond_15
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 5087
    .end local v7           #child:Landroid/view/View;
    .end local v20           #i:I
    .end local v24           #position:I
    .end local v28           #top:I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 5088
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 5089
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 5091
    :cond_17
    add-int/lit8 v20, v8, -0x1

    .restart local v20       #i:I
    :goto_a
    if-ltz v20, :cond_d

    .line 5092
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5093
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_d

    .line 5096
    move/from16 v27, v20

    .line 5097
    add-int/lit8 v10, v10, 0x1

    .line 5098
    add-int v24, v15, v20

    .line 5099
    .restart local v24       #position:I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_18

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_18

    .line 5101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5091
    :cond_18
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 5138
    .end local v4           #bottom:I
    .end local v7           #child:Landroid/view/View;
    .end local v24           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1a

    .line 5139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5140
    .restart local v9       #childIndex:I
    if-ltz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_12

    .line 5141
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 5144
    .end local v9           #childIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2129
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2132
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2135
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2136
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2137
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2138
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2142
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2145
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2147
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 2150
    .local v3, count:I
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2153
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2154
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2155
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2158
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2160
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2132
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2138
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2142
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 2150
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2155
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2158
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2561
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2562
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2564
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
