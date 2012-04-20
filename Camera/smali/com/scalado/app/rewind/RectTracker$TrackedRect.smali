.class Lcom/scalado/app/rewind/RectTracker$TrackedRect;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedRect"
.end annotation


# instance fields
.field private mBlink:I

.field private mEnlargedRect:Landroid/graphics/Rect;

.field private mEyes:[Landroid/graphics/Rect;

.field private mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

.field private mHasSmileBlink:Z

.field private mId:I

.field private mImage:I

.field private mLockedWith:Z

.field private mNeighbours:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mOrgEnlargedRect:Landroid/graphics/Rect;

.field private mRank:I

.field private mRect:Landroid/graphics/Rect;

.field private mRelDeltaNext:Landroid/graphics/PointF;

.field private mRelDeltaPrev:Landroid/graphics/PointF;

.field private mScore:F

.field private mSessionRect:Landroid/graphics/Rect;

.field private mSmile:I

.field private mSupersededBlink:I

.field private mSupersededHasRect:Z

.field private mSupersededHasSmileBlink:Z

.field private mSupersededIsDontCare:Z

.field private mSupersededSmile:I

.field private mUsed:Z

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2519
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    .line 2510
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2491
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    .line 2492
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    .line 2493
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2503
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    .line 2508
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededIsDontCare:Z

    .line 2511
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    .line 2512
    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    .line 2513
    if-eqz p4, :cond_0

    .line 2514
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    .line 2518
    :goto_0
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return-void

    .line 2516
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2510
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter

    .prologue
    .line 2543
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$13(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2494
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$14(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2521
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V

    return-void
.end method

.method static synthetic access$15(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2489
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$17(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2535
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2497
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return v0
.end method

.method static synthetic access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$22(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter

    .prologue
    .line 2493
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    return v0
.end method

.method static synthetic access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2491
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    return v0
.end method

.method static synthetic access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2492
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    return v0
.end method

.method static synthetic access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2486
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    return-void
.end method

.method static synthetic access$27(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2487
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .locals 1
    .parameter

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    return-object v0
.end method

.method static synthetic access$29(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2502
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2527
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I

    move-result v0

    return v0
.end method

.method static synthetic access$30(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$31(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2499
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$32(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2503
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    return-void
.end method

.method static synthetic access$33(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2504
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I

    return-void
.end method

.method static synthetic access$34(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2505
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I

    return-void
.end method

.method static synthetic access$35(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2506
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    return-void
.end method

.method static synthetic access$36(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2507
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z

    return-void
.end method

.method static synthetic access$37(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F
    .locals 1
    .parameter

    .prologue
    .line 2559
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F

    move-result v0

    return v0
.end method

.method static synthetic access$38(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2496
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F

    return-void
.end method

.method static synthetic access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F
    .locals 1
    .parameter

    .prologue
    .line 2496
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2497
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2612
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2485
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter

    .prologue
    .line 2486
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    return v0
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2500
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z

    return v0
.end method

.method private addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1
    .parameter "neighbour"

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2607
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2610
    return-void
.end method

.method private blink()I
    .locals 1

    .prologue
    .line 2536
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2537
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    .line 2539
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I

    goto :goto_0
.end method

.method private computeScore()F
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    .line 2560
    const/4 v0, 0x0

    .line 2561
    .local v0, score:F
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    if-eqz v1, :cond_4

    .line 2562
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    if-ne v1, v5, :cond_1

    .line 2563
    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 2581
    :goto_0
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    if-eq v1, v5, :cond_0

    .line 2583
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    if-eqz v1, :cond_0

    .line 2586
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 2602
    :cond_0
    :goto_1
    return v0

    .line 2564
    :cond_1
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    if-nez v1, :cond_2

    .line 2565
    const/high16 v1, -0x4000

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2573
    :cond_2
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    .line 2576
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2578
    :cond_3
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2600
    :cond_4
    const/high16 v0, -0x3f80

    goto :goto_1
.end method

.method private hasRect()Z
    .locals 1

    .prologue
    .line 2552
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_1

    .line 2553
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2555
    :goto_0
    return v0

    .line 2553
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2555
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z

    goto :goto_0
.end method

.method private hasSmileBlink()Z
    .locals 1

    .prologue
    .line 2544
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2545
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2547
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    goto :goto_0
.end method

.method private setSmileBlink(II)V
    .locals 1
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 2522
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    .line 2523
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    .line 2524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2525
    return-void
.end method

.method private smile()I
    .locals 1

    .prologue
    .line 2528
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2529
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    .line 2531
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I

    goto :goto_0
.end method

.method private translationRelativeToBg(Landroid/graphics/PointF;)Z
    .locals 11
    .parameter "point"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    .line 2613
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    move v7, v8

    .line 2642
    :goto_0
    return v7

    .line 2616
    :cond_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 2617
    .local v5, fdw:F
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v4, v7

    .line 2618
    .local v4, fdh:F
    const/4 v0, 0x0

    .line 2619
    .local v0, dx:F
    const/4 v2, 0x0

    .line 2620
    .local v2, dy:F
    const/4 v1, 0x0

    .line 2621
    .local v1, dxVft:F
    const/4 v3, 0x0

    .line 2622
    .local v3, dyVft:F
    const/4 v6, 0x0

    .line 2623
    .local v6, n:F
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, 0x1

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 2624
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    .line 2625
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    .line 2626
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 2627
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 2628
    add-float/2addr v6, v10

    .line 2630
    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    .line 2631
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    .line 2632
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    .line 2633
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 2634
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 2635
    add-float/2addr v6, v10

    .line 2637
    :cond_2
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 2638
    sub-float v7, v0, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v5, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->x:F

    .line 2639
    sub-float v7, v2, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v4, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->y:F

    .line 2640
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    move v7, v8

    .line 2642
    goto/16 :goto_0
.end method
