.class public Lcom/htc/sunny2/widget/gridview/GridView;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "GridView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGestureHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;,
        Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridItemAlignAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;,
        Lcom/htc/sunny2/widget/gridview/GridView$Cell;,
        Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;,
        Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;,
        Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;,
        Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;,
        Lcom/htc/sunny2/widget/gridview/GridView$RTEHighlightStateChange;,
        Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;
    }
.end annotation


# static fields
.field protected static final COOPERATEITEM_ID_NONE:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DELEY_BETWEEN_SCALE_MOTION_ANIMATION:I = 0x78

.field private static final DELEY_MOTION_ANIMATION:I = 0x1e

.field private static final DURATION_MOTION_ANIMATION:I = 0x96

.field private static final DURATION_SCALE_ANIMATION:I = 0x96

.field public static final INVALID_POSITION:I = -0x1

.field protected static final INVALID_SCREEN_POSITION:F = 3.4028235E38f

.field public static final LAYOUT_HORIZONTAL:I = 0x1

.field protected static final LAYOUT_NONE:I = -0x1

.field public static final LAYOUT_VERTICAL:I = 0x2

.field protected static final RENDER_ORDER_ANIMATION_DELETE_ITEM:I = 0x2

.field protected static final RENDER_ORDER_ANIMATION_KEEP_ITEM:I = 0x3

.field protected static final RENDER_ORDER_ANIMATION_NONE:I = 0x0

.field protected static final STORE_KEY_OLDFIRSTIDX:Ljava/lang/String; = "oldFirstIdx"

.field protected static final STORE_KEY_OLDFIRSTITEMPOSITIONY:Ljava/lang/String; = "oldFirstItemPositionY"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final LayoutLock:Ljava/lang/Object;

.field private bundleDataSetChangeAnimation:Landroid/os/Bundle;

.field protected mCellRecycler:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildNodeCount:I

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentHighlightIdx:I

.field protected mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

.field protected mDisableFastScrollerTouchEvent:Z

.field private mDisableLayoutRequest:Z

.field private mDoNotResetPreparatorFlag:Z

.field private mEnablePinOnItemScroll:Z

.field protected mExtraPaddingLeft:I

.field protected mExtraPaddingTop:I

.field private mFastScrollerRenderRequestAction:Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

.field protected mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

.field protected mFirstIdx:I

.field protected mFirstIdxPrev:I

.field private mFocusItemId:I

.field protected mGLViewHeight:I

.field protected mGLViewWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

.field protected mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

.field private mHasLayoutRequest:Z

.field protected mHorizontalSpacing:I

.field private mHostIdentifier:Ljava/lang/String;

.field private mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

.field protected mIgnorePinToBottmTopDuringDeleteAnimation:Z

.field protected mInLayout:Z

.field private mIsConfigChange:Z

.field protected mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

.field protected mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

.field protected mLastIdx:I

.field private mLastScrollState:I

.field protected mListItemCount:I

.field private final mLock:Ljava/lang/Object;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field private mNewHorizontalSpacing:I

.field private mNewListItemCount:I

.field private mNewMediaList:Lcom/htc/sunny2/IMediaList;

.field private mNewNumColumn:I

.field protected mNewNumRow:I

.field protected mNewOrientation:I

.field private mNewVerticalSpacing:I

.field protected mNumColumn:I

.field protected mNumRow:I

.field private mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

.field protected mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mOnScreenItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

.field protected mOrientation:I

.field private mPaddingChanged:Z

.field private mRefreshMediaList:Z

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mResurrectToIdx:I

.field private mResurrectToOldFirstIndexPositionY:I

.field protected mRootNode:Lcom/htc/sunny2/SceneNode;

.field private mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

.field private mSelectedHighlightEnabled:Z

.field private mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

.field protected mSelectedIdx:I

.field private mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

.field private mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

.field private mTouchDownInFling:Z

.field protected mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    const/4 v5, 0x1

    const/high16 v1, -0x8000

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 59
    const-string v0, "GridView"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LOG_TAG:Ljava/lang/String;

    .line 62
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    .line 91
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 96
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 97
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 101
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 102
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 107
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    .line 114
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 120
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdxPrev:I

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 127
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 132
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 143
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    .line 151
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$RTEHighlightStateChange;

    const-string v1, "SelectedHighlightStateChange"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$RTEHighlightStateChange;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    .line 159
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 164
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 166
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerRenderRequestAction:Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    .line 168
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    .line 169
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 183
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 1689
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 3572
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$5;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    .line 3610
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3611
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3612
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    .line 188
    invoke-direct {p0, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 189
    return-void
.end method

.method private FocusItemClick(I)V
    .locals 7
    .parameter "focusId"

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1925
    .local v6, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 1927
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1930
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onItemClickIRT(ILcom/htc/sunny2/SceneNode;)V

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iget-object v2, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    int-to-long v4, v1

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;->onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V

    .line 1941
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1942
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/widget/gridview/GridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/widget/gridview/GridView;[I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/widget/gridview/GridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    return-void
.end method

.method private dispatchUnpress(Z)V
    .locals 6
    .parameter "bForce"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1447
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v1, nIndex:I
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_3

    .line 1449
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1450
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    const-string v2, "GridView"

    const-string v3, "[HTCAlbum][Gridview][KeyPress]: dispatchUnpress "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1458
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-ne v2, v1, :cond_2

    .line 1462
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1466
    :cond_2
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1471
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPressed(Z)V

    .line 1472
    return-void
.end method

.method private doBounceBack()Z
    .locals 10

    .prologue
    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, bResult:Z
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 1567
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1480
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_3

    :cond_2
    move v1, v0

    .line 1481
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1483
    .end local v1           #bResult:I
    :cond_3
    const/4 v2, 0x0

    .line 1484
    .local v2, distanceToAligned:I
    const v4, 0x7fffffff

    .line 1486
    .local v4, maxDistanceToTop:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1487
    .local v5, screenItemFirst:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1495
    .local v6, screenItemLast:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1500
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-lt v7, v8, :cond_4

    .line 1502
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v4

    .line 1508
    :cond_4
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_7

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-ge v7, v8, :cond_7

    .line 1510
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v7, v7

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v7, v8

    .line 1540
    :cond_5
    :goto_1
    if-gez v2, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_6

    .line 1542
    move v2, v4

    .line 1552
    :cond_6
    if-nez v2, :cond_b

    move v1, v0

    .line 1555
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1513
    .end local v1           #bResult:I
    :cond_7
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v7, v8, :cond_5

    iget v7, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_5

    .line 1516
    iget v7, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v2, v7

    goto :goto_1

    .line 1521
    :cond_8
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-gt v7, v8, :cond_9

    .line 1523
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v7

    rsub-int/lit8 v4, v7, 0x0

    .line 1525
    :cond_9
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_a

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v7, v8, :cond_a

    .line 1527
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v7, v8

    goto :goto_1

    .line 1530
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    if-lez v7, :cond_5

    .line 1533
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    neg-int v2, v7

    goto/16 :goto_1

    .line 1558
    :cond_b
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v8, "GridFlingingAction"

    invoke-virtual {v7, p0, v8}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v3

    .line 1559
    .local v3, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v3, :cond_c

    .line 1561
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1564
    :cond_c
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v8}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v7, v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1565
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v9, "gridBouncingAction"

    invoke-direct {v8, p0, p0, v9}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1566
    const/4 v0, 0x1

    move v1, v0

    .line 1567
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method private doFocusScroll(III)Z
    .locals 8
    .parameter "coordinate"
    .parameter "gridHeight"
    .parameter "numRow"

    .prologue
    .line 1882
    const/4 v0, 0x0

    .line 1883
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 1884
    .local v3, distanceToAligned:I
    const/4 v2, 0x0

    .line 1886
    .local v2, diffDistance:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v0

    .line 1917
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1890
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1892
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v5, v5

    if-le p1, v5, :cond_4

    .line 1894
    neg-int v5, p1

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v5, v6

    .line 1901
    :cond_2
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, p2

    mul-int/2addr v5, p3

    add-int v3, v5, v2

    .line 1904
    :cond_3
    if-nez v3, :cond_5

    move v1, v0

    .line 1905
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1896
    .end local v1           #bResult:I
    :cond_4
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_2

    .line 1898
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    neg-int v2, v5

    goto :goto_1

    .line 1908
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v6, "GridFlingingAction"

    invoke-virtual {v5, p0, v6}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v4

    .line 1909
    .local v4, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v4, :cond_6

    .line 1910
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v5, v4}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1913
    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1914
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v6}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1915
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v7, "gridBouncingAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1916
    const/4 v0, 0x1

    move v1, v0

    .line 1917
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 2506
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2507
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 2508
    monitor-exit v2

    .line 2521
    :goto_0
    return-object v1

    .line 2511
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le p1, v3, :cond_2

    .line 2512
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 2522
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2515
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2517
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_3

    .line 2518
    monitor-exit v2

    goto :goto_0

    .line 2521
    :cond_3
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 5
    .parameter "itemPrototype"

    .prologue
    const/high16 v4, -0x8000

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 198
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 199
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 201
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    .line 206
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 207
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 210
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 212
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 214
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 215
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    .line 218
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 220
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 221
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 222
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 224
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 226
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 228
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 229
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 231
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 233
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 235
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-direct {v0, p0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    .line 237
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 239
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->LEFT_TOP:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;

    invoke-direct {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 241
    return-void
.end method

.method private performLongPress(Lcom/htc/sunny2/view/SView;II)Z
    .locals 4
    .parameter "view"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v1, 0x0

    .line 1621
    const/4 v0, 0x0

    .line 1623
    .local v0, handled:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    if-eqz v2, :cond_0

    .line 1624
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;->onItemLongClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)Z

    move-result v0

    .line 1626
    :cond_0
    if-nez v0, :cond_1

    .line 1627
    int-to-long v2, p3

    invoke-virtual {p0, p2, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1628
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v2, p0}, Lcom/htc/sunny2/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 1630
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1631
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->performHapticFeedback(I)Z

    .line 1633
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 1628
    goto :goto_0
.end method

.method private pinToBottom()V
    .locals 5

    .prologue
    .line 2099
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v3, v4, :cond_0

    .line 2101
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2102
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_1

    .line 2109
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2104
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v0, v3, v4

    .line 2105
    .local v0, bottom:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int v2, v3, v4

    .line 2107
    .local v2, offset:I
    const/4 v3, 0x0

    neg-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0
.end method

.method private pinToLeft(Z)V
    .locals 6
    .parameter "alignLeft"

    .prologue
    .line 2136
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_1

    .line 2137
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2138
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2139
    .local v1, left:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 2140
    .local v3, viewLeft:I
    if-gt v1, v3, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 2141
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v4, v1

    .line 2143
    .local v2, offset:I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2146
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #left:I
    .end local v2           #offset:I
    .end local v3           #viewLeft:I
    :cond_1
    return-void
.end method

.method private pinToRight()V
    .locals 5

    .prologue
    .line 2127
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v2, v3, :cond_0

    .line 2128
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2129
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2131
    .local v1, offset:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2133
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(Z)V
    .locals 6
    .parameter "alignTop"

    .prologue
    .line 2112
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_0

    .line 2113
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2114
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    .line 2124
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2116
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2117
    .local v2, top:I
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v3, v4, 0x0

    .line 2118
    .local v3, viewTop:I
    if-lt v2, v3, :cond_2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 2119
    :cond_2
    add-int/lit8 v4, v2, 0x0

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int v1, v4, v5

    .line 2121
    .local v1, offset:I
    const/4 v4, 0x0

    neg-int v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0
.end method

.method private pointToCell(II)Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 1422
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1423
    .local v2, count:I
    if-nez v2, :cond_0

    move-object v1, v7

    .line 1442
    :goto_0
    return-object v1

    .line 1427
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1428
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1429
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_2

    .line 1427
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1433
    :cond_2
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1434
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1435
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1436
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1438
    .local v0, bottom:I
    if-gt v6, p2, :cond_1

    if-gt p2, v0, :cond_1

    if-gt v4, p1, :cond_1

    if-gt p1, v5, :cond_1

    goto :goto_0

    .end local v0           #bottom:I
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_3
    move-object v1, v7

    .line 1442
    goto :goto_0
.end method

.method private startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 58
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 2752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 2755
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2756
    if-eqz p3, :cond_2

    .line 2757
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2758
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3082
    :cond_2
    :goto_0
    return-void

    .line 2764
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    .line 2765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    if-nez v4, :cond_4

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 2771
    :cond_4
    if-eqz p3, :cond_5

    .line 2772
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2776
    :cond_5
    const/4 v13, -0x1

    .line 2777
    .local v13, anchorIdx:I
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 2778
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v32

    .line 2779
    .local v32, index:I
    if-gez v32, :cond_7

    .line 2780
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2813
    :cond_6
    :goto_1
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2814
    .local v36, mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v29, 0x0

    .local v29, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v29

    if-ge v0, v4, :cond_d

    .line 2815
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 2783
    .end local v29           #i:I
    .end local v36           #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2784
    const/16 v50, -0x1

    .line 2785
    .local v50, tmpIdx:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    .line 2786
    .local v35, lenDeleteArray:I
    add-int/lit8 v31, v32, 0x1

    .local v31, id:I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    .line 2787
    aget v50, p1, v31

    .line 2788
    sub-int v4, v50, v13

    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    .line 2789
    add-int/lit8 v13, v13, 0x1

    .line 2794
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v13, v4, :cond_a

    move/from16 v0, v50

    if-ne v13, v0, :cond_a

    .line 2795
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2792
    :cond_9
    move/from16 v13, v50

    .line 2786
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 2797
    :cond_a
    move/from16 v0, v50

    if-ne v13, v0, :cond_6

    .line 2798
    add-int/lit8 v31, v32, -0x1

    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v31

    if-le v0, v4, :cond_b

    .line 2799
    aget v50, p1, v31

    .line 2800
    sub-int v4, v13, v50

    const/4 v6, 0x1

    if-le v4, v6, :cond_c

    .line 2801
    add-int/lit8 v13, v13, -0x1

    .line 2807
    :cond_b
    move/from16 v0, v50

    if-ne v13, v0, :cond_6

    .line 2808
    const/4 v13, -0x1

    goto :goto_1

    .line 2804
    :cond_c
    move/from16 v13, v50

    .line 2798
    add-int/lit8 v31, v31, -0x1

    goto :goto_4

    .line 2817
    .end local v31           #id:I
    .end local v35           #lenDeleteArray:I
    .end local v50           #tmpIdx:I
    .restart local v29       #i:I
    .restart local v36       #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v29, v4, -0x1

    :goto_5
    const/4 v4, -0x1

    move/from16 v0, v29

    if-le v0, v4, :cond_e

    .line 2818
    aget v4, p1, v29

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2817
    add-int/lit8 v29, v29, -0x1

    goto :goto_5

    .line 2821
    :cond_e
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2822
    .local v25, deleteCell:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_12

    .line 2823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v29, v0

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v29

    if-gt v0, v4, :cond_11

    .line 2824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2825
    .local v15, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v15, :cond_f

    .line 2826
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startDataSetChangeAnimation_IRT] mOnScreenItems with null cell at idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    :goto_7
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 2830
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v23

    .line 2831
    .local v23, delIdx:I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_10

    .line 2832
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2836
    :cond_10
    invoke-virtual {v15}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2837
    iget-object v4, v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v6, 0x7f7fffff

    const v7, 0x7f7fffff

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2838
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_7

    .line 2841
    .end local v15           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v23           #delIdx:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 2844
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2845
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2846
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v4, v6, :cond_13

    .line 2847
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2849
    :cond_13
    const v4, 0x7fffffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2850
    const/16 v49, 0x0

    .line 2853
    .local v49, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_14

    .line 2854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v10, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    move-result-object v49

    .line 2857
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_15

    .line 2858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 2861
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_1d

    .line 2862
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v20, v4, 0x0

    .line 2864
    .local v20, currentH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v6, "oldFirstIdx"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 2865
    .local v42, oldFirstIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v6, "oldFirstItemPositionY"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 2867
    .local v43, oldFirstItemPositionY:I
    const v4, 0x7fffffff

    move/from16 v0, v43

    if-eq v0, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v42

    if-ne v4, v0, :cond_17

    move/from16 v0, v43

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    if-eqz v42, :cond_17

    .line 2870
    :cond_16
    move/from16 v20, v43

    .line 2873
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v28, v0

    .line 2876
    .local v28, height:I
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v6, v1, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v20, v4, v6

    .line 2877
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_19

    move/from16 v0, v28

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    move/from16 v0, v20

    if-gt v0, v4, :cond_18

    .line 2881
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_1a

    move/from16 v0, v28

    neg-int v4, v0

    move/from16 v0, v20

    if-le v0, v4, :cond_1a

    .line 2882
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v6, v1, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v20, v4, v6

    .line 2888
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    if-nez v4, :cond_1b

    .line 2889
    move/from16 v0, v28

    neg-int v4, v0

    move/from16 v0, v20

    if-le v0, v4, :cond_1b

    .line 2890
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 2891
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 2896
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_1c

    .line 2897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6, v7, v10}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2900
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2902
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 2905
    .end local v20           #currentH:I
    .end local v28           #height:I
    .end local v42           #oldFirstIdx:I
    .end local v43           #oldFirstItemPositionY:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v46

    .line 2910
    .local v46, onScreenSize:I
    if-lez v46, :cond_1f

    .line 2911
    const/16 v45, -0x1

    .line 2912
    .local v45, oldVisibleY:I
    :cond_1e
    :goto_8
    move/from16 v0, v45

    int-to-float v4, v0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lez v4, :cond_1f

    .line 2913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v31, v0

    .line 2915
    .restart local v31       #id:I
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 2916
    .local v44, oldIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2918
    .restart local v15       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v15}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v27

    .line 2920
    .local v27, h:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v48

    .line 2921
    .local v48, pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v48

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v4

    div-int/lit8 v6, v27, 0x2

    add-int v45, v4, v6

    .line 2923
    const/4 v4, 0x0

    move/from16 v0, v45

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1e

    .line 2924
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v33

    .line 2925
    .local v33, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    move-object/from16 v0, v33

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    const/4 v6, 0x0

    move-object/from16 v0, v33

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    goto :goto_8

    .line 2930
    .end local v15           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v27           #h:I
    .end local v31           #id:I
    .end local v33           #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v44           #oldIdx:I
    .end local v45           #oldVisibleY:I
    .end local v48           #pos:Lcom/htc/sunny2/view/Vector3F;
    :cond_1f
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2931
    .local v22, del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v24, v0

    .line 2933
    .local v24, delView:Lcom/htc/sunny2/view/SView;
    new-instance v17, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2934
    .local v17, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v6, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2935
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 2936
    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v10, 0x3f80

    invoke-direct {v4, v6, v7, v10}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    const v7, 0x3e99999a

    const v10, 0x3e99999a

    const/high16 v12, 0x3f80

    invoke-direct {v6, v7, v10, v12}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2937
    const/high16 v4, 0x437f

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/view/SView;->getAlpha()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2939
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2940
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_9

    .line 2943
    .end local v17           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v22           #del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v24           #delView:Lcom/htc/sunny2/view/SView;
    :cond_20
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 2944
    .local v38, moveDown:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 2945
    .local v39, moveUp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 2947
    .local v11, renderOrder:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-lez v46, :cond_26

    .line 2949
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 2950
    .local v40, nMappingCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v31, v0

    .restart local v31       #id:I
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v31

    if-gt v0, v4, :cond_26

    .line 2952
    move/from16 v0, v40

    move/from16 v1, v31

    if-gt v0, v1, :cond_22

    .line 2950
    :cond_21
    :goto_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 2955
    :cond_22
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 2956
    .restart local v44       #oldIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2957
    .restart local v15       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v0, v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v53, v0

    .line 2959
    .local v53, view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v48

    .line 2960
    .restart local v48       #pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v48

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v4

    move/from16 v54, v0

    .line 2961
    .local v54, x:I
    move-object/from16 v0, v48

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v0, v4

    move/from16 v55, v0

    .line 2963
    .local v55, y:I
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v34

    .line 2964
    .local v34, last:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v34

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v0, v54

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, v34

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_21

    .line 2965
    :cond_23
    new-instance v17, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2966
    .restart local v17       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v6, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2967
    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v54

    int-to-float v6, v0

    move/from16 v0, v55

    int-to-float v7, v0

    const/4 v10, 0x0

    invoke-direct {v4, v6, v7, v10}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2968
    sget-object v4, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 2970
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v11, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2972
    new-instance v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v53

    move-object/from16 v3, v17

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;ILcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2973
    .local v14, anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v34

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v26

    .line 2974
    .local v26, down:I
    if-gez v26, :cond_24

    .line 2975
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x3

    sub-int v4, v4, v31

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2976
    move-object/from16 v0, v38

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 2978
    :cond_24
    if-ltz v26, :cond_25

    .line 2979
    add-int/lit8 v4, v31, 0x3

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2980
    move-object/from16 v0, v39

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 2983
    :cond_25
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "What\'s up?"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2989
    .end local v14           #anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v15           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v17           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v26           #down:I
    .end local v31           #id:I
    .end local v34           #last:Lcom/htc/sunny2/view/Vector3F;
    .end local v40           #nMappingCount:I
    .end local v44           #oldIdx:I
    .end local v48           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v53           #view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v54           #x:I
    .end local v55           #y:I
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v18

    .line 2990
    .local v18, cooperateIdx:I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_2a

    .line 2991
    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x96

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v5, v18

    .line 3007
    .end local v18           #cooperateIdx:I
    .local v5, cooperateIdx:I
    :cond_27
    :goto_c
    const/16 v37, 0x1

    .line 3009
    .local v37, move:I
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v26

    .line 3010
    .restart local v26       #down:I
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v52

    .line 3011
    .local v52, up:I
    move/from16 v0, v26

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 3012
    .local v19, count:I
    const/16 v41, 0x0

    .line 3013
    .local v41, offset:I
    const/16 v51, 0x0

    .local v51, u:I
    add-int/lit8 v21, v26, -0x1

    .local v21, d:I
    :goto_d
    move/from16 v0, v51

    move/from16 v1, v19

    if-ge v0, v1, :cond_2e

    .line 3014
    mul-int/lit8 v4, v37, 0x1e

    add-int/lit8 v41, v4, 0x78

    .line 3015
    const/16 v16, 0x0

    .line 3017
    .local v16, cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    const/4 v4, -0x1

    move/from16 v0, v21

    if-le v0, v4, :cond_28

    .line 3018
    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v16, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3019
    .restart local v16       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v41

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3020
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3021
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveDown id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    :cond_28
    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_29

    .line 3025
    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v16, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3026
    .restart local v16       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v41

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3027
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3028
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveUp id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    :cond_29
    if-nez v16, :cond_2c

    .line 3013
    :goto_e
    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_d

    .line 2994
    .end local v5           #cooperateIdx:I
    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v19           #count:I
    .end local v21           #d:I
    .end local v26           #down:I
    .end local v37           #move:I
    .end local v41           #offset:I
    .end local v51           #u:I
    .end local v52           #up:I
    .restart local v18       #cooperateIdx:I
    :cond_2a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v23

    .line 2995
    .restart local v23       #delIdx:I
    if-gez v23, :cond_2b

    .line 2996
    move/from16 v47, v18

    .line 2997
    .local v47, oriIdx:I
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2998
    .end local v18           #cooperateIdx:I
    .restart local v5       #cooperateIdx:I
    const/4 v4, -0x1

    if-ne v5, v4, :cond_27

    .line 2999
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startDataSetChangeAnimation_IRT] Can\'t get current id, original="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3003
    .end local v5           #cooperateIdx:I
    .end local v47           #oriIdx:I
    .restart local v18       #cooperateIdx:I
    :cond_2b
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x96

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v4, p0

    move/from16 v5, v18

    invoke-virtual/range {v4 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v5, v18

    .end local v18           #cooperateIdx:I
    .restart local v5       #cooperateIdx:I
    goto/16 :goto_c

    .line 3033
    .end local v23           #delIdx:I
    .restart local v16       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .restart local v19       #count:I
    .restart local v21       #d:I
    .restart local v26       #down:I
    .restart local v37       #move:I
    .restart local v41       #offset:I
    .restart local v51       #u:I
    .restart local v52       #up:I
    :cond_2c
    move-object/from16 v0, v16

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    if-ne v5, v4, :cond_2d

    .line 3034
    move/from16 v0, v41

    int-to-long v6, v0

    const-wide/16 v8, 0x96

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3037
    :cond_2d
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->clear()V

    .line 3039
    add-int/lit8 v37, v37, 0x1

    goto :goto_e

    .line 3042
    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    :cond_2e
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->clear()V

    .line 3043
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->clear()V

    .line 3045
    move-object/from16 v9, v49

    .line 3046
    .local v9, release1:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v8, v25

    .line 3047
    .local v8, deleteCell2:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridView$3;

    move-object/from16 v7, p0

    move/from16 v10, v46

    move-object/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/htc/sunny2/widget/gridview/GridView$3;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;ILandroid/util/SparseArray;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    mul-int/lit8 v7, v37, 0x1e

    add-int/lit8 v7, v7, 0x78

    add-int/lit16 v7, v7, 0x96

    int-to-long v0, v7

    move-wide/from16 v56, v0

    move-wide/from16 v0, v56

    invoke-virtual {v4, v6, v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3568
    :cond_0
    return-void
.end method

.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Lcom/htc/sunny2/view/SView;Z)V
    .locals 2
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1584
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1585
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1587
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1585
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1590
    :cond_0
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1574
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1575
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1577
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1575
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1580
    :cond_0
    return v1
.end method

.method protected checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    .locals 10
    .parameter "oldFirstIdx"
    .parameter "oldFirstItemPositionX"
    .parameter "oldFirstItemPositionY"

    .prologue
    .line 547
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 548
    .local v1, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iput p2, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 549
    iput p3, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 550
    iput p1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 552
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 553
    :try_start_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    .line 554
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 555
    .local v0, bRefresh:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 556
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 558
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 559
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 560
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    if-eqz v4, :cond_5

    .line 562
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 580
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_1

    .line 581
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 584
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 602
    .end local v0           #bRefresh:Z
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v6, 0x1

    if-ge v4, v6, :cond_c

    .line 603
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 604
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    .line 605
    monitor-exit v5

    .line 710
    :goto_3
    return-object v1

    .line 554
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    .restart local v0       #bRefresh:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_6

    .line 567
    if-eqz v0, :cond_7

    .line 568
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 575
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_0

    .line 576
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    goto :goto_1

    .line 708
    .end local v0           #bRefresh:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 570
    .restart local v0       #bRefresh:Z
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 571
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    goto :goto_4

    .line 586
    .end local v0           #bRefresh:Z
    :cond_8
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    if-eq v4, v6, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 587
    :cond_9
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 588
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_a

    .line 589
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 592
    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_b

    .line 593
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 596
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    goto :goto_2

    .line 608
    :cond_c
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v4, v6, :cond_d

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_d

    .line 609
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 610
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 613
    :cond_d
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v4, v6, :cond_e

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_e

    .line 614
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 615
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 618
    :cond_e
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_f

    .line 619
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 620
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 623
    :cond_f
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    if-eq v4, v6, :cond_10

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_10

    .line 624
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 625
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 628
    :cond_10
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    if-eq v4, v6, :cond_11

    .line 629
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    .line 630
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 631
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_11

    .line 632
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onLayoutOrientationChange(Landroid/content/Context;I)V

    .line 636
    :cond_11
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    .line 637
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 641
    :cond_12
    const/4 v2, 0x0

    .line 642
    .local v2, isColumnNumChange:Z
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 643
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->columnBestFit()Z

    move-result v2

    .line 649
    :goto_5
    const/4 v4, 0x1

    if-ne v4, v2, :cond_13

    .line 650
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_13

    .line 651
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 655
    :cond_13
    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    if-ne v4, v6, :cond_14

    .line 656
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 657
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 658
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 661
    :cond_14
    const/4 v4, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    if-eq v4, v6, :cond_1a

    .line 662
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 663
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 666
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-gez v4, :cond_15

    .line 667
    if-ltz p1, :cond_18

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_18

    .line 668
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 676
    :cond_15
    :goto_6
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lez v4, :cond_19

    .line 677
    const/4 v4, 0x0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 678
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 682
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_16

    .line 683
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 684
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 685
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 692
    :cond_16
    :goto_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 707
    :goto_8
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 708
    monitor-exit v5

    goto/16 :goto_3

    .line 646
    :cond_17
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->rowBestFit()Z

    move-result v2

    goto :goto_5

    .line 671
    :cond_18
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_6

    .line 689
    :cond_19
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_7

    .line 696
    :cond_1a
    const/4 v3, -0x1

    .line 697
    .local v3, last:I
    if-ltz p1, :cond_1b

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_1b

    .line 698
    move v3, p1

    .line 704
    :goto_9
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 701
    :cond_1b
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 510
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 514
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    return-void

    .line 516
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 520
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 518
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected columnBestFit()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v13, 0x7f7fffff

    const/4 v2, 0x0

    .line 985
    const/4 v7, 0x0

    .line 986
    .local v7, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 990
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 991
    .local v4, startX:I
    const/4 v10, 0x0

    .line 992
    .local v10, totalItemWidth:I
    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 993
    .local v12, width:I
    const/4 v9, -0x1

    .line 995
    .local v9, numColumn:I
    const/4 v1, 0x0

    .line 997
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    if-nez v1, :cond_0

    .line 1002
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1004
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v5, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1006
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1008
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 1009
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v13, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 1010
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 1012
    if-ge v11, v14, :cond_1

    .line 1013
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GridView][columnBestFit]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GridViewItem with illegal width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int/2addr v4, v3

    .line 1016
    const/4 v8, 0x0

    .line 1017
    .local v8, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr v4, v3

    .line 1018
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v12

    shr-int/lit8 v5, v11, 0x2

    add-int/2addr v3, v5

    if-le v4, v3, :cond_6

    .line 1019
    move v9, v8

    .line 1025
    if-gez v9, :cond_2

    .line 1026
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1029
    :cond_2
    if-le v14, v9, :cond_3

    .line 1030
    const/4 v9, 0x1

    .line 1035
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v9, v3, :cond_4

    .line 1036
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 1037
    const/4 v7, 0x1

    .line 1040
    :cond_4
    if-lez v9, :cond_5

    .line 1041
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v3, v12, v3

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v10

    add-int/lit8 v5, v9, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1042
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    if-gez v3, :cond_5

    .line 1043
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1047
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v8           #j:I
    .end local v9           #numColumn:I
    .end local v10           #totalItemWidth:I
    .end local v11           #w:I
    .end local v12           #width:I
    :cond_5
    return v7

    .line 1023
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v8       #j:I
    .restart local v9       #numColumn:I
    .restart local v10       #totalItemWidth:I
    .restart local v11       #w:I
    .restart local v12       #width:I
    :cond_6
    add-int/2addr v10, v11

    .line 1016
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 999
    .end local v8           #j:I
    .end local v11           #w:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 2737
    const/4 v0, -0x1

    return v0
.end method

.method createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1612
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;-><init>(IJ)V

    return-object v0
.end method

.method public createResource()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->createResource()V

    .line 364
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 366
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    .line 368
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    .line 369
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 371
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v0, v2, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 373
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 381
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 382
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 384
    new-instance v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    .line 389
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->attachIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;Lcom/htc/sunny2/SceneNode;)V

    .line 390
    return-void
.end method

.method public disableLayoutRequest(Z)V
    .locals 3
    .parameter "bDisabled"

    .prologue
    .line 3615
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3616
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 3627
    :goto_0
    return-void

    .line 3620
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3622
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3623
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 3625
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3626
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enablePinOnItemScroll()V
    .locals 1

    .prologue
    .line 3490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 3491
    return-void
.end method

.method public enableRootNode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 3475
    return-void
.end method

.method protected fillDown()V
    .locals 7

    .prologue
    .line 2367
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2369
    .local v2, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2370
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_0

    .line 2371
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2374
    :cond_0
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 2375
    .local v0, bottom:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2376
    .local v3, startIdx:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    if-le v0, v4, :cond_2

    if-ge v3, v2, :cond_2

    .line 2377
    if-lt v3, v2, :cond_1

    .line 2378
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2381
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2383
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2384
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 2385
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 2387
    :cond_2
    return-void
.end method

.method protected fillLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2414
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2415
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2416
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2420
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int v2, v3, v4

    .line 2421
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2422
    if-gez v2, :cond_1

    .line 2423
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2426
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 2427
    .local v1, newLeft:I
    invoke-virtual {p0, v2, v1, v5, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2429
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2430
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v2, v3

    .line 2431
    goto :goto_0

    .line 2432
    .end local v1           #newLeft:I
    :cond_2
    return-void
.end method

.method protected fillRight()V
    .locals 7

    .prologue
    .line 2390
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2392
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2393
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2394
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2398
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2399
    .local v3, startIdx:I
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    .line 2400
    .local v2, right:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-ge v2, v4, :cond_2

    if-ge v3, v1, :cond_2

    .line 2401
    if-lt v3, v1, :cond_1

    .line 2402
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2405
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2407
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2408
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2409
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    goto :goto_0

    .line 2411
    :cond_2
    return-void
.end method

.method protected fillUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2348
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2349
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2350
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2352
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v2, v3, v4

    .line 2353
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    rsub-int/lit8 v4, v4, 0x0

    if-ge v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2354
    if-gez v2, :cond_1

    .line 2355
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2358
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v1, v3, v4

    .line 2359
    .local v1, newTop:I
    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2361
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2362
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v2, v3

    .line 2363
    goto :goto_0

    .line 2364
    .end local v1           #newTop:I
    :cond_2
    return-void
.end method

.method public freeInvisibleResource()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$1;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public freeResource()V
    .locals 7

    .prologue
    const v6, 0x7f7fffff

    const/4 v5, 0x0

    .line 396
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->detachIRT(Lcom/htc/sunny2/SceneNode;)V

    .line 397
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 399
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->release()V

    .line 401
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->destroy(Lcom/htc/sunny2/SceneNode;)V

    .line 405
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 406
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 407
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 409
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 413
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 415
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 416
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->deInit()V

    .line 417
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 423
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 425
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_2

    .line 423
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 429
    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v6, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 430
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_1

    .line 432
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 434
    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 435
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 438
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 439
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 440
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_2

    .line 442
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 445
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 446
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 448
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->freeResource()V

    .line 449
    return-void
.end method

.method public getAnimationController()Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    return-object v0
.end method

.method public bridge synthetic getChild(I)Lcom/htc/sunny2/SceneNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/htc/sunny2/view/SView;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-object v1

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 481
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 483
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 2534
    const/4 v0, 0x0

    .line 2535
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2536
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2538
    :cond_0
    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 1

    .prologue
    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstIndexPostion()I
    .locals 4

    .prologue
    .line 533
    const v0, 0x7fffffff

    .line 535
    .local v0, posY:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 541
    :cond_0
    monitor-exit v2

    .line 543
    return v0

    .line 541
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1236
    :cond_0
    const/4 v0, -0x1

    .line 1238
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    goto :goto_0
.end method

.method public getGridViewItem(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2526
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1146
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1248
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1249
    :cond_0
    const/4 v0, -0x1

    .line 1251
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_0
.end method

.method protected getLevelNumberByItem(I)I
    .locals 3
    .parameter "onScreenIdx"

    .prologue
    .line 2062
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 2064
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2065
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 2068
    :cond_0
    div-int v1, p1, v0

    return v1
.end method

.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public getNumColumn()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    return v0
.end method

.method public getNumRow()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    return v0
.end method

.method public getOnFullScreenTransitionEndListener()Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;
    .locals 1

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    return-object v0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 3
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 2745
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 2746
    .local v0, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 2747
    iget v1, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 2748
    return-object v0
.end method

.method public getRootNode()Lcom/htc/sunny2/SceneNode;
    .locals 1

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .locals 1

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    return-object v0
.end method

.method public getScreenItemBottom()I
    .locals 6

    .prologue
    .line 3521
    const/4 v1, 0x0

    .line 3523
    .local v1, nBottom:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3524
    .local v3, nCount:I
    if-gtz v3, :cond_0

    move v2, v1

    .line 3537
    .end local v1           #nBottom:I
    .local v2, nBottom:I
    :goto_0
    return v2

    .line 3527
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3528
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    move v2, v1

    .line 3529
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3531
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_1
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    .line 3532
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x5

    :goto_1
    move v2, v1

    .line 3537
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3534
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x4

    goto :goto_1
.end method

.method public getScreenItemTop()I
    .locals 1

    .prologue
    .line 3517
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 3

    .prologue
    .line 1218
    const/4 v0, -0x1

    .line 1219
    .local v0, id:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1220
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1221
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1223
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 1225
    :cond_0
    return v0

    .line 1221
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 2502
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method protected getValidIndexDuringFastScroller(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 3607
    return p1
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1150
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public getViewItemCount()I
    .locals 2

    .prologue
    .line 2530
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invokeOnItemScrollListener()V
    .locals 7

    .prologue
    .line 2310
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2311
    .local v0, first:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2312
    .local v2, visCount:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2313
    .local v1, totCount:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v3, :cond_0

    .line 2314
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2316
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 2317
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 2319
    :cond_1
    return-void
.end method

.method protected makeItemColumn(IIIZ)I
    .locals 12
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"

    .prologue
    .line 1097
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1098
    .local v10, total:I
    const/4 v7, 0x0

    .line 1099
    .local v7, W:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 1101
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1102
    const/4 v1, 0x0

    .line 1104
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_1
    if-nez v1, :cond_0

    .line 1111
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1113
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1115
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1116
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1120
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    sub-int/2addr p3, v3

    .line 1121
    if-ge v7, v11, :cond_1

    .line 1122
    move v7, v11

    .line 1125
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1127
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1129
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1130
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1101
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1133
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    add-int v3, p2, v7

    return v3

    .line 1106
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected makeItemRow(IIIZ)I
    .locals 12
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"

    .prologue
    .line 1051
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1052
    .local v10, total:I
    const/4 v7, 0x0

    .line 1054
    .local v7, H:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    .line 1056
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1058
    const/4 v1, 0x0

    .line 1060
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_1
    if-nez v1, :cond_0

    .line 1067
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1069
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1071
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1072
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1079
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr p2, v3

    .line 1080
    if-ge v7, v8, :cond_1

    .line 1081
    move v7, v8

    .line 1084
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1085
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1086
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1088
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1089
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1056
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1093
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    sub-int v3, p3, v7

    return v3

    .line 1062
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public notifyMediaDataChange()V
    .locals 2

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2573
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 2574
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2575
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2576
    return-void

    .line 2574
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMediaDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2579
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 2580
    return-void
.end method

.method public notifyMediaDataInvalidate()V
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2563
    :cond_0
    return-void
.end method

.method public notifyMediaDataInvalidate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2569
    :cond_0
    return-void
.end method

.method public notifyPreparatorMediaDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 2584
    return-void
.end method

.method public notifyPreparatorMediaDataChange(II)V
    .locals 3
    .parameter "index"
    .parameter "flag"

    .prologue
    .line 2587
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView$2;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;II)V

    .line 2595
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2596
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2601
    :goto_0
    return-void

    .line 2599
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyThumbnailTextureReadyIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 2604
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2605
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    .line 2606
    .local v0, viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 2607
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    .line 2608
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 2609
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 2612
    .end local v0           #viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    :cond_0
    return-void
.end method

.method protected notifyUpdatePreparator(Z)V
    .locals 12
    .parameter "bIsNewList"

    .prologue
    const/4 v11, 0x1

    .line 898
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 901
    :cond_0
    if-ne v11, p1, :cond_1

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x12c

    add-long/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->loadRange(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 913
    .local v8, preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    const/4 v7, 0x0

    .line 914
    .local v7, number:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v11, :cond_2

    .line 915
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 920
    :goto_2
    invoke-virtual {v8, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setColumnNumber(I)V

    .line 921
    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resetDecodeDirection()V

    goto :goto_0

    .line 907
    .end local v7           #number:I
    .end local v8           #preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    :catch_0
    move-exception v6

    .line 909
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "GridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GridView][notifyUpdatePreparator]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 918
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #number:I
    .restart local v8       #preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    goto :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 1967
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v1, v2, :cond_1

    .line 1969
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1970
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1983
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1984
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v3, :cond_2

    .line 1985
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    .line 1990
    :goto_1
    return v3

    .line 1974
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToCell(II)Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-result-object v0

    .line 1976
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 1979
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1980
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    goto :goto_0

    .line 1988
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 2074
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "gridBouncingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 2075
    .local v0, gridBouncingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v0, :cond_0

    .line 2077
    const/4 v2, 0x0

    .line 2094
    :goto_0
    return v2

    .line 2080
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v2, :cond_2

    .line 2081
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v4, p4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    .line 2087
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "GridFlingingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    .line 2088
    .local v1, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v1, :cond_1

    .line 2090
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2092
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v5, "GridFlingingAction"

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2093
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2084
    .end local v1           #gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v4, p3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1860
    const/4 v0, 0x0

    .line 1862
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1876
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1867
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1694
    const/4 v0, 0x0

    .line 1695
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 1696
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1698
    .local v6, tmpfocusId:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v7}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 1854
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1704
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    if-ne v6, v8, :cond_2

    .line 1706
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1707
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1708
    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1709
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1710
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1711
    const/4 v0, 0x1

    move v1, v0

    .line 1712
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1715
    .end local v1           #bResult:I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v0

    .line 1758
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1719
    .end local v1           #bResult:I
    :sswitch_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v7, v6, v7

    if-le v7, v8, :cond_3

    .line 1721
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v6, v7

    .line 1762
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v6, v7, :cond_7

    .line 1764
    const/4 v3, 0x0

    .line 1765
    .local v3, cellCoordinate:I
    const/4 v4, 0x0

    .line 1766
    .local v4, cellHeight:I
    const/4 v5, 0x0

    .line 1768
    .local v5, numRow:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1769
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_5

    .line 1771
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1773
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1775
    :cond_4
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1778
    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-le v6, v7, :cond_b

    .line 1780
    if-eqz v2, :cond_9

    .line 1782
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_8

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_8

    .line 1784
    const/4 v5, 0x1

    .line 1790
    :goto_2
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1791
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1840
    :goto_3
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1841
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1842
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_6

    .line 1844
    const/4 v5, 0x0

    .line 1845
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1846
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1847
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1848
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1851
    :cond_6
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1852
    const/4 v0, 0x1

    .end local v3           #cellCoordinate:I
    .end local v4           #cellHeight:I
    .end local v5           #numRow:I
    :cond_7
    move v1, v0

    .line 1854
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1727
    .end local v1           #bResult:I
    :sswitch_1
    if-eq v6, v8, :cond_3

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1729
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 1735
    :sswitch_2
    add-int/lit8 v7, v6, -0x1

    if-le v7, v8, :cond_3

    .line 1737
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1743
    :sswitch_3
    if-eq v6, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1745
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1751
    :sswitch_4
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1753
    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 1754
    const/4 v0, 0x1

    move v1, v0

    .line 1755
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1788
    .end local v1           #bResult:I
    .restart local v3       #cellCoordinate:I
    .restart local v4       #cellHeight:I
    .restart local v5       #numRow:I
    :cond_8
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_2

    .line 1795
    :cond_9
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_a

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_a

    .line 1797
    const/4 v5, 0x1

    .line 1803
    :goto_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1804
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1805
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto :goto_3

    .line 1801
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_4

    .line 1810
    :cond_b
    if-eqz v2, :cond_d

    .line 1812
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_c

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_c

    .line 1814
    const/4 v5, -0x1

    .line 1820
    :goto_5
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1821
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1822
    const-string v7, "fish"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OldFocus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "New: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1818
    :cond_c
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_5

    .line 1826
    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_e

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_e

    .line 1828
    const/4 v5, -0x1

    .line 1834
    :goto_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1835
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1836
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto/16 :goto_3

    .line 1832
    :cond_e
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_6

    .line 1715
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZFFFII)V
    .locals 17
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v14

    .line 729
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v13, v15, :cond_1

    .line 731
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 732
    monitor-exit v14

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v0, p5

    if-ne v13, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v0, p6

    if-eq v13, v0, :cond_3

    .line 739
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 742
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 743
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 746
    const/4 v13, 0x1

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    const/4 v13, 0x1

    move/from16 v0, p6

    if-lt v0, v13, :cond_0

    .line 750
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 754
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 759
    const-string v13, "GridView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][GridView][onLayout]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const v10, 0x7fffffff

    .line 762
    .local v10, oldFirstItemPositionX:I
    const v11, 0x7fffffff

    .line 763
    .local v11, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 764
    .local v9, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 766
    .local v12, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_6

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v10, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v11, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 770
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v13, :cond_5

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 772
    .local v3, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_4

    .line 773
    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 774
    iget-object v13, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v14, 0x7f7fffff

    const v15, 0x7f7fffff

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 775
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 770
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 734
    .end local v3           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v7           #i:I
    .end local v9           #oldFirstIdx:I
    .end local v10           #oldFirstItemPositionX:I
    .end local v11           #oldFirstItemPositionY:I
    .end local v12           #oldLastIdx:I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 778
    .restart local v7       #i:I
    .restart local v9       #oldFirstIdx:I
    .restart local v10       #oldFirstItemPositionX:I
    .restart local v11       #oldFirstItemPositionY:I
    .restart local v12       #oldLastIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 781
    .end local v7           #i:I
    :cond_6
    const/4 v2, 0x0

    .line 783
    .local v2, bSetNewList:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    move-result-object v4

    .line 785
    .local v4, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iget-boolean v13, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v13, :cond_0

    .line 788
    iget-boolean v2, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 789
    iget v10, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 790
    iget v11, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 791
    iget v9, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    move/from16 v0, p5

    neg-int v14, v0

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-int/lit8 v15, p6, 0x2

    int-to-float v15, v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 805
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v13, :cond_e

    .line 806
    const/4 v5, 0x0

    .line 807
    .local v5, currentBase:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 808
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v5, v13, 0x0

    .line 816
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    const v13, 0x7fffffff

    if-eq v11, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_11

    if-ge v11, v5, :cond_7

    if-eqz v9, :cond_11

    .line 820
    :cond_7
    move v5, v11

    .line 829
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 831
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v5, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v14

    sub-int v5, v13, v14

    .line 832
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v13, v14, :cond_a

    move/from16 v0, p6

    neg-int v13, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v13, v14

    if-gt v5, v13, :cond_9

    .line 836
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    .line 842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 843
    .local v8, lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v8, :cond_b

    iget v13, v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v14

    sub-int/2addr v13, v14

    move/from16 v0, p6

    neg-int v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v14, v15

    if-le v13, v14, :cond_b

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 846
    .local v6, firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v14, v14, 0x0

    if-ge v13, v14, :cond_b

    .line 847
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 875
    .end local v6           #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 877
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ne v9, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v12, v13, :cond_c

    const/4 v13, 0x1

    if-ne v13, v2, :cond_d

    .line 878
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 881
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 887
    .end local v5           #currentBase:I
    .end local v8           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    if-ne v13, v14, :cond_f

    .line 889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onLayoutChangedIRT(II)V

    .line 890
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 893
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    .line 811
    .restart local v5       #currentBase:I
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/lit8 v5, v13, 0x0

    goto/16 :goto_2

    .line 822
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    const v13, 0x7fffffff

    if-eq v10, v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_8

    if-ge v10, v5, :cond_12

    if-eqz v9, :cond_8

    .line 826
    :cond_12
    move v5, v10

    goto/16 :goto_3

    .line 853
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5, v14, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v14

    add-int v5, v13, v14

    .line 854
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v13, v14, :cond_14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int v13, p5, v13

    if-lt v5, v13, :cond_13

    .line 858
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 865
    .restart local v8       #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v8, :cond_b

    iget v13, v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v14, p5, v14

    if-ge v13, v14, :cond_b

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToRight()V

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 868
    .restart local v6       #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v13, v14, :cond_b

    .line 869
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToLeft(Z)V

    goto/16 :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToPosition(II)I

    move-result v1

    .line 2049
    .local v1, onScreenIdx:I
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v2, :cond_0

    .line 2051
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2052
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2056
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->performLongPress(Lcom/htc/sunny2/view/SView;II)Z

    goto :goto_0
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1336
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->onRenderOrderChanged(Z)V

    .line 1337
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 1338
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 359
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    .line 2022
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 2023
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    .line 2028
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Panning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2035
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2036
    return v2

    .line 2026
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    goto :goto_0
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1946
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1947
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    .line 1953
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->doBounceBack()Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1962
    :cond_0
    :goto_1
    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    goto :goto_0

    .line 1957
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method protected onScrollMotionIRT(II)V
    .locals 15
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2151
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v11, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2154
    .local v8, totalCount:I
    if-eqz v8, :cond_0

    .line 2158
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v11, :cond_0

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v12, 0x7fffffff

    if-eq v11, v12, :cond_0

    .line 2162
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2163
    .local v5, oldFirstIdx:I
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2165
    .local v6, oldLastIdx:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2166
    .local v7, tmpLastIdx:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    if-gt v3, v7, :cond_9

    .line 2167
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2169
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_3

    .line 2166
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2173
    :cond_3
    iget-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2175
    .local v4, item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v9

    .line 2176
    .local v9, w:I
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v10

    .line 2178
    .local v10, y:I
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int v11, v11, p1

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2179
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int v11, v11, p2

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2181
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2182
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2183
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2184
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2186
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2187
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2191
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto :goto_2

    .line 2197
    :cond_4
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v12, v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_5

    .line 2198
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2199
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2201
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2202
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2206
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2207
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_2

    .line 2211
    :cond_5
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    div-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto :goto_2

    .line 2215
    :cond_6
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v11, v9

    const/4 v12, -0x1

    if-ge v11, v12, :cond_7

    .line 2216
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2217
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2219
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2220
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2224
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto/16 :goto_2

    .line 2226
    :cond_7
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_8

    .line 2227
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2228
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2230
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2231
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2235
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2236
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto/16 :goto_2

    .line 2240
    :cond_8
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    div-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto/16 :goto_2

    .line 2245
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v9           #w:I
    .end local v10           #y:I
    :cond_9
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 2246
    if-gez p2, :cond_f

    .line 2247
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 2263
    :cond_a
    :goto_3
    const/4 v11, -0x1

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-eq v11, v12, :cond_b

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v11, :cond_b

    .line 2264
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 2268
    :cond_b
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v11, :cond_c

    .line 2269
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_12

    .line 2270
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2277
    :cond_c
    :goto_4
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v6, v11, :cond_d

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eq v5, v11, :cond_e

    .line 2278
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2281
    :cond_e
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v11, p0, v12, v13, v14}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2283
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v11, :cond_0

    .line 2285
    const/4 v2, 0x0

    .line 2286
    .local v2, direction:I
    if-nez p1, :cond_13

    .line 2287
    move/from16 v0, p2

    int-to-float v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 2292
    :goto_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v11, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    goto/16 :goto_0

    .line 2249
    .end local v2           #direction:I
    :cond_f
    if-lez p2, :cond_a

    .line 2250
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    goto :goto_3

    .line 2254
    :cond_10
    if-gez p1, :cond_11

    .line 2255
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    goto :goto_3

    .line 2257
    :cond_11
    if-lez p1, :cond_a

    .line 2258
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    goto :goto_3

    .line 2272
    :cond_12
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_c

    .line 2273
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_4

    .line 2290
    .restart local v2       #direction:I
    :cond_13
    const/4 v11, 0x0

    move/from16 v0, p1

    int-to-float v12, v0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    goto :goto_5
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1995
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2004
    const/4 v1, 0x0

    .line 2016
    :goto_0
    return v1

    .line 2006
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToPosition(II)I

    move-result v0

    .line 2008
    .local v0, onScreenIdx:I
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v1, :cond_1

    .line 2012
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 2013
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 2016
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1377
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->onSizeChanged(IIII)V

    .line 1379
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onSizeChanged(IIII)V

    .line 1385
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 1387
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 7
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1639
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v3, v6, :cond_0

    .line 1640
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1641
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1644
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v3, v6, :cond_2

    .line 1683
    :cond_1
    :goto_0
    return v2

    .line 1651
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    if-nez v3, :cond_3

    .line 1652
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1653
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1654
    .local v1, intercepted:Z
    if-eqz v1, :cond_3

    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1656
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    goto :goto_0

    .line 1663
    .end local v1           #intercepted:Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 1665
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 1668
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1670
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 1672
    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 1674
    const-string v3, "GridView"

    const-string v4, "[HTCAlbum][Gridview][onTouchEvent]: SCROLL_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1678
    :cond_5
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1681
    :cond_6
    if-eq v0, v2, :cond_1

    .line 1683
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    goto :goto_0
.end method

.method protected onUpdatePositionAnimation()V
    .locals 1

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdatePositionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3562
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->onUpdatePositionAnimation()V

    .line 3563
    :cond_0
    return-void
.end method

.method public pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x1

    .line 1401
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1402
    .local v2, count:I
    if-nez v2, :cond_1

    move v3, v7

    .line 1418
    :cond_0
    :goto_0
    return v3

    .line 1406
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1407
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1409
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1410
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1411
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1412
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1414
    .local v0, bottom:I
    if-gt v6, p2, :cond_2

    if-gt p2, v0, :cond_2

    if-gt v4, p1, :cond_2

    if-le p1, v5, :cond_0

    .line 1406
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #bottom:I
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_3
    move v3, v7

    .line 1418
    goto :goto_0
.end method

.method public postRenderRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 3466
    :cond_0
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportScrollStateChange(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2330
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2332
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 2335
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    .line 2338
    :cond_0
    if-nez p1, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    .line 2342
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    .line 2345
    :cond_1
    return-void
.end method

.method public resetGesture()V
    .locals 3

    .prologue
    .line 3494
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v1, :cond_1

    .line 3496
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 3497
    const/4 v0, 0x0

    .line 3501
    .local v0, renderAction:Lcom/htc/sunny2/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3502
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3507
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3508
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3510
    .end local v0           #renderAction:Lcom/htc/sunny2/RenderThreadAction;
    :cond_1
    return-void
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 717
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 718
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 719
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 722
    :cond_0
    rem-int v1, p1, v0

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method protected restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;
    .locals 15
    .parameter "currentId"
    .parameter "oldIdx"
    .parameter "bundle"

    .prologue
    .line 2704
    const-string v11, "oldFirstIdx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2705
    .local v5, oldFirstIdx:I
    const-string v11, "oldFirstItemPositionY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2707
    .local v6, oldFirstItemPositionY:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2708
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    .line 2709
    .local v8, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2711
    .local v4, h:I
    sub-int v3, p2, v5

    .line 2713
    .local v3, d:I
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v2, v3, v11

    .line 2714
    .local v2, colId:I
    if-gez v2, :cond_0

    .line 2715
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v2, v11

    .line 2718
    :cond_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v7, v3, v11

    .line 2719
    .local v7, rowId:I
    if-gez v7, :cond_1

    if-eqz v2, :cond_1

    .line 2720
    add-int/lit8 v7, v7, -0x1

    .line 2724
    :cond_1
    div-int/lit8 v11, v8, 0x2

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v12, v8

    mul-int/2addr v12, v2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int v9, v11, v12

    .line 2725
    .local v9, x:I
    div-int/lit8 v11, v4, 0x2

    rsub-int/lit8 v11, v11, 0x0

    add-int/2addr v11, v6

    sub-int/2addr v11, v4

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x1

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v13, v4

    mul-int/2addr v12, v13

    sub-int v10, v11, v12

    .line 2727
    .local v10, y:I
    new-instance v11, Lcom/htc/sunny2/view/Vector3F;

    int-to-float v12, v9

    int-to-float v13, v10

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    return-object v11
.end method

.method public resumePreparator(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1321
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    goto :goto_0

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method protected rowBestFit()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v13, 0x7f7fffff

    const/4 v2, 0x0

    .line 925
    const/4 v9, 0x0

    .line 926
    .local v9, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 927
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    .line 928
    .local v5, startY:I
    const/4 v12, 0x0

    .line 929
    .local v12, totalItemHeight:I
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 930
    .local v8, height:I
    const/4 v11, -0x1

    .line 932
    .local v11, numRow:I
    const/4 v1, 0x0

    .line 934
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_0
    if-nez v1, :cond_0

    .line 939
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 941
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v4, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 942
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    .line 943
    .local v7, h:I
    if-ge v7, v14, :cond_1

    .line 944
    const-string v3, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GridView][rowBestFit]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "GridViewItem with illegal height="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_1
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 947
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v13, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 948
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 950
    const/4 v10, 0x0

    .line 951
    .local v10, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 952
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    shr-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    if-le v5, v3, :cond_6

    .line 953
    move v11, v10

    .line 959
    if-gez v11, :cond_2

    .line 960
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 963
    :cond_2
    if-le v14, v11, :cond_3

    .line 964
    const/4 v11, 0x1

    .line 969
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v11, v3, :cond_4

    .line 970
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 971
    const/4 v9, 0x1

    .line 974
    :cond_4
    if-lez v11, :cond_5

    .line 975
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v3, v8, v3

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v12

    add-int/lit8 v4, v11, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    mul-int/2addr v4, v6

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 976
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    if-gez v3, :cond_5

    .line 977
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 981
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #h:I
    .end local v8           #height:I
    .end local v10           #j:I
    .end local v11           #numRow:I
    .end local v12           #totalItemHeight:I
    :cond_5
    return v9

    .line 957
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v7       #h:I
    .restart local v8       #height:I
    .restart local v10       #j:I
    .restart local v11       #numRow:I
    .restart local v12       #totalItemHeight:I
    :cond_6
    add-int/2addr v12, v7

    .line 950
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 936
    .end local v7           #h:I
    .end local v10           #j:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public setGridViewItem(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "itemPrototype"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 488
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2
    .parameter "hspace"

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1314
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 1315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1317
    return-void

    .line 1315
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "szIdentifier"

    .prologue
    .line 3455
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    .line 3456
    return-void
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Z)V

    .line 2547
    return-void
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;Z)V
    .locals 2
    .parameter
    .parameter "reLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2550
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2551
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2552
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 2553
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2555
    if-eqz p2, :cond_0

    .line 2556
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2557
    :cond_0
    return-void

    .line 2552
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    .line 2553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 527
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 528
    return-void
.end method

.method public setNumColumn(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1285
    if-gez p1, :cond_0

    .line 1286
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1288
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 1289
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1292
    return-void
.end method

.method public setNumRow(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1296
    if-gez p1, :cond_0

    .line 1297
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1299
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 1300
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1303
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 1281
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 1271
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 1257
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 1261
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1177
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1178
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 1180
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1182
    return-void

    .line 1180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->setPadding(IIII)V

    .line 492
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V
    .locals 3
    .parameter "thumbPreparation"

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 2438
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2440
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;

    const-string v1, "setPreparation"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2442
    .local v0, setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v1, v2, :cond_1

    .line 2443
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->onProcessEventIRT()V

    .line 2447
    .end local v0           #setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_0
    :goto_0
    return-void

    .line 2445
    .restart local v0       #setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlight(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, isChanged:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1360
    :try_start_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eq p1, v1, :cond_0

    .line 1361
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 1362
    const/4 v0, 0x1

    .line 1364
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1368
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1373
    :cond_1
    :goto_0
    return-void

    .line 1364
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1369
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    .line 1370
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlightEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 1349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1195
    const/4 v0, 0x1

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1196
    return-void
.end method

.method protected setSelection(IZ)V
    .locals 1
    .parameter "index"
    .parameter "reLayout"

    .prologue
    .line 1200
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1201
    return-void
.end method

.method public setSelection(IZI)V
    .locals 2
    .parameter "idx"
    .parameter "reLayout"
    .parameter "posY"

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1207
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1208
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 1209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    if-eqz p2, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1215
    :cond_0
    return-void

    .line 1209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSnapShotHost(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V
    .locals 0
    .parameter "snapShotHost"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 193
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2
    .parameter "vspace"

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1307
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 1308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1310
    return-void

    .line 1308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1332
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1333
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 0
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 2742
    return-void
.end method

.method public startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 3123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v0, v1, :cond_1

    .line 3124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 3136
    :cond_0
    :goto_0
    return-void

    .line 3127
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$4;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;[I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected storeCurrentState_IRT([I)Landroid/os/Bundle;
    .locals 7
    .parameter "deleteIndex"

    .prologue
    .line 2683
    const/4 v2, -0x1

    .line 2684
    .local v2, oldFirstIdx:I
    const/4 v3, 0x1

    .line 2686
    .local v3, oldFirstItemPositionY:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2688
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2689
    .local v1, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v1, :cond_0

    .line 2690
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2691
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2697
    :goto_0
    const-string v4, "oldFirstIdx"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2698
    const-string v4, "oldFirstItemPositionY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2700
    return-object v0

    .line 2694
    :cond_0
    const-string v4, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeCurrentState_IRT mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cell=null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateFirstIdxInScrollMotionIRT(I)V
    .locals 1
    .parameter "removedIdx"

    .prologue
    .line 2297
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 2298
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2300
    :cond_0
    return-void
.end method
