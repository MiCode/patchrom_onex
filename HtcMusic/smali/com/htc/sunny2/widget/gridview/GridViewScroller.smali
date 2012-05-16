.class public Lcom/htc/sunny2/widget/gridview/GridViewScroller;
.super Ljava/lang/Object;
.source "GridViewScroller.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewScroller$SCROLL_DIRECTION;
    }
.end annotation


# instance fields
.field private MAX_VELOCITY:F

.field private final SCROLLER_DEBUG_FLAG:Z

.field private TAG:Ljava/lang/String;

.field private actuallButtomBorder:F

.field private currentFlingingDuration:J

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentFlingingTravelledDistance:I

.field private currentMovedDistance:I

.field private deceleration:F

.field private deviceFPS:I

.field private initialVelocity:F

.field private final isOnBorderThreshold:I

.field private isOnBouncingBack:Z

.field private isStartPanningOnButtomBorder:Z

.field private isStartPanningOnTopBorder:Z

.field private itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mOutRatioY:F

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private ppi:F

.field private final ppiBaseInPyramid:F

.field private relativeMovement:I

.field private shouldLockPanningOnePage:Z

.field private shouldLockPanning_PannedDown:Z

.field private shouldLockPanning_PannedUp:Z

.field private status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x4370

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "GridViewScroller"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 24
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 25
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    .line 27
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 29
    iput-wide v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 30
    iput-wide v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 31
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 32
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deviceFPS:I

    .line 34
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    .line 35
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    .line 36
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    .line 37
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    .line 38
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 39
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBorderThreshold:I

    .line 50
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 51
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mBouncingDuration:I

    .line 52
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    .line 57
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->SCROLLER_DEBUG_FLAG:Z

    .line 59
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppiBaseInPyramid:F

    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppi:F

    .line 61
    const/high16 v0, 0x4516

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppi:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    .line 65
    const v0, 0x43c0e9ba

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deceleration:F

    .line 69
    return-void
.end method

.method private checkStartPanningOnBorder()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    if-eqz v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    .line 124
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    .line 125
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    .line 126
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    .line 128
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    .line 129
    .local v1, itemCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemsInASet()I

    move-result v4

    .line 130
    .local v4, itemsInASet:I
    div-int v10, v1, v4

    rem-int v7, v1, v4

    if-nez v7, :cond_4

    move v7, v8

    :goto_1
    add-int v6, v10, v7

    .line 131
    .local v6, numberofSets:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v7

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v10

    sub-int/2addr v7, v10

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v10

    sub-int v0, v7, v10

    .line 132
    .local v0, gridViewLength:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v10

    invoke-interface {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v2

    .line 133
    .local v2, itemLength:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemSpacing()I

    move-result v3

    .line 134
    .local v3, itemSpacing:I
    add-int v7, v2, v3

    mul-int/2addr v7, v6

    sub-int v5, v7, v3

    .line 135
    .local v5, itemsTotalLength:I
    if-ge v5, v0, :cond_2

    move v8, v9

    :cond_2
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    .line 136
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v7, :cond_5

    .line 138
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v7

    add-int/2addr v7, v5

    int-to-float v7, v7

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    .line 160
    :goto_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v8}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v8

    neg-int v8, v8

    add-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_3

    .line 162
    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    .line 165
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v1, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v10}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v10

    invoke-interface {v8, v10}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    neg-float v8, v8

    const/high16 v10, 0x4000

    sub-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 167
    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    goto/16 :goto_0

    .end local v0           #gridViewLength:I
    .end local v2           #itemLength:I
    .end local v3           #itemSpacing:I
    .end local v5           #itemsTotalLength:I
    .end local v6           #numberofSets:I
    :cond_4
    move v7, v9

    .line 130
    goto/16 :goto_1

    .line 142
    .restart local v0       #gridViewLength:I
    .restart local v2       #itemLength:I
    .restart local v3       #itemSpacing:I
    .restart local v5       #itemsTotalLength:I
    .restart local v6       #numberofSets:I
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v8}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    goto :goto_2
.end method

.method private easeFunction(FFF)F
    .locals 10
    .parameter "currentProgress"
    .parameter "deltaPosition"
    .parameter "totalProgress"

    .prologue
    .line 596
    div-float/2addr p1, p3

    .line 597
    mul-float v1, p1, p1

    .line 598
    .local v1, ts:F
    mul-float v0, v1, p1

    .line 599
    .local v0, tc:F
    float-to-double v2, p2

    const-wide v4, -0x3ffd333333333333L

    float-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x4018f5c28f5c28f6L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4013147ae147ae14L

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3feae147ae147ae1L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4005c28f5c28f5c3L

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private limitedMovement(I)V
    .locals 4
    .parameter "positionDifference"

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 469
    :goto_0
    return-void

    .line 349
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 352
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-lez p1, :cond_3

    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-lez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 363
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 369
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    if-eqz v0, :cond_4

    .line 372
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 374
    :cond_4
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v0, :cond_d

    .line 381
    if-lez p1, :cond_8

    .line 383
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_5

    .line 386
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    .line 388
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    if-eqz v0, :cond_6

    .line 391
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 393
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-ltz v0, :cond_7

    .line 396
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 397
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 402
    :cond_7
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 405
    :cond_8
    if-gez p1, :cond_c

    .line 407
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_9

    .line 410
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 411
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 413
    :cond_9
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    if-eqz v0, :cond_a

    .line 416
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 418
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_b

    .line 421
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 426
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 431
    :cond_c
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 434
    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_f

    .line 436
    if-ltz p1, :cond_e

    .line 439
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 444
    :cond_e
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 445
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 448
    :cond_f
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-lt v0, v1, :cond_11

    .line 450
    if-gtz p1, :cond_10

    .line 453
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 458
    :cond_10
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 459
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    .line 465
    :cond_11
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    .line 101
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 102
    return-void
.end method

.method public flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V
    .locals 4
    .parameter "distance"
    .parameter "durationTuner"

    .prologue
    .line 473
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mBouncingDuration:I

    .line 474
    .local v1, duration:I
    move v0, p1

    .line 475
    .local v0, distanceToGo:I
    invoke-interface {p2, v1, v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;->getDuration(II)I

    move-result v1

    .line 476
    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 477
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 478
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 479
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 480
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 481
    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRelativeMovement()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    return v0
.end method

.method public getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3
    .parameter "item_align_mode"
    .parameter "itemInfoGetter"

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] item_align_mode is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deInit()V

    .line 95
    .end local p2
    :goto_0
    return v0

    .line 79
    .restart local p2
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 81
    if-nez p2, :cond_1

    .line 83
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deInit()V

    goto :goto_0

    .line 87
    :cond_1
    instance-of v1, p2, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is not GridViewItemInfoGetter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deInit()V

    goto :goto_0

    .line 94
    :cond_2
    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStartPanningOnButtomBorder()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    return v0
.end method

.method public isStartPanningOnTopBorder()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    return v0
.end method

.method public onFling(F)V
    .locals 3
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 301
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 302
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 305
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 308
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    goto :goto_0
.end method

.method public onTouchDown(I)V
    .locals 1
    .parameter "touchPositionOnViewport"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->checkStartPanningOnBorder()V

    .line 109
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 110
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 111
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    .line 113
    return-void
.end method

.method public onTouchMove(I)V
    .locals 6
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 211
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    .line 214
    .local v1, viewportLength:I
    if-lez p1, :cond_6

    .line 217
    const/4 p1, 0x0

    .line 229
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    if-nez v2, :cond_2

    .line 231
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_1

    .line 233
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedUp:Z

    .line 235
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_2

    .line 237
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanning_PannedDown:Z

    .line 241
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v3

    neg-int v3, v3

    if-lt v2, v3, :cond_3

    .line 243
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    .line 246
    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->actuallButtomBorder:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 248
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    .line 253
    :cond_4
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_7

    .line 257
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    div-int/lit8 v0, v2, 0x2

    .line 258
    .local v0, newPanTargetDistance:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    .line 282
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    if-eq v0, v2, :cond_5

    .line 284
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    .line 285
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    .line 289
    :cond_5
    return-void

    .line 219
    .end local v0           #newPanTargetDistance:I
    :cond_6
    neg-int v2, v1

    if-ge p1, v2, :cond_0

    .line 222
    neg-int p1, v1

    goto/16 :goto_0

    .line 261
    :cond_7
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v3

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_8

    .line 265
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    div-int/lit8 v0, v2, 0x2

    .line 266
    .restart local v0       #newPanTargetDistance:I
    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    goto :goto_1

    .line 268
    .end local v0           #newPanTargetDistance:I
    :cond_8
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->shouldLockPanningOnePage:Z

    if-eqz v2, :cond_9

    .line 271
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #newPanTargetDistance:I
    goto :goto_1

    .line 278
    .end local v0           #newPanTargetDistance:I
    :cond_9
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v2

    .line 279
    .restart local v0       #newPanTargetDistance:I
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    goto :goto_1
.end method

.method public onTouchUp(I)V
    .locals 4
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v3, 0x1

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 189
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 204
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 195
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 608
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 609
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 610
    iput-wide v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 611
    iput-wide v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 612
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 613
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 614
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    .line 615
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    .line 616
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    .line 617
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    .line 618
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 619
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 620
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 621
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    .line 622
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->checkStartPanningOnBorder()V

    .line 623
    return-void
.end method

.method public scrollExpGridViewByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;IZ)V
    .locals 4
    .parameter "distance"
    .parameter "durationTuner"
    .parameter "duration"
    .parameter "forceBouncingBack"

    .prologue
    const/4 v3, 0x1

    .line 489
    move v0, p1

    .line 490
    .local v0, distanceToGo:I
    invoke-interface {p2, p3, v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;->getDuration(II)I

    move-result p3

    .line 491
    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 492
    int-to-float v1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    .line 493
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 494
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    .line 495
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    .line 497
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    .line 499
    if-eqz p4, :cond_0

    .line 500
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    .line 502
    :cond_0
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 506
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_1

    .line 508
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_4

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, positionDifference:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    if-nez v4, :cond_3

    .line 516
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    sub-int v1, v4, v5

    .line 523
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->limitedMovement(I)V

    .line 524
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    goto :goto_0

    .line 518
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    if-lez v4, :cond_2

    .line 520
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    div-int v1, v4, v5

    .line 521
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto :goto_1

    .line 526
    .end local v1           #positionDifference:I
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_0

    .line 529
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deviceFPS:I

    div-int/2addr v4, v5

    int-to-long v2, v4

    .line 530
    .local v2, updateTimeDifference:J
    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 533
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 534
    .local v0, lastCurrentFlingingTravelledDistance:I
    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    long-to-float v4, v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    long-to-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->easeFunction(FFF)F

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 537
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    .line 543
    .restart local v1       #positionDifference:I
    if-lez v1, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-lez v4, :cond_9

    .line 545
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-le v1, v4, :cond_5

    .line 547
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 562
    :cond_5
    :goto_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-nez v4, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_6

    .line 564
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    .line 568
    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iget-wide v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    .line 570
    :cond_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 571
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    .line 581
    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->limitedMovement(I)V

    .line 583
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    if-nez v4, :cond_0

    .line 585
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    .line 586
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    .line 587
    sget-object v4, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 588
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto/16 :goto_0

    .line 550
    :cond_9
    if-gez v1, :cond_5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-gez v4, :cond_5

    .line 552
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-ge v1, v4, :cond_5

    .line 554
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    goto :goto_2

    .line 574
    :cond_a
    if-nez v1, :cond_8

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 577
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v1, v4

    .line 578
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    goto :goto_3
.end method
