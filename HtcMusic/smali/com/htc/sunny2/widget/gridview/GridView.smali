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

    .line 1691
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 3597
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$5;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    .line 3635
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3636
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3637
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
    .line 1925
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1927
    .local v6, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 1929
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1932
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onItemClickIRT(ILcom/htc/sunny2/SceneNode;)V

    .line 1940
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iget-object v2, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    int-to-long v4, v1

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;->onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V

    .line 1943
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1944
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

    .line 1448
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v1, nIndex:I
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_3

    .line 1450
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1451
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1448
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1454
    :cond_0
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    const-string v2, "GridView"

    const-string v3, "[HTCAlbum][Gridview][KeyPress]: dispatchUnpress "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1459
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-ne v2, v1, :cond_2

    .line 1463
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1467
    :cond_2
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1472
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPressed(Z)V

    .line 1473
    return-void
.end method

.method private doBounceBack()Z
    .locals 10

    .prologue
    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, bResult:Z
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 1568
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1481
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

    .line 1482
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1484
    .end local v1           #bResult:I
    :cond_3
    const/4 v2, 0x0

    .line 1485
    .local v2, distanceToAligned:I
    const v4, 0x7fffffff

    .line 1487
    .local v4, maxDistanceToTop:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1488
    .local v5, screenItemFirst:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1496
    .local v6, screenItemLast:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1501
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-lt v7, v8, :cond_4

    .line 1503
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v4

    .line 1509
    :cond_4
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_7

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-ge v7, v8, :cond_7

    .line 1511
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v7, v7

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v7, v8

    .line 1541
    :cond_5
    :goto_1
    if-gez v2, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_6

    .line 1543
    move v2, v4

    .line 1553
    :cond_6
    if-nez v2, :cond_b

    move v1, v0

    .line 1556
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1514
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

    .line 1517
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

    .line 1522
    :cond_8
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-gt v7, v8, :cond_9

    .line 1524
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v7

    rsub-int/lit8 v4, v7, 0x0

    .line 1526
    :cond_9
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_a

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v7, v8, :cond_a

    .line 1528
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v7, v8

    goto :goto_1

    .line 1531
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

    .line 1534
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

    .line 1559
    :cond_b
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v8, "GridFlingingAction"

    invoke-virtual {v7, p0, v8}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v3

    .line 1560
    .local v3, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v3, :cond_c

    .line 1562
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1565
    :cond_c
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v8}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v7, v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1566
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v9, "gridBouncingAction"

    invoke-direct {v8, p0, p0, v9}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1567
    const/4 v0, 0x1

    move v1, v0

    .line 1568
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method private doFocusScroll(III)Z
    .locals 8
    .parameter "coordinate"
    .parameter "gridHeight"
    .parameter "numRow"

    .prologue
    .line 1884
    const/4 v0, 0x0

    .line 1885
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 1886
    .local v3, distanceToAligned:I
    const/4 v2, 0x0

    .line 1888
    .local v2, diffDistance:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v0

    .line 1919
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1892
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1894
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v5, v5

    if-le p1, v5, :cond_4

    .line 1896
    neg-int v5, p1

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v5, v6

    .line 1903
    :cond_2
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, p2

    mul-int/2addr v5, p3

    add-int v3, v5, v2

    .line 1906
    :cond_3
    if-nez v3, :cond_5

    move v1, v0

    .line 1907
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1898
    .end local v1           #bResult:I
    :cond_4
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_2

    .line 1900
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    neg-int v2, v5

    goto :goto_1

    .line 1910
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v6, "GridFlingingAction"

    invoke-virtual {v5, p0, v6}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v4

    .line 1911
    .local v4, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v4, :cond_6

    .line 1912
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v5, v4}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1915
    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1916
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v6}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1917
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v7, "gridBouncingAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1918
    const/4 v0, 0x1

    move v1, v0

    .line 1919
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 2508
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2509
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 2510
    monitor-exit v2

    .line 2523
    :goto_0
    return-object v1

    .line 2513
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le p1, v3, :cond_2

    .line 2514
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 2524
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2517
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2519
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_3

    .line 2520
    monitor-exit v2

    goto :goto_0

    .line 2523
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

    .line 1622
    const/4 v0, 0x0

    .line 1624
    .local v0, handled:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    if-eqz v2, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;->onItemLongClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)Z

    move-result v0

    .line 1627
    :cond_0
    if-nez v0, :cond_1

    .line 1628
    int-to-long v2, p3

    invoke-virtual {p0, p2, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1629
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v2, p0}, Lcom/htc/sunny2/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 1631
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1632
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->performHapticFeedback(I)Z

    .line 1634
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 1629
    goto :goto_0
.end method

.method private pinToBottom()V
    .locals 5

    .prologue
    .line 2101
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v3, v4, :cond_0

    .line 2103
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2104
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_1

    .line 2111
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2106
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v0, v3, v4

    .line 2107
    .local v0, bottom:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int v2, v3, v4

    .line 2109
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
    .line 2138
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_1

    .line 2139
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2140
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2141
    .local v1, left:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 2142
    .local v3, viewLeft:I
    if-gt v1, v3, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 2143
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v4, v1

    .line 2145
    .local v2, offset:I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2148
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
    .line 2129
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v2, v3, :cond_0

    .line 2130
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2131
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2133
    .local v1, offset:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2135
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(Z)V
    .locals 6
    .parameter "alignTop"

    .prologue
    .line 2114
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_0

    .line 2115
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2116
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    .line 2126
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2118
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2119
    .local v2, top:I
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v3, v4, 0x0

    .line 2120
    .local v3, viewTop:I
    if-lt v2, v3, :cond_2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 2121
    :cond_2
    add-int/lit8 v4, v2, 0x0

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int v1, v4, v5

    .line 2123
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

    .line 1423
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1424
    .local v2, count:I
    if-nez v2, :cond_0

    move-object v1, v7

    .line 1443
    :goto_0
    return-object v1

    .line 1428
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1429
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1430
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_2

    .line 1428
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1434
    :cond_2
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1435
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1436
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1437
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1439
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

    .line 1443
    goto :goto_0
.end method

.method private startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 56
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 2757
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2758
    if-eqz p3, :cond_2

    .line 2759
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2760
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3104
    :cond_2
    :goto_0
    return-void

    .line 2766
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    .line 2767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 2768
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 2773
    :cond_4
    if-eqz p3, :cond_5

    .line 2774
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2778
    :cond_5
    const/4 v11, -0x1

    .line 2779
    .local v11, anchorIdx:I
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 2780
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v31

    .line 2781
    .local v31, index:I
    if-gez v31, :cond_7

    .line 2782
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2815
    :cond_6
    :goto_1
    new-instance v35, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2817
    .local v35, mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v28

    if-ge v0, v3, :cond_d

    .line 2818
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2817
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 2785
    .end local v28           #i:I
    .end local v35           #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2786
    const/16 v50, -0x1

    .line 2787
    .local v50, tmpIdx:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    .line 2788
    .local v34, lenDeleteArray:I
    add-int/lit8 v30, v31, 0x1

    .local v30, id:I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 2789
    aget v50, p1, v30

    .line 2790
    sub-int v3, v50, v11

    const/4 v5, 0x1

    if-le v3, v5, :cond_9

    .line 2791
    add-int/lit8 v11, v11, 0x1

    .line 2796
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v11, v3, :cond_a

    move/from16 v0, v50

    if-ne v11, v0, :cond_a

    .line 2797
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2794
    :cond_9
    move/from16 v11, v50

    .line 2788
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 2799
    :cond_a
    move/from16 v0, v50

    if-ne v11, v0, :cond_6

    .line 2800
    add-int/lit8 v30, v31, -0x1

    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v30

    if-le v0, v3, :cond_b

    .line 2801
    aget v50, p1, v30

    .line 2802
    sub-int v3, v11, v50

    const/4 v5, 0x1

    if-le v3, v5, :cond_c

    .line 2803
    add-int/lit8 v11, v11, -0x1

    .line 2809
    :cond_b
    move/from16 v0, v50

    if-ne v11, v0, :cond_6

    .line 2810
    const/4 v11, -0x1

    goto :goto_1

    .line 2806
    :cond_c
    move/from16 v11, v50

    .line 2800
    add-int/lit8 v30, v30, -0x1

    goto :goto_4

    .line 2820
    .end local v30           #id:I
    .end local v34           #lenDeleteArray:I
    .end local v50           #tmpIdx:I
    .restart local v28       #i:I
    .restart local v35       #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_1
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v28, v3, -0x1

    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v28

    if-le v0, v3, :cond_e

    .line 2821
    aget v3, p1, v28

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2820
    add-int/lit8 v28, v28, -0x1

    goto :goto_5

    .line 2824
    :catch_0
    move-exception v25

    .line 2826
    .local v25, e:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2827
    if-eqz p3, :cond_2

    .line 2828
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2833
    .end local v25           #e:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v3

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_f

    .line 2834
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2835
    if-eqz p3, :cond_2

    .line 2836
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2841
    :cond_f
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2842
    .local v23, deleteCell:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_13

    .line 2843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v28, v0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v28

    if-gt v0, v3, :cond_12

    .line 2844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2845
    .local v13, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v13, :cond_10

    .line 2846
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startDataSetChangeAnimation_IRT] mOnScreenItems with null cell at idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    :goto_7
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 2850
    :cond_10
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v21

    .line 2851
    .local v21, delIdx:I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_11

    .line 2852
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2856
    :cond_11
    invoke-virtual {v13}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2857
    iget-object v3, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v5, 0x7f7fffff

    const v6, 0x7f7fffff

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2858
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_7

    .line 2861
    .end local v13           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v21           #delIdx:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2864
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2865
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2866
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v3, v5, :cond_14

    .line 2867
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2869
    :cond_14
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2870
    const/16 v48, 0x0

    .line 2873
    .local v48, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_15

    .line 2874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v6, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    move-result-object v48

    .line 2877
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v3, :cond_16

    .line 2878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 2881
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_1e

    .line 2882
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v18, v3, 0x0

    .line 2884
    .local v18, currentH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v5, "oldFirstIdx"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 2885
    .local v41, oldFirstIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v5, "oldFirstItemPositionY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 2887
    .local v42, oldFirstItemPositionY:I
    const v3, 0x7fffffff

    move/from16 v0, v42

    if-eq v0, v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v41

    if-ne v3, v0, :cond_18

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    if-eqz v41, :cond_18

    .line 2890
    :cond_17
    move/from16 v18, v42

    .line 2893
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v27, v0

    .line 2896
    .local v27, height:I
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 2897
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v3, v5, :cond_1a

    move/from16 v0, v27

    neg-int v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v5

    move/from16 v0, v18

    if-gt v0, v3, :cond_19

    .line 2901
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v3, v5, :cond_1b

    move/from16 v0, v27

    neg-int v3, v0

    move/from16 v0, v18

    if-le v0, v3, :cond_1b

    .line 2902
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 2908
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    if-nez v3, :cond_1c

    .line 2909
    move/from16 v0, v27

    neg-int v3, v0

    move/from16 v0, v18

    if-le v0, v3, :cond_1c

    .line 2910
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 2911
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 2916
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v3, :cond_1d

    .line 2917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2920
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2922
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 2925
    .end local v18           #currentH:I
    .end local v27           #height:I
    .end local v41           #oldFirstIdx:I
    .end local v42           #oldFirstItemPositionY:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v45

    .line 2930
    .local v45, onScreenSize:I
    if-lez v45, :cond_20

    .line 2931
    const/16 v44, -0x1

    .line 2932
    .local v44, oldVisibleY:I
    :cond_1f
    :goto_8
    move/from16 v0, v44

    int-to-float v3, v0

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lez v3, :cond_20

    .line 2933
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    .line 2935
    .restart local v30       #id:I
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2936
    .local v43, oldIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2938
    .restart local v13       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v13}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v26

    .line 2940
    .local v26, h:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v47

    .line 2941
    .local v47, pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v3, v3

    div-int/lit8 v5, v26, 0x2

    add-int v44, v3, v5

    .line 2943
    const/4 v3, 0x0

    move/from16 v0, v44

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_1f

    .line 2944
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v32

    .line 2945
    .local v32, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    goto :goto_8

    .line 2950
    .end local v13           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v26           #h:I
    .end local v30           #id:I
    .end local v32           #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v43           #oldIdx:I
    .end local v44           #oldVisibleY:I
    .end local v47           #pos:Lcom/htc/sunny2/view/Vector3F;
    :cond_20
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2951
    .local v20, del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v22, v0

    .line 2953
    .local v22, delView:Lcom/htc/sunny2/view/SView;
    new-instance v15, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v15}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2954
    .local v15, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v5, 0x96

    invoke-virtual {v15, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2955
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 2956
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v3, v5, v6, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    const v6, 0x3e99999a

    const v9, 0x3e99999a

    const/high16 v10, 0x3f80

    invoke-direct {v5, v6, v9, v10}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v15, v3, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2957
    const/high16 v3, 0x437f

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/view/SView;->getAlpha()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2959
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2960
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_9

    .line 2963
    .end local v15           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v20           #del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v22           #delView:Lcom/htc/sunny2/view/SView;
    :cond_21
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 2964
    .local v37, moveDown:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 2965
    .local v38, moveUp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v49, Landroid/util/SparseArray;

    invoke-direct/range {v49 .. v49}, Landroid/util/SparseArray;-><init>()V

    .line 2967
    .local v49, renderOrder:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-lez v45, :cond_27

    .line 2969
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 2970
    .local v39, nMappingCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    .restart local v30       #id:I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v30

    if-gt v0, v3, :cond_27

    .line 2972
    move/from16 v0, v39

    move/from16 v1, v30

    if-gt v0, v1, :cond_23

    .line 2970
    :cond_22
    :goto_b
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 2975
    :cond_23
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2976
    .restart local v43       #oldIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2977
    .restart local v13       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v0, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v53, v0

    .line 2979
    .local v53, view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v47

    .line 2980
    .restart local v47       #pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v3

    move/from16 v54, v0

    .line 2981
    .local v54, x:I
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v0, v3

    move/from16 v55, v0

    .line 2983
    .local v55, y:I
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v33

    .line 2984
    .local v33, last:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v0, v54

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_24

    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_22

    .line 2985
    :cond_24
    new-instance v15, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v15}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2986
    .restart local v15       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v5, 0x96

    invoke-virtual {v15, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2987
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v54

    int-to-float v5, v0

    move/from16 v0, v55

    int-to-float v6, v0

    const/4 v9, 0x0

    invoke-direct {v3, v5, v6, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v15, v3, v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2988
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 2990
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2992
    new-instance v12, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v53

    invoke-direct {v12, v0, v1, v2, v15}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;ILcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2993
    .local v12, anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    .line 2994
    .local v24, down:I
    if-gez v24, :cond_25

    .line 2995
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x3

    sub-int v3, v3, v30

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2996
    move-object/from16 v0, v37

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 2998
    :cond_25
    if-ltz v24, :cond_26

    .line 2999
    add-int/lit8 v3, v30, 0x3

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3000
    move-object/from16 v0, v38

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3003
    :cond_26
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "What\'s up?"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3009
    .end local v12           #anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v13           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v15           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v24           #down:I
    .end local v30           #id:I
    .end local v33           #last:Lcom/htc/sunny2/view/Vector3F;
    .end local v39           #nMappingCount:I
    .end local v43           #oldIdx:I
    .end local v47           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v53           #view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v54           #x:I
    .end local v55           #y:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v16

    .line 3010
    .local v16, cooperateIdx:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2b

    .line 3011
    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v4, v16

    .line 3027
    .end local v16           #cooperateIdx:I
    .local v4, cooperateIdx:I
    :cond_28
    :goto_c
    const/16 v36, 0x1

    .line 3029
    .local v36, move:I
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v24

    .line 3030
    .restart local v24       #down:I
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v52

    .line 3031
    .local v52, up:I
    move/from16 v0, v24

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3032
    .local v17, count:I
    const/16 v40, 0x0

    .line 3033
    .local v40, offset:I
    const/16 v51, 0x0

    .local v51, u:I
    add-int/lit8 v19, v24, -0x1

    .local v19, d:I
    :goto_d
    move/from16 v0, v51

    move/from16 v1, v17

    if-ge v0, v1, :cond_2f

    .line 3034
    mul-int/lit8 v3, v36, 0x1e

    add-int/lit8 v40, v3, 0x78

    .line 3035
    const/4 v14, 0x0

    .line 3037
    .local v14, cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    const/4 v3, -0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_29

    .line 3038
    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3039
    .restart local v14       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v40

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3040
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    iget-object v5, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3041
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveDown id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    :cond_29
    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_2a

    .line 3045
    move-object/from16 v0, v38

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3046
    .restart local v14       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v40

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3047
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    iget-object v5, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3048
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveUp id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    :cond_2a
    if-nez v14, :cond_2d

    .line 3033
    :goto_e
    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_d

    .line 3014
    .end local v4           #cooperateIdx:I
    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v17           #count:I
    .end local v19           #d:I
    .end local v24           #down:I
    .end local v36           #move:I
    .end local v40           #offset:I
    .end local v51           #u:I
    .end local v52           #up:I
    .restart local v16       #cooperateIdx:I
    :cond_2b
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v21

    .line 3015
    .restart local v21       #delIdx:I
    if-gez v21, :cond_2c

    .line 3016
    move/from16 v46, v16

    .line 3017
    .local v46, oriIdx:I
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3018
    .end local v16           #cooperateIdx:I
    .restart local v4       #cooperateIdx:I
    const/4 v3, -0x1

    if-ne v4, v3, :cond_28

    .line 3019
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startDataSetChangeAnimation_IRT] Can\'t get current id, original="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3023
    .end local v4           #cooperateIdx:I
    .end local v46           #oriIdx:I
    .restart local v16       #cooperateIdx:I
    :cond_2c
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    move/from16 v4, v16

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v4, v16

    .end local v16           #cooperateIdx:I
    .restart local v4       #cooperateIdx:I
    goto/16 :goto_c

    .line 3053
    .end local v21           #delIdx:I
    .restart local v14       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .restart local v17       #count:I
    .restart local v19       #d:I
    .restart local v24       #down:I
    .restart local v36       #move:I
    .restart local v40       #offset:I
    .restart local v51       #u:I
    .restart local v52       #up:I
    :cond_2d
    iget v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    if-ne v4, v3, :cond_2e

    .line 3054
    move/from16 v0, v40

    int-to-long v5, v0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3057
    :cond_2e
    invoke-virtual {v14}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->clear()V

    .line 3059
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .line 3062
    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    :cond_2f
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->clear()V

    .line 3063
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->clear()V

    .line 3065
    move-object/from16 v8, v48

    .line 3066
    .local v8, release1:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v7, v23

    .line 3067
    .local v7, deleteCell2:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v5, Lcom/htc/sunny2/widget/gridview/GridView$3;

    move-object/from16 v6, p0

    move-object/from16 v9, v49

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView$3;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    mul-int/lit8 v6, v36, 0x1e

    add-int/lit8 v6, v6, 0x78

    add-int/lit16 v6, v6, 0x96

    int-to-long v9, v6

    invoke-virtual {v3, v5, v9, v10}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 3588
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3589
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3591
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3593
    :cond_1
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
    .line 1585
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1586
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1588
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1586
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1591
    :cond_0
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1575
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1576
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1578
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1576
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1581
    :cond_0
    return v1
.end method

.method protected checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    .locals 10
    .parameter "oldFirstIdx"
    .parameter "oldFirstItemPositionX"
    .parameter "oldFirstItemPositionY"

    .prologue
    .line 548
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 549
    .local v1, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iput p2, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 550
    iput p3, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 551
    iput p1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 553
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 554
    :try_start_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    .line 555
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 556
    .local v0, bRefresh:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 557
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 559
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 560
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 561
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    if-eqz v4, :cond_5

    .line 563
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 581
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_1

    .line 582
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 585
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 603
    .end local v0           #bRefresh:Z
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v6, 0x1

    if-ge v4, v6, :cond_c

    .line 604
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 605
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    .line 606
    monitor-exit v5

    .line 711
    :goto_3
    return-object v1

    .line 555
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 567
    .restart local v0       #bRefresh:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_6

    .line 568
    if-eqz v0, :cond_7

    .line 569
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 576
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_0

    .line 577
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    goto :goto_1

    .line 709
    .end local v0           #bRefresh:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 571
    .restart local v0       #bRefresh:Z
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 572
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    goto :goto_4

    .line 587
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

    .line 588
    :cond_9
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 589
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_a

    .line 590
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 593
    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_b

    .line 594
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 597
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    goto :goto_2

    .line 609
    :cond_c
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v4, v6, :cond_d

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_d

    .line 610
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 611
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 614
    :cond_d
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v4, v6, :cond_e

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_e

    .line 615
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 616
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 619
    :cond_e
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_f

    .line 620
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 621
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 624
    :cond_f
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    if-eq v4, v6, :cond_10

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_10

    .line 625
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 626
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 629
    :cond_10
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    if-eq v4, v6, :cond_11

    .line 630
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    .line 631
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 632
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_11

    .line 633
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onLayoutOrientationChange(Landroid/content/Context;I)V

    .line 637
    :cond_11
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    .line 638
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 642
    :cond_12
    const/4 v2, 0x0

    .line 643
    .local v2, isColumnNumChange:Z
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 644
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->columnBestFit()Z

    move-result v2

    .line 650
    :goto_5
    const/4 v4, 0x1

    if-ne v4, v2, :cond_13

    .line 651
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_13

    .line 652
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 656
    :cond_13
    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    if-ne v4, v6, :cond_14

    .line 657
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 658
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 659
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 662
    :cond_14
    const/4 v4, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    if-eq v4, v6, :cond_1a

    .line 663
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 664
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 667
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-gez v4, :cond_15

    .line 668
    if-ltz p1, :cond_18

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_18

    .line 669
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 677
    :cond_15
    :goto_6
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lez v4, :cond_19

    .line 678
    const/4 v4, 0x0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 679
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 683
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_16

    .line 684
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 685
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 686
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 693
    :cond_16
    :goto_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 708
    :goto_8
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 709
    monitor-exit v5

    goto/16 :goto_3

    .line 647
    :cond_17
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->rowBestFit()Z

    move-result v2

    goto :goto_5

    .line 672
    :cond_18
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_6

    .line 690
    :cond_19
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_7

    .line 697
    :cond_1a
    const/4 v3, -0x1

    .line 698
    .local v3, last:I
    if-ltz p1, :cond_1b

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_1b

    .line 699
    move v3, p1

    .line 705
    :goto_9
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 702
    :cond_1b
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 513
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
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

    .line 517
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    return-void

    .line 519
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 523
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

    .line 521
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

    .line 986
    const/4 v7, 0x0

    .line 987
    .local v7, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 991
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 992
    .local v4, startX:I
    const/4 v10, 0x0

    .line 993
    .local v10, totalItemWidth:I
    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 994
    .local v12, width:I
    const/4 v9, -0x1

    .line 996
    .local v9, numColumn:I
    const/4 v1, 0x0

    .line 998
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

    .line 1002
    :goto_0
    if-nez v1, :cond_0

    .line 1003
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1005
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v5, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1007
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1009
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 1010
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v13, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 1011
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 1013
    if-ge v11, v14, :cond_1

    .line 1014
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

    .line 1016
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int/2addr v4, v3

    .line 1017
    const/4 v8, 0x0

    .line 1018
    .local v8, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr v4, v3

    .line 1019
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v12

    shr-int/lit8 v5, v11, 0x2

    add-int/2addr v3, v5

    if-le v4, v3, :cond_6

    .line 1020
    move v9, v8

    .line 1026
    if-gez v9, :cond_2

    .line 1027
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1030
    :cond_2
    if-le v14, v9, :cond_3

    .line 1031
    const/4 v9, 0x1

    .line 1036
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v9, v3, :cond_4

    .line 1037
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 1038
    const/4 v7, 0x1

    .line 1041
    :cond_4
    if-lez v9, :cond_5

    .line 1042
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

    .line 1043
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    if-gez v3, :cond_5

    .line 1044
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1048
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v8           #j:I
    .end local v9           #numColumn:I
    .end local v10           #totalItemWidth:I
    .end local v11           #w:I
    .end local v12           #width:I
    :cond_5
    return v7

    .line 1024
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v8       #j:I
    .restart local v9       #numColumn:I
    .restart local v10       #totalItemWidth:I
    .restart local v11       #w:I
    .restart local v12       #width:I
    :cond_6
    add-int/2addr v10, v11

    .line 1017
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1000
    .end local v8           #j:I
    .end local v11           #w:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    .prologue
    .line 3746
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3747
    .local v2, firstIdx:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 3748
    .local v5, numRows:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3750
    .local v3, itemCount:I
    if-gtz v5, :cond_0

    .line 3751
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeHorizontalScrollExtent] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3753
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 3771
    :goto_0
    return v7

    .line 3756
    :cond_0
    add-int v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    div-int v1, v7, v5

    .line 3757
    .local v1, columnCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3758
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    .line 3760
    .local v4, itemWidth:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int v6, v7, v8

    .line 3767
    .local v6, totalWidth:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-le v6, v7, :cond_1

    .line 3768
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_0

    .line 3771
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 3775
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3776
    .local v1, firstIdx:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3777
    .local v2, itemCount:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 3779
    .local v4, numRows:I
    if-gtz v4, :cond_1

    .line 3780
    const-string v8, "GridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[computeHorizontalScrollOffset] divide unexpected number. FirstIdx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numColumns "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    :cond_0
    :goto_0
    return v7

    .line 3784
    :cond_1
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 3785
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3786
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v3

    .line 3787
    .local v3, itemWidth:I
    div-int v6, v1, v4

    .line 3789
    .local v6, whichColumn:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int v5, v7, v8

    .line 3796
    .local v5, prePosistion:I
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v7, v5, v7

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 10

    .prologue
    .line 3802
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3803
    .local v2, firstIdx:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 3804
    .local v5, numRows:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3806
    .local v3, itemCount:I
    if-gtz v5, :cond_0

    .line 3807
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeHorizontalScrollRange] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 3832
    :goto_0
    return v7

    .line 3812
    :cond_0
    add-int v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    div-int v1, v7, v5

    .line 3813
    .local v1, columnCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3814
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    .line 3816
    .local v4, itemWidth:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int v6, v7, v8

    .line 3818
    .local v6, totalWidth:I
    if-lez v1, :cond_1

    .line 3819
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v6, v7

    .line 3828
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-le v6, v7, :cond_2

    .line 3829
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    sub-int v7, v6, v7

    goto :goto_0

    .line 3832
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    .line 3655
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3656
    .local v1, firstIdx:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 3657
    .local v4, numColumns:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3659
    .local v2, itemCount:I
    if-gtz v4, :cond_0

    .line 3660
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeVerticalScrollExtent] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 3680
    :goto_0
    return v7

    .line 3665
    :cond_0
    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    div-int v5, v7, v4

    .line 3666
    .local v5, rowCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3667
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    .line 3669
    .local v3, itemHeight:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int v6, v7, v8

    .line 3676
    .local v6, totalHeight:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    if-le v6, v7, :cond_1

    .line 3677
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_0

    .line 3680
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 3684
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3685
    .local v1, firstIdx:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3686
    .local v2, itemCount:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 3688
    .local v4, numColumns:I
    if-gtz v4, :cond_1

    .line 3689
    const-string v8, "GridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[computeVerticalScrollOffset] divide unexpected number. FirstIdx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numColumns "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    :cond_0
    :goto_0
    return v7

    .line 3694
    :cond_1
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 3695
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3696
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    .line 3697
    .local v3, itemHeight:I
    div-int v6, v1, v4

    .line 3699
    .local v6, whichRow:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    neg-int v5, v7

    .line 3706
    .local v5, prePosistion:I
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v7, v5

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 10

    .prologue
    .line 3712
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3713
    .local v1, firstIdx:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 3714
    .local v4, numColumns:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3716
    .local v2, itemCount:I
    if-gtz v4, :cond_0

    .line 3717
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeVerticalScrollRange] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 3742
    :goto_0
    return v7

    .line 3722
    :cond_0
    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    div-int v5, v7, v4

    .line 3723
    .local v5, rowCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3724
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    .line 3726
    .local v3, itemHeight:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int v6, v7, v8

    .line 3728
    .local v6, totalHeight:I
    if-lez v5, :cond_1

    .line 3729
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    sub-int/2addr v6, v7

    .line 3738
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    if-le v6, v7, :cond_2

    .line 3739
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    sub-int v7, v6, v7

    goto :goto_0

    .line 3742
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    goto :goto_0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 2739
    const/4 v0, -0x1

    return v0
.end method

.method createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1613
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
    .line 3640
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3641
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 3652
    :goto_0
    return-void

    .line 3645
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3647
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3648
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 3650
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3651
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
    .line 3512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 3513
    return-void
.end method

.method public enableRootNode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 3497
    return-void
.end method

.method protected fillDown()V
    .locals 7

    .prologue
    .line 2369
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2371
    .local v2, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2372
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_0

    .line 2373
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

    .line 2376
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

    .line 2377
    .local v0, bottom:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2378
    .local v3, startIdx:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    if-le v0, v4, :cond_2

    if-ge v3, v2, :cond_2

    .line 2379
    if-lt v3, v2, :cond_1

    .line 2380
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

    .line 2383
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2385
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2386
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

    .line 2387
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 2389
    :cond_2
    return-void
.end method

.method protected fillLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2416
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2417
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2418
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

    .line 2422
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int v2, v3, v4

    .line 2423
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2424
    if-gez v2, :cond_1

    .line 2425
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

    .line 2428
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 2429
    .local v1, newLeft:I
    invoke-virtual {p0, v2, v1, v5, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2431
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2432
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v2, v3

    .line 2433
    goto :goto_0

    .line 2434
    .end local v1           #newLeft:I
    :cond_2
    return-void
.end method

.method protected fillRight()V
    .locals 7

    .prologue
    .line 2392
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2394
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2395
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2396
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

    .line 2400
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2401
    .local v3, startIdx:I
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    .line 2402
    .local v2, right:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-ge v2, v4, :cond_2

    if-ge v3, v1, :cond_2

    .line 2403
    if-lt v3, v1, :cond_1

    .line 2404
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

    .line 2407
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2409
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2410
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2411
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    goto :goto_0

    .line 2413
    :cond_2
    return-void
.end method

.method protected fillUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2350
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2351
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2352
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

    .line 2354
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v2, v3, v4

    .line 2355
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    rsub-int/lit8 v4, v4, 0x0

    if-ge v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2356
    if-gez v2, :cond_1

    .line 2357
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

    .line 2360
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v1, v3, v4

    .line 2361
    .local v1, newTop:I
    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2363
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2364
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v2, v3

    .line 2365
    goto :goto_0

    .line 2366
    .end local v1           #newTop:I
    :cond_2
    return-void
.end method

.method public freeInvisibleResource()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$1;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 509
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
    .line 3501
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

    .line 481
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v1

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 484
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 486
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 2536
    const/4 v0, 0x0

    .line 2537
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2538
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2540
    :cond_0
    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 1

    .prologue
    .line 1598
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstIndexPostion()I
    .locals 4

    .prologue
    .line 536
    const v0, 0x7fffffff

    .line 538
    .local v0, posY:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    .line 540
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 542
    :cond_0
    monitor-exit v2

    .line 544
    return v0

    .line 542
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
    .line 1236
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1237
    :cond_0
    const/4 v0, -0x1

    .line 1239
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
    .line 2528
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1147
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1249
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1250
    :cond_0
    const/4 v0, -0x1

    .line 1252
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
    .line 2064
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 2066
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2067
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 2070
    :cond_0
    div-int v1, p1, v0

    return v1
.end method

.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public getNumColumn()I
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    return v0
.end method

.method public getNumRow()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    return v0
.end method

.method public getOnFullScreenTransitionEndListener()Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;
    .locals 1

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    return-object v0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 3
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 2747
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 2748
    .local v0, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 2749
    iget v1, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 2750
    return-object v0
.end method

.method public getRootNode()Lcom/htc/sunny2/SceneNode;
    .locals 1

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .locals 1

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    return-object v0
.end method

.method public getScreenItemBottom()I
    .locals 6

    .prologue
    .line 3543
    const/4 v1, 0x0

    .line 3545
    .local v1, nBottom:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3546
    .local v3, nCount:I
    if-gtz v3, :cond_0

    move v2, v1

    .line 3559
    .end local v1           #nBottom:I
    .local v2, nBottom:I
    :goto_0
    return v2

    .line 3549
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3550
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    move v2, v1

    .line 3551
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3553
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

    .line 3554
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x5

    :goto_1
    move v2, v1

    .line 3559
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3556
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
    .line 3539
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 3

    .prologue
    .line 1219
    const/4 v0, -0x1

    .line 1220
    .local v0, id:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1221
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1224
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 1226
    :cond_0
    return v0

    .line 1222
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
    .line 2504
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
    .line 3632
    return p1
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1151
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public getViewItemCount()I
    .locals 2

    .prologue
    .line 2532
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChild()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected invokeOnItemScrollListener()V
    .locals 7

    .prologue
    .line 2312
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2313
    .local v0, first:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2314
    .local v2, visCount:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2315
    .local v1, totCount:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v3, :cond_0

    .line 2316
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2318
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 2319
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 2321
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
    .line 1098
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1099
    .local v10, total:I
    const/4 v7, 0x0

    .line 1100
    .local v7, W:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 1102
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1103
    const/4 v1, 0x0

    .line 1105
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

    .line 1111
    :goto_1
    if-nez v1, :cond_0

    .line 1112
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1114
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1116
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1117
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1121
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    sub-int/2addr p3, v3

    .line 1122
    if-ge v7, v11, :cond_1

    .line 1123
    move v7, v11

    .line 1126
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1128
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1130
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1131
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1102
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1134
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    add-int v3, p2, v7

    return v3

    .line 1107
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
    .line 1052
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1053
    .local v10, total:I
    const/4 v7, 0x0

    .line 1055
    .local v7, H:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    .line 1057
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1059
    const/4 v1, 0x0

    .line 1061
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

    .line 1067
    :goto_1
    if-nez v1, :cond_0

    .line 1068
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1070
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1072
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1073
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1080
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr p2, v3

    .line 1081
    if-ge v7, v8, :cond_1

    .line 1082
    move v7, v8

    .line 1085
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1086
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1087
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1089
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1090
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1057
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1094
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    sub-int v3, p3, v7

    return v3

    .line 1063
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public notifyMediaDataChange()V
    .locals 2

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2575
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 2576
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2578
    return-void

    .line 2576
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
    .line 2581
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 2582
    return-void
.end method

.method public notifyMediaDataInvalidate()V
    .locals 2

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2565
    :cond_0
    return-void
.end method

.method public notifyMediaDataInvalidate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2571
    :cond_0
    return-void
.end method

.method public notifyPreparatorMediaDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 2586
    return-void
.end method

.method public notifyPreparatorMediaDataChange(II)V
    .locals 3
    .parameter "index"
    .parameter "flag"

    .prologue
    .line 2589
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView$2;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;II)V

    .line 2597
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2598
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2603
    :goto_0
    return-void

    .line 2601
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyThumbnailTextureReadyIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 2606
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2607
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    .line 2608
    .local v0, viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 2609
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    .line 2610
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 2611
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 2614
    .end local v0           #viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    :cond_0
    return-void
.end method

.method protected notifyUpdatePreparator(Z)V
    .locals 12
    .parameter "bIsNewList"

    .prologue
    const/4 v11, 0x1

    .line 899
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 902
    :cond_0
    if-ne v11, p1, :cond_1

    .line 906
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

    .line 913
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 914
    .local v8, preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    const/4 v7, 0x0

    .line 915
    .local v7, number:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v11, :cond_2

    .line 916
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 921
    :goto_2
    invoke-virtual {v8, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setColumnNumber(I)V

    .line 922
    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resetDecodeDirection()V

    goto :goto_0

    .line 908
    .end local v7           #number:I
    .end local v8           #preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    :catch_0
    move-exception v6

    .line 910
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

    .line 919
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

    .line 1969
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v1, v2, :cond_1

    .line 1971
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1972
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1985
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1986
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v3, :cond_2

    .line 1987
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    .line 1992
    :goto_1
    return v3

    .line 1976
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1977
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

    .line 1978
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 1981
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1982
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    goto :goto_0

    .line 1990
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

    .line 2076
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "gridBouncingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 2077
    .local v0, gridBouncingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v0, :cond_0

    .line 2079
    const/4 v2, 0x0

    .line 2096
    :goto_0
    return v2

    .line 2082
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v2, :cond_2

    .line 2083
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v4, p4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    .line 2089
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "GridFlingingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    .line 2090
    .local v1, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v1, :cond_1

    .line 2092
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2094
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v5, "GridFlingingAction"

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2095
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2086
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
    .line 1862
    const/4 v0, 0x0

    .line 1864
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1878
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1869
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

    .line 1696
    const/4 v0, 0x0

    .line 1697
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 1698
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1700
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

    .line 1856
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1706
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    if-ne v6, v8, :cond_2

    .line 1708
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1709
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1710
    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1711
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1712
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1713
    const/4 v0, 0x1

    move v1, v0

    .line 1714
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1717
    .end local v1           #bResult:I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v0

    .line 1760
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1721
    .end local v1           #bResult:I
    :sswitch_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v7, v6, v7

    if-le v7, v8, :cond_3

    .line 1723
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v6, v7

    .line 1764
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v6, v7, :cond_7

    .line 1766
    const/4 v3, 0x0

    .line 1767
    .local v3, cellCoordinate:I
    const/4 v4, 0x0

    .line 1768
    .local v4, cellHeight:I
    const/4 v5, 0x0

    .line 1770
    .local v5, numRow:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1771
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_5

    .line 1773
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1775
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1777
    :cond_4
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1780
    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-le v6, v7, :cond_b

    .line 1782
    if-eqz v2, :cond_9

    .line 1784
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_8

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_8

    .line 1786
    const/4 v5, 0x1

    .line 1792
    :goto_2
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1793
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1842
    :goto_3
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1843
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1844
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_6

    .line 1846
    const/4 v5, 0x0

    .line 1847
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1848
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1849
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1850
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1853
    :cond_6
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1854
    const/4 v0, 0x1

    .end local v3           #cellCoordinate:I
    .end local v4           #cellHeight:I
    .end local v5           #numRow:I
    :cond_7
    move v1, v0

    .line 1856
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1729
    .end local v1           #bResult:I
    :sswitch_1
    if-eq v6, v8, :cond_3

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1731
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 1737
    :sswitch_2
    add-int/lit8 v7, v6, -0x1

    if-le v7, v8, :cond_3

    .line 1739
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1745
    :sswitch_3
    if-eq v6, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1747
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1753
    :sswitch_4
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1755
    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 1756
    const/4 v0, 0x1

    move v1, v0

    .line 1757
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1790
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

    .line 1797
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

    .line 1799
    const/4 v5, 0x1

    .line 1805
    :goto_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1806
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1807
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto :goto_3

    .line 1803
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_4

    .line 1812
    :cond_b
    if-eqz v2, :cond_d

    .line 1814
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_c

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_c

    .line 1816
    const/4 v5, -0x1

    .line 1822
    :goto_5
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1823
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1824
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

    .line 1820
    :cond_c
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_5

    .line 1828
    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_e

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_e

    .line 1830
    const/4 v5, -0x1

    .line 1836
    :goto_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1837
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1838
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto/16 :goto_3

    .line 1834
    :cond_e
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_6

    .line 1717
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
    .line 729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v14

    .line 730
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v13, v15, :cond_1

    .line 732
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 733
    monitor-exit v14

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v0, p5

    if-ne v13, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v0, p6

    if-eq v13, v0, :cond_3

    .line 740
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 743
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 744
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 747
    const/4 v13, 0x1

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    const/4 v13, 0x1

    move/from16 v0, p6

    if-lt v0, v13, :cond_0

    .line 751
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 755
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 760
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

    .line 762
    const v10, 0x7fffffff

    .line 763
    .local v10, oldFirstItemPositionX:I
    const v11, 0x7fffffff

    .line 764
    .local v11, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 765
    .local v9, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 767
    .local v12, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_6

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v10, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 769
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v11, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 771
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v13, :cond_5

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 773
    .local v3, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_4

    .line 774
    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 775
    iget-object v13, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v14, 0x7f7fffff

    const v15, 0x7f7fffff

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 776
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 771
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 735
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

    .line 779
    .restart local v7       #i:I
    .restart local v9       #oldFirstIdx:I
    .restart local v10       #oldFirstItemPositionX:I
    .restart local v11       #oldFirstItemPositionY:I
    .restart local v12       #oldLastIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 782
    .end local v7           #i:I
    :cond_6
    const/4 v2, 0x0

    .line 784
    .local v2, bSetNewList:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    move-result-object v4

    .line 786
    .local v4, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iget-boolean v13, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v13, :cond_0

    .line 789
    iget-boolean v2, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 790
    iget v10, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 791
    iget v11, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 792
    iget v9, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 804
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

    .line 806
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v13, :cond_e

    .line 807
    const/4 v5, 0x0

    .line 808
    .local v5, currentBase:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v5, v13, 0x0

    .line 817
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

    .line 821
    :cond_7
    move v5, v11

    .line 830
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 832
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

    .line 833
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

    .line 837
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    .line 843
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 844
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

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 847
    .local v6, firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v14, v14, 0x0

    if-ge v13, v14, :cond_b

    .line 848
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 876
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

    .line 878
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ne v9, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v12, v13, :cond_c

    const/4 v13, 0x1

    if-ne v13, v2, :cond_d

    .line 879
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 882
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 888
    .end local v5           #currentBase:I
    .end local v8           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    if-ne v13, v14, :cond_f

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onLayoutChangedIRT(II)V

    .line 891
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 894
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    .line 812
    .restart local v5       #currentBase:I
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/lit8 v5, v13, 0x0

    goto/16 :goto_2

    .line 823
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

    .line 827
    :cond_12
    move v5, v10

    goto/16 :goto_3

    .line 854
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

    .line 855
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

    .line 859
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 866
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

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToRight()V

    .line 868
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 869
    .restart local v6       #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v13, v14, :cond_b

    .line 870
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToLeft(Z)V

    goto/16 :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2050
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

    .line 2051
    .local v1, onScreenIdx:I
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v2, :cond_0

    .line 2053
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2054
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2058
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
    .line 1337
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->onRenderOrderChanged(Z)V

    .line 1338
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 1339
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1342
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

    .line 2024
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    .line 2030
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Panning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2037
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2038
    return v2

    .line 2028
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

    .line 1948
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1949
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 1950
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    .line 1955
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->doBounceBack()Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1964
    :cond_0
    :goto_1
    return-void

    .line 1953
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    goto :goto_0

    .line 1959
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
    .line 2153
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v11, :cond_1

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2156
    .local v8, totalCount:I
    if-eqz v8, :cond_0

    .line 2160
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v11, :cond_0

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v12, 0x7fffffff

    if-eq v11, v12, :cond_0

    .line 2164
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2165
    .local v5, oldFirstIdx:I
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2167
    .local v6, oldLastIdx:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2168
    .local v7, tmpLastIdx:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    if-gt v3, v7, :cond_9

    .line 2169
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2171
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_3

    .line 2168
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2175
    :cond_3
    iget-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2177
    .local v4, item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v9

    .line 2178
    .local v9, w:I
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v10

    .line 2180
    .local v10, y:I
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int v11, v11, p1

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2181
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int v11, v11, p2

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2183
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2184
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2185
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2186
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2188
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2189
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2193
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto :goto_2

    .line 2199
    :cond_4
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v12, v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_5

    .line 2200
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2201
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2203
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2204
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2208
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2209
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_2

    .line 2213
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

    .line 2217
    :cond_6
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v11, v9

    const/4 v12, -0x1

    if-ge v11, v12, :cond_7

    .line 2218
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2219
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2221
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2222
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2226
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto/16 :goto_2

    .line 2228
    :cond_7
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_8

    .line 2229
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2230
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2232
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2233
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2237
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2238
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto/16 :goto_2

    .line 2242
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

    .line 2247
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v9           #w:I
    .end local v10           #y:I
    :cond_9
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 2248
    if-gez p2, :cond_f

    .line 2249
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 2265
    :cond_a
    :goto_3
    const/4 v11, -0x1

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-eq v11, v12, :cond_b

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v11, :cond_b

    .line 2266
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 2270
    :cond_b
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v11, :cond_c

    .line 2271
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_12

    .line 2272
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2279
    :cond_c
    :goto_4
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v6, v11, :cond_d

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eq v5, v11, :cond_e

    .line 2280
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2283
    :cond_e
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v11, p0, v12, v13, v14}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2285
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v11, :cond_0

    .line 2287
    const/4 v2, 0x0

    .line 2288
    .local v2, direction:I
    if-nez p1, :cond_13

    .line 2289
    move/from16 v0, p2

    int-to-float v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 2294
    :goto_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v11, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    goto/16 :goto_0

    .line 2251
    .end local v2           #direction:I
    :cond_f
    if-lez p2, :cond_a

    .line 2252
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    goto :goto_3

    .line 2256
    :cond_10
    if-gez p1, :cond_11

    .line 2257
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    goto :goto_3

    .line 2259
    :cond_11
    if-lez p1, :cond_a

    .line 2260
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    goto :goto_3

    .line 2274
    :cond_12
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_c

    .line 2275
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_4

    .line 2292
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
    .line 1997
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2005
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2006
    const/4 v1, 0x0

    .line 2018
    :goto_0
    return v1

    .line 2008
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

    .line 2010
    .local v0, onScreenIdx:I
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v1, :cond_1

    .line 2014
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 2015
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 2018
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
    .line 1378
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->onSizeChanged(IIII)V

    .line 1380
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onSizeChanged(IIII)V

    .line 1386
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 1388
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

    .line 1640
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v3, v6, :cond_0

    .line 1641
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1642
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1645
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

    .line 1685
    :cond_1
    :goto_0
    return v2

    .line 1652
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    if-nez v3, :cond_4

    .line 1653
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1654
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1655
    .local v1, intercepted:Z
    if-eqz v1, :cond_4

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1658
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    goto :goto_0

    .line 1665
    .end local v1           #intercepted:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1667
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 1670
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1672
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 1674
    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 1676
    const-string v3, "GridView"

    const-string v4, "[HTCAlbum][Gridview][onTouchEvent]: SCROLL_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1680
    :cond_6
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1683
    :cond_7
    if-eq v0, v2, :cond_1

    .line 1685
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    goto :goto_0
.end method

.method protected onUpdatePositionAnimation()V
    .locals 1

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdatePositionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3584
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->onUpdatePositionAnimation()V

    .line 3585
    :cond_0
    return-void
.end method

.method protected pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x1

    .line 1402
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1403
    .local v2, count:I
    if-nez v2, :cond_1

    move v3, v7

    .line 1419
    :cond_0
    :goto_0
    return v3

    .line 1407
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1408
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1410
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1411
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1412
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1413
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1415
    .local v0, bottom:I
    if-gt v6, p2, :cond_2

    if-gt p2, v0, :cond_2

    if-gt v4, p1, :cond_2

    if-le p1, v5, :cond_0

    .line 1407
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

    .line 1419
    goto :goto_0
.end method

.method public postRenderRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 3488
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
    .line 2332
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 2337
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    .line 2340
    :cond_0
    if-nez p1, :cond_1

    .line 2342
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    .line 2344
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    .line 2347
    :cond_1
    return-void
.end method

.method public resetGesture()V
    .locals 3

    .prologue
    .line 3516
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v1, :cond_1

    .line 3518
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 3519
    const/4 v0, 0x0

    .line 3523
    .local v0, renderAction:Lcom/htc/sunny2/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3524
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3529
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3530
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3532
    .end local v0           #renderAction:Lcom/htc/sunny2/RenderThreadAction;
    :cond_1
    return-void
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 718
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 719
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 720
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 723
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
    .line 2706
    const-string v11, "oldFirstIdx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2707
    .local v5, oldFirstIdx:I
    const-string v11, "oldFirstItemPositionY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2709
    .local v6, oldFirstItemPositionY:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2710
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    .line 2711
    .local v8, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2713
    .local v4, h:I
    sub-int v3, p2, v5

    .line 2715
    .local v3, d:I
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v2, v3, v11

    .line 2716
    .local v2, colId:I
    if-gez v2, :cond_0

    .line 2717
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v2, v11

    .line 2720
    :cond_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v7, v3, v11

    .line 2721
    .local v7, rowId:I
    if-gez v7, :cond_1

    if-eqz v2, :cond_1

    .line 2722
    add-int/lit8 v7, v7, -0x1

    .line 2726
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

    .line 2727
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

    .line 2729
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
    .line 1321
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1322
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    goto :goto_0

    .line 1326
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

    .line 926
    const/4 v9, 0x0

    .line 927
    .local v9, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 928
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    .line 929
    .local v5, startY:I
    const/4 v12, 0x0

    .line 930
    .local v12, totalItemHeight:I
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 931
    .local v8, height:I
    const/4 v11, -0x1

    .line 933
    .local v11, numRow:I
    const/4 v1, 0x0

    .line 935
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

    .line 939
    :goto_0
    if-nez v1, :cond_0

    .line 940
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 942
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v4, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 943
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    .line 944
    .local v7, h:I
    if-ge v7, v14, :cond_1

    .line 945
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

    .line 947
    :cond_1
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 948
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v13, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 949
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 951
    const/4 v10, 0x0

    .line 952
    .local v10, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 953
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    shr-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    if-le v5, v3, :cond_6

    .line 954
    move v11, v10

    .line 960
    if-gez v11, :cond_2

    .line 961
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 964
    :cond_2
    if-le v14, v11, :cond_3

    .line 965
    const/4 v11, 0x1

    .line 970
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v11, v3, :cond_4

    .line 971
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 972
    const/4 v9, 0x1

    .line 975
    :cond_4
    if-lez v11, :cond_5

    .line 976
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

    .line 977
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    if-gez v3, :cond_5

    .line 978
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 982
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #h:I
    .end local v8           #height:I
    .end local v10           #j:I
    .end local v11           #numRow:I
    .end local v12           #totalItemHeight:I
    :cond_5
    return v9

    .line 958
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v7       #h:I
    .restart local v8       #height:I
    .restart local v10       #j:I
    .restart local v11       #numRow:I
    .restart local v12       #totalItemHeight:I
    :cond_6
    add-int/2addr v12, v7

    .line 951
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 937
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
    .line 490
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 491
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2
    .parameter "hspace"

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1315
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 1316
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1318
    return-void

    .line 1316
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
    .line 3477
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    .line 3478
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
    .line 2548
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Z)V

    .line 2549
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
    .line 2552
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2553
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2554
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 2555
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2557
    if-eqz p2, :cond_0

    .line 2558
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2559
    :cond_0
    return-void

    .line 2554
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    .line 2555
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
    .line 529
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 530
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 531
    return-void
.end method

.method public setNumColumn(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1285
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1286
    if-gez p1, :cond_0

    .line 1287
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1289
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 1290
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1293
    return-void
.end method

.method public setNumRow(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1297
    if-gez p1, :cond_0

    .line 1298
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1300
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 1301
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1304
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 1282
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 1272
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 1258
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 1262
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1178
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1179
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 1181
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1183
    return-void

    .line 1181
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
    .line 494
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->setPadding(IIII)V

    .line 495
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 497
    monitor-exit v1

    .line 498
    return-void

    .line 497
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
    .line 2438
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 2440
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2442
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;

    const-string v1, "setPreparation"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2444
    .local v0, setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v1, v2, :cond_1

    .line 2445
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->onProcessEventIRT()V

    .line 2449
    .end local v0           #setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_0
    :goto_0
    return-void

    .line 2447
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
    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, isChanged:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1361
    :try_start_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eq p1, v1, :cond_0

    .line 1362
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 1363
    const/4 v0, 0x1

    .line 1365
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1368
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1369
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1374
    :cond_1
    :goto_0
    return-void

    .line 1365
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1370
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlightEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1349
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 1350
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1196
    const/4 v0, 0x1

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1197
    return-void
.end method

.method protected setSelection(IZ)V
    .locals 1
    .parameter "index"
    .parameter "reLayout"

    .prologue
    .line 1201
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1202
    return-void
.end method

.method public setSelection(IZI)V
    .locals 2
    .parameter "idx"
    .parameter "reLayout"
    .parameter "posY"

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1208
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1209
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 1210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    if-eqz p2, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1216
    :cond_0
    return-void

    .line 1210
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
    .line 1307
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1308
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 1309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1311
    return-void

    .line 1309
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
    .line 1332
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1333
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1334
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 0
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 2744
    return-void
.end method

.method public startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 3145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v0, v1, :cond_1

    .line 3146
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 3158
    :cond_0
    :goto_0
    return-void

    .line 3149
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3150
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
    .line 2685
    const/4 v2, -0x1

    .line 2686
    .local v2, oldFirstIdx:I
    const/4 v3, 0x1

    .line 2688
    .local v3, oldFirstItemPositionY:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2690
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2691
    .local v1, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v1, :cond_0

    .line 2692
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2693
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2699
    :goto_0
    const-string v4, "oldFirstIdx"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2700
    const-string v4, "oldFirstItemPositionY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2702
    return-object v0

    .line 2696
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
    .line 2299
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 2300
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2302
    :cond_0
    return-void
.end method
