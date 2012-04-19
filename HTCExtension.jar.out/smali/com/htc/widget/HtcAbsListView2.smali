.class public abstract Lcom/htc/widget/HtcAbsListView2;
.super Lcom/htc/widget/HtcAdapterView2;
.source "HtcAbsListView2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView2$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView2$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView2$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView2$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView2$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView2$PerformClick;,
        Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView2$SavedState;,
        Lcom/htc/widget/HtcAbsListView2$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView2",
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
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_LEFT:I = 0x7

.field static final LAYOUT_FORCE_RIGHT:I = 0x8

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView2",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/htc/widget/HtcFastScroller3;

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalLeft:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field public mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedLeft:I

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 603
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView2;-><init>(Landroid/content/Context;)V

    .line 201
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 216
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 232
    new-instance v1, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 237
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 242
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 247
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 252
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 257
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 262
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 268
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 340
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 377
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 384
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 427
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 447
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 449
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 458
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 465
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 476
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 526
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2473
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2482
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2491
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 604
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 606
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setVerticalScrollBarEnabled(Z)V

    .line 607
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 608
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 609
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 613
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 614
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 617
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 216
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 226
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 232
    new-instance v9, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 242
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 247
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 252
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 257
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 262
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 268
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 340
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 377
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 384
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 427
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 447
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 449
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 458
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 465
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 476
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 526
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2473
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2482
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2491
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 618
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 620
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 623
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 624
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 628
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 631
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 632
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->setStackFromBottom(Z)V

    .line 634
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 635
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 637
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 638
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->setTextFilterEnabled(Z)V

    .line 640
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 642
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setTranscriptMode(I)V

    .line 644
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 645
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setCacheColorHint(I)V

    .line 647
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 648
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setFastScrollEnabled(Z)V

    .line 650
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 651
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->setSmoothScrollbarEnabled(Z)V

    .line 653
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 654
    return-void
.end method

.method private acceptFilter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1151
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Filterable;

    invoke-interface {v2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 1158
    :goto_0
    return v2

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    .line 1156
    .local v0, context:Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1158
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4115
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 4116
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4117
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4118
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4120
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 4125
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4127
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4128
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4129
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4130
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4131
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4132
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4133
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4134
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4135
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    .line 4136
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4138
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 4139
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4143
    :goto_0
    return-void

    .line 4141
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1847
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1849
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1850
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1852
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 3970
    sparse-switch p2, :sswitch_data_0

    .line 3996
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3972
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3973
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3974
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3975
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3999
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 4000
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4001
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3978
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

    .line 3979
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3980
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3981
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3982
    .restart local v1       #dY:I
    goto :goto_0

    .line 3984
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3985
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3986
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3987
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3988
    .restart local v1       #dY:I
    goto :goto_0

    .line 3990
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

    .line 3991
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3992
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3993
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3994
    .restart local v1       #dY:I
    goto :goto_0

    .line 3970
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFocusableInTouchMode(Z)V

    .line 879
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setWillNotDraw(Z)V

    .line 880
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 881
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    .line 884
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    .line 885
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2232
    const/4 v6, 0x0

    .line 2234
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)Z

    move-result v6

    .line 2238
    :cond_0
    if-nez v6, :cond_1

    .line 2239
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2240
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView2;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2242
    :cond_1
    if-eqz v6, :cond_2

    .line 2243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->performHapticFeedback(I)Z

    .line 2245
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3925
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3928
    .local v2, screenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3931
    .local v3, screenWidth:I
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 3932
    .local v4, xy:[I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getLocationOnScreen([I)V

    .line 3937
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3938
    aget v5, v4, v7

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 3939
    .local v1, rightGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3940
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x15

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3955
    .end local v1           #rightGap:I
    :goto_0
    return-void

    .line 3943
    .restart local v1       #rightGap:I
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v1, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 3946
    .end local v1           #rightGap:I
    :cond_1
    const/4 v5, 0x1

    aget v5, v4, v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 3947
    .local v0, bottomGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3948
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x51

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3951
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v0, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1768
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3916
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3917
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3918
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 3920
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkFocus()V

    .line 3922
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 890
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
    .line 2946
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    .line 2947
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 2948
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 2950
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2961
    :cond_0
    return-void

    .line 2954
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2955
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2956
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2957
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2959
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2954
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4244
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4200
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

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
    .line 4281
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3199
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 3200
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3201
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3202
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 3204
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3205
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3207
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 3209
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 4153
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 4154
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 4156
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4157
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 4160
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1379
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1380
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1381
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1382
    mul-int/lit8 v2, v1, 0x64

    .line 1384
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1385
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1386
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1387
    .local v5, width:I
    if-lez v5, :cond_0

    .line 1388
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 1391
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1392
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1393
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1394
    if-lez v5, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 1403
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    :goto_0
    return v2

    .line 1400
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1403
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1412
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1413
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1414
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1415
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1416
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1417
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1418
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1419
    .local v6, width:I
    if-lez v6, :cond_0

    .line 1420
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1435
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :cond_0
    :goto_0
    return v7

    .line 1424
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1425
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1426
    const/4 v3, 0x0

    .line 1432
    .local v3, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1427
    .end local v3           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1428
    move v3, v1

    .restart local v3       #index:I
    goto :goto_1

    .line 1430
    .end local v3           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3       #index:I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1260
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1261
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1262
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1263
    mul-int/lit8 v2, v1, 0x64

    .line 1265
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1266
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1267
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1268
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1269
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1272
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1273
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1274
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1275
    if-lez v3, :cond_1

    .line 1276
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1284
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1281
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1284
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1293
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1294
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1295
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1296
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1297
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1298
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1299
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1300
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1301
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1316
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1305
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1306
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1307
    const/4 v4, 0x0

    .line 1313
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

    .line 1308
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1309
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1311
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1325
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2126
    new-instance v0, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3187
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3188
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3189
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 3190
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 3192
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3906
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3907
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3909
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1776
    const/4 v2, 0x0

    .line 1777
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1778
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1780
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    .line 1781
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    .line 1782
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1785
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1788
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1789
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1790
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1793
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1795
    if-eqz v1, :cond_2

    .line 1796
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1799
    :cond_2
    if-eqz v0, :cond_3

    .line 1800
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1801
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1803
    :cond_3
    return-void

    .line 1777
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
    .line 2313
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2849
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->draw(Landroid/graphics/Canvas;)V

    .line 2850
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 2851
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw(Landroid/graphics/Canvas;)V

    .line 2853
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1981
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->drawableStateChanged()V

    .line 1982
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1985
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 4772
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionColumn(I)I
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4263
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4272
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 4807
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 4737
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1356
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1357
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1367
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1360
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1361
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1364
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1365
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v4

    .line 1366
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1367
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4346
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 4780
    const/4 v0, 0x0

    .line 4781
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4782
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 4781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4784
    :cond_0
    return v0
.end method

.method getChildrenTotalWidth()I
    .locals 3

    .prologue
    .line 4789
    const/4 v0, 0x0

    .line 4790
    .local v0, childrenTotalWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4791
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 4790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4793
    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
    .locals 1

    .prologue
    .line 4768
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 865
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 869
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3493
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3483
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 4821
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    .prologue
    .line 4742
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1454
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1455
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1464
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1458
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1459
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1462
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1463
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1464
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 4817
    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    .prologue
    .line 4746
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1475
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1476
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1486
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1479
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1480
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1483
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1484
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v4

    .line 1485
    .local v4, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1486
    .local v2, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1625
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1626
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1628
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4322
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 4811
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 4733
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1335
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1336
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1345
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1339
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1340
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1343
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1344
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1345
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 4313
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3772
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 3773
    .local v0, count:I
    if-lez v0, :cond_c

    .line 3780
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v4, :cond_4

    .line 3782
    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 3784
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mOldItemCount:I

    if-lt v4, v5, :cond_3

    .line 3789
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3790
    const/16 v3, 0x8

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3900
    :cond_1
    :goto_0
    return-void

    .line 3792
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0

    .line 3798
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    .line 3848
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3850
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v1

    .line 3853
    .local v1, newPos:I
    if-lt v1, v0, :cond_5

    .line 3854
    add-int/lit8 v1, v0, -0x1

    .line 3856
    :cond_5
    if-gez v1, :cond_6

    .line 3857
    const/4 v1, 0x0

    .line 3861
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3863
    .local v2, selectablePos:I
    if-ltz v2, :cond_a

    .line 3864
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3800
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3805
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3806
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    goto :goto_0

    .line 3812
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->findSyncPosition()I

    move-result v1

    .line 3813
    .restart local v1       #newPos:I
    if-ltz v1, :cond_4

    .line 3815
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3816
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_4

    .line 3818
    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 3821
    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 3824
    :cond_8
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3833
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3828
    :cond_9
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    .line 3841
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3842
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    goto :goto_0

    .line 3868
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_a
    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3869
    if-ltz v2, :cond_c

    .line 3870
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 3877
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_b
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    if-gez v4, :cond_1

    .line 3887
    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3888
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    :goto_2
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3894
    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 3895
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 3896
    iput v8, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 3897
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 3898
    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 3899
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 3888
    :cond_d
    const/4 v3, 0x7

    goto :goto_2

    .line 3890
    :cond_e
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v4, :cond_f

    const/4 v3, 0x3

    :cond_f
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_3

    .line 3798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 4170
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3507
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3508
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3509
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3510
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3512
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 3513
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 3514
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 3517
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 3520
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3522
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 3565
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 3566
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 3567
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3568
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller3;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 779
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4010
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1925
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1926
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1927
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1930
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1932
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1933
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1956
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1934
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1936
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 1938
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isLongClickable()Z

    move-result v1

    .line 1939
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1940
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1941
    if-eqz v1, :cond_6

    .line 1942
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1948
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1949
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1950
    new-instance v5, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    .line 1952
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1953
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1945
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
    .line 1543
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    .line 1708
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1711
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1717
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1718
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1719
    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrapView, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_0
    if-eq v0, v1, :cond_1

    .line 1726
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1727
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1728
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1748
    :cond_1
    :goto_0
    return-object v0

    .line 1736
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1737
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_3

    .line 1738
    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1740
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3223
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3222
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3225
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2040
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->onAttachedToWindow()V

    .line 2042
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2043
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2044
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2046
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1994
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1996
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2022
    :cond_0
    :goto_0
    return-object v3

    .line 2002
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView2;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2007
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView2;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2008
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2009
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2010
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2011
    move v0, v2

    .line 2017
    :cond_2
    if-ltz v0, :cond_0

    .line 2018
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2009
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 4086
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4090
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 4091
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4093
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 2054
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->onDetachedFromWindow()V

    .line 2056
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2057
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2060
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4251
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4252
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 4253
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 4255
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 4760
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v0, :cond_0

    .line 4761
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    .line 4763
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4764
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    .line 4765
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1211
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView2;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1212
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 1215
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1216
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4178
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4180
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4181
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 4190
    :cond_0
    :goto_0
    return-void

    .line 4185
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4186
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/high16 v9, -0x8000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2862
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 2863
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 2866
    .local v5, y:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v8, :cond_0

    .line 2867
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v8, p1}, Lcom/htc/widget/HtcFastScroller3;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2868
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 2934
    .end local v1           #intercepted:Z
    :goto_0
    return v6

    .line 2873
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v7

    .line 2934
    goto :goto_0

    .line 2877
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2878
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v2

    .line 2884
    .local v2, motionPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-ltz v2, :cond_2

    .line 2887
    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2890
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2891
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2892
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2899
    :goto_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2900
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2901
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2903
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2904
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto :goto_1

    .line 2880
    .end local v2           #motionPosition:I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v2

    .restart local v2       #motionPosition:I
    goto :goto_2

    .line 2894
    .restart local v3       #v:Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2895
    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2909
    .end local v2           #motionPosition:I
    .end local v3           #v:Landroid/view/View;
    :pswitch_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 2912
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2913
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2917
    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2928
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2929
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_1

    .line 2873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2909
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 2290
    sparse-switch p1, :sswitch_data_0

    .line 2302
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2293
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2295
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2296
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    .line 2297
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2298
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2299
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2290
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1514
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView2;->onLayout(ZIIII)V

    .line 1515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 1516
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 1517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 1518
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1499
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->useDefaultSelector()V

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 1502
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1503
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1504
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1505
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1506
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1097
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView2$SavedState;

    .line 1099
    .local v0, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1100
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1103
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1104
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncWidth:J

    .line 1109
    :goto_0
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    .line 1110
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1111
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1114
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1115
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 1116
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 1123
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    .line 1145
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFilterText(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1148
    return-void

    .line 1106
    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncHeight:J

    goto :goto_0

    .line 1118
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 1119
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    goto :goto_1

    .line 1124
    :cond_3
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1125
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1127
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1128
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1130
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 1133
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 1135
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 1142
    :goto_3
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncMode:I

    goto :goto_2

    .line 1137
    :cond_4
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 1138
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 1028
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 1030
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1032
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/widget/HtcAbsListView2$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1034
    .local v4, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 1035
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemId()J

    move-result-wide v2

    .line 1036
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    .line 1039
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1040
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    .line 1045
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    .line 1048
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1049
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 1054
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 1055
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 1077
    :goto_3
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 1078
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 1079
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 1080
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 1081
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1082
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 1088
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 1034
    goto :goto_0

    .line 1042
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    goto :goto_1

    .line 1051
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_2

    .line 1057
    :cond_4
    if-eqz v1, :cond_6

    .line 1059
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1062
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1063
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 1067
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 1068
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    goto :goto_3

    .line 1065
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_4

    .line 1070
    .end local v7           #v:Landroid/view/View;
    :cond_6
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    .line 1071
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 1072
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 1073
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 4777
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1813
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_1

    .line 1816
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller3;->onSizeChanged(IIII)V

    .line 1818
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4211
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4212
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4213
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4214
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4216
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 4217
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 4223
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4224
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4226
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4227
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4234
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4218
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4220
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4221
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_0

    .line 4229
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 2514
    .local v14, intercepted:Z
    if-eqz v14, :cond_0

    .line 2515
    const/16 v22, 0x1

    .line 2840
    .end local v14           #intercepted:Z
    :goto_0
    return v22

    .line 2518
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2519
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2520
    .local v20, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2529
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 2530
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2532
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2534
    packed-switch v4, :pswitch_data_0

    .line 2840
    :cond_2
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 2536
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v15

    .line 2537
    .local v15, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 2538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    if-ltz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v22

    check-cast v22, Landroid/widget/ListAdapter;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2542
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 2545
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2547
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2573
    :cond_4
    :goto_2
    if-ltz v15, :cond_5

    .line 2575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2578
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2579
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2580
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2587
    :goto_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2589
    .end local v18           #v:Landroid/view/View;
    :cond_5
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2590
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .line 2549
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_7

    if-gez v15, :cond_7

    .line 2553
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2556
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 2557
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2558
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2561
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2562
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2568
    :goto_4
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2564
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    goto :goto_4

    .line 2582
    .restart local v18       #v:Landroid/view/View;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2583
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2595
    .end local v15           #motionPosition:I
    .end local v18           #v:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 2598
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    move/from16 v22, v0

    sub-int v8, v20, v22

    .line 2601
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_1

    .line 2609
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 2610
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2612
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2625
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v8, v8, v22

    .line 2628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    sub-int v11, v20, v22

    .line 2629
    .local v11, incrementalDeltaX:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2633
    .local v16, motionView:Landroid/view/View;
    if-eqz v16, :cond_b

    .line 2636
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 2639
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2641
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2643
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2644
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2645
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2648
    .end local v15           #motionPosition:I
    :cond_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .end local v11           #incrementalDeltaX:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_c
    move v11, v8

    .line 2628
    goto :goto_5

    .line 2651
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v9, v9, v22

    .line 2653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 2654
    .local v12, incrementalDeltaY:I
    :goto_6
    if-eqz v12, :cond_e

    .line 2655
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2659
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2660
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_f

    .line 2663
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 2666
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    .line 2668
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2670
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2671
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    .line 2672
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2675
    .end local v15           #motionPosition:I
    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    goto/16 :goto_1

    .end local v12           #incrementalDeltaY:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_10
    move v12, v9

    .line 2653
    goto :goto_6

    .line 2686
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    .line 2793
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2797
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2800
    .local v10, handler:Landroid/os/Handler;
    if-eqz v10, :cond_12

    .line 2801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2804
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2806
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2690
    .end local v10           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2691
    .restart local v15       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2692
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1f

    .line 2693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 2695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2699
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 2700
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    .line 2703
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v17, v0

    .line 2704
    .local v17, performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mChild:Landroid/view/View;

    .line 2705
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    .line 2706
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView2$PerformClick;->rememberWindowAttachCount()V

    .line 2708
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 2711
    const/4 v5, 0x0

    .line 2712
    .local v5, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 2713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 2714
    :cond_15
    const/4 v5, 0x1

    .line 2722
    :cond_16
    :goto_8
    if-eqz v5, :cond_1e

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2724
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_17

    .line 2725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-nez v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2728
    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2729
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2730
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_19

    .line 2731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2733
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2734
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(Landroid/view/View;)V

    .line 2735
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2738
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_18

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2739
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2743
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 2744
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 2745
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2761
    :cond_19
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2717
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 2718
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 2725
    .restart local v10       #handler:Landroid/os/Handler;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_9

    .line 2748
    :cond_1d
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/widget/HtcAbsListView2$1;-><init>(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Lcom/htc/widget/HtcAbsListView2$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 2763
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1f

    .line 2764
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2768
    .end local v5           #b:Z
    .end local v17           #performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto/16 :goto_7

    .line 2771
    .end local v6           #child:Landroid/view/View;
    .end local v15           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2772
    .local v19, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 2777
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 2783
    .local v13, initialVelocity:I
    :goto_b
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v22

    if-lez v22, :cond_21

    .line 2786
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView2;->onFling(I)V

    goto/16 :goto_7

    .line 2779
    .end local v13           #initialVelocity:I
    :cond_20
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .restart local v13       #initialVelocity:I
    goto :goto_b

    .line 2788
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onUp()V

    goto/16 :goto_7

    .line 2819
    .end local v13           #initialVelocity:I
    .end local v19           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2820
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2822
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_22

    .line 2823
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2825
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2827
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2828
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_23

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2832
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2834
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2601
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2686
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2457
    if-eqz p1, :cond_0

    .line 2459
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2463
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2466
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2467
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2470
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 4755
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 4756
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4757
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2068
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->onWindowFocusChanged(Z)V

    .line 2070
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 2072
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 2075
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2076
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->resetPressedStatus(Landroid/view/View;)V

    .line 2080
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 2081
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2083
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 2085
    if-ne v0, v2, :cond_1

    .line 2087
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 2111
    :cond_1
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 2112
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v2

    .line 2070
    goto :goto_0

    .line 2090
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v3, :cond_4

    .line 2092
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 2096
    :cond_4
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2098
    if-ne v0, v2, :cond_5

    .line 2100
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    goto :goto_1

    .line 2104
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2105
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2106
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2328
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2329
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2330
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2331
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2334
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 2335
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2336
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2337
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2338
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2339
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2340
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2344
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2335
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2344
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
    .line 2361
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v0

    .line 2362
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2365
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1752
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1753
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1754
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1755
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(IIII)V

    .line 1758
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1759
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1760
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1761
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->refreshDrawableState()V

    .line 1763
    :cond_0
    return-void

    .line 1760
    :cond_1
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
    .line 4361
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 4362
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1500(Lcom/htc/widget/HtcAbsListView2$RecycleBin;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    move-result-object v3

    .line 4365
    .local v3, listener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4366
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4367
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4369
    .local v4, lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4370
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4371
    if-eqz v3, :cond_0

    .line 4373
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView2$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4365
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4377
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4378
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 4379
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 3530
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 3531
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3532
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3534
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3535
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3536
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2971
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView2;I)V

    .line 2974
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2977
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1221
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView2;->requestLayout()V

    .line 1223
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    .line 928
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 929
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 931
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1229
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1230
    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1231
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1232
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1233
    iput v3, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 1234
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    .line 1235
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1236
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1237
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 1238
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1239
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 1240
    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1248
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1249
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    .line 1250
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    .line 1251
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1252
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2497
    if-eqz p1, :cond_0

    .line 2498
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2499
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2500
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2502
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 25

    .prologue
    .line 3584
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v3

    .line 3586
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 3587
    const/16 v23, 0x0

    .line 3763
    :goto_0
    return v23

    .line 3590
    :cond_0
    const/16 v19, 0x0

    .line 3593
    .local v19, selectedTop:I
    const/16 v16, 0x0

    .line 3595
    .local v16, selectedLeft:I
    const/4 v7, 0x0

    .line 3596
    .local v7, childrenTop:I
    const/4 v4, 0x0

    .line 3597
    .local v4, childrenBottom:I
    const/4 v5, 0x0

    .line 3598
    .local v5, childrenLeft:I
    const/4 v6, 0x0

    .line 3600
    .local v6, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 3601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v24

    add-int v5, v23, v24

    .line 3602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v24

    sub-int v6, v23, v24

    .line 3609
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 3610
    .local v9, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    move/from16 v20, v0

    .line 3611
    .local v20, toPosition:I
    const/4 v8, 0x1

    .line 3613
    .local v8, down:Z
    move/from16 v0, v20

    if-lt v0, v9, :cond_7

    add-int v23, v9, v3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 3614
    move/from16 v17, v20

    .line 3616
    .local v17, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3619
    .local v14, selected:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3620
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 3621
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    .line 3624
    .local v18, selectedRight:I
    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    .line 3625
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v16, v5, v23

    .line 3737
    .end local v14           #selected:Landroid/view/View;
    .end local v18           #selectedRight:I
    :cond_1
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 3742
    :cond_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 3743
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 3746
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 3747
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 3751
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v17

    .line 3752
    move/from16 v0, v17

    if-lt v0, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLastVisiblePosition()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    .line 3753
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3754
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectionInt(I)V

    .line 3755
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 3761
    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 3763
    if-ltz v17, :cond_17

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 3604
    .end local v8           #down:Z
    .end local v9           #firstPosition:I
    .end local v17           #selectedPos:I
    .end local v20           #toPosition:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v24

    add-int v7, v23, v24

    .line 3605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v24

    sub-int v4, v23, v24

    goto/16 :goto_1

    .line 3626
    .restart local v8       #down:Z
    .restart local v9       #firstPosition:I
    .restart local v14       #selected:Landroid/view/View;
    .restart local v17       #selectedPos:I
    .restart local v18       #selectedRight:I
    .restart local v20       #toPosition:I
    :cond_4
    move/from16 v0, v18

    if-le v0, v6, :cond_1

    .line 3627
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v6, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v24

    sub-int v16, v23, v24

    goto/16 :goto_2

    .line 3631
    .end local v18           #selectedRight:I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 3632
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 3635
    .local v15, selectedBottom:I
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 3636
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v19, v7, v23

    goto/16 :goto_2

    .line 3637
    :cond_6
    if-le v15, v4, :cond_1

    .line 3638
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v4, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v24

    sub-int v19, v23, v24

    goto/16 :goto_2

    .line 3644
    .end local v14           #selected:Landroid/view/View;
    .end local v15           #selectedBottom:I
    .end local v17           #selectedPos:I
    :cond_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    .line 3646
    move/from16 v17, v9

    .line 3647
    .restart local v17       #selectedPos:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-ge v10, v3, :cond_1

    .line 3648
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3649
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3652
    .local v21, top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3654
    .local v12, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 3655
    if-nez v10, :cond_9

    .line 3657
    move/from16 v16, v12

    .line 3659
    if-gtz v9, :cond_8

    if-ge v12, v5, :cond_9

    .line 3662
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v5, v5, v23

    .line 3665
    :cond_9
    if-lt v12, v5, :cond_d

    .line 3667
    add-int v17, v9, v10

    .line 3668
    move/from16 v16, v12

    .line 3669
    goto/16 :goto_2

    .line 3672
    :cond_a
    if-nez v10, :cond_c

    .line 3674
    move/from16 v19, v21

    .line 3676
    if-gtz v9, :cond_b

    move/from16 v0, v21

    if-ge v0, v7, :cond_c

    .line 3679
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v7, v7, v23

    .line 3682
    :cond_c
    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    .line 3684
    add-int v17, v9, v10

    .line 3685
    move/from16 v19, v21

    .line 3686
    goto/16 :goto_2

    .line 3647
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3692
    .end local v10           #i:I
    .end local v12           #left:I
    .end local v17           #selectedPos:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 3693
    .local v11, itemCount:I
    const/4 v8, 0x0

    .line 3694
    add-int v23, v9, v3

    add-int/lit8 v17, v23, -0x1

    .line 3696
    .restart local v17       #selectedPos:I
    add-int/lit8 v10, v3, -0x1

    .restart local v10       #i:I
    :goto_6
    if-ltz v10, :cond_1

    .line 3697
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3700
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3701
    .restart local v21       #top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 3702
    .local v2, bottom:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3703
    .restart local v12       #left:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3705
    .local v13, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 3706
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    .line 3707
    move/from16 v16, v12

    .line 3708
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    if-le v13, v6, :cond_10

    .line 3709
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    sub-int v6, v6, v23

    .line 3713
    :cond_10
    if-gt v13, v6, :cond_14

    .line 3714
    add-int v17, v9, v10

    .line 3715
    move/from16 v16, v12

    .line 3716
    goto/16 :goto_2

    .line 3719
    :cond_11
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    .line 3720
    move/from16 v19, v21

    .line 3721
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_12

    if-le v2, v4, :cond_13

    .line 3722
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    sub-int v4, v4, v23

    .line 3726
    :cond_13
    if-gt v2, v4, :cond_14

    .line 3727
    add-int v17, v9, v10

    .line 3728
    move/from16 v19, v21

    .line 3729
    goto/16 :goto_2

    .line 3696
    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 3749
    .end local v2           #bottom:I
    .end local v10           #i:I
    .end local v11           #itemCount:I
    .end local v12           #left:I
    .end local v13           #right:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    goto/16 :goto_3

    .line 3757
    :cond_16
    const/16 v17, -0x1

    .line 3758
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3759
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto/16 :goto_4

    .line 3763
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 4022
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 4074
    :cond_0
    :goto_0
    return v2

    .line 4026
    :cond_1
    const/4 v2, 0x0

    .line 4027
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4028
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 4051
    :goto_1
    if-eqz v3, :cond_0

    .line 4052
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 4054
    move-object v1, p3

    .line 4055
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 4056
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v1, p3, v5, v6, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 4059
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4060
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4062
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4063
    goto :goto_0

    .line 4035
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 4036
    goto :goto_1

    .line 4038
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 4040
    const/4 v2, 0x1

    .line 4041
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4043
    :cond_3
    const/4 v3, 0x0

    .line 4044
    goto :goto_1

    .line 4047
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_1

    .line 4066
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4067
    goto :goto_0

    .line 4070
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 4028
    nop

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

    .line 4060
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 4332
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    .line 4333
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2479
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2480
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2488
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2489
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1868
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1869
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    .line 682
    if-eqz p1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller3;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->stop()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1173
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1174
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 1177
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1179
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1181
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1183
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1187
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 1188
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->clearSavedState()V

    .line 1191
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1525
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView2;->setFrame(IIII)Z

    move-result v0

    .line 1530
    .local v0, changed:Z
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1532
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 1535
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    .line 766
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 767
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1502(Lcom/htc/widget/HtcAbsListView2$RecycleBin;Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    .line 4398
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1964
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    .line 1966
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    .line 1973
    :goto_0
    return-void

    .line 1969
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    .line 1970
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 820
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    .line 821
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "sel"

    .prologue
    const/4 v3, 0x0

    .line 1891
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1893
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1895
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1896
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1897
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1898
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 1899
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 1900
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 1901
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 1902
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1903
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1904
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 741
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 920
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    .line 921
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayoutIfNecessary()V

    .line 923
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 838
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    .line 839
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4299
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    .line 4300
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1843
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

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

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 2263
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2264
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2265
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2266
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2268
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView2$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)Z

    move-result v6

    .line 2272
    :cond_0
    if-nez v6, :cond_1

    .line 2273
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2276
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2281
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2425
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2426
    .local v0, distance:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 2427
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2428
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2429
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2430
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2434
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2435
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2437
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2438
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2439
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2440
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2442
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 2445
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->requestDisallowInterceptTouchEvent(Z)V

    .line 2449
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1826
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1831
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1829
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 29
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 3236
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 3474
    :goto_0
    return-void

    .line 3240
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v11

    .line 3241
    .local v11, firstTop:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 3244
    .local v16, lastBottom:I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 3245
    .local v9, firstLeft:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getRight()I

    move-result v17

    .line 3248
    .local v17, lastRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3258
    .local v19, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 3259
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v22, v27, v9

    .line 3260
    .local v22, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 3261
    .local v8, end:I
    sub-int v23, v17, v8

    .line 3262
    .local v23, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    .line 3264
    .local v26, width:I
    if-gez p1, :cond_1

    .line 3265
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3270
    :goto_1
    if-gez p2, :cond_2

    .line 3271
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3296
    .end local v26           #width:I
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3298
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v22

    if-lt v0, v2, :cond_7

    move/from16 v0, v23

    if-lt v0, v2, :cond_7

    .line 3299
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 3302
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 3303
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3304
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    goto/16 :goto_0

    .line 3267
    .end local v2           #absIncrementalDeltaY:I
    .restart local v26       #width:I
    :cond_1
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 3273
    :cond_2
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 3277
    .end local v8           #end:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    .end local v26           #width:I
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v27, v11

    .line 3278
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 3279
    .restart local v8       #end:I
    sub-int v23, v16, v8

    .line 3280
    .restart local v23       #spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v14, v27, v28

    .line 3282
    .local v14, height:I
    if-gez p1, :cond_4

    .line 3283
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3288
    :goto_3
    if-gez p2, :cond_5

    .line 3289
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto/16 :goto_2

    .line 3285
    :cond_4
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 3291
    :cond_5
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 3307
    .end local v14           #height:I
    .restart local v2       #absIncrementalDeltaY:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    .line 3308
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 3313
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 3316
    .local v10, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 3318
    if-nez v10, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v9, v0, :cond_8

    if-lez p1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 3320
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3324
    :cond_8
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 3326
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3331
    :cond_9
    if-nez v10, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v11, v0, :cond_a

    if-lez p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 3333
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3337
    :cond_a
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 3339
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 3344
    :cond_b
    if-gez p2, :cond_e

    const/4 v7, 0x1

    .line 3346
    .local v7, down:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 3348
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeaderViewsCount()I

    move-result v13

    .line 3349
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getFooterViewsCount()I

    move-result v28

    sub-int v12, v27, v28

    .line 3351
    .local v12, footerViewsStart:I
    const/16 v24, 0x0

    .line 3352
    .local v24, start:I
    const/4 v6, 0x0

    .line 3357
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 3358
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalWidth()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 3359
    if-eqz v7, :cond_11

    .line 3360
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v18, v27, p2

    .line 3361
    .local v18, left:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5
    if-ge v15, v5, :cond_c

    .line 3362
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3363
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 3402
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    .line 3453
    :goto_6
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 3454
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->detachViewsFromParent(II)V

    .line 3457
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_19

    .line 3458
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3464
    :goto_7
    if-eqz v7, :cond_d

    .line 3465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 3468
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3469
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView2;->fillGap(Z)V

    .line 3470
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 3472
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 3344
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v24           #start:I
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3366
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v18       #left:I
    .restart local v24       #start:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 3367
    add-int v20, v10, v15

    .line 3368
    .local v20, position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_10

    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    .line 3369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3361
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 3380
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    .end local v20           #position:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v21, v27, p2

    .line 3381
    .local v21, right:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_8
    if-ltz v15, :cond_c

    .line 3382
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3383
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 3386
    move/from16 v24, v15

    .line 3387
    add-int/lit8 v6, v6, 0x1

    .line 3388
    add-int v20, v10, v15

    .line 3389
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v12, :cond_12

    .line 3390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3381
    :cond_12
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 3404
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v21           #right:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    .line 3405
    if-eqz v7, :cond_17

    .line 3406
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v25, v27, p2

    .line 3407
    .local v25, top:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    if-ge v15, v5, :cond_14

    .line 3408
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3409
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    .line 3448
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v25           #top:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_6

    .line 3412
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #i:I
    .restart local v25       #top:I
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 3413
    add-int v20, v10, v15

    .line 3414
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_16

    move/from16 v0, v20

    if-ge v0, v12, :cond_16

    .line 3415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3407
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 3426
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v25           #top:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v3, v27, p2

    .line 3427
    .local v3, bottom:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_a
    if-ltz v15, :cond_14

    .line 3428
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3429
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v3, :cond_14

    .line 3432
    move/from16 v24, v15

    .line 3433
    add-int/lit8 v6, v6, 0x1

    .line 3434
    add-int v20, v10, v15

    .line 3435
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_18

    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3427
    :cond_18
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 3460
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_7
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 4751
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    .line 4752
    return-void
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 4798
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4799
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4800
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 4801
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4798
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4804
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1548
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1550
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1553
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v8, :cond_4

    move v1, v6

    .line 1556
    .local v1, canScrollLeft:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1558
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1559
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    move v1, v6

    .line 1563
    .end local v4           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_6

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    .end local v1           #canScrollLeft:Z
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1568
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1571
    .local v5, count:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v8, v10, :cond_7

    move v2, v6

    .line 1574
    .local v2, canScrollRight:Z
    :goto_3
    if-nez v2, :cond_2

    if-lez v5, :cond_2

    .line 1575
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1576
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_8

    move v2, v6

    .line 1579
    .end local v4           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v1, v7

    .line 1553
    goto :goto_0

    .restart local v1       #canScrollLeft:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1559
    goto :goto_1

    .end local v4           #child:Landroid/view/View;
    :cond_6
    move v8, v9

    .line 1563
    goto :goto_2

    .end local v1           #canScrollLeft:Z
    .restart local v5       #count:I
    :cond_7
    move v2, v7

    .line 1571
    goto :goto_3

    .restart local v2       #canScrollRight:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_8
    move v2, v7

    .line 1576
    goto :goto_4

    .end local v4           #child:Landroid/view/View;
    :cond_9
    move v7, v9

    .line 1579
    goto :goto_5

    .line 1583
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_c

    .line 1586
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v8, :cond_e

    move v3, v6

    .line 1589
    .local v3, canScrollUp:Z
    :goto_7
    if-nez v3, :cond_b

    .line 1590
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 1591
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1592
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_f

    move v3, v6

    .line 1596
    .end local v4           #child:Landroid/view/View;
    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_10

    move v8, v7

    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    .end local v3           #canScrollUp:Z
    :cond_c
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1601
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1604
    .restart local v5       #count:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v0, v6

    .line 1607
    .local v0, canScrollDown:Z
    :goto_a
    if-nez v0, :cond_d

    if-lez v5, :cond_d

    .line 1608
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1609
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v0, v6

    .line 1612
    .end local v4           #child:Landroid/view/View;
    :cond_d
    :goto_b
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_13

    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canScrollDown:Z
    .end local v5           #count:I
    :cond_e
    move v3, v7

    .line 1586
    goto :goto_7

    .restart local v3       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    move v3, v7

    .line 1592
    goto :goto_8

    .end local v4           #child:Landroid/view/View;
    :cond_10
    move v8, v9

    .line 1596
    goto :goto_9

    .end local v3           #canScrollUp:Z
    .restart local v5       #count:I
    :cond_11
    move v0, v7

    .line 1604
    goto :goto_a

    .restart local v0       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    move v0, v7

    .line 1609
    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    :cond_13
    move v7, v9

    .line 1612
    goto :goto_c
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView2;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
