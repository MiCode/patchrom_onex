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
    .line 806
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

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 58
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 59
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 60
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 61
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 92
    iput-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 94
    iput-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 778
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 780
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 782
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    .line 783
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    .line 796
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 797
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 847
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 848
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    .line 851
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 852
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 853
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 855
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 856
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 928
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1046
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1048
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    .line 1280
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 111
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 112
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->initAbsSpinner()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
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

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 59
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 60
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 61
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 62
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 64
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 92
    iput-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 94
    iput-object v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 778
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 780
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 782
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    .line 783
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    .line 796
    const/16 v3, 0x3c

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 797
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 847
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 848
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    .line 851
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 852
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 853
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 855
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 856
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 928
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1046
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1048
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    .line 1280
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 122
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 123
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->initAbsSpinner()V

    .line 125
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 129
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 130
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 133
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 137
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/fragment/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return p1
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setFocusable(Z)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 146
    return-void
.end method

.method private setMaxAverageCount()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const v6, 0x3e6147ae

    const v5, 0x3da3d70a

    .line 1217
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v2

    .line 1218
    .local v2, size:I
    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v3, :cond_0

    .line 1219
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_b

    .line 1228
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v3, :cond_7

    .line 1229
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_6

    .line 1230
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 1231
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    .line 1247
    :goto_1
    sget v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    div-int v3, v2, v3

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 1251
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 1253
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1255
    .local v1, oldValue:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1256
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1257
    add-int/lit8 v0, v0, 0x1

    .line 1259
    :cond_2
    if-lez v0, :cond_c

    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v3, :cond_c

    .line 1260
    div-int v3, v2, v0

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1266
    :goto_3
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    if-eq v3, v1, :cond_3

    .line 1267
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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v0           #count:I
    .end local v1           #oldValue:I
    :cond_3
    return-void

    .line 1217
    .end local v2           #size:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v2

    goto/16 :goto_0

    .line 1233
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

    .line 1235
    :cond_6
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1238
    :cond_7
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_a

    .line 1239
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 1240
    :cond_8
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1242
    :cond_9
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1244
    :cond_a
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/htc/fragment/widget/AbsSpinner;->MIN_WIDTH:I

    goto/16 :goto_1

    .line 1249
    :cond_b
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    goto/16 :goto_2

    .line 1261
    .restart local v0       #count:I
    .restart local v1       #oldValue:I
    :cond_c
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v0, v3, :cond_d

    .line 1262
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    div-int v3, v2, v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    goto/16 :goto_3

    .line 1264
    :cond_d
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    goto/16 :goto_3
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    #calls: Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->access$1400(Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;)V

    .line 1277
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    #calls: Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->access$1500(Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;)V

    .line 1278
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 655
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 656
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getDragBinGridView()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method getExpandedHeight()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method getExpandedPosition()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    return v0
.end method

.method getExpandedWidth()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method getIndicatorIndex()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    return v0
.end method

.method getLastIndicatorIndex()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    return v0
.end method

.method getLayoutParamsHeight()I
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 735
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 737
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
    .line 741
    const/4 v0, -0x1

    .line 742
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 744
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 745
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    add-int/lit8 v0, v0, 0x1

    .line 748
    :cond_0
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v3, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v3

    div-int v1, v3, v0

    .line 755
    .local v1, result:I
    :goto_0
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 756
    .local v2, size:I
    if-eq v1, v2, :cond_1

    .line 757
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

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
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

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_1
    return v1

    .line 751
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

    .line 754
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
    .line 817
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 818
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 821
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
    .line 825
    const/4 v0, -0x1

    .line 826
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 827
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 828
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 829
    add-int/lit8 v0, v0, 0x1

    .line 832
    :cond_0
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v3, :cond_2

    .line 833
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v3

    div-int v1, v3, v0

    .line 839
    .local v1, result:I
    :goto_0
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 840
    .local v2, size:I
    if-eq v1, v2, :cond_1

    .line 841
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

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
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

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_1
    return v1

    .line 835
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

    .line 837
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
    .line 1287
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    return v0
.end method

.method getReducedHeight()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method getReducedPosition()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    return v0
.end method

.method getReducedWidth()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShrinkedHeight()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    return v0
.end method

.method getShrinkedPosition()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    return v0
.end method

.method getShrinkedWidth()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 678
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/fragment/widget/FastScroller;->onScroll(Lcom/htc/fragment/widget/AbsSpinner;III)V

    .line 681
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScrollEnabled:Z

    return v0
.end method

.method isWaveRunnableRunning()Z
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onAttachedToWindow()V

    .line 690
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->onAttachedToWindow()V

    .line 693
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 716
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 718
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 721
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 723
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->onDetachedFromWindow()V

    .line 705
    :cond_0
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onDetachedFromWindow()V

    .line 706
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 664
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 666
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 667
    const/4 v1, 0x1

    .line 671
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

    .line 232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 233
    .local v7, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 234
    .local v0, heightMode:I
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/AdapterView;->onMeasure(II)V

    .line 235
    if-ne v7, v9, :cond_0

    if-eq v0, v9, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setMaxAverageCount()V

    .line 242
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v9, v11, :cond_6

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 243
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v9, v11, :cond_7

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    :goto_2
    iput v9, v10, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v9, v11, :cond_8

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    :goto_3
    iput v9, v10, Landroid/graphics/Rect;->right:I

    .line 245
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v9, v11, :cond_9

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    :goto_4
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 247
    iget-boolean v9, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->handleDataChanged()V

    .line 251
    :cond_2
    const/4 v2, 0x1

    .line 252
    .local v2, needsMeasuring:Z
    const/4 v3, 0x0

    .line 253
    .local v3, preferredHeight:I
    const/4 v4, 0x0

    .line 255
    .local v4, preferredWidth:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v5

    .line 256
    .local v5, selectedPosition:I
    if-ltz v5, :cond_4

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 258
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v9, v5}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v6

    .line 259
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_3

    .line 261
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v10, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 264
    :cond_3
    if-eqz v6, :cond_4

    .line 265
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v9, v5, v6}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 276
    invoke-virtual {p0, v6, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 278
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    .line 279
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 281
    const/4 v2, 0x0

    .line 283
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v9, :cond_4

    .line 284
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v9, p0, v6, p1, p2}, Lcom/htc/fragment/widget/FastScroller;->measureTmumbView(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;II)V

    .line 285
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v9}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v9

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHighBorder:I

    .line 287
    iget-boolean v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_a

    .line 288
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v10}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 295
    .end local v6           #view:Landroid/view/View;
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 297
    iget-boolean v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_b

    .line 298
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v3, v9, v10

    .line 299
    if-nez v7, :cond_5

    .line 300
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 310
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 311
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 313
    invoke-static {v3, p2}, Lcom/htc/fragment/widget/AbsSpinner;->resolveSize(II)I

    move-result v1

    .line 314
    .local v1, heightSize:I
    invoke-static {v4, p1}, Lcom/htc/fragment/widget/AbsSpinner;->resolveSize(II)I

    move-result v8

    .line 316
    .local v8, widthSize:I
    invoke-virtual {p0, v8, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 317
    iput p2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 318
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    goto/16 :goto_0

    .line 242
    .end local v1           #heightSize:I
    .end local v2           #needsMeasuring:Z
    .end local v3           #preferredHeight:I
    .end local v4           #preferredWidth:I
    .end local v5           #selectedPosition:I
    .end local v8           #widthSize:I
    :cond_6
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 243
    :cond_7
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_2

    .line 244
    :cond_8
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_3

    .line 245
    :cond_9
    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_4

    .line 290
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

    .line 303
    .end local v6           #view:Landroid/view/View;
    :cond_b
    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v4, v9, v10

    .line 304
    if-nez v0, :cond_5

    .line 305
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

    .line 549
    move-object v0, p1

    check-cast v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;

    .line 551
    .local v0, ss:Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/fragment/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 553
    iget-wide v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 554
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 555
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 556
    iget-wide v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncRowId:J

    .line 557
    iget v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncPosition:I

    .line 558
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSyncMode:I

    .line 559
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 561
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 532
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 533
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 534
    .local v0, ss:Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    .line 535
    iget-wide v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    .line 540
    :goto_0
    return-object v0

    .line 538
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
    .line 642
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/FastScroller;->onSizeChanged(IIII)V

    .line 646
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->onMeasure(II)V

    .line 647
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 448
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 449
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 450
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 451
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 455
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 456
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 458
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 459
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    iget v4, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 464
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 455
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 464
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 331
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 332
    .local v4, recycleBin:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 335
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 336
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 337
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 338
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 413
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->requestLayout()V

    .line 415
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 205
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 206
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 208
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 209
    iput v2, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 210
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 212
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 214
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    .line 215
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
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

    .line 160
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->resetList()V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/FastScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    :cond_1
    iput-object p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 170
    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    .line 171
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedRowId:J

    .line 173
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    .line 174
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldItemCount:I

    .line 175
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 176
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkFocus()V

    .line 178
    new-instance v1, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/fragment/widget/AdapterView;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 179
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 183
    .local v0, position:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 186
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkSelectionChanged()V

    .line 198
    .end local v0           #position:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 199
    return-void

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkFocus()V

    .line 193
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->resetList()V

    .line 195
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V
    .locals 1
    .parameter "gallery"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V

    .line 729
    return-void
.end method

.method setDragBinGridView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    .line 810
    return-void
.end method

.method setExpandedPosition(I)V
    .locals 2
    .parameter "expos"

    .prologue
    .line 861
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 863
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 868
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 869
    return-void

    .line 866
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
    .line 609
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScrollEnabled:Z

    .line 610
    if-eqz p1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/fragment/widget/FastScroller;-><init>(Landroid/content/Context;Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->stop()V

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    goto :goto_0
.end method

.method setIndicatorIndex(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 912
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 913
    return-void
.end method

.method setLastIndicatorIndex(I)V
    .locals 0
    .parameter "lastin"

    .prologue
    .line 920
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 921
    return-void
.end method

.method setLateShrinkedFlag()V
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 1283
    return-void
.end method

.method protected setOrientation()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 104
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

    .line 105
    return-void

    .line 104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 363
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 364
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    .line 365
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 351
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

    .line 353
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 354
    return-void

    .line 351
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
    .line 376
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 378
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 379
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 380
    invoke-virtual {p0, v0, p2}, Lcom/htc/fragment/widget/AbsSpinner;->layout(IZ)V

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 383
    .end local v0           #delta:I
    :cond_0
    return-void
.end method

.method setShrinkedPosition(I)V
    .locals 2
    .parameter "shpos"

    .prologue
    const/4 v1, -0x1

    .line 883
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 884
    if-eq p1, v1, :cond_0

    .line 885
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setIndicatorIndex(I)V

    .line 886
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setLastIndicatorIndex(I)V

    .line 888
    :cond_0
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 889
    return-void
.end method

.method setShrinkedPosition(IZ)V
    .locals 0
    .parameter "shpos"
    .parameter "isRequestLayout"

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 877
    if-eqz p2, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 880
    :cond_0
    return-void
.end method

.method startWaveRunnable()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->start()V

    .line 1040
    return-void
.end method

.method startWidthHeightAnimation(II)V
    .locals 1
    .parameter "orgWidthHeight"
    .parameter "targetWidthHeight"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->start(II)V

    .line 932
    return-void
.end method
