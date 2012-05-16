.class Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeAnimationControl"
.end annotation


# instance fields
.field private mDisable1:I

.field private mDisable2:I

.field private mDisableCount:I

.field private mFirstUpdateIndex:I

.field private mIndexOffset:I

.field private mIsFakeAnimation:Z

.field private mLastUpdateIndex:I

.field private mPosOffset:I

.field private mTartgetFocuIndex:I

.field private mTotalContainers:I

.field private mTotalItems:I

.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2789
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2791
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2792
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2793
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 2794
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 2795
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 2796
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2797
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2799
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    .line 2800
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2801
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 2802
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    return-void
.end method


# virtual methods
.method public getFirstUpdateIndex()I
    .locals 1

    .prologue
    .line 2841
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    return v0
.end method

.method public getLastUpdateIndex()I
    .locals 1

    .prologue
    .line 2845
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    return v0
.end method

.method public getPosOffset()I
    .locals 1

    .prologue
    .line 2837
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    return v0
.end method

.method public getTargetFocusIndex()I
    .locals 1

    .prologue
    .line 2849
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    return v0
.end method

.method public init(IIII)V
    .locals 3
    .parameter "nStartIndex"
    .parameter "nIndexOffset"
    .parameter "nTotalItems"
    .parameter "nTotalContainers"

    .prologue
    const/4 v2, 0x1

    .line 2805
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->reset()V

    .line 2806
    iput p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 2807
    iput p3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 2808
    iput p4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 2809
    add-int v0, p1, p2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2811
    add-int v0, p1, p2

    if-ge v0, p3, :cond_0

    add-int v0, p1, p2

    if-gez v0, :cond_1

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2815
    :cond_1
    if-lez p2, :cond_2

    .line 2816
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_0

    .line 2817
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2818
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 2819
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2820
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2821
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2822
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0

    .line 2824
    :cond_2
    if-gez p2, :cond_0

    .line 2825
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v1, p4

    if-lt v0, v1, :cond_0

    .line 2826
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2827
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 2828
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2829
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2830
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2831
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0
.end method

.method public isFakeAnimation()Z
    .locals 1

    .prologue
    .line 2869
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    return v0
.end method

.method public isForceHidden(I)Z
    .locals 2
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x1

    .line 2860
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    if-ne v1, p1, :cond_1

    .line 2865
    :cond_0
    :goto_0
    return v0

    .line 2862
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    if-eq v1, p1, :cond_0

    .line 2865
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2854
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2855
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 2856
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2857
    return-void
.end method
