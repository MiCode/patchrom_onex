.class public Lcom/htc/widget/HtcSpinner;
.super Lcom/htc/widget/HtcAbsSpinner;
.source "HtcSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcSpinner$DropDownAdapter;,
        Lcom/htc/widget/HtcSpinner$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_DOWN:I

.field private static final ANIMATION_DURATION_UP:I


# instance fields
.field private mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentScale:F

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsAnimating:Z

.field private mMultiplyColor:I

.field private mOverlayColor:I

.field private mPrompt:Ljava/lang/CharSequence;

.field private mTextColor:I

.field private mUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private rect:Landroid/graphics/Rect;

.field private selectedItemView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_DOWN:I

    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_UP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcSpinner;->mTextColor:I

    .line 89
    sget-object v1, Lcom/android/internal/R$styleable;->Spinner:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSpinner;->initBackground(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/widget/HtcSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/widget/HtcSpinner;->mMultiplyColor:I

    return v0
.end method

.method private initAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 110
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 111
    .local v0, accInterpolator:Landroid/view/animation/AccelerateInterpolator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 114
    .local v1, decInterpolator:Landroid/view/animation/DecelerateInterpolator;
    const-string v6, "scale"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 116
    .local v3, downScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    const-string v6, "scale"

    new-array v7, v9, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 121
    .local v5, upScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    const-string v7, "alpha"

    new-array v8, v9, [I

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 128
    .local v2, downMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    const-string v7, "alpha"

    new-array v8, v9, [I

    fill-array-data v8, :array_3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 134
    .local v4, upMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 139
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v3, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 141
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcSpinner$1;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcSpinner$1;-><init>(Lcom/htc/widget/HtcSpinner;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 148
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v5, v7, v10

    aput-object v4, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 149
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcSpinner$2;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcSpinner$2;-><init>(Lcom/htc/widget/HtcSpinner;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    return-void

    .line 114
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 119
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 125
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 131
    :array_3
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initBackground(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;-><init>(Lcom/htc/widget/HtcSpinner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mMultiplyColor:I

    .line 101
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mOverlayColor:I

    .line 102
    invoke-direct {p0}, Lcom/htc/widget/HtcSpinner;->initAnimation()V

    .line 103
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/widget/HtcSpinner;->setPadding(IIII)V

    .line 104
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    return-void
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 423
    iget-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 425
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSpinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 439
    .end local v0           #child:Landroid/view/View;
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 434
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 437
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSpinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 439
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 216
    iput p1, p0, Lcom/htc/widget/HtcSpinner;->mCurrentScale:F

    .line 217
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->setScale(F)V

    .line 218
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->invalidate()V

    .line 219
    return-void
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11
    .parameter "child"

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 455
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 459
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/HtcSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 461
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 464
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 466
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 470
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 476
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 479
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 481
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 482
    .local v7, width:I
    const/4 v2, 0x0

    .line 483
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 485
    .local v3, childRight:I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 486
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 323
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v1, v2

    .line 332
    :goto_1
    return v1

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 325
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 369
    iget-object v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 370
    .local v0, childrenLeft:I
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 372
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->handleDataChanged()V

    .line 377
    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v5, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->resetList()V

    .line 408
    :goto_0
    return-void

    .line 382
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    .line 383
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcSpinner;->setSelectedPositionInt(I)V

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->recycleAllViews()V

    .line 389
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->removeAllViewsInLayout()V

    .line 392
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 393
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 394
    .local v2, sel:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 395
    .local v4, width:I
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 396
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 399
    iget-object v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->clear()V

    .line 401
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->invalidate()V

    .line 403
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->checkSelectionChanged()V

    .line 405
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 406
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 407
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcSpinner;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 524
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 525
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 526
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, textColor:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    .line 195
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    .line 198
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcSpinner;->mCenterX:I

    .line 199
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcSpinner;->mCenterY:I

    .line 201
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcSpinner;->mCurrentScale:F

    iget v2, p0, Lcom/htc/widget/HtcSpinner;->mCurrentScale:F

    iget v3, p0, Lcom/htc/widget/HtcSpinner;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/HtcSpinner;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 202
    iget v0, p0, Lcom/htc/widget/HtcSpinner;->mOverlayColor:I

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    return-void

    .line 204
    :cond_3
    iget v1, p0, Lcom/htc/widget/HtcSpinner;->mTextColor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcSpinner;->mTextColor:I

    .line 207
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcSpinner;->mTextColor:I

    goto :goto_0
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

    .line 355
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAbsSpinner;->onLayout(ZIIII)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 357
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/HtcSpinner;->layout(IZ)V

    .line 358
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 359
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsSpinner;->onSizeChanged(IIII)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    .line 187
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 165
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 167
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 172
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 176
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performClick()Z
    .locals 6

    .prologue
    .line 490
    invoke-super {p0}, Lcom/htc/widget/HtcAbsSpinner;->performClick()Z

    move-result v3

    .line 492
    .local v3, handled:Z
    if-nez v3, :cond_2

    .line 493
    const/4 v3, 0x1

    .line 494
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 496
    .local v2, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcSpinner$DropDownAdapter;

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/widget/HtcSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    .line 498
    .local v0, adapter:Lcom/htc/widget/HtcSpinner$DropDownAdapter;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v0, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 507
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v4, :cond_1

    .line 508
    const v4, 0x2040152

    new-instance v5, Lcom/htc/widget/HtcSpinner$3;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcSpinner$3;-><init>(Lcom/htc/widget/HtcSpinner;)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 517
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 520
    .end local v0           #adapter:Lcom/htc/widget/HtcSpinner$DropDownAdapter;
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #context:Landroid/content/Context;
    :cond_2
    return v3
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    if-nez p1, :cond_1

    .line 227
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSpinner;->setAlpha(F)V

    .line 231
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setEnabled(Z)V

    goto :goto_0

    .line 229
    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSpinner;->setAlpha(F)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 344
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "prompt"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    .line 534
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .parameter "promptId"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    .line 542
    return-void
.end method
