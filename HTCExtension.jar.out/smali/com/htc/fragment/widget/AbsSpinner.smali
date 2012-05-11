.class public abstract Lcom/htc/fragment/widget/AbsSpinner;
.super Lcom/htc/fragment/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/AbsSpinner$1;,
        Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;,
        Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;,
        Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;,
        Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fragment/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static MIN_WIDTH:I = 0x0

.field private static final P_LAND_FACTOR:F = 0.08f

.field private static final P_PORT_FACTOR:F = 0.22f

.field private static final T_LAND_FACTOR:F = 0.11f

.field private static final T_PORT_FACTOR:F = 0.08f


# instance fields
.field private ITEM_SIZE:I

.field private MAX_AVERAGE_COUNT:I

.field private display:Landroid/view/Display;

.field protected isPortrait:Z

.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mAnimationWidthHeight:I

.field mBlockLayoutRequests:Z

.field private mChangeWidthHeightAnimation:Z

.field private mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpandedHeight:I

.field mExpandedPos:I

.field private mExpandedWidth:I

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/htc/fragment/widget/FastScroller;

.field mFirstItemX:I

.field mFirstItemY:I

.field mHeightMeasureSpec:I

.field mHighBorder:I

.field private mIndicatorIndex:I

.field private mIsDragBinGridView:Z

.field private mLastIndicatorIndex:I

.field private mLateShrinkedFlag:Z

.field mLowBorder:I

.field final mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

.field private mReducedHeight:I

.field mReducedPos:I

.field private mReducedWidth:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mShrinkedHeight:I

.field mShrinkedPos:I

.field private mShrinkedWidth:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

.field private mWaveRunnableRunning:Z

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 805
    const/16 v0, 0x64

    sput v0, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 57
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 58
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 59
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 60
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 91
    iput-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 93
    iput-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 777
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 779
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 781
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    .line 782
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    .line 795
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 796
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 846
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 847
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    .line 850
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 851
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 852
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 854
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 855
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 927
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1045
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1047
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    .line 1279
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 110
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 111
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->initAbsSpinner()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 58
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 59
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 60
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 61
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 63
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 91
    iput-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 93
    iput-object v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 777
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 779
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 781
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    .line 782
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    .line 795
    const/16 v3, 0x3c

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 796
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 846
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 847
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    .line 850
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 851
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 852
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 854
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 855
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 927
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1045
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1047
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    .line 1279
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 121
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 122
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->initAbsSpinner()V

    .line 124
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 128
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 129
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 132
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/fragment/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return p1
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setFocusable(Z)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 145
    return-void
.end method

.method private setMaxAverageCount()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const v6, 0x3e6147ae

    const v5, 0x3da3d70a

    .line 1216
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v2

    .line 1217
    .local v2, size:I
    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v3, :cond_0

    .line 1218
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_b

    .line 1227
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v3, :cond_7

    .line 1228
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_6

    .line 1229
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 1230
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    .line 1246
    :goto_1
    sget v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    div-int v3, v2, v3

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 1250
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 1252
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1254
    .local v1, oldValue:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1255
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1256
    add-int/lit8 v0, v0, 0x1

    .line 1258
    :cond_2
    if-lez v0, :cond_c

    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v3, :cond_c

    .line 1259
    div-int v3, v2, v0

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1265
    :goto_3
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    if-eq v3, v1, :cond_3

    .line 1266
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", icon count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icon size {before measure, after measure} = {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .end local v0           #count:I
    .end local v1           #oldValue:I
    :cond_3
    return-void

    .line 1216
    .end local v2           #size:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v2

    goto/16 :goto_0

    .line 1232
    .restart local v2       #size:I
    :cond_5
    const v3, 0x3de147ae

    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1234
    :cond_6
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1237
    :cond_7
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_a

    .line 1238
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 1239
    :cond_8
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1241
    :cond_9
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1243
    :cond_a
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1248
    :cond_b
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    goto/16 :goto_2

    .line 1260
    .restart local v0       #count:I
    .restart local v1       #oldValue:I
    :cond_c
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v0, v3, :cond_d

    .line 1261
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    div-int v3, v2, v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    goto/16 :goto_3

    .line 1263
    :cond_d
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    goto/16 :goto_3
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    #calls: Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->access$1400(Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;)V

    .line 1276
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    #calls: Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->access$1500(Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;)V

    .line 1277
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 655
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getDragBinGridView()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method getExpandedHeight()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method getExpandedPosition()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    return v0
.end method

.method getExpandedWidth()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method getIndicatorIndex()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    return v0
.end method

.method getLastIndicatorIndex()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    return v0
.end method

.method getLayoutParamsHeight()I
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 734
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 736
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsHeightWithNoAnimation()I
    .locals 6

    .prologue
    .line 740
    const/4 v0, -0x1

    .line 741
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 743
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 744
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    add-int/lit8 v0, v0, 0x1

    .line 747
    :cond_0
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v3, :cond_2

    .line 748
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v3

    div-int v1, v3, v0

    .line 754
    .local v1, result:I
    :goto_0
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 755
    .local v2, size:I
    if-eq v1, v2, :cond_1

    .line 756
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLayoutParamsHeightWithNoAnimation, current icon size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", icon count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_1
    return v1

    .line 750
    .end local v1           #result:I
    .end local v2           #size:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x2

    .restart local v1       #result:I
    goto :goto_0

    .line 753
    .end local v1           #result:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v1

    .restart local v1       #result:I
    goto :goto_0
.end method

.method getLayoutParamsWidth()I
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 817
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 820
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsWidthWithNoAnimation()I
    .locals 6

    .prologue
    .line 824
    const/4 v0, -0x1

    .line 825
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 827
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    add-int/lit8 v0, v0, 0x1

    .line 831
    :cond_0
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v3, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v3

    div-int v1, v3, v0

    .line 838
    .local v1, result:I
    :goto_0
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 839
    .local v2, size:I
    if-eq v1, v2, :cond_1

    .line 840
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLayoutParamsWidthWithNoAnimation, current icon size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v3, "CarouselWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", icon count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_1
    return v1

    .line 834
    .end local v1           #result:I
    .end local v2           #size:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x2

    .restart local v1       #result:I
    goto :goto_0

    .line 836
    .end local v1           #result:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    .restart local v1       #result:I
    goto :goto_0
.end method

.method getMaxCapacity()I
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    return v0
.end method

.method getReducedHeight()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method getReducedPosition()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    return v0
.end method

.method getReducedWidth()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 393
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShrinkedHeight()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    return v0
.end method

.method getShrinkedPosition()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    return v0
.end method

.method getShrinkedWidth()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/fragment/widget/FastScroller;->onScroll(Lcom/htc/fragment/widget/AbsSpinner;III)V

    .line 680
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScrollEnabled:Z

    return v0
.end method

.method isWaveRunnableRunning()Z
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onAttachedToWindow()V

    .line 689
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->onAttachedToWindow()V

    .line 692
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 717
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 720
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 722
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->onDetachedFromWindow()V

    .line 704
    :cond_0
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onDetachedFromWindow()V

    .line 705
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 665
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 670
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 232
    .local v7, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 233
    .local v0, heightMode:I
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/AdapterView;->onMeasure(II)V

    .line 234
    if-ne v7, v9, :cond_0

    if-eq v0, v9, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setMaxAverageCount()V

    .line 241
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v9, v11, :cond_6

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 242
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v9, v11, :cond_7

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    :goto_2
    iput v9, v10, Landroid/graphics/Rect;->left:I

    .line 243
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v9, v11, :cond_8

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    :goto_3
    iput v9, v10, Landroid/graphics/Rect;->right:I

    .line 244
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v9, v11, :cond_9

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    :goto_4
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 246
    iget-boolean v9, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->handleDataChanged()V

    .line 250
    :cond_2
    const/4 v2, 0x1

    .line 251
    .local v2, needsMeasuring:Z
    const/4 v3, 0x0

    .line 252
    .local v3, preferredHeight:I
    const/4 v4, 0x0

    .line 254
    .local v4, preferredWidth:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v5

    .line 255
    .local v5, selectedPosition:I
    if-ltz v5, :cond_4

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 257
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v9, v5}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v6

    .line 258
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_3

    .line 260
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v10, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 263
    :cond_3
    if-eqz v6, :cond_4

    .line 264
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v9, v5, v6}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 275
    invoke-virtual {p0, v6, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 277
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    .line 278
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 280
    const/4 v2, 0x0

    .line 282
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v9, :cond_4

    .line 283
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v9, p0, v6, p1, p2}, Lcom/htc/fragment/widget/FastScroller;->measureTmumbView(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;II)V

    .line 284
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v9}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v9

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHighBorder:I

    .line 286
    iget-boolean v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_a

    .line 287
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v10}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 294
    .end local v6           #view:Landroid/view/View;
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 296
    iget-boolean v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_b

    .line 297
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    .line 298
    if-nez v7, :cond_5

    .line 299
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 309
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 310
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 312
    invoke-static {v3, p2}, Lcom/htc/fragment/widget/AbsSpinner;->resolveSize(II)I

    move-result v1

    .line 313
    .local v1, heightSize:I
    invoke-static {v4, p1}, Lcom/htc/fragment/widget/AbsSpinner;->resolveSize(II)I

    move-result v8

    .line 315
    .local v8, widthSize:I
    invoke-virtual {p0, v8, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 316
    iput p2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 317
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    goto/16 :goto_0

    .line 241
    .end local v1           #heightSize:I
    .end local v2           #needsMeasuring:Z
    .end local v3           #preferredHeight:I
    .end local v4           #preferredWidth:I
    .end local v5           #selectedPosition:I
    .end local v8           #widthSize:I
    :cond_6
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 242
    :cond_7
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_2

    .line 243
    :cond_8
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_3

    .line 244
    :cond_9
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_4

    .line 289
    .restart local v2       #needsMeasuring:Z
    .restart local v3       #preferredHeight:I
    .restart local v4       #preferredWidth:I
    .restart local v5       #selectedPosition:I
    .restart local v6       #view:Landroid/view/View;
    :cond_a
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v10}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_5

    .line 302
    .end local v6           #view:Landroid/view/View;
    :cond_b
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 303
    if-nez v0, :cond_5

    .line 304
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    goto :goto_6
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 548
    move-object v0, p1

    check-cast v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;

    .line 550
    .local v0, ss:Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/fragment/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 552
    iget-wide v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 553
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 554
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 555
    iget-wide v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 556
    iget v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncPosition:I

    .line 557
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncMode:I

    .line 558
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 560
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 531
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 532
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 533
    .local v0, ss:Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    .line 534
    iget-wide v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    .line 539
    :goto_0
    return-object v0

    .line 537
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/FastScroller;->onSizeChanged(IIII)V

    .line 645
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->onMeasure(II)V

    .line 646
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 447
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 448
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 449
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 450
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 454
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 455
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 457
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 458
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    iget v4, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 463
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 454
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 463
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 330
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 331
    .local v4, recycleBin:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 334
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 335
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 336
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 337
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 412
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->requestLayout()V

    .line 414
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 204
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 205
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 207
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 208
    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 209
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 211
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 212
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    .line 214
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 159
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 161
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->resetList()V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/FastScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 169
    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 170
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 172
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    .line 173
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldItemCount:I

    .line 174
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 175
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkFocus()V

    .line 177
    new-instance v1, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/fragment/widget/AdapterView;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 178
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 180
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 182
    .local v0, position:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 185
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkSelectionChanged()V

    .line 197
    .end local v0           #position:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 198
    return-void

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkFocus()V

    .line 192
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->resetList()V

    .line 194
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V
    .locals 1
    .parameter "gallery"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V

    .line 728
    return-void
.end method

.method setDragBinGridView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    .line 809
    return-void
.end method

.method setExpandedPosition(I)V
    .locals 2
    .parameter "expos"

    .prologue
    .line 860
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 862
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 867
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 868
    return-void

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    goto :goto_0
.end method

.method setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScrollEnabled:Z

    .line 609
    if-eqz p1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/fragment/widget/FastScroller;-><init>(Landroid/content/Context;Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->stop()V

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    goto :goto_0
.end method

.method setIndicatorIndex(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 911
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 912
    return-void
.end method

.method setLastIndicatorIndex(I)V
    .locals 0
    .parameter "lastin"

    .prologue
    .line 919
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 920
    return-void
.end method

.method setLateShrinkedFlag()V
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 1282
    return-void
.end method

.method protected setOrientation()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 103
    :cond_0
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 104
    return-void

    .line 103
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 363
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    .line 364
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 350
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 352
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 353
    return-void

    .line 350
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 375
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 377
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 378
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 379
    invoke-virtual {p0, v0, p2}, Lcom/htc/fragment/widget/AbsSpinner;->layout(IZ)V

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 382
    .end local v0           #delta:I
    :cond_0
    return-void
.end method

.method setShrinkedPosition(I)V
    .locals 2
    .parameter "shpos"

    .prologue
    const/4 v1, -0x1

    .line 882
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 883
    if-eq p1, v1, :cond_0

    .line 884
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setIndicatorIndex(I)V

    .line 885
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setLastIndicatorIndex(I)V

    .line 887
    :cond_0
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 888
    return-void
.end method

.method setShrinkedPosition(IZ)V
    .locals 0
    .parameter "shpos"
    .parameter "isRequestLayout"

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 876
    if-eqz p2, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 879
    :cond_0
    return-void
.end method

.method startWaveRunnable()V
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->start()V

    .line 1039
    return-void
.end method

.method startWidthHeightAnimation(II)V
    .locals 1
    .parameter "orgWidthHeight"
    .parameter "targetWidthHeight"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->start(II)V

    .line 931
    return-void
.end method
