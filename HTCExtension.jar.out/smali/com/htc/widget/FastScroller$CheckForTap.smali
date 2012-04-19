.class final Lcom/htc/widget/FastScroller$CheckForTap;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field private alignmentRecord:I

.field private animateView:Landroid/view/View;

.field private carouselView:Lcom/htc/widget/CarouselTextView;

.field private endRecord:I

.field private posRecord:I

.field private final scaleDuration:I

.field private final scaleRatio:F

.field private scrollXRecord:I

.field private scrollYRecord:I

.field private startRecord:I

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1265
    iput-object p1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->scaleDuration:I

    .line 1271
    const v0, 0x3f666666

    iput v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->scaleRatio:F

    .line 1273
    iput v1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1274
    iput v1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->scrollXRecord:I

    .line 1275
    iput v1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->scrollYRecord:I

    .line 1276
    iput v1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->alignmentRecord:I

    .line 1278
    iput v1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->endRecord:I

    .line 1279
    iput v1, p0, Lcom/htc/widget/FastScroller$CheckForTap;->startRecord:I

    .line 1281
    iput-object v2, p0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1284
    iput-object v2, p0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/widget/FastScroller;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/widget/FastScroller$CheckForTap;)Lcom/htc/widget/CarouselTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/FastScroller$CheckForTap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->scrollXRecord:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/FastScroller$CheckForTap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->alignmentRecord:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/FastScroller$CheckForTap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/widget/FastScroller$CheckForTap;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/widget/FastScroller$CheckForTap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->endRecord:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/widget/FastScroller$CheckForTap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->startRecord:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/widget/FastScroller$CheckForTap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/widget/FastScroller$CheckForTap;->scrollYRecord:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1301
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 1302
    .local v26, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 1303
    .local v27, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v19

    .line 1305
    .local v19, pos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/AbsSpinner;->performHapticFeedback(I)Z

    .line 1308
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isPortrait:Z
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemWidth:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1500(Lcom/htc/widget/FastScroller;)I

    move-result v18

    .line 1314
    .local v18, itemWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$900(Lcom/htc/widget/FastScroller;)I

    move-result v15

    .line 1316
    .local v15, galleryWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v24

    .line 1317
    .local v24, totalItemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v23, v2, v3

    .line 1318
    .local v23, thumbArea:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    .line 1320
    .local v12, dataArea:I
    move/from16 v0, v19

    int-to-float v2, v0

    add-int/lit8 v3, v24, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v3, v23, v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    .line 1321
    .local v11, alignment:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v9, v2, v3

    .line 1322
    .local v9, aX:I
    int-to-float v2, v9

    sub-float v21, v11, v2

    .line 1324
    .local v21, scrollX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v2, v23, v2

    if-gez v2, :cond_4

    .line 1326
    const/16 v21, 0x0

    .line 1327
    const/4 v11, 0x0

    .line 1328
    const/16 v19, -0x1

    .line 1331
    :cond_4
    mul-int v2, v24, v18

    sub-int/2addr v2, v12

    if-lez v2, :cond_9

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1338
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1342
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    if-eqz v2, :cond_7

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1345
    :cond_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1346
    move/from16 v0, v21

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->scrollXRecord:I

    .line 1347
    float-to-int v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->alignmentRecord:I

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1356
    .local v25, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1358
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$1;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$2;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1415
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v2

    move/from16 v0, v21

    float-to-int v3, v0

    float-to-int v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0

    .line 1428
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1431
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1435
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    if-eqz v2, :cond_c

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1438
    :cond_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->startRecord:I

    .line 1440
    mul-int v2, v19, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->endRecord:I

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1449
    .restart local v25       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1451
    .restart local v16       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$3;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$4;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1510
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v20

    .line 1514
    .local v20, previous:I
    mul-int v2, v19, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v3

    add-int v13, v2, v3

    .line 1516
    .local v13, end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v2

    sub-int v3, v13, v20

    move/from16 v0, v19

    invoke-virtual {v2, v3, v13, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0

    .line 1525
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
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemHeight:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2900(Lcom/htc/widget/FastScroller;)I

    move-result v17

    .line 1526
    .local v17, itemHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$800(Lcom/htc/widget/FastScroller;)I

    move-result v14

    .line 1528
    .local v14, galleryHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v24

    .line 1529
    .restart local v24       #totalItemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v2, v14, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$3100(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v23, v2, v3

    .line 1530
    .restart local v23       #thumbArea:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v2, v14, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$3100(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    .line 1532
    .restart local v12       #dataArea:I
    move/from16 v0, v19

    int-to-float v2, v0

    add-int/lit8 v3, v24, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v3, v23, v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    .line 1533
    .restart local v11       #alignment:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v10, v2, v3

    .line 1534
    .local v10, aY:I
    int-to-float v2, v10

    sub-float v22, v11, v2

    .line 1536
    .local v22, scrollY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbH:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v2

    sub-int v2, v23, v2

    if-gez v2, :cond_f

    .line 1538
    const/16 v22, 0x0

    .line 1539
    const/4 v11, 0x0

    .line 1540
    const/16 v19, -0x1

    .line 1543
    :cond_f
    mul-int v2, v24, v17

    sub-int/2addr v2, v12

    if-lez v2, :cond_14

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1550
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1554
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    if-eqz v2, :cond_12

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1557
    :cond_12
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1558
    move/from16 v0, v22

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->scrollYRecord:I

    .line 1559
    float-to-int v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->alignmentRecord:I

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_13

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1568
    .restart local v25       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1570
    .restart local v16       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$5;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$6;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1627
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v2

    move/from16 v0, v22

    float-to-int v3, v0

    float-to-int v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0

    .line 1640
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1643
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 1647
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    if-eqz v2, :cond_17

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1650
    :cond_17
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->startRecord:I

    .line 1652
    mul-int v2, v19, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->endRecord:I

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    const v3, 0x2020061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v25, v2, 0x2

    .line 1661
    .restart local v25       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 1663
    .restart local v16       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$7;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

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

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Lcom/htc/widget/FastScroller$CheckForTap$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/FastScroller$CheckForTap$8;-><init>(Lcom/htc/widget/FastScroller$CheckForTap;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1720
    .end local v16           #height:I
    .end local v25           #width:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1902(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v20

    .line 1724
    .restart local v20       #previous:I
    mul-int v2, v19, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    add-int v13, v2, v3

    .line 1726
    .restart local v13       #end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$1202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v2

    sub-int v3, v13, v20

    move/from16 v0, v19

    invoke-virtual {v2, v3, v13, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto/16 :goto_0
.end method
