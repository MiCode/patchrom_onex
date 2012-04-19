.class Lcom/htc/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/FastScroller$1;,
        Lcom/htc/widget/FastScroller$RecycleBin;,
        Lcom/htc/widget/FastScroller$FlingRunnable;,
        Lcom/htc/widget/FastScroller$CheckForTap;,
        Lcom/htc/widget/FastScroller$CheckForLongPress;,
        Lcom/htc/widget/FastScroller$ScrollFade;,
        Lcom/htc/widget/FastScroller$CountObserver;
    }
.end annotation


# static fields
.field private static final STATE_ANIMATION:I = 0x5

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final THUMB_INVALID_POSITION:I = -0x2


# instance fields
.field private currentPosition:I

.field private display:Landroid/view/Display;

.field private enableCube:Z

.field private isPortrait:Z

.field private isScaleAnimation:Z

.field private isSkipAnimation:Z

.field private mAnimationDuration:I

.field private mChangedBounds:Z

.field mContext:Landroid/content/Context;

.field mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentTab:I

.field private mEditorMode:Z

.field private mEnableEditorMode:Z

.field private mFirstAdd:Z

.field private mFirstVisibleOffset:I

.field private mFirstVisiblePosition:I

.field private mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

.field private mGallery:Lcom/htc/widget/AbsSpinner;

.field private mGalleryHeight:I

.field private mGalleryWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mIsWindowClose:Z

.field private mItemCount:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListAdapter:Lcom/htc/widget/BinAdapter;

.field private mOffset:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

.field private mPreviousPos:I

.field final mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

.field private mShouldStopFling:Z

.field private mState:I

.field private mThumbBottom:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbLeft:I

.field private mThumbPadding:Landroid/graphics/Rect;

.field private mThumbRight:I

.field private mThumbTop:I

.field private mThumbW:I

.field private mTouchSlopSquare:I

.field private mView:Landroid/view/View;

.field private mVisibleItem:I

.field private previousPosition:I

.field private resetScreen:Z

.field private scaleInAnimation:Landroid/view/animation/ScaleAnimation;

.field private scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

.field private skipScreen:Z

.field private final skipThumbView:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V
    .locals 5
    .parameter "context"
    .parameter "gallery"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    .line 91
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    .line 92
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->enableCube:Z

    .line 98
    iput v4, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 115
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    .line 116
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    .line 131
    iput v1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 132
    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 133
    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 144
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    .line 147
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 150
    new-instance v0, Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$RecycleBin;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    .line 222
    iput v4, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    .line 224
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    .line 225
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    .line 226
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->isScaleAnimation:Z

    .line 229
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->skipThumbView:Z

    .line 231
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->display:Landroid/view/Display;

    .line 232
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    .line 233
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    .line 330
    new-instance v0, Lcom/htc/widget/FastScroller$CountObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/FastScroller$CountObserver;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    .line 1778
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    .line 1827
    iput v4, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    .line 1828
    iput v4, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    .line 158
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    .line 159
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->setOrientation()V

    .line 161
    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    .line 162
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 163
    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 164
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    .line 165
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 167
    new-instance v0, Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$FlingRunnable;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isScaleAnimation:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->isScaleAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/widget/FastScroller;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/widget/FastScroller;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->endAnimation(IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    return v0
.end method

.method private cancel()V
    .locals 26

    .prologue
    .line 863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v20, v22, v23

    .line 866
    .local v20, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v3, v22, v23

    .line 867
    .local v3, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v18, v0

    .line 869
    .local v18, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    div-int/lit8 v23, v18, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 871
    .local v12, pos:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 872
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 874
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v17

    .line 875
    .local v17, totalItemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 876
    .local v16, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v6, v22, v23

    .line 878
    .local v6, dataArea:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_0

    .line 879
    add-int/lit8 v12, v17, -0x1

    .line 881
    :cond_0
    int-to-float v0, v12

    move/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 882
    .local v5, alignment:F
    int-to-float v0, v3

    move/from16 v22, v0

    sub-float v14, v5, v22

    .line 884
    .local v14, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    if-gez v22, :cond_1

    .line 886
    const/4 v14, 0x0

    .line 887
    const/4 v5, 0x0

    .line 888
    const/4 v12, -0x1

    .line 891
    :cond_1
    mul-int v22, v17, v11

    sub-int v22, v22, v6

    if-lez v22, :cond_2

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    float-to-int v0, v14

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 904
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 949
    .end local v3           #aX:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v14           #scrollX:F
    .end local v18           #viewHeight:I
    .end local v20           #x:I
    :goto_1
    return-void

    .line 898
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v14       #scrollX:F
    .restart local v18       #viewHeight:I
    .restart local v20       #x:I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 899
    .local v13, previous:I
    mul-int v22, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 901
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    sub-int v23, v7, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_0

    .line 908
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v13           #previous:I
    .end local v14           #scrollX:F
    .end local v16           #thumbArea:I
    .end local v17           #totalItemCount:I
    .end local v18           #viewHeight:I
    .end local v20           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v21, v22, v23

    .line 909
    .local v21, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 910
    .local v4, aY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v19, v0

    .line 912
    .local v19, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 914
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 915
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 917
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v17

    .line 918
    .restart local v17       #totalItemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 919
    .restart local v16       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v6, v22, v23

    .line 921
    .restart local v6       #dataArea:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_4

    .line 922
    add-int/lit8 v12, v17, -0x1

    .line 924
    :cond_4
    int-to-float v0, v12

    move/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 925
    .restart local v5       #alignment:F
    int-to-float v0, v4

    move/from16 v22, v0

    sub-float v15, v5, v22

    .line 927
    .local v15, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    if-gez v22, :cond_5

    .line 929
    const/4 v15, 0x0

    .line 930
    const/4 v5, 0x0

    .line 931
    const/4 v12, -0x1

    .line 934
    :cond_5
    mul-int v22, v17, v10

    sub-int v22, v22, v6

    if-lez v22, :cond_6

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    float-to-int v0, v15

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 947
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    goto/16 :goto_1

    .line 941
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 942
    .restart local v13       #previous:I
    mul-int v22, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 944
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    sub-int v23, v7, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_2
.end method

.method private endAnimation(IZ)V
    .locals 6
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    .line 1804
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1805
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 1806
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 1807
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, p1, v3

    .line 1808
    .local v1, selectedIndex:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1809
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1810
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, p1, v4, v5}, Lcom/htc/widget/AbsSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1818
    .end local v0           #adapter:Landroid/widget/SpinnerAdapter;
    .end local v1           #selectedIndex:I
    .end local v2           #v:Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1819
    invoke-virtual {p0, p1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1822
    :cond_1
    return-void

    .line 1813
    .restart local v0       #adapter:Landroid/widget/SpinnerAdapter;
    .restart local v1       #selectedIndex:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    const-string v3, "FastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endAnimation:: Bad gallery view is null at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " firstVisiblePos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ensureAdapter()V
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    .line 2018
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_subnav_selector_tab"

    const v4, 0x208019a

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 301
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    .line 303
    new-instance v2, Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/widget/FastScroller$ScrollFade;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    .line 305
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 307
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 308
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 309
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    .line 310
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1747
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1756
    :cond_0
    return-void
.end method

.method private resetScreenView(Z)V
    .locals 8
    .parameter "forceReset"

    .prologue
    const v7, 0x2020061

    .line 1864
    iget v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    iput v3, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    .line 1867
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v3, :cond_3

    .line 1868
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    .line 1873
    :goto_0
    iget v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_2

    .line 1875
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v1

    .line 1877
    .local v1, firstPosition:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1878
    .local v0, currentChildView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1881
    .local v2, previousChildView:Landroid/view/View;
    const-string v3, "Carousel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " previous:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/FastScroller;->previousPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    if-eqz v2, :cond_1

    .line 1886
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselTextView;->enableBrightScreen(Z)V

    .line 1889
    :cond_1
    if-eqz v0, :cond_2

    .line 1890
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselTextView;->enableBrightScreen(Z)V

    .line 1892
    .end local v0           #currentChildView:Landroid/view/View;
    .end local v1           #firstPosition:I
    .end local v2           #previousChildView:Landroid/view/View;
    :cond_2
    return-void

    .line 1870
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/FastScroller;->currentPosition:I

    goto/16 :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->display:Landroid/view/Display;

    .line 240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    .line 241
    return-void
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 258
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    if-gez v0, :cond_2

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    .line 264
    :cond_2
    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 270
    iget v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setDragBinGridView(Z)V

    .line 284
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_6

    .line 285
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 290
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    goto :goto_0

    .line 274
    :cond_5
    iget v0, p0, Lcom/htc/widget/FastScroller;->widgetSpace:I

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 275
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    goto :goto_1

    .line 287
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    goto :goto_2
.end method


# virtual methods
.method addSelectedView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1178
    return-void
.end method

.method adjustGallery(I)V
    .locals 11
    .parameter "xy"

    .prologue
    .line 961
    iget-boolean v9, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v9, :cond_1

    .line 963
    iget v4, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 964
    .local v4, itemWidth:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 966
    .local v2, galleryWidth:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 967
    .local v0, dataArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v7, v9, v10

    .line 968
    .local v7, thumbArea:I
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    .line 970
    .local v8, totalItemCount:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v10, v7, v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-int v10, v8, v4

    sub-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 972
    .local v5, scrollX:F
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v7, v9

    if-gez v9, :cond_0

    .line 973
    const/4 v5, 0x0

    .line 975
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v9, Lcom/htc/widget/Gallery;

    float-to-int v10, v5

    invoke-virtual {v9, v10}, Lcom/htc/widget/Gallery;->scrollTo(I)V

    .line 993
    .end local v2           #galleryWidth:I
    .end local v4           #itemWidth:I
    .end local v5           #scrollX:F
    :goto_0
    return-void

    .line 979
    .end local v0           #dataArea:I
    .end local v7           #thumbArea:I
    .end local v8           #totalItemCount:I
    :cond_1
    iget v3, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 980
    .local v3, itemHeight:I
    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 982
    .local v1, galleryHeight:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v1, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 983
    .restart local v0       #dataArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v1, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int v7, v9, v10

    .line 984
    .restart local v7       #thumbArea:I
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    .line 986
    .restart local v8       #totalItemCount:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v10, v7, v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-int v10, v8, v3

    sub-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v6, v9, v10

    .line 988
    .local v6, scrollY:F
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v9, v7, v9

    if-gez v9, :cond_2

    .line 989
    const/4 v6, 0x0

    .line 991
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v9, Lcom/htc/widget/Gallery;

    float-to-int v10, v6

    invoke-virtual {v9, v10}, Lcom/htc/widget/Gallery;->scrollTo(I)V

    goto :goto_0
.end method

.method calibrateThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2033
    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 2034
    return-void
.end method

.method cancelAnimation()V
    .locals 1

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 2499
    :cond_0
    return-void
.end method

.method clearCache()V
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$RecycleBin;->clear()V

    .line 2039
    return-void
.end method

.method closeScreen(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1141
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    if-eqz v3, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 1146
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 1152
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v3, :cond_2

    .line 1154
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1156
    .local v1, content:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1157
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1161
    .end local v1           #content:Landroid/widget/FrameLayout;
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/FastScroller;->enableCube:Z

    if-ne v3, v4, :cond_3

    .line 1163
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCubeSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1165
    .local v2, cubeSurfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 1166
    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1170
    .end local v2           #cubeSurfaceView:Landroid/view/SurfaceView;
    :cond_3
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 1171
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/CarouselActivity;->onTabEndSliding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method closeThumb()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1790
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 1791
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 1792
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1793
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1794
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    .line 1795
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1796
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 367
    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-nez v6, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 371
    .local v4, x:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 373
    .local v5, y:I
    iget v3, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 374
    .local v3, viewWidth:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 375
    .local v2, viewHeight:I
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    .line 377
    .local v1, scrollFade:Lcom/htc/widget/FastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 378
    .local v0, alpha:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-ne v6, v11, :cond_2

    .line 380
    invoke-virtual {v1}, Lcom/htc/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 381
    int-to-float v6, v0

    const/high16 v7, 0x42ff

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 406
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 408
    :cond_3
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v6, :cond_5

    .line 411
    int-to-float v6, v4

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 451
    :goto_1
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    if-ne v6, v10, :cond_4

    .line 453
    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    .line 454
    invoke-direct {p0, v10}, Lcom/htc/widget/FastScroller;->resetScreenView(Z)V

    .line 457
    :cond_4
    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-ne v6, v11, :cond_0

    .line 459
    if-nez v0, :cond_6

    .line 460
    invoke-virtual {p0, v9}, Lcom/htc/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 431
    :cond_5
    int-to-float v6, v5

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 463
    :cond_6
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v6, :cond_7

    .line 464
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v2}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 466
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v7, v5, v3, v8}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0
.end method

.method getFirstVisibleOffset()I
    .locals 1

    .prologue
    .line 2011
    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    return v0
.end method

.method getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 2007
    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 2003
    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEditorMode()Z
    .locals 1

    .prologue
    .line 1799
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 953
    iget-boolean v2, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v2, :cond_2

    .line 954
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 956
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 954
    goto :goto_0

    .line 956
    :cond_2
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeThumbView(Z)Landroid/view/View;
    .locals 1
    .parameter "reset"

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1834
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/FastScroller;->resetScreenView(Z)V

    .line 1837
    const/4 v0, 0x0

    return-object v0
.end method

.method final measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V
    .locals 16
    .parameter "parent"
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 1896
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 1899
    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v13, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1900
    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v13, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1902
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    .line 1903
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    .line 1904
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    .line 1905
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    .line 1907
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v13, :cond_4

    .line 1909
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 1911
    .local v6, itemWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    .line 1912
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 1913
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    .line 1915
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1916
    .local v3, galleryWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v1, v13, v14

    .line 1917
    .local v1, dataArea:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v9, v13, v14

    .line 1918
    .local v9, thumbArea:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    .line 1920
    .local v12, totalItemCount:I
    if-ltz v1, :cond_0

    if-gez v9, :cond_1

    .line 1922
    :cond_0
    const/4 v1, 0x0

    .line 1923
    const/4 v9, 0x0

    .line 1926
    :cond_1
    mul-int v13, v12, v6

    sub-int/2addr v13, v1

    if-lez v13, :cond_3

    .line 1928
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1929
    .local v4, index:I
    int-to-float v13, v4

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    mul-float v10, v13, v14

    .line 1930
    .local v10, thumbX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v10, v13

    mul-int v14, v12, v6

    sub-int/2addr v14, v1

    int-to-float v14, v14

    mul-float v7, v13, v14

    .line 1933
    .local v7, scrollX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v13, v9, v13

    if-gez v13, :cond_2

    .line 1935
    const/4 v10, 0x0

    .line 1936
    const/4 v7, 0x0

    .line 1939
    :cond_2
    int-to-float v13, v6

    div-float v13, v7, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1940
    neg-int v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v6

    int-to-float v14, v14

    sub-float/2addr v14, v7

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1941
    float-to-int v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1998
    .end local v3           #galleryWidth:I
    .end local v6           #itemWidth:I
    .end local v7           #scrollX:F
    .end local v10           #thumbX:F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 1999
    return-void

    .line 1945
    .end local v4           #index:I
    .restart local v3       #galleryWidth:I
    .restart local v6       #itemWidth:I
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1946
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1948
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1949
    .restart local v4       #index:I
    mul-int v13, v4, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    .line 1954
    .end local v1           #dataArea:I
    .end local v3           #galleryWidth:I
    .end local v4           #index:I
    .end local v6           #itemWidth:I
    .end local v9           #thumbArea:I
    .end local v12           #totalItemCount:I
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 1956
    .local v5, itemHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    .line 1957
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1958
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    .line 1960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1961
    .local v2, galleryHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v1, v13, v14

    .line 1962
    .restart local v1       #dataArea:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int v9, v13, v14

    .line 1963
    .restart local v9       #thumbArea:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    .line 1965
    .restart local v12       #totalItemCount:I
    if-ltz v1, :cond_5

    if-gez v9, :cond_6

    .line 1967
    :cond_5
    const/4 v1, 0x0

    .line 1968
    const/4 v9, 0x0

    .line 1971
    :cond_6
    mul-int v13, v12, v5

    sub-int/2addr v13, v1

    if-lez v13, :cond_8

    .line 1973
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1974
    .restart local v4       #index:I
    int-to-float v13, v4

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    mul-float v11, v13, v14

    .line 1975
    .local v11, thumbY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v11, v13

    mul-int v14, v12, v5

    sub-int/2addr v14, v1

    int-to-float v14, v14

    mul-float v8, v13, v14

    .line 1978
    .local v8, scrollY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v13, v9, v13

    if-gez v13, :cond_7

    .line 1980
    const/4 v11, 0x0

    .line 1981
    const/4 v8, 0x0

    .line 1984
    :cond_7
    int-to-float v13, v5

    div-float v13, v8, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1985
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v5

    int-to-float v14, v14

    sub-float/2addr v14, v8

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1986
    float-to-int v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto/16 :goto_0

    .line 1990
    .end local v4           #index:I
    .end local v8           #scrollY:F
    .end local v11           #thumbY:F
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1991
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1993
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1994
    .restart local v4       #index:I
    mul-int v13, v4, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto/16 :goto_0
.end method

.method moveNext()Z
    .locals 27

    .prologue
    .line 2043
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v21, v23, v24

    .line 2046
    .local v21, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v19, v0

    .line 2048
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2049
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2051
    .local v18, totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_2

    add-int/lit8 v13, v12, 0x1

    .end local v12           #pos:I
    .local v13, pos:I
    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_1

    .line 2053
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2055
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 2056
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 2057
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2058
    .local v17, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2060
    .local v6, dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2061
    .local v5, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    .line 2062
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v23, v0

    sub-float v15, v5, v23

    .line 2065
    .local v15, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_8

    .line 2067
    const/4 v15, 0x0

    .line 2068
    const/4 v5, 0x0

    .line 2069
    const/4 v12, -0x1

    .line 2072
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_0
    mul-int v23, v18, v11

    sub-int v23, v23, v6

    if-lez v23, :cond_0

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    float-to-int v0, v15

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2080
    :goto_1
    const/16 v23, 0x1

    .line 2125
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :goto_2
    return v23

    .line 2076
    .restart local v3       #aX:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v15       #scrollX:F
    .restart local v17       #thumbArea:I
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 2077
    .local v14, previous:I
    mul-int v23, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2078
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_1
    move v12, v13

    .line 2083
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 2087
    .end local v12           #pos:I
    .end local v18           #totalItemCount:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 2088
    .local v22, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v20, v0

    .line 2090
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2091
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2093
    .restart local v18       #totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_6

    add-int/lit8 v13, v12, 0x1

    .end local v12           #pos:I
    .restart local v13       #pos:I
    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_5

    .line 2095
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2097
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 2098
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 2099
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2100
    .restart local v17       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2102
    .restart local v6       #dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2103
    .restart local v5       #alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 2104
    .local v4, aY:I
    int-to-float v0, v4

    move/from16 v23, v0

    sub-float v16, v5, v23

    .line 2107
    .local v16, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_7

    .line 2109
    const/16 v16, 0x0

    .line 2110
    const/4 v5, 0x0

    .line 2111
    const/4 v12, -0x1

    .line 2114
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_3
    mul-int v23, v18, v10

    sub-int v23, v23, v6

    if-lez v23, :cond_4

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2122
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 2118
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 2119
    .restart local v14       #previous:I
    mul-int v23, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2120
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_4

    .end local v4           #aY:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v16           #scrollY:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_5
    move v12, v13

    .line 2125
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .end local v12           #pos:I
    .restart local v4       #aY:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v8       #galleryHeight:I
    .restart local v10       #itemHeight:I
    .restart local v13       #pos:I
    .restart local v16       #scrollY:F
    .restart local v17       #thumbArea:I
    :cond_7
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto :goto_3

    .end local v4           #aY:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v16           #scrollY:F
    .end local v20           #viewWidth:I
    .end local v22           #y:I
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v13       #pos:I
    .restart local v15       #scrollX:F
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_8
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_0
.end method

.method movePrevious()Z
    .locals 27

    .prologue
    .line 2131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v21, v23, v24

    .line 2134
    .local v21, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v19, v0

    .line 2136
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2137
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2139
    .local v18, totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_2

    add-int/lit8 v13, v12, -0x1

    .end local v12           #pos:I
    .local v13, pos:I
    if-lez v12, :cond_1

    .line 2141
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2143
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 2144
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 2145
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2146
    .local v17, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2148
    .local v6, dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2149
    .local v5, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    .line 2150
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v23, v0

    sub-float v15, v5, v23

    .line 2153
    .local v15, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_8

    .line 2155
    const/4 v15, 0x0

    .line 2156
    const/4 v5, 0x0

    .line 2157
    const/4 v12, -0x1

    .line 2160
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_0
    mul-int v23, v18, v11

    sub-int v23, v23, v6

    if-lez v23, :cond_0

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    float-to-int v0, v15

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2168
    :goto_1
    const/16 v23, 0x1

    .line 2213
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :goto_2
    return v23

    .line 2164
    .restart local v3       #aX:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v15       #scrollX:F
    .restart local v17       #thumbArea:I
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 2165
    .local v14, previous:I
    mul-int v23, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2166
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_1
    move v12, v13

    .line 2171
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 2175
    .end local v12           #pos:I
    .end local v18           #totalItemCount:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 2176
    .local v22, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v20, v0

    .line 2178
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2179
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2181
    .restart local v18       #totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_6

    add-int/lit8 v13, v12, -0x1

    .end local v12           #pos:I
    .restart local v13       #pos:I
    if-lez v12, :cond_5

    .line 2183
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 2185
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 2186
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 2187
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2188
    .restart local v17       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2190
    .restart local v6       #dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2191
    .restart local v5       #alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 2192
    .local v4, aY:I
    int-to-float v0, v4

    move/from16 v23, v0

    sub-float v16, v5, v23

    .line 2195
    .local v16, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_7

    .line 2197
    const/16 v16, 0x0

    .line 2198
    const/4 v5, 0x0

    .line 2199
    const/4 v12, -0x1

    .line 2202
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_3
    mul-int v23, v18, v10

    sub-int v23, v23, v6

    if-lez v23, :cond_4

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2210
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 2206
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 2207
    .restart local v14       #previous:I
    mul-int v23, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2208
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_4

    .end local v4           #aY:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v16           #scrollY:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_5
    move v12, v13

    .line 2213
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .end local v12           #pos:I
    .restart local v4       #aY:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v8       #galleryHeight:I
    .restart local v10       #itemHeight:I
    .restart local v13       #pos:I
    .restart local v16       #scrollY:F
    .restart local v17       #thumbArea:I
    :cond_7
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto :goto_3

    .end local v4           #aY:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v16           #scrollY:F
    .end local v20           #viewWidth:I
    .end local v22           #y:I
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v13       #pos:I
    .restart local v15       #scrollX:F
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_8
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_0
.end method

.method onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1183
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1199
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->setOrientation()V

    .line 1200
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->isSkipAnimation:Z

    .line 1202
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1205
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1207
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1209
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090019

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_2

    .line 1213
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 1216
    :goto_0
    return-void

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 1187
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 1188
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    if-nez v0, :cond_0

    .line 1189
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1194
    return-void
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 549
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 552
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/AbsSpinner;III)V
    .locals 12
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 487
    sub-int v9, p4, p3

    if-ltz v9, :cond_1

    iget v9, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 489
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 491
    .local v1, firstItem:Landroid/view/View;
    iget-boolean v9, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v9, :cond_4

    .line 493
    iget v7, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 494
    .local v7, itemWidth:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 495
    .local v5, galleryWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 497
    .local v3, firstVisibleItemRight:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v8, v9, v10

    .line 498
    .local v8, thumbArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 500
    .local v0, dataArea:I
    mul-int v9, p4, v7

    sub-int/2addr v9, v0

    if-lez v9, :cond_0

    .line 502
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v8, v9

    add-int/lit8 v10, p2, 0x1

    mul-int/2addr v10, v7

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    mul-int v10, p4, v7

    sub-int/2addr v10, v0

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 506
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 507
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    :goto_0
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 508
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v10, v5, v10

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    :goto_1
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 532
    .end local v3           #firstVisibleItemRight:I
    .end local v5           #galleryWidth:I
    .end local v7           #itemWidth:I
    :cond_0
    :goto_2
    iget-boolean v9, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    if-eqz v9, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 535
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    .line 539
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v8           #thumbArea:I
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    .line 541
    iget v9, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    if-ne p2, v9, :cond_7

    .line 545
    :goto_3
    return-void

    .line 507
    .restart local v0       #dataArea:I
    .restart local v1       #firstItem:Landroid/view/View;
    .restart local v3       #firstVisibleItemRight:I
    .restart local v5       #galleryWidth:I
    .restart local v7       #itemWidth:I
    .restart local v8       #thumbArea:I
    :cond_2
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    .line 508
    :cond_3
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_1

    .line 513
    .end local v0           #dataArea:I
    .end local v3           #firstVisibleItemRight:I
    .end local v5           #galleryWidth:I
    .end local v7           #itemWidth:I
    .end local v8           #thumbArea:I
    :cond_4
    iget v6, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 514
    .local v6, itemHeight:I
    iget v4, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 515
    .local v4, galleryHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 517
    .local v2, firstVisibleItemBottom:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int v8, v9, v10

    .line 518
    .restart local v8       #thumbArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 520
    .restart local v0       #dataArea:I
    mul-int v9, p4, v6

    sub-int/2addr v9, v0

    if-lez v9, :cond_0

    .line 522
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v9, v8, v9

    add-int/lit8 v10, p2, 0x1

    mul-int/2addr v10, v6

    sub-int/2addr v10, v2

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    mul-int v10, p4, v6

    sub-int/2addr v10, v0

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 526
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 527
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    if-ge v9, v10, :cond_5

    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    :goto_4
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 528
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v10, v4, v10

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_6

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    :goto_5
    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto :goto_2

    .line 527
    :cond_5
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto :goto_4

    .line 528
    :cond_6
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    goto :goto_5

    .line 544
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v2           #firstVisibleItemBottom:I
    .end local v4           #galleryHeight:I
    .end local v6           #itemHeight:I
    .end local v8           #thumbArea:I
    :cond_7
    iput p2, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    goto :goto_3
.end method

.method onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 473
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 478
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 41
    .parameter "me"

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 560
    :cond_0
    const/16 v35, 0x0

    .line 856
    :goto_0
    return v35

    .line 562
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/BinAdapter;->isDataValid()Z

    move-result v35

    if-nez v35, :cond_3

    .line 563
    :cond_2
    const/16 v35, 0x0

    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 566
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 567
    .local v9, currentX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 569
    .local v10, currentY:F
    and-int/lit16 v0, v7, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 856
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v35, 0x1

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v35

    if-eqz v35, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_1

    .line 580
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    .line 583
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 585
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    .line 586
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 592
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 594
    const/16 v35, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 598
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->showScreen()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v35, v0

    if-nez v35, :cond_8

    .line 602
    new-instance v35, Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/FastScroller$CheckForLongPress;-><init>(Lcom/htc/widget/FastScroller;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    .line 604
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/FastScroller$CheckForLongPress;->rememberSelectedTab()V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v36, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v37

    shl-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v35 .. v38}, Lcom/htc/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 613
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v35, v0

    if-nez v35, :cond_a

    .line 614
    new-instance v35, Lcom/htc/widget/FastScroller$CheckForTap;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    .line 616
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v36, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v35 .. v38}, Lcom/htc/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 617
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 620
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-nez v35, :cond_b

    .line 623
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 626
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 635
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v35, v0

    if-eqz v35, :cond_10

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    add-int v33, v35, v36

    .line 638
    .local v33, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v36, v0

    sub-int v5, v35, v36

    .line 639
    .local v5, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v31, v0

    .line 641
    .local v31, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    div-int/lit8 v36, v31, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v23

    .line 642
    .local v23, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v18, v0

    .line 643
    .local v18, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v20, v0

    .line 645
    .local v20, itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v29, v35, v36

    .line 646
    .local v29, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 647
    .local v11, dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 649
    .local v30, totalItemCount:I
    const/16 v35, -0x1

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 650
    add-int/lit8 v23, v30, -0x1

    .line 652
    :cond_d
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    add-int/lit8 v36, v30, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    sub-int v36, v29, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v8, v35, v36

    .line 653
    .local v8, alignment:F
    int-to-float v0, v5

    move/from16 v35, v0

    sub-float v27, v8, v35

    .line 655
    .local v27, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v35, v0

    sub-int v35, v29, v35

    if-gez v35, :cond_e

    .line 657
    const/16 v27, 0x0

    .line 658
    const/4 v8, 0x0

    .line 659
    const/16 v23, -0x1

    .line 662
    :cond_e
    mul-int v35, v30, v20

    sub-int v35, v35, v11

    if-lez v35, :cond_f

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v36, v0

    float-to-int v0, v8

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v38, v0

    add-int v37, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v23

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 707
    .end local v5           #aX:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v27           #scrollX:F
    .end local v31           #viewHeight:I
    .end local v33           #x:I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 710
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 666
    .restart local v5       #aX:I
    .restart local v18       #galleryWidth:I
    .restart local v20       #itemWidth:I
    .restart local v27       #scrollX:F
    .restart local v31       #viewHeight:I
    .restart local v33       #x:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v26, v0

    .line 667
    .local v26, previous:I
    mul-int v35, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v36, v0

    add-int v16, v35, v36

    .line 668
    .local v16, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    sub-int v36, v16, v26

    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v16

    move/from16 v3, v23

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto :goto_2

    .line 673
    .end local v5           #aX:I
    .end local v8           #alignment:F
    .end local v11           #dataArea:I
    .end local v16           #end:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v23           #pos:I
    .end local v26           #previous:I
    .end local v27           #scrollX:F
    .end local v29           #thumbArea:I
    .end local v30           #totalItemCount:I
    .end local v31           #viewHeight:I
    .end local v33           #x:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    add-int v34, v35, v36

    .line 674
    .local v34, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v36, v0

    sub-int v6, v35, v36

    .line 675
    .local v6, aY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v32, v0

    .line 677
    .local v32, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    div-int/lit8 v36, v32, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v23

    .line 678
    .restart local v23       #pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v17, v0

    .line 679
    .local v17, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    move/from16 v19, v0

    .line 681
    .local v19, itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v29, v35, v36

    .line 682
    .restart local v29       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 683
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 685
    .restart local v30       #totalItemCount:I
    const/16 v35, -0x1

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    .line 686
    add-int/lit8 v23, v30, -0x1

    .line 688
    :cond_11
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    add-int/lit8 v36, v30, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    sub-int v36, v29, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v8, v35, v36

    .line 689
    .restart local v8       #alignment:F
    int-to-float v0, v6

    move/from16 v35, v0

    sub-float v28, v8, v35

    .line 691
    .local v28, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v35, v0

    sub-int v35, v29, v35

    if-gez v35, :cond_12

    .line 693
    const/16 v28, 0x0

    .line 694
    const/4 v8, 0x0

    .line 695
    const/16 v23, -0x1

    .line 698
    :cond_12
    mul-int v35, v30, v19

    sub-int v35, v35, v11

    if-lez v35, :cond_13

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v36, v0

    float-to-int v0, v8

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v23

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto/16 :goto_2

    .line 702
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v26, v0

    .line 703
    .restart local v26       #previous:I
    mul-int v35, v23, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v36, v0

    add-int v16, v35, v36

    .line 704
    .restart local v16       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v35, v0

    sub-int v36, v16, v26

    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v16

    move/from16 v3, v23

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto/16 :goto_2

    .line 715
    .end local v6           #aY:I
    .end local v8           #alignment:F
    .end local v11           #dataArea:I
    .end local v16           #end:I
    .end local v17           #galleryHeight:I
    .end local v19           #itemHeight:I
    .end local v23           #pos:I
    .end local v26           #previous:I
    .end local v28           #scrollY:F
    .end local v29           #thumbArea:I
    .end local v30           #totalItemCount:I
    .end local v32           #viewWidth:I
    .end local v34           #y:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_4

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    .line 721
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 724
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    sub-float v35, v9, v35

    move/from16 v0, v35

    float-to-int v13, v0

    .line 725
    .local v13, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    sub-float v35, v10, v35

    move/from16 v0, v35

    float-to-int v14, v0

    .line 726
    .local v14, deltaY:I
    mul-int v35, v13, v13

    mul-int v36, v14, v14

    add-int v15, v35, v36

    .line 728
    .local v15, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_28

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    move/from16 v35, v0

    sub-float v27, v35, v9

    .line 730
    .restart local v27       #scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    move/from16 v35, v0

    sub-float v28, v35, v10

    .line 732
    .restart local v28       #scrollY:F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v35

    const/high16 v36, 0x3f80

    cmpl-float v35, v35, v36

    if-gez v35, :cond_15

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v35

    const/high16 v36, 0x3f80

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_1a

    .line 734
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v15, v0, :cond_16

    .line 736
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    .line 737
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 743
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v20, v0

    .line 746
    .restart local v20       #itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v18, v0

    .line 748
    .restart local v18       #galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 749
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 751
    .restart local v30       #totalItemCount:I
    mul-int v35, v30, v20

    sub-int v35, v35, v11

    if-lez v35, :cond_1c

    .line 753
    float-to-int v0, v9

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v21, v35, v36

    .line 755
    .local v21, newThumbX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    move/from16 v0, v21

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v21, v0

    .line 760
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    sub-int v35, v35, v21

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_19

    .line 761
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 757
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v35, v0

    add-int v35, v35, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v35

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    sub-int v21, v35, v36

    goto :goto_3

    .line 763
    :cond_19
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 764
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 835
    .end local v11           #dataArea:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v21           #newThumbX:I
    .end local v30           #totalItemCount:I
    :cond_1a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1b

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v15, v0, :cond_1b

    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 841
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->updateScreen()V

    .line 842
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 768
    .restart local v11       #dataArea:I
    .restart local v18       #galleryWidth:I
    .restart local v20       #itemWidth:I
    .restart local v30       #totalItemCount:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v24, v0

    .line 769
    .local v24, preThumbLeft:I
    float-to-int v0, v9

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1d

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 774
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v36, v0

    sub-int v36, v18, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1e

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v35, v0

    sub-int v35, v18, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 777
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    check-cast v35, Lcom/htc/widget/Gallery;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v35, v0

    sub-int v12, v35, v24

    .line 780
    .local v12, delta:I
    if-lez v12, :cond_1f

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    sub-int v36, v36, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 783
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v39, v0

    add-int v38, v38, v39

    sub-int v38, v38, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 788
    .end local v11           #dataArea:I
    .end local v12           #delta:I
    .end local v18           #galleryWidth:I
    .end local v20           #itemWidth:I
    .end local v24           #preThumbLeft:I
    .end local v30           #totalItemCount:I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    move/from16 v19, v0

    .line 789
    .restart local v19       #itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v17, v0

    .line 791
    .restart local v17       #galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    sub-int v11, v35, v36

    .line 792
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v30

    .line 794
    .restart local v30       #totalItemCount:I
    mul-int v35, v30, v19

    sub-int v35, v35, v11

    if-lez v35, :cond_24

    .line 796
    float-to-int v0, v10

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v22, v35, v36

    .line 798
    .local v22, newThumbY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_22

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    .line 803
    :cond_21
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    sub-int v35, v35, v22

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_23

    .line 804
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 800
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v35, v0

    add-int v35, v35, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v35

    move/from16 v1, v17

    if-le v0, v1, :cond_21

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    sub-int v22, v35, v36

    goto :goto_5

    .line 806
    :cond_23
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 807
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    goto/16 :goto_4

    .line 811
    .end local v22           #newThumbY:I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v25, v0

    .line 812
    .local v25, preThumbTop:I
    float-to-int v0, v10

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_25

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 817
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v36, v0

    sub-int v36, v17, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_26

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v35, v0

    sub-int v35, v17, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 820
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    check-cast v35, Lcom/htc/widget/Gallery;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v35, v0

    sub-int v12, v35, v25

    .line 823
    .restart local v12       #delta:I
    if-lez v12, :cond_27

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    sub-int v37, v37, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v40, v0

    add-int v39, v39, v40

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 826
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbH:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v12

    invoke-virtual/range {v35 .. v39}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 844
    .end local v11           #dataArea:I
    .end local v12           #delta:I
    .end local v17           #galleryHeight:I
    .end local v19           #itemHeight:I
    .end local v25           #preThumbTop:I
    .end local v27           #scrollX:F
    .end local v28           #scrollY:F
    .end local v30           #totalItemCount:I
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v15, v0, :cond_4

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    goto/16 :goto_1

    .line 853
    .end local v13           #deltaX:I
    .end local v14           #deltaY:I
    .end local v15           #distance:I
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    goto/16 :goto_1

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method performLongClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1762
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Lcom/htc/widget/CarouselUtil;->isDataStorageFull(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/widget/CarouselSkinUtil;->isDefaultNoEditorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1764
    :cond_0
    const/4 v0, 0x0

    .line 1773
    :goto_0
    return v0

    .line 1766
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 1767
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1, v1}, Lcom/htc/widget/AbsSpinner;->performHapticFeedback(II)Z

    .line 1769
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->onStartTemporaryDetach()V

    .line 1770
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 1771
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1772
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    move v0, v1

    .line 1773
    goto :goto_0
.end method

.method setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    .line 315
    instance-of v0, p1, Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    :cond_0
    check-cast p1, Lcom/htc/widget/BinAdapter;

    .end local p1
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    .line 321
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 323
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090019

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 327
    .restart local p1
    :cond_2
    iput-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    goto :goto_0
.end method

.method setCurrentThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2023
    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 2024
    return-void
.end method

.method setEditorMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2028
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    .line 2029
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/FastScroller;->mState:I

    .line 203
    :cond_0
    return-void

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    .line 181
    :pswitch_2
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 186
    :cond_1
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 192
    :pswitch_4
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbRight:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method showScreen()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1045
    const/4 v3, -0x1

    .line 1047
    .local v3, position:I
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v8}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 1049
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    iput-boolean v11, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 1064
    iget-boolean v8, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v8, :cond_4

    .line 1066
    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 1067
    .local v6, x:I
    iget v4, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1069
    .local v4, viewHeight:I
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    .line 1080
    .end local v4           #viewHeight:I
    .end local v6           #x:I
    :goto_0
    if-eq v3, v10, :cond_0

    .line 1081
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v8, v3}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/CarouselActivity;->onTabStartSliding(Ljava/lang/String;)V

    .line 1084
    :cond_0
    if-eq v3, v10, :cond_2

    iget-boolean v8, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v8, :cond_2

    .line 1086
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1088
    .local v1, content:Landroid/widget/FrameLayout;
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1089
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1090
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1092
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1093
    iput v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1094
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v8, v3, v9}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    .line 1098
    .end local v1           #content:Landroid/widget/FrameLayout;
    :cond_2
    if-eq v3, v10, :cond_3

    iget-boolean v8, p0, Lcom/htc/widget/FastScroller;->enableCube:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1100
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCubeSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1102
    .local v2, cubeSurfaceView:Landroid/view/SurfaceView;
    iput v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1103
    invoke-virtual {v2}, Landroid/view/SurfaceView;->bringToFront()V

    .line 1104
    invoke-virtual {v2, v11}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1106
    .end local v2           #cubeSurfaceView:Landroid/view/SurfaceView;
    :cond_3
    return-void

    .line 1073
    :cond_4
    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 1074
    .local v7, y:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1076
    .local v5, viewWidth:I
    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v9, v5, 0x2

    invoke-virtual {v8, v9, v7}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    goto :goto_0
.end method

.method showThumb()V
    .locals 1

    .prologue
    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->resetScreen:Z

    .line 1783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 1784
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1785
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->postInvalidate()V

    .line 1786
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 354
    return-void
.end method

.method updateScreen()V
    .locals 7

    .prologue
    .line 1110
    const/4 v0, -0x1

    .line 1113
    .local v0, position:I
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller;->isPortrait:Z

    if-eqz v5, :cond_1

    .line 1115
    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 1116
    .local v3, x:I
    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1118
    .local v1, viewHeight:I
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v3, v6}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 1129
    .end local v1           #viewHeight:I
    .end local v3           #x:I
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    iget v5, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    if-eq v0, v5, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 1132
    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 1134
    iget-boolean v5, p0, Lcom/htc/widget/FastScroller;->skipScreen:Z

    if-nez v5, :cond_0

    .line 1135
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v5, v0, v6}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    .line 1137
    :cond_0
    return-void

    .line 1122
    :cond_1
    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 1123
    .local v4, y:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1125
    .local v2, viewWidth:I
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    goto :goto_0
.end method
