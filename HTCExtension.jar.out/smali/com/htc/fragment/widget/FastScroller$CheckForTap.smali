.class final Lcom/htc/fragment/widget/FastScroller$CheckForTap;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;,
        Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;
    }
.end annotation


# instance fields
.field private alignmentRecord:I

.field private animateView:Landroid/view/View;

.field private carouselView:Lcom/htc/fragment/widget/CarouselTextView;

.field private endRecord:I

.field private mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private posRecord:I

.field private final scaleDuration:I

.field private final scaleRatio:F

.field private scrollXRecord:I

.field private scrollYRecord:I

.field private startRecord:I

.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1426
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scaleDuration:I

    .line 1432
    const v0, 0x3f666666

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scaleRatio:F

    .line 1434
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1435
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scrollXRecord:I

    .line 1436
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scrollYRecord:I

    .line 1437
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->alignmentRecord:I

    .line 1439
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    .line 1440
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->startRecord:I

    .line 1442
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1445
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    .line 1486
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/FastScroller;Lcom/htc/fragment/widget/FastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1426
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/utils/perf/FramerateMonitor;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1400(Lcom/htc/fragment/widget/FastScroller;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1540
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 1541
    .local v26, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 1542
    .local v27, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v19

    .line 1548
    .local v19, pos:I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_d

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v18

    .line 1552
    .local v18, itemWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v15

    .line 1554
    .local v15, galleryWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v24

    .line 1555
    .local v24, totalItemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2100(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int v23, v2, v3

    .line 1556
    .local v23, thumbArea:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2100(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mOffset:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2200(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    .line 1558
    .local v12, dataArea:I
    move/from16 v0, v19

    int-to-float v2, v0

    add-int/lit8 v3, v24, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int v3, v23, v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    .line 1559
    .local v11, alignment:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int v9, v2, v3

    .line 1560
    .local v9, aX:I
    int-to-float v2, v9

    sub-float v21, v11, v2

    .line 1562
    .local v21, scrollX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v2, v23, v2

    if-gez v2, :cond_3

    .line 1563
    const/16 v21, 0x0

    .line 1564
    const/4 v11, 0x0

    .line 1565
    const/16 v19, -0x1

    .line 1568
    :cond_3
    mul-int v2, v24, v18

    sub-int/2addr v2, v12

    if-lez v2, :cond_8

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1574
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1578
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    if-eqz v2, :cond_6

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1581
    :cond_6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1582
    move/from16 v0, v21

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scrollXRecord:I

    .line 1583
    float-to-int v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->alignmentRecord:I

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1590
    .local v25, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1592
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const v5, 0x3f666666

    const/high16 v6, 0x3f80

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scrollXRecord:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->alignmentRecord:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;III)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const v6, 0x3f666666

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/fragment/widget/FastScroller$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1604
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1402(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v2

    move/from16 v0, v21

    float-to-int v3, v0

    float-to-int v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0

    .line 1615
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1618
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1622
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    if-eqz v2, :cond_b

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1625
    :cond_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->startRecord:I

    .line 1627
    mul-int v2, v19, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    .line 1628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1634
    .restart local v25       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1636
    .restart local v16       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const v5, 0x3f666666

    const/high16 v6, 0x3f80

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->startRecord:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;III)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const v6, 0x3f666666

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/fragment/widget/FastScroller$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1650
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v20

    .line 1654
    .local v20, previous:I
    mul-int v2, v19, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    add-int v13, v2, v3

    .line 1656
    .local v13, end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1402(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v2

    sub-int v3, v13, v20

    move/from16 v0, v19

    invoke-virtual {v2, v3, v13, v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0

    .line 1663
    .end local v9           #aX:I
    .end local v11           #alignment:F
    .end local v12           #dataArea:I
    .end local v13           #end:I
    .end local v15           #galleryWidth:I
    .end local v18           #itemWidth:I
    .end local v20           #previous:I
    .end local v21           #scrollX:F
    .end local v23           #thumbArea:I
    .end local v24           #totalItemCount:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v17

    .line 1664
    .local v17, itemHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v14

    .line 1666
    .local v14, galleryHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v24

    .line 1667
    .restart local v24       #totalItemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v2, v14, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int v23, v2, v3

    .line 1668
    .restart local v23       #thumbArea:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v2, v14, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mOffset:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2200(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    .line 1670
    .restart local v12       #dataArea:I
    move/from16 v0, v19

    int-to-float v2, v0

    add-int/lit8 v3, v24, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$1000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int v3, v23, v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    .line 1671
    .restart local v11       #alignment:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int v10, v2, v3

    .line 1672
    .local v10, aY:I
    int-to-float v2, v10

    sub-float v22, v11, v2

    .line 1674
    .local v22, scrollY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v2, v23, v2

    if-gez v2, :cond_e

    .line 1675
    const/16 v22, 0x0

    .line 1676
    const/4 v11, 0x0

    .line 1677
    const/16 v19, -0x1

    .line 1680
    :cond_e
    mul-int v2, v24, v17

    sub-int/2addr v2, v12

    if-lez v2, :cond_13

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1686
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1690
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    if-eqz v2, :cond_11

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1693
    :cond_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1694
    move/from16 v0, v22

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scrollYRecord:I

    .line 1695
    float-to-int v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->alignmentRecord:I

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1702
    .restart local v25       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1704
    .restart local v16       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const v5, 0x3f666666

    const/high16 v6, 0x3f80

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->scrollYRecord:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->alignmentRecord:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;III)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const v6, 0x3f666666

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/fragment/widget/FastScroller$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1716
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1402(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v2

    move/from16 v0, v22

    float-to-int v3, v0

    float-to-int v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0

    .line 1727
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1730
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1734
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    if-eqz v2, :cond_16

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1737
    :cond_16
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->startRecord:I

    .line 1739
    mul-int v2, v19, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_17

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;

    .line 1745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1746
    .restart local v25       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1748
    .restart local v16       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const v5, 0x3f666666

    const/high16 v6, 0x3f80

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->startRecord:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->endRecord:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->posRecord:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;III)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v28, v0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const v6, 0x3f666666

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/fragment/widget/FastScroller$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1760
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$2302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1502(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v20

    .line 1764
    .restart local v20       #previous:I
    mul-int v2, v19, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    add-int v13, v2, v3

    .line 1766
    .restart local v13       #end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$1402(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v2

    sub-int v3, v13, v20

    move/from16 v0, v19

    invoke-virtual {v2, v3, v13, v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0
.end method
