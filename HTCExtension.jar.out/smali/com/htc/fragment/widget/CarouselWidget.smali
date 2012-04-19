.class public Lcom/htc/fragment/widget/CarouselWidget;
.super Lcom/htc/fragment/widget/Gallery;
.source "CarouselWidget.java"

# interfaces
.implements Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/fragment/widget/DragSource;
.implements Lcom/htc/fragment/widget/DropTarget;
.implements Lcom/htc/fragment/widget/DragScroller;


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field final BOTTOM_SCROLL_SPEED:F

.field final LEFT_SCROLL_SPEED:F

.field final RIGHT_SCROLL_SPEED:F

.field final SCROLL_REGION:I

.field final TOP_SCROLL_SPEED:F

.field carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

.field private dividerPadding:I

.field private focusRect:Landroid/graphics/RectF;

.field private insertIndicator:Landroid/graphics/drawable/Drawable;

.field private isDrawIndicator:Z

.field private isDrawRect:Z

.field private isPortraitPreviousTime:Z

.field mAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mCancelAnimation:Z

.field mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field private mColor:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field mDragId:J

.field private mDragItemPos:I

.field private mDragItemView:Landroid/view/View;

.field private mDragMode:I

.field private mDragMode3layout:Z

.field mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mIsDrop:Z

.field private mIsInit:Z

.field private mIsRemove:Z

.field private mIsSuccessful:Z

.field private mMemoryMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPoolFocusWidth:I

.field private mRectLeft:I

.field private mRectTop:I

.field mReorderUri:Landroid/net/Uri;

.field private mShowIndicator:Z

.field mTarget:Lcom/htc/fragment/widget/DropTarget;

.field mToPos:I

.field skipAnimationEnd:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    .line 37
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 39
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 41
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 43
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 48
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    .line 68
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 71
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 75
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 76
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 78
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    .line 81
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 433
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 434
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 443
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 724
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1291
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1562
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1563
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 283
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    .line 37
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 39
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 41
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 43
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 48
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    .line 68
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 71
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 75
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 76
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 78
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    .line 81
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 433
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 434
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 443
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 724
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1291
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1562
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1563
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 289
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method private createGreenIndicator()V
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1111
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawPortraitDivider(Landroid/graphics/Canvas;)V

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawLandscapeDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLandscapeDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-gtz v10, :cond_1

    .line 622
    :cond_0
    return-void

    .line 556
    :cond_1
    const/4 v8, 0x0

    .line 558
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 559
    .local v9, ypos:I
    const/4 v4, 0x1

    .line 560
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 561
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 562
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 563
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 565
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 568
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 570
    const/4 v9, -0x1

    .line 571
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 573
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 575
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 577
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 578
    add-int/lit8 v4, v4, 0x1

    .line 581
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 582
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 583
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 589
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 591
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 592
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 594
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 595
    if-eqz v8, :cond_7

    .line 599
    :cond_6
    if-eqz v8, :cond_0

    .line 601
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 602
    :goto_2
    if-ltz v9, :cond_8

    .line 604
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 591
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 607
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 609
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 611
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 613
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 617
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 618
    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawPortraitDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-gtz v10, :cond_1

    .line 549
    :cond_0
    return-void

    .line 483
    :cond_1
    const/4 v8, 0x0

    .line 485
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 486
    .local v9, xpos:I
    const/4 v4, 0x1

    .line 487
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 488
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 489
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 490
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 492
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 497
    const/4 v9, -0x1

    .line 498
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 500
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 502
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 503
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 504
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 505
    add-int/lit8 v4, v4, 0x1

    .line 508
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 509
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 515
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 516
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 518
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 519
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 521
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 522
    if-eqz v8, :cond_7

    .line 526
    :cond_6
    if-eqz v8, :cond_0

    .line 528
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 529
    :goto_2
    if-ltz v9, :cond_8

    .line 531
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 518
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 534
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 536
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 538
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 539
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 540
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 543
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 544
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 545
    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawRect(Landroid/graphics/Canvas;I)V
    .locals 8
    .parameter "canvas"
    .parameter "xy"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 213
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    if-eqz v2, :cond_4

    .line 215
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 216
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 218
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    if-gez v2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v4, "app_selection_highlight"

    const v5, 0x2060033

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 222
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    if-gez v2, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3

    .line 231
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 233
    :cond_3
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_8

    .line 235
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 236
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 238
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 239
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 251
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    .line 255
    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    if-eqz v2, :cond_7

    .line 257
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 258
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const v4, 0x208019b

    const-string v5, "common_subnav_tab_rearrange"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_6

    .line 262
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 264
    :cond_6
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_9

    .line 266
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 267
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v1

    add-int v4, p2, v1

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    .end local v1           #width:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    .line 278
    :cond_7
    return-void

    .line 243
    :cond_8
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 244
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 246
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 247
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 271
    :cond_9
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 272
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v0

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    add-int v5, p2, v0

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private findInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 1
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v0

    .line 867
    :goto_0
    return v0

    .line 864
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 865
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0

    .line 867
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 992
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    add-int v12, p3, v14

    .line 994
    .local v12, scrolledY:I
    if-gtz v2, :cond_1

    .line 996
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 997
    const/4 v7, 0x1

    .line 1105
    :cond_0
    :goto_0
    return v7

    .line 1000
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 1001
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 1002
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 1004
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 1005
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 1007
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 1010
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 1013
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 1014
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 1016
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1018
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1020
    if-eqz v8, :cond_4

    .line 1021
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 1010
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1022
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 1023
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 1025
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 1028
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 1029
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 1031
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 1033
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1035
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1037
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 1039
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 1040
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 1042
    if-eqz v8, :cond_8

    .line 1044
    if-ne v6, v4, :cond_7

    .line 1046
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 1050
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1051
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1054
    :cond_7
    if-le v6, v4, :cond_0

    .line 1055
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1061
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 1063
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 1067
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1068
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_9
    if-ne v6, v4, :cond_a

    .line 1073
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 1074
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1078
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 1080
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 1081
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1085
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 1087
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 1089
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 1091
    if-ge v7, v3, :cond_0

    .line 1092
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1101
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1102
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 1103
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 1105
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 873
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    add-int v12, p2, v14

    .line 875
    .local v12, scrolledX:I
    if-gtz v2, :cond_1

    .line 877
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 878
    const/4 v7, 0x1

    .line 986
    :cond_0
    :goto_0
    return v7

    .line 881
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 882
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 883
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 885
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 886
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 888
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 891
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 894
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 895
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 897
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 899
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 901
    if-eqz v8, :cond_4

    .line 902
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 891
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 903
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 904
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 906
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 909
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 910
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 912
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 914
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 916
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 918
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 920
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 921
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 923
    if-eqz v8, :cond_8

    .line 925
    if-ne v6, v4, :cond_7

    .line 927
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 931
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 932
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 935
    :cond_7
    if-le v6, v4, :cond_0

    .line 936
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 942
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 944
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 949
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 952
    :cond_9
    if-ne v6, v4, :cond_a

    .line 954
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 955
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 959
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 961
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 962
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 966
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 968
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 970
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 972
    if-ge v7, v3, :cond_0

    .line 973
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 912
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 982
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 983
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 984
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 986
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private gInit(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 124
    iput-boolean v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 125
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    .line 127
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 129
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, resource:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 133
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 134
    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 136
    :cond_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_2

    const v1, 0x2080036

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 138
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v1, :cond_1

    .line 139
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    :goto_1
    return-void

    .line 136
    :cond_2
    const v1, 0x2080041

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private getLocationFromPos(I[I)V
    .locals 4
    .parameter "pos"
    .parameter "loc"

    .prologue
    const/4 v3, 0x0

    .line 782
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 784
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 785
    aget v0, p2, v3

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p2, v3

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x1

    aget v1, p2, v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p2, v0

    goto :goto_0
.end method

.method private initMember()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    if-ne v1, v2, :cond_0

    .line 330
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 326
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There should be AT LEAST ONE element in the TAB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_1
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    goto :goto_0
.end method

.method private isDrawRect(I)Z
    .locals 4
    .parameter "xy"

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x3f00

    .line 455
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_2

    .line 457
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 461
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    goto :goto_0

    .line 467
    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 469
    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 471
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    goto :goto_0

    .line 475
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIndicator(II)V
    .locals 3
    .parameter "scrolledXY"
    .parameter "overlap_pos"

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1130
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1135
    .local v1, shrinkedPos:I
    if-gt p2, v1, :cond_1

    .line 1137
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1138
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1139
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1147
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    .line 1174
    .end local v1           #shrinkedPos:I
    :cond_0
    :goto_1
    return-void

    .line 1143
    .restart local v1       #shrinkedPos:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1145
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_0

    .line 1150
    .end local v1           #shrinkedPos:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p2, v2, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1158
    .restart local v1       #shrinkedPos:I
    if-gt p2, v1, :cond_3

    .line 1160
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1161
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1162
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1170
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    goto :goto_1

    .line 1166
    :cond_3
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1167
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1168
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_2
.end method

.method private removeIndicator()V
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1230
    return-void
.end method

.method private startReduceCountAnimation()V
    .locals 3

    .prologue
    .line 1567
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1568
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    .line 1570
    .local v0, orgWidthHeight:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1571
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 1573
    .local v1, targetWidthHeight:I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 1574
    return-void

    .line 1568
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0

    .line 1571
    .restart local v0       #orgWidthHeight:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1248
    const/4 v0, 0x1

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 1580
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1581
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1582
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->cancelAnimation()V

    .line 1583
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    .line 665
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 668
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 669
    return-void

    .line 661
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1391
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchSetSelected(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchSetSelected(Z)V

    return-void
.end method

.method doAnimationForDifferentTarget(Lcom/htc/fragment/widget/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 709
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 710
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 711
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    .line 717
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    .line 719
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->draw(Landroid/graphics/Canvas;)V

    .line 629
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-eqz v3, :cond_0

    .line 631
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v3, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 632
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 635
    :cond_0
    sget-boolean v3, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v3, :cond_2

    .line 636
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_1

    .line 637
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 638
    .local v1, x:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    neg-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 639
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 640
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 643
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #x:Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 644
    .local v2, y:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 645
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 646
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 650
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #y:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public enableSecondBackground(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1589
    return-void
.end method

.method public bridge synthetic forceStopPartialFling()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->forceStopPartialFling()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1624
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1612
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1595
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getFragment()Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method getStateWidget()I
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getWidgetWidth()I
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method initFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 314
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 317
    return-void
.end method

.method initLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientation()V

    .line 89
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 102
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x50

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 108
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/high16 v1, 0x300

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setScrollBarStyle(I)V

    .line 110
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_6

    const-string v1, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_7

    const v2, 0x2080039

    :goto_3
    invoke-static {v3, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 113
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setSpacing(I)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->forceLayout()V

    .line 117
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusableInTouchMode(Z)V

    .line 119
    return-void

    .line 98
    .restart local v0       #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    goto :goto_0

    .line 102
    :cond_5
    const/4 v2, 0x5

    goto :goto_1

    .line 110
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const-string v1, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_7
    const v2, 0x2080148

    goto :goto_3
.end method

.method isDragging()Z
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isDragging()Z

    move-result v0

    .line 1508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 2
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    if-eqz v0, :cond_0

    .line 337
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 338
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startReduceCountAnimation()V

    .line 340
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->layout(IZ)V

    .line 342
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-nez v0, :cond_1

    .line 343
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 346
    :cond_1
    return-void
.end method

.method public bridge synthetic offsetChildrenTopAndBottom(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    .line 730
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    if-eqz v1, :cond_0

    .line 732
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 733
    const-string v1, "enable skipAnimationEnd"

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 777
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/BinAdapter;

    .line 742
    .local v13, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v13}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 743
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v1, v14, :cond_3

    .line 744
    if-eqz v0, :cond_2

    .line 745
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 746
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 751
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 774
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    .line 776
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    goto :goto_0

    .line 749
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 753
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .restart local v4       #values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    const-string v1, "task_order"

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 756
    if-eqz v0, :cond_4

    .line 757
    const/16 v7, 0x3ea

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 761
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    goto :goto_1

    .line 759
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_5
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 763
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    .line 766
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    check-cast v1, Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->addtoDB()V

    .line 768
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    if-nez v1, :cond_1

    .line 769
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v5, 0x205006b

    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 156
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, resource:Landroid/content/res/Resources;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    iget-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eq v2, v4, :cond_3

    .line 166
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 168
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 180
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x50

    :goto_1
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 182
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 187
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_8

    const-string v2, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_9

    const v3, 0x2080039

    :goto_3
    invoke-static {v4, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 190
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    .line 192
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_4

    .line 193
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 195
    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_a

    const v2, 0x2080036

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 197
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v2, :cond_5

    .line 198
    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 200
    :cond_5
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_b

    .line 201
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    :goto_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 206
    return-void

    .line 176
    .restart local v0       #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    goto :goto_0

    .line 180
    :cond_7
    const/4 v3, 0x5

    goto :goto_1

    .line 187
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    const-string v2, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_9
    const v3, 0x2080148

    goto :goto_3

    .line 195
    :cond_a
    const v2, 0x2080041

    goto :goto_4

    .line 203
    :cond_b
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    .line 1122
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->createGreenIndicator()V

    .line 1123
    return-void
.end method

.method public onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->removeIndicator()V

    .line 1240
    return-void
.end method

.method public onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1182
    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .line 1184
    .local v10, pos:I
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1186
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    .line 1188
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1189
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollRight()V

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1193
    .local v7, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1195
    .local v8, lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1196
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1198
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1199
    .local v6, anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1202
    .end local v6           #anchor:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollLeft()V

    goto :goto_0

    .line 1207
    .end local v7           #firstVisPos:I
    .end local v8           #lastPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    .line 1209
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1210
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBottom()V

    goto :goto_0

    .line 1211
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1214
    .restart local v7       #firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1216
    .restart local v8       #lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1217
    .restart local v9       #lastVisView:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 1219
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1220
    .restart local v6       #anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1223
    .end local v6           #anchor:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollTop()V

    goto/16 :goto_0
.end method

.method public onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    move-object v0, p0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 798
    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .local v10, pos:I
    move-object/from16 v8, p6

    .line 799
    check-cast v8, Lcom/htc/fragment/widget/TaskInfo;

    .line 800
    .local v8, info:Lcom/htc/fragment/widget/TaskInfo;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/fragment/widget/BinAdapter;

    .line 801
    .local v7, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 802
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 803
    .local v11, uri:Landroid/net/Uri;
    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 804
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 806
    .local v9, loc:[I
    check-cast p1, Lcom/htc/fragment/widget/DropTarget;

    .end local p1
    if-eq p0, p1, :cond_1

    .line 807
    iput-object v11, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 808
    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    .line 809
    iget-wide v1, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    .line 810
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 812
    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 813
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 816
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 825
    .local v3, reorderUri:Landroid/net/Uri;
    const-string v1, "reorder_task"

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 827
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "from"

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "to"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gId"

    const-string v5, "gId"

    invoke-virtual {v11, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 833
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 834
    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    .line 835
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 837
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-eq v1, v10, :cond_2

    .line 838
    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 839
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 842
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    .line 845
    :cond_2
    if-eqz v0, :cond_3

    .line 846
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-ne v1, v10, :cond_0

    .line 847
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 848
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const/16 v1, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    goto/16 :goto_0

    .line 853
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 683
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 685
    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 692
    iput-boolean p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    .line 693
    if-nez p2, :cond_1

    .line 694
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 695
    .local v0, loc:[I
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 696
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 698
    if-eqz p1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20401d4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 705
    .end local v0           #loc:[I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 702
    .restart local p1
    :cond_1
    check-cast p1, Lcom/htc/fragment/widget/DragSource;

    .end local p1
    if-eq p1, p0, :cond_2

    .line 703
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemLongClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;)V

    .line 354
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;)V

    .line 355
    return-void
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1320
    .local p1, parent:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<*>;"
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1336
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    .line 1323
    .local v0, info:Lcom/htc/fragment/widget/TaskInfo;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1327
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1330
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1331
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 370
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 396
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 374
    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_3

    .line 378
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    move v0, v2

    .line 379
    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    iget v0, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    .line 383
    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 385
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 386
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 388
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 389
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 390
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    .line 392
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 393
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p2, p0, v3, v1}, Lcom/htc/fragment/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V

    .line 394
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    move v0, v2

    .line 396
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1403
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 1405
    sparse-switch p1, :sswitch_data_0

    .line 1435
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1437
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1439
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1441
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    .line 1442
    .local v1, handle:Z
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1493
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1408
    :sswitch_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_1

    .line 1411
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    .line 1413
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1414
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1419
    :sswitch_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1421
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 1422
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    .line 1424
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1450
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 1480
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1482
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1484
    .restart local v0       #content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1486
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    .line 1487
    .restart local v1       #handle:Z
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1488
    goto :goto_0

    .line 1453
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :sswitch_3
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1455
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_4

    .line 1456
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    .line 1458
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1464
    :sswitch_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1466
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 1467
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    .line 1469
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1493
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1405
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1450
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method openDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    .line 407
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 408
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 410
    :cond_0
    return-void
.end method

.method public bridge synthetic partialFling(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/Gallery;->partialFling(III)V

    return-void
.end method

.method public bridge synthetic partialFling(IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method realign()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 1514
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v0

    .line 1521
    .local v0, firstVisPos:I
    const/4 v1, -0x1

    .line 1523
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 1524
    .local v2, lastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1526
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1527
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1530
    :cond_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_7

    .line 1532
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1534
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_3

    .line 1536
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1537
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1539
    :cond_3
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1540
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1542
    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1543
    :cond_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1547
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1549
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_8

    .line 1551
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1554
    :cond_8
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1555
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1557
    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_b

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1558
    :cond_b
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0
.end method

.method public scrollBottom()V
    .locals 2

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1286
    return-void
.end method

.method public bridge synthetic scrollBy(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1259
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1268
    return-void
.end method

.method public scrollTop()V
    .locals 2

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1277
    return-void
.end method

.method public bridge synthetic setAnimationDuration(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method

.method public bridge synthetic setCallbackDuringFling(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackDuringFling(Z)V

    return-void
.end method

.method public bridge synthetic setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackOnUnselectedItemClick(Z)V

    return-void
.end method

.method setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1313
    return-void
.end method

.method setCountText(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1348
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1349
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1350
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1352
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1353
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setCountTextVisibility(II)V

    .line 1358
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1355
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setCountTextVisibility(II)V
    .locals 4
    .parameter "index"
    .parameter "visibility"

    .prologue
    .line 1362
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1363
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1364
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1366
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1367
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1372
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1369
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1295
    if-gez p1, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1301
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setNextSelectedPositionInt(I)V

    .line 1303
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->calibrateThumb(I)V

    .line 1306
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    goto :goto_0
.end method

.method setDragger(Lcom/htc/fragment/widget/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 416
    return-void
.end method

.method setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 422
    return-void
.end method

.method setEditorMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setEditorMode(Z)V

    .line 1380
    :cond_0
    return-void
.end method

.method setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0
    .parameter "carouselFragment"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    .line 431
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setGravity(I)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 360
    return-void
.end method

.method public bridge synthetic setSpacing(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method setStateMode(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1340
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    .line 1341
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 1342
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->setStateMode(I)V

    .line 1343
    return-void
.end method

.method public bridge synthetic setUnselectedAlpha(F)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setUnselectedAlpha(F)V

    return-void
.end method

.method public bridge synthetic showContextMenu()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
