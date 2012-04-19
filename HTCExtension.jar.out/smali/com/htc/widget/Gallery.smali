.class Lcom/htc/widget/Gallery;
.super Lcom/htc/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/Gallery$LayoutParams;,
        Lcom/htc/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Carousel\'s Gallery"

.field private static final localLOGV:Z


# instance fields
.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

.field mDetachCounter:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragger:Lcom/htc/widget/DragController;

.field private mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mHighMost:I

.field private mIsFirstScroll:Z

.field private mIsForceStop:Z

.field private mLowMost:I

.field mNeedModify:Z

.field private mOrientationChangedFlag:Z

.field mReorderFrom:I

.field mReorderTo:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field protected mState:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v5, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 68
    const/16 v4, 0x190

    iput v4, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    .line 98
    new-instance v4, Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-direct {v4, p0}, Lcom/htc/widget/Gallery$FlingRunnable;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    .line 104
    new-instance v4, Lcom/htc/widget/Gallery$1;

    invoke-direct {v4, p0}, Lcom/htc/widget/Gallery$1;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 128
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 133
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 162
    const/16 v4, 0x3e9

    iput v4, p0, Lcom/htc/widget/Gallery;->mState:I

    .line 210
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    .line 212
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/Gallery;->display:Landroid/view/Display;

    .line 796
    iput-boolean v5, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 1924
    iput-boolean v5, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    .line 176
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->setOrientation()V

    .line 178
    new-instance v4, Landroid/view/GestureDetector;

    invoke-direct {v4, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 179
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 181
    sget-object v4, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 185
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 186
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setGravity(I)V

    .line 189
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 191
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->setAnimationDuration(I)V

    .line 195
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 197
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->setSpacing(I)V

    .line 199
    const/high16 v4, 0x3f80

    invoke-virtual {p0, v4}, Lcom/htc/widget/Gallery;->setUnselectedAlpha(F)V

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    iget v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    .line 204
    iget v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    .line 206
    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setFastScrollEnabled(Z)V

    .line 207
    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1157
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMeasuredWidth()I

    move-result v2

    .line 1158
    .local v2, myWidth:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1160
    .local v1, childWidth:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 1162
    .local v0, childLeft:I
    return v0

    .line 1157
    .end local v0           #childLeft:I
    .end local v1           #childWidth:I
    .end local v2           #myWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v2

    goto :goto_0

    .line 1158
    .restart local v2       #myWidth:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1147
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMeasuredHeight()I

    move-result v2

    .line 1148
    .local v2, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1150
    .local v0, childHeight:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 1152
    .local v1, childTop:I
    return v1

    .line 1147
    .end local v0           #childHeight:I
    .end local v1           #childTop:I
    .end local v2           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v2

    goto :goto_0

    .line 1148
    .restart local v2       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method private detachOffScreenChildren(Z)V
    .locals 12
    .parameter "toLowEnd"

    .prologue
    .line 674
    const/4 v9, 0x0

    .line 675
    .local v9, start:I
    const/4 v1, 0x0

    .line 677
    .local v1, count:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v8

    .line 678
    .local v8, numChildren:I
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 680
    .local v2, firstPosition:I
    if-eqz p1, :cond_4

    .line 682
    iget-boolean v10, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v10, :cond_3

    .line 684
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 685
    .local v4, galleryLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 687
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 689
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v10, v4, :cond_2

    .line 753
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v9, v1}, Lcom/htc/widget/Gallery;->detachViewsFromParent(II)V

    .line 755
    if-eqz p1, :cond_1

    .line 757
    iget v10, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    .line 758
    iget v10, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 760
    :cond_1
    return-void

    .line 693
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 694
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 685
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 700
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    .end local v7           #i:I
    :cond_3
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    .line 701
    .local v6, galleryTop:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 703
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 705
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v6, :cond_0

    .line 709
    add-int/lit8 v1, v1, 0x1

    .line 710
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 701
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 717
    .end local v0           #child:Landroid/view/View;
    .end local v6           #galleryTop:I
    .end local v7           #i:I
    :cond_4
    iget-boolean v10, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v10, :cond_5

    .line 719
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v5, v10, v11

    .line 720
    .local v5, galleryRight:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_0

    .line 722
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 724
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v5, :cond_0

    .line 728
    move v9, v7

    .line 729
    add-int/lit8 v1, v1, 0x1

    .line 730
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 720
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 736
    .end local v0           #child:Landroid/view/View;
    .end local v5           #galleryRight:I
    .end local v7           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 737
    .local v3, galleryBottom:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_0

    .line 739
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 741
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v3, :cond_0

    .line 745
    move v9, v7

    .line 746
    add-int/lit8 v1, v1, 0x1

    .line 747
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 737
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1449
    const/4 v6, 0x0

    .line 1451
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1456
    :cond_0
    if-nez v6, :cond_1

    .line 1457
    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    .line 1458
    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1461
    :cond_1
    if-eqz v6, :cond_2

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    .line 1465
    :cond_2
    return v6
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1374
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1375
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1374
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1378
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setPressed(Z)V

    .line 1379
    return-void
.end method

.method private fillToGalleryHighEnd()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 974
    iget v5, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    .line 975
    .local v5, numItems:I
    iget v3, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 976
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v4

    .line 977
    .local v4, numChildren:I
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 981
    .local v2, galleryHighEnd:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 983
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 985
    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 986
    .local v1, curPosition:I
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 995
    .local v0, curLowEndEdge:I
    :goto_1
    if-ge v0, v2, :cond_5

    if-ge v1, v5, :cond_5

    .line 997
    iget v7, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 998
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 999
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 977
    .end local v0           #curLowEndEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryHighEnd:I
    .end local v6           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v7, p0, Lcom/htc/widget/AdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v2, v7, v8

    goto :goto_0

    .line 986
    .restart local v1       #curPosition:I
    .restart local v2       #galleryHighEnd:I
    .restart local v6       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_1

    .line 990
    .end local v1           #curPosition:I
    :cond_2
    iget v7, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 991
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_3

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 992
    .restart local v0       #curLowEndEdge:I
    :goto_3
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 991
    .end local v0           #curLowEndEdge:I
    :cond_3
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_3

    .line 998
    .restart local v0       #curLowEndEdge:I
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_2

    .line 1001
    :cond_5
    return-void
.end method

.method private fillToGalleryLowEnd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 943
    iget v3, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 944
    .local v3, itemSpacing:I
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 946
    .local v2, galleryLowEnd:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 950
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 952
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 953
    .local v1, curPosition:I
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 962
    .local v0, curHighEdge:I
    :goto_1
    if-le v0, v2, :cond_5

    if-ltz v1, :cond_5

    .line 964
    iget v5, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 965
    iput v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 967
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 968
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 944
    .end local v0           #curHighEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryLowEnd:I
    .end local v4           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_0

    .line 953
    .restart local v1       #curPosition:I
    .restart local v2       #galleryLowEnd:I
    .restart local v4       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_1

    .line 957
    .end local v1           #curPosition:I
    :cond_2
    const/4 v1, 0x0

    .line 958
    .restart local v1       #curPosition:I
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 959
    .restart local v0       #curHighEdge:I
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 958
    .end local v0           #curHighEdge:I
    :cond_3
    iget v5, p0, Lcom/htc/widget/AdapterView;->mBottom:I

    iget v6, p0, Lcom/htc/widget/AdapterView;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v0, v5, v6

    goto :goto_3

    .line 967
    .restart local v0       #curHighEdge:I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_2

    .line 970
    :cond_5
    return-void
.end method

.method private getHighEndOfGallery()I
    .locals 2

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 647
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getHighEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    .line 666
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getLowEndOfGallery()I
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 637
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 639
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_0
.end method

.method private getLowEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 652
    if-nez p1, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 658
    :goto_0
    return v0

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "xy"
    .parameter "fromLowEnd"

    .prologue
    .line 1057
    iget-boolean v4, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_2

    .line 1059
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1062
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1064
    iget-boolean v4, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1065
    .local v2, childLowEnd:I
    :goto_0
    iget-boolean v4, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1067
    .local v3, length:I
    :goto_1
    iget v4, p0, Lcom/htc/widget/Gallery;->mHighMost:I

    add-int v5, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/Gallery;->mHighMost:I

    .line 1068
    iget v4, p0, Lcom/htc/widget/Gallery;->mLowMost:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/Gallery;->mLowMost:I

    .line 1069
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1080
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    .end local v3           #length:I
    .local v1, child:Landroid/view/View;
    :goto_2
    return-object v1

    .line 1064
    .end local v1           #child:Landroid/view/View;
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 1065
    .restart local v2       #childLowEnd:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_1

    .line 1075
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1077
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1078
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1080
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_2
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 601
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    :cond_0
    return-void
.end method

.method private offsetChildrenLowEndAndHighEnd(III)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "offset"

    .prologue
    .line 618
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, v2

    .line 619
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v2

    .line 621
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_2

    .line 623
    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 626
    iget-boolean v2, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 621
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 632
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 812
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 815
    return-void
.end method

.method private putGalleryThumb()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 1007
    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1
    .parameter "childPosition"

    .prologue
    .line 1469
    const/4 v0, 0x0

    return v0
.end method

.method private setChildLayoutParams(ILandroid/view/View;)V
    .locals 10
    .parameter "position"
    .parameter "child"

    .prologue
    const/4 v8, 0x0

    .line 1865
    if-nez p2, :cond_0

    .line 1917
    :goto_0
    return-void

    .line 1868
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedPosition()I

    move-result v5

    .line 1869
    .local v5, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedPosition()I

    move-result v6

    .line 1870
    .local v6, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedPosition()I

    move-result v0

    .line 1872
    .local v0, expandedPos:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 1873
    .local v4, paddingTop:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1874
    .local v2, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1875
    .local v3, paddingRight:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 1877
    .local v1, paddingBottom:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 1879
    if-ne p1, v5, :cond_2

    .line 1881
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1883
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_1

    .line 1884
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 1888
    :goto_1
    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1886
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v8

    sub-int v4, v7, v8

    goto :goto_1

    .line 1890
    :cond_2
    if-ne p1, v6, :cond_5

    .line 1892
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1893
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_4

    move v7, v8

    :goto_2
    iget-boolean v9, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v9, :cond_3

    move v8, v4

    :cond_3
    invoke-virtual {p2, v7, v8, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_2

    .line 1895
    :cond_5
    if-ne p1, v0, :cond_7

    .line 1897
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1899
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_6

    .line 1900
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 1904
    :goto_3
    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1902
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v8

    sub-int v4, v7, v8

    goto :goto_3

    .line 1908
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1909
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_9

    move v7, v8

    :goto_4
    iget-boolean v9, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v9, :cond_8

    move v8, v4

    :cond_8
    invoke-virtual {p2, v7, v8, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_9
    move v7, v2

    goto :goto_4

    .line 1914
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1915
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_c

    move v7, v8

    :goto_5
    iget-boolean v9, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v9, :cond_b

    move v8, v4

    :cond_b
    invoke-virtual {p2, v7, v8, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_c
    move v7, v2

    goto :goto_5
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/widget/Gallery;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->display:Landroid/view/Display;

    .line 219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    .line 220
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "xy"
    .parameter "fromLowEnd"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1087
    .local v6, lparams:Lcom/htc/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1090
    .restart local v6       #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_2

    const/4 v7, -0x1

    :goto_0
    invoke-virtual {p0, p1, v7, v6}, Lcom/htc/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1091
    if-nez p2, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1093
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1095
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1098
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1103
    if-eqz p4, :cond_4

    .line 1105
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_3

    .line 1107
    move v2, p3

    .line 1108
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1110
    .local v3, childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1111
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 1142
    .local v0, childBottom:I
    :goto_1
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1143
    return-void

    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    :cond_2
    move v7, v8

    .line 1090
    goto :goto_0

    .line 1115
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1116
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1118
    .restart local v3       #childRight:I
    move v4, p3

    .line 1119
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1124
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_4
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_5

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p3, v7

    .line 1127
    .restart local v2       #childLeft:I
    move v3, p3

    .line 1129
    .restart local v3       #childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1130
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1134
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_5
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1135
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1137
    .restart local v3       #childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v4, p3, v7

    .line 1138
    .restart local v4       #childTop:I
    move v0, p3

    .restart local v0       #childBottom:I
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1482
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1484
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1485
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1490
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1492
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1493
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1498
    :cond_2
    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1505
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method calibrateThumb(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->calibrateThumb(I)V

    .line 1051
    :cond_0
    return-void
.end method

.method cancelAnimation()V
    .locals 0

    .prologue
    .line 1921
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->cancelAnimation()V

    .line 1922
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 361
    instance-of v0, p1, Lcom/htc/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1405
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1392
    return-void
.end method

.method public forceStopPartialFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 803
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 804
    iput-boolean v1, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 805
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 390
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 393
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 414
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 417
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 379
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 370
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 426
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 429
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 402
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 405
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1534
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 319
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 320
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 322
    const/4 v0, 0x1

    return v0

    .line 320
    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLowEnd"
    .parameter "delta"

    .prologue
    const/4 v5, 0x0

    .line 561
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery$FlingRunnable;->isPartialFling()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v5, p2

    .line 591
    :cond_0
    :goto_0
    return v5

    .line 564
    :cond_1
    if-eqz p1, :cond_2

    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 565
    .local v3, extremeItemPosition:I
    :goto_1
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 567
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_3

    move v5, p2

    .line 568
    goto :goto_0

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_2
    move v3, v5

    .line 564
    goto :goto_1

    .line 571
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_3
    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->getHighEndOfView(Landroid/view/View;)I

    move-result v2

    .line 573
    .local v2, extremeChildBound:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getDragBinGridView()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 574
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getHighEndOfGallery()I

    move-result v7

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v6

    :goto_3
    sub-int v4, v7, v6

    .line 578
    .local v4, galleryBound:I
    :goto_4
    if-eqz p1, :cond_a

    .line 580
    if-le v2, v4, :cond_0

    .line 589
    :cond_4
    sub-int v0, v4, v2

    .line 591
    .local v0, boundDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 571
    .end local v0           #boundDifference:I
    .end local v2           #extremeChildBound:I
    .end local v4           #galleryBound:I
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->getLowEndOfView(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 574
    .restart local v2       #extremeChildBound:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLowEndOfGallery()I

    move-result v4

    goto :goto_4

    .line 576
    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getHighEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHighBorder:I

    sub-int v4, v6, v7

    .restart local v4       #galleryBound:I
    :goto_5
    goto :goto_4

    .end local v4           #galleryBound:I
    :cond_9
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLowEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v4, v6, v7

    goto :goto_5

    .line 585
    .restart local v4       #galleryBound:I
    :cond_a
    if-lt v2, v4, :cond_4

    goto :goto_0

    .line 591
    .restart local v0       #boundDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 10
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v9, 0x0

    .line 829
    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1

    .line 831
    const/4 v5, 0x0

    .line 832
    .local v5, width:I
    const/4 v2, 0x0

    .line 835
    .local v2, height:I
    invoke-virtual {p0, v9}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 837
    .local v1, firstChild:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_3

    .line 839
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    .line 840
    .local v0, childrenLow:I
    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 849
    :goto_0
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    if-nez v6, :cond_6

    .line 851
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_4

    .line 852
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 856
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 857
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 859
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 861
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_5

    .line 862
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 870
    :cond_0
    :goto_2
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_7

    .line 872
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    if-le v6, v0, :cond_1

    .line 873
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 882
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_1
    :goto_3
    iget-boolean v6, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_2

    .line 883
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->handleDataChanged()V

    .line 885
    :cond_2
    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v6, :cond_8

    .line 887
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->resetList()V

    .line 939
    :goto_4
    return-void

    .line 844
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #height:I
    .restart local v5       #width:I
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    .line 845
    .restart local v0       #childrenLow:I
    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_0

    .line 854
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_1

    .line 864
    :cond_5
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_2

    .line 868
    :cond_6
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    goto :goto_2

    .line 877
    :cond_7
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    if-le v6, v0, :cond_1

    .line 878
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_3

    .line 891
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_8
    iget v6, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v6, :cond_9

    .line 892
    iget v6, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setSelectedPositionInt(I)V

    .line 894
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->recycleAllViews()V

    .line 895
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->detachAllViewsFromParent()V

    .line 897
    iput v9, p0, Lcom/htc/widget/Gallery;->mLowMost:I

    .line 898
    iput v9, p0, Lcom/htc/widget/Gallery;->mHighMost:I

    .line 900
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_a

    .line 902
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getFirstVisiblePosition()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 904
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_c

    .line 905
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 910
    :cond_a
    :goto_5
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 912
    .local v3, sel:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_d

    .line 914
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 915
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 923
    :goto_6
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryHighEnd()V

    .line 924
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLowEnd()V

    .line 925
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 927
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 928
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_b

    .line 929
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->clearCache()V

    .line 931
    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 932
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->checkSelectionChanged()V

    .line 934
    iput-boolean v9, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    .line 935
    iput-boolean v9, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 936
    iget v6, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 938
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    goto/16 :goto_4

    .line 907
    .end local v3           #sel:Landroid/view/View;
    .end local v4           #selectedOffset:I
    :cond_c
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_5

    .line 919
    .restart local v3       #sel:Landroid/view/View;
    :cond_d
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    .line 920
    .restart local v4       #selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 612
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 611
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 613
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    .line 1329
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->setOrientation()V

    .line 231
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1288
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    .line 1293
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1296
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1299
    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1300
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1301
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1305
    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    .line 1308
    return v2
.end method

.method onDrawerClosed(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->setCurrentThumb(I)V

    .line 1850
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->showThumb()V

    .line 1854
    :cond_0
    return-void
.end method

.method onDrawerOpened()V
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->closeThumb()V

    .line 1860
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1226
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1230
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1231
    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1234
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1239
    :goto_0
    return v2

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1543
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1550
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1554
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    .line 446
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/Gallery;->layout(IZ)V

    .line 447
    iput-boolean v1, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    .line 448
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1340
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    .line 1349
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1248
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1250
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1252
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1254
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1255
    iput-boolean v3, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1266
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1267
    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1271
    :goto_1
    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    .line 1273
    return v3

    .line 1262
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    .line 1263
    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1269
    :cond_3
    neg-float v0, p4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1362
    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1366
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    .line 1367
    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1368
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1202
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1205
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->scrollToChild(I)Z

    .line 1208
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1213
    :cond_1
    const/4 v0, 0x1

    .line 1216
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1173
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v4, :cond_1

    .line 1174
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v4, p1}, Lcom/htc/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1175
    .local v1, intercepted:Z
    if-eqz v1, :cond_1

    move v2, v3

    .line 1190
    .end local v1           #intercepted:Z
    :cond_0
    :goto_0
    return v2

    .line 1180
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1182
    .local v2, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1183
    .local v0, action:I
    if-ne v0, v3, :cond_2

    .line 1185
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    goto :goto_0

    .line 1186
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1318
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1321
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->dispatchUnpress()V

    .line 1322
    return-void
.end method

.method public partialFling(III)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"

    .prologue
    .line 793
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/Gallery;->partialFling(IIIZ)V

    .line 794
    return-void
.end method

.method public partialFling(IIIZ)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"
    .parameter "isRequiredFill"

    .prologue
    .line 783
    if-eqz p3, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery$FlingRunnable;->startPartialUsingDistance(IIIZ)V

    .line 786
    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 1
    .parameter "scrollAmount"

    .prologue
    .line 773
    if-eqz p1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 776
    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 7
    .parameter "delta"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 481
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_2

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 484
    .local v2, itemWidth:I
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v3, v5, v6

    .line 485
    .local v3, previousDeltax:I
    sub-int v5, v3, p1

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0

    .line 489
    .end local v2           #itemWidth:I
    .end local v3           #previousDeltax:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 490
    .local v1, itemHeight:I
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v4, v5, v6

    .line 491
    .local v4, previousDeltay:I
    sub-int v5, v4, p1

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 820
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 822
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 279
    iput p1, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    .line 280
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 250
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 263
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1522
    iget v0, p0, Lcom/htc/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1523
    iput p1, p0, Lcom/htc/widget/Gallery;->mGravity:I

    .line 1524
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->requestLayout()V

    .line 1526
    :cond_0
    return-void
.end method

.method setOrientationChangedFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1927
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    .line 1928
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1474
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1477
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1478
    return-void
.end method

.method setSelectionFromTop(II)V
    .locals 5
    .parameter "position"
    .parameter "xy"

    .prologue
    .line 1559
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1562
    :cond_0
    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v3, p1

    .line 1564
    .local v1, delta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1565
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1569
    iget-boolean v3, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v3, :cond_2

    .line 1570
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .line 1574
    .local v2, distance:I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1576
    .end local v2           #distance:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->setSelection(I)V

    goto :goto_0

    .line 1572
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .restart local v2       #distance:I
    goto :goto_1
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 294
    iput p1, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 295
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 309
    iput p1, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    .line 310
    return-void
.end method

.method setUpThumb(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1011
    if-eqz p1, :cond_1

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1015
    .local v6, lparams:Lcom/htc/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1018
    .restart local v6       #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_0
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1020
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1023
    .local v5, childWidthSpec:I
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_2

    .line 1025
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1027
    invoke-direct {p0, p1, v11}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1028
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 1029
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1, v10, v4, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 1045
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v6           #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 1033
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    .restart local v6       #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_2
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1035
    invoke-direct {p0, p1, v11}, Lcom/htc/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1036
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1037
    .local v3, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1, v2, v10, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1440
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1441
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1442
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1445
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1423
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1424
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1425
    const/4 v3, 0x0

    .line 1429
    :goto_0
    return v3

    .line 1428
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1429
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method stopFlingRunnable()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 467
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 469
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 527
    :goto_0
    return-void

    .line 501
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 503
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 504
    .local v0, limitedDelta:I
    if-eq v0, p1, :cond_1

    .line 506
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 507
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 510
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 511
    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 515
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 517
    if-eqz v1, :cond_4

    .line 518
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryHighEnd()V

    .line 522
    :goto_3
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 524
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 525
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 526
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_2
    move v1, v2

    .line 501
    goto :goto_1

    .line 513
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    goto :goto_2

    .line 520
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_3
.end method

.method trackMotionScroll(IIIZ)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "delta"
    .parameter "isRequiredFill"

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 557
    :goto_0
    return-void

    .line 534
    :cond_0
    if-gez p3, :cond_3

    const/4 v1, 0x1

    .line 536
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 537
    .local v0, limitedDelta:I
    if-eq v0, p3, :cond_1

    .line 539
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 540
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 543
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLowEndAndHighEnd(III)V

    .line 544
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 546
    if-eqz p4, :cond_2

    .line 548
    if-eqz v1, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryHighEnd()V

    .line 554
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 555
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 556
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_3
    move v1, v2

    .line 534
    goto :goto_1

    .line 551
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_2
.end method
