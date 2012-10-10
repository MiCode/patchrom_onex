.class public Landroid/webkit/ZoomManager$HTCMultiTouch;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTCMultiTouch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;
    }
.end annotation


# instance fields
.field getNode:Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;

.field public mBouncingBackgroundColor:I

.field public mDrawInSchedule:Z

.field public mScalePivotX:F

.field public mScalePivotY:F

.field public mWebView:Landroid/webkit/WebView;

.field public m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

.field public m_bDisableURLLink:Z

.field public m_bEnableShowMTCenterPtInScreen:Z

.field public m_bIsHitImageNode:Z

.field public m_bMTEnding:Z

.field public m_bNotifyHostMultiTouchBouncingMinScale:Z

.field public m_bUpdateSizeFinish:Z

.field public m_fCurrentMTScale:F

.field public m_fscale:F

.field public m_fscaleOverview:F

.field public m_inMultiTouchMode:Z

.field public m_nSmartZoomHitNode:I

.field public m_ptHitPointRatio:Landroid/graphics/Point;

.field public m_ptInitFingerCenter:Landroid/graphics/Point;

.field public m_ptInitFingerContentCenter:Landroid/graphics/Point;

.field public m_ptLastFinger1:Landroid/graphics/PointF;

.field public m_ptLastFinger2:Landroid/graphics/PointF;

.field public m_useMultiTouchDraw:Z

.field public mfLastZoomRatio:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V
    .locals 5
    .parameter
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/high16 v0, 0x3f00

    const/4 v3, -0x1

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 2489
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    .line 2465
    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    .line 2466
    iput v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mScalePivotX:F

    .line 2467
    iput v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mScalePivotY:F

    .line 2468
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_useMultiTouchDraw:Z

    .line 2469
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    .line 2470
    iput v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    .line 2471
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    .line 2472
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptLastFinger1:Landroid/graphics/PointF;

    .line 2473
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptLastFinger2:Landroid/graphics/PointF;

    .line 2474
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerCenter:Landroid/graphics/Point;

    .line 2475
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerContentCenter:Landroid/graphics/Point;

    .line 2476
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bIsHitImageNode:Z

    .line 2477
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    .line 2478
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bDisableURLLink:Z

    .line 2479
    iput-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    .line 2480
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bNotifyHostMultiTouchBouncingMinScale:Z

    .line 2481
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    .line 2482
    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mfLastZoomRatio:F

    .line 2483
    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fCurrentMTScale:F

    .line 2484
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bEnableShowMTCenterPtInScreen:Z

    .line 2485
    const v0, -0x777778

    iput v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mBouncingBackgroundColor:I

    .line 2486
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bUpdateSizeFinish:Z

    .line 2487
    iput-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    .line 2668
    new-instance v0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;-><init>(Landroid/webkit/ZoomManager$HTCMultiTouch;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->getNode:Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;

    .line 2490
    iput-object p2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    .line 2491
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    .line 2492
    return-void
.end method

.method private AssignRatio(F)V
    .locals 4
    .parameter "fZoomRatio"

    .prologue
    .line 2639
    iput p1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    .line 2641
    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMaxZoomScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$2300(Landroid/webkit/ZoomManager;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    .line 2642
    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    iget v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    .line 2645
    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    iget v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMaxZoomScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$2300(Landroid/webkit/ZoomManager;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2646
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/ZoomManager;->access$1900(Landroid/webkit/ZoomManager;FZZ)V

    .line 2647
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 2649
    :cond_1
    return-void
.end method

.method private PreviewZoom(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x3f80

    .line 2851
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 2852
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    const-wide/16 v1, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mZoomStart:J
    invoke-static {v0, v1, v2}, Landroid/webkit/ZoomManager;->access$3102(Landroid/webkit/ZoomManager;J)J

    .line 2853
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v1

    div-float v1, v3, v1

    #setter for: Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$3202(Landroid/webkit/ZoomManager;F)F

    .line 2854
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    div-float v1, v3, p1

    #setter for: Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$3302(Landroid/webkit/ZoomManager;F)F

    .line 2855
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mZoomScale:F
    invoke-static {v0, p1}, Landroid/webkit/ZoomManager;->access$2602(Landroid/webkit/ZoomManager;F)F

    .line 2856
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 2857
    return-void
.end method

.method private PreviewZoomComplete(F)V
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v2, 0x1

    .line 2861
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mZoomScale:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$2602(Landroid/webkit/ZoomManager;F)F

    .line 2862
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #calls: Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V
    invoke-static {v0, p1, v2, v2}, Landroid/webkit/ZoomManager;->access$1900(Landroid/webkit/ZoomManager;FZZ)V

    .line 2863
    return-void
.end method

.method private easeOutBounce(JFFJ)F
    .locals 14
    .parameter "tl"
    .parameter "b"
    .parameter "c"
    .parameter "dl"

    .prologue
    .line 3004
    long-to-float v5, p1

    .line 3005
    .local v5, t:F
    move-wide/from16 v0, p5

    long-to-float v2, v0

    .line 3007
    .local v2, d:F
    div-float/2addr v5, v2

    float-to-double v6, v5

    const-wide v8, 0x3fd745d1745d1746L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 3008
    move/from16 v0, p4

    float-to-double v6, v0

    const-wide v8, 0x401e400000000000L

    float-to-double v10, v5

    mul-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    mul-double/2addr v6, v8

    move/from16 v0, p3

    float-to-double v8, v0

    add-double v3, v6, v8

    .line 3027
    .local v3, ret:D
    :goto_0
    double-to-float v6, v3

    return v6

    .line 3009
    .end local v3           #ret:D
    :cond_0
    float-to-double v6, v5

    const-wide v8, 0x3fe745d1745d1746L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 3010
    move/from16 v0, p4

    float-to-double v6, v0

    const-wide v8, 0x401e400000000000L

    float-to-double v10, v5

    const-wide v12, 0x3fe1745d1745d174L

    sub-double/2addr v10, v12

    double-to-float v5, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe8

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    move/from16 v0, p3

    float-to-double v8, v0

    add-double v3, v6, v8

    .restart local v3       #ret:D
    goto :goto_0

    .line 3011
    .end local v3           #ret:D
    :cond_1
    float-to-double v6, v5

    const-wide v8, 0x3fed1745d1745d17L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 3012
    move/from16 v0, p4

    float-to-double v6, v0

    const-wide v8, 0x401e400000000000L

    float-to-double v10, v5

    const-wide v12, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr v10, v12

    double-to-float v5, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fee

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    move/from16 v0, p3

    float-to-double v8, v0

    add-double v3, v6, v8

    .restart local v3       #ret:D
    goto :goto_0

    .line 3014
    .end local v3           #ret:D
    :cond_2
    move/from16 v0, p4

    float-to-double v6, v0

    const-wide v8, 0x401e400000000000L

    float-to-double v10, v5

    const-wide v12, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr v10, v12

    double-to-float v5, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide v10, 0x3fef800000000000L

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    move/from16 v0, p3

    float-to-double v8, v0

    add-double v3, v6, v8

    .restart local v3       #ret:D
    goto :goto_0
.end method

.method private getHitNode(FFFFLandroid/graphics/Rect;)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "x2"
    .parameter "y2"
    .parameter "rcLocalDraw"

    .prologue
    .line 2671
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    .line 2672
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bIsHitImageNode:Z

    .line 2673
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    .line 2674
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 2675
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v6}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 2677
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getIsLoading()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2678
    const/4 v1, 0x0

    .line 2679
    .local v1, contentX:I
    const/4 v2, 0x0

    .line 2681
    .local v2, contentY:I
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v6, v6, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2682
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    add-float v7, p1, p3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 2683
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    add-float v7, p2, p4

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 2689
    :goto_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2690
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/WebView;->nativeGetHitTestNodeSafely(II)I

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    .line 2692
    const/4 v0, 0x0

    .line 2693
    .local v0, bImageNode:Z
    iget v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    if-eqz v6, :cond_0

    .line 2694
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v6

    iget v7, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    invoke-virtual {v6, v7}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v0

    .line 2695
    if-nez v0, :cond_0

    .line 2696
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v5

    .line 2697
    .local v5, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v5, :cond_0

    .line 2698
    const/4 v0, 0x1

    .line 2702
    .end local v5           #plugin:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    if-nez v0, :cond_1

    .line 2703
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->getNode:Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;

    iput v1, v6, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentX:I

    .line 2704
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->getNode:Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;

    iput v2, v6, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentY:I

    .line 2708
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->getNode:Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;

    invoke-virtual {v6}, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->run()V

    .line 2717
    :cond_1
    iget v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    if-eqz v6, :cond_2

    .line 2718
    const/4 v4, 0x0

    .line 2719
    .local v4, nodeRect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    iget v6, v6, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v6, :cond_4

    .line 2720
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #nodeRect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2725
    .restart local v4       #nodeRect:Landroid/graphics/Rect;
    :goto_1
    if-nez v4, :cond_5

    .line 2762
    .end local v0           #bImageNode:Z
    .end local v1           #contentX:I
    .end local v2           #contentY:I
    .end local v4           #nodeRect:Landroid/graphics/Rect;
    :cond_2
    :goto_2
    return-void

    .line 2685
    .restart local v1       #contentX:I
    .restart local v2       #contentY:I
    :cond_3
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    add-float v7, p1, p3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 2686
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    add-float v7, p2, p4

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    goto :goto_0

    .line 2722
    .restart local v0       #bImageNode:Z
    .restart local v4       #nodeRect:Landroid/graphics/Rect;
    :cond_4
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v6

    iget v7, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_1

    .line 2728
    :cond_5
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_8

    .line 2729
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 2734
    :cond_6
    :goto_3
    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le v1, v6, :cond_9

    .line 2735
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 2740
    :cond_7
    :goto_4
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 2741
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 2753
    :goto_5
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 2754
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2755
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerContentCenter:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 2756
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bIsHitImageNode:Z

    goto/16 :goto_2

    .line 2730
    :cond_8
    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_6

    .line 2731
    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 2736
    :cond_9
    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ge v1, v6, :cond_7

    .line 2737
    iget v1, v4, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 2743
    :cond_a
    const/4 v3, 0x0

    .line 2744
    .local v3, contentY_temp:I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v6, :cond_b

    .line 2745
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v6, -0x1

    .line 2750
    :goto_6
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto :goto_5

    .line 2746
    :cond_b
    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-gt v2, v6, :cond_c

    .line 2747
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v6, 0x1

    goto :goto_6

    .line 2749
    :cond_c
    move v3, v2

    goto :goto_6
.end method

.method private setScalePivot(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 2505
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 2506
    iput p1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mScalePivotX:F

    .line 2507
    :cond_0
    cmpg-float v0, v1, p2

    if-gtz v0, :cond_1

    cmpg-float v0, p2, v2

    if-gtz v0, :cond_1

    .line 2508
    iput p2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mScalePivotY:F

    .line 2509
    :cond_1
    return-void
.end method


# virtual methods
.method canZoomWebView()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3031
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMaxZoomScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2300(Landroid/webkit/ZoomManager;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v0, v2

    .line 3032
    .local v0, bcanZoomIn:Z
    :goto_0
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 3034
    .local v1, bcanZoomOut:Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 3037
    :goto_2
    return v3

    .end local v0           #bcanZoomIn:Z
    .end local v1           #bcanZoomOut:Z
    :cond_0
    move v0, v3

    .line 3031
    goto :goto_0

    .restart local v0       #bcanZoomIn:Z
    :cond_1
    move v1, v3

    .line 3032
    goto :goto_1

    .restart local v1       #bcanZoomOut:Z
    :cond_2
    move v3, v2

    .line 3037
    goto :goto_2
.end method

.method public enableMultiTouchShowCenterPtInScreen(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2496
    iput-boolean p1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bEnableShowMTCenterPtInScreen:Z

    .line 2497
    return-void
.end method

.method public fnMultiTouchRecoveryStatus(I)V
    .locals 4
    .parameter "nTimer"

    .prologue
    .line 2915
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2916
    return-void
.end method

.method public isUseMultiTouchDraw()Z
    .locals 1

    .prologue
    .line 2500
    iget-boolean v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_useMultiTouchDraw:Z

    return v0
.end method

.method public mtEnd()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v4, -0x4080

    .line 2781
    iget-boolean v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    if-nez v0, :cond_0

    .line 2847
    :goto_0
    return-void

    .line 2784
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_useMultiTouchDraw:Z

    .line 2785
    iput-boolean v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    .line 2786
    iput v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fCurrentMTScale:F

    .line 2788
    invoke-virtual {p0}, Landroid/webkit/ZoomManager$HTCMultiTouch;->canZoomWebView()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2789
    iput-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bDisableURLLink:Z

    .line 2790
    iput-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    .line 2794
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x3f181062

    iput v1, v0, Landroid/webkit/WebView;->mfTabRatio:F

    .line 2796
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 2797
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 2800
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_2

    .line 2801
    iput-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    .line 2806
    :cond_2
    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    iget v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 2807
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v0, v2}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 2813
    :goto_1
    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    .line 2814
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getIsLoading()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2815
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-boolean v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 2816
    :cond_3
    iget v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager$HTCMultiTouch;->PreviewZoomComplete(F)V

    .line 2819
    :cond_4
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v0, v0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v2, :cond_5

    .line 2820
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-boolean v3, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 2822
    :cond_5
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    #setter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$1502(Landroid/webkit/ZoomManager;F)F

    .line 2823
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    #setter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$1702(Landroid/webkit/ZoomManager;F)F

    .line 2825
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$1500(Landroid/webkit/ZoomManager;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$1700(Landroid/webkit/ZoomManager;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    .line 2826
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$1500(Landroid/webkit/ZoomManager;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    #setter for: Landroid/webkit/ZoomManager;->mAnchorX:I
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;I)I

    .line 2827
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$1700(Landroid/webkit/ZoomManager;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    #setter for: Landroid/webkit/ZoomManager;->mAnchorY:I
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$1602(Landroid/webkit/ZoomManager;I)I

    .line 2834
    :cond_6
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 2835
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2836
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2841
    :cond_7
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 2843
    iput v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscale:F

    .line 2844
    iput v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    .line 2845
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptLastFinger1:Landroid/graphics/PointF;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 2846
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptLastFinger2:Landroid/graphics/PointF;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 2809
    :cond_8
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v0, v3}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    goto/16 :goto_1
.end method

.method public multiTouchOnMoveEvent(FFFFF)Z
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "x2"
    .parameter "y2"
    .parameter "fZoomRatio"

    .prologue
    .line 2513
    invoke-virtual {p0}, Landroid/webkit/ZoomManager$HTCMultiTouch;->canZoomWebView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2514
    const/4 v2, 0x0

    .line 2635
    :goto_0
    return v2

    .line 2516
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bNotifyHostMultiTouchBouncingMinScale:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2517
    const/4 v2, 0x0

    goto :goto_0

    .line 2519
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2520
    const/4 v2, 0x0

    goto :goto_0

    .line 2522
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bUpdateSizeFinish:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2523
    const/4 v2, 0x0

    goto :goto_0

    .line 2526
    :cond_3
    iget-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    if-nez v2, :cond_7

    .line 2529
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2530
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v2

    const-wide/32 v3, 0xa00000

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 2532
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    .line 2535
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerCenter:Landroid/graphics/Point;

    add-float v3, p1, p3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-float v4, p2, p4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 2537
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 2539
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 2540
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 2544
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2545
    .local v7, rcLocalDraw:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2547
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 2548
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    add-float v3, p1, p3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    #setter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1502(Landroid/webkit/ZoomManager;F)F

    .line 2549
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    add-float v3, p2, p4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    #setter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1702(Landroid/webkit/ZoomManager;F)F

    .line 2555
    :goto_1
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bsetScaleWithoutCheck:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 2556
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result v2

    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    .line 2576
    :goto_2
    const/4 v12, 0x0

    .line 2577
    .local v12, sx:F
    const/4 v13, 0x0

    .line 2578
    .local v13, sy:F
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x3f181062

    iput v3, v2, Landroid/webkit/WebView;->mfTabRatio:F

    .line 2579
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 2580
    .local v9, display:Landroid/view/Display;
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 2581
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v12, v2, v3

    .line 2582
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float v13, v2, v3

    .line 2588
    :goto_3
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    .line 2589
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    .line 2591
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    sget-boolean v2, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v10, 0x0

    .line 2592
    .local v10, nHostStatusbarHeight:I
    :goto_4
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v2, v10

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2594
    .local v11, nVisibleTitleHeight:I
    if-lez v11, :cond_5

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getCacheDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2595
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getCacheDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mfTabRatio:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getCacheDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v11

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Landroid/webkit/WebView;->mfTabRatio:F

    .line 2597
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 2598
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v12, v2, v3

    .line 2599
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float v13, v2, v3

    .line 2605
    :goto_5
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    .line 2606
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    .line 2609
    :cond_5
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 2611
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    const/4 v3, 0x1

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1202(Landroid/webkit/ZoomManager;Z)Z

    .line 2613
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bsetScaleWithoutCheck:Z

    if-nez v2, :cond_10

    .line 2614
    add-float v2, p1, p3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v3, p2, p4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Landroid/webkit/ZoomManager$HTCMultiTouch;->setScalePivot(FF)V

    :goto_6
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2620
    invoke-direct/range {v2 .. v7}, Landroid/webkit/ZoomManager$HTCMultiTouch;->getHitNode(FFFFLandroid/graphics/Rect;)V

    .line 2622
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2623
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 2624
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 2627
    :cond_6
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager;->isMTing:Z

    .line 2630
    .end local v7           #rcLocalDraw:Landroid/graphics/Rect;
    .end local v9           #display:Landroid/view/Display;
    .end local v10           #nHostStatusbarHeight:I
    .end local v11           #nVisibleTitleHeight:I
    .end local v12           #sx:F
    .end local v13           #sy:F
    :cond_7
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptLastFinger1:Landroid/graphics/PointF;

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 2631
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptLastFinger2:Landroid/graphics/PointF;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 2633
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager$HTCMultiTouch;->AssignRatio(F)V

    .line 2635
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2551
    .restart local v7       #rcLocalDraw:Landroid/graphics/Rect;
    :cond_8
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    add-float v3, p1, p3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    #setter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1502(Landroid/webkit/ZoomManager;F)F

    .line 2552
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    add-float v3, p2, p4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    #setter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1702(Landroid/webkit/ZoomManager;F)F

    goto/16 :goto_1

    .line 2558
    :cond_9
    const/4 v8, 0x0

    .line 2559
    .local v8, bMobileSite:Z
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2560
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getViewportWidth()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v8, 0x1

    .line 2561
    :cond_a
    :goto_7
    if-nez v8, :cond_c

    .line 2563
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    .line 2564
    const/high16 v2, 0x3f80

    iget v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    .line 2565
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result v2

    iget v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    .line 2566
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    #setter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$2202(Landroid/webkit/ZoomManager;F)F

    goto/16 :goto_2

    .line 2560
    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    .line 2568
    :cond_c
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result v2

    iput v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_fscaleOverview:F

    goto/16 :goto_2

    .line 2584
    .end local v8           #bMobileSite:Z
    .restart local v9       #display:Landroid/view/Display;
    .restart local v12       #sx:F
    .restart local v13       #sy:F
    :cond_d
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v12, v2, v3

    .line 2585
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float v13, v2, v3

    goto/16 :goto_3

    .line 2591
    :cond_e
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto/16 :goto_4

    .line 2601
    .restart local v10       #nHostStatusbarHeight:I
    .restart local v11       #nVisibleTitleHeight:I
    :cond_f
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v12, v2, v3

    .line 2602
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, v2, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float v13, v2, v3

    goto/16 :goto_5

    .line 2616
    :cond_10
    add-float v2, p1, p3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v3, p2, p4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Landroid/webkit/ZoomManager$HTCMultiTouch;->setScalePivot(FF)V

    goto/16 :goto_6
.end method

.method public multiTouchOnUpEvent()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2766
    iget-boolean v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    if-ne v2, v0, :cond_2

    .line 2767
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bUpdateSizeFinish:Z

    .line 2768
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v1, v2, :cond_0

    .line 2769
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    .line 2771
    :cond_0
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget-boolean v1, v1, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v1

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget v2, v2, Landroid/webkit/ZoomManager;->mStartZoomRatio:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {}, Landroid/webkit/ZoomManager;->access$3000()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 2772
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iput-boolean v0, v1, Landroid/webkit/ZoomManager;->isMTing:Z

    .line 2774
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager$HTCMultiTouch;->mtEnd()V

    .line 2777
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public multiTouchZoomDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/ZoomManager;->mZoomScale:F
    invoke-static/range {v18 .. v18}, Landroid/webkit/ZoomManager;->access$2600(Landroid/webkit/ZoomManager;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    move-object/from16 v19, v0

    #getter for: Landroid/webkit/ZoomManager;->mInvActualScale:F
    invoke-static/range {v19 .. v19}, Landroid/webkit/ZoomManager;->access$2900(Landroid/webkit/ZoomManager;)F

    move-result v19

    mul-float v12, v18, v19

    .line 2870
    .local v12, ratio:F
    const/4 v9, 0x0

    .line 2871
    .local v9, oldX:I
    const/4 v10, 0x0

    .line 2874
    .local v10, oldY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 2875
    .local v5, display:Landroid/view/Display;
    const/4 v15, 0x0

    .line 2876
    .local v15, sx:F
    const/16 v16, 0x0

    .line 2877
    .local v16, sy:F
    const/4 v7, 0x0

    .line 2878
    .local v7, nHostStatusbarHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v8

    .line 2880
    .local v8, nVisibleTitleHeight:I
    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x3f80

    sub-float v19, v12, v19

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mScalePivotX:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v15, v18, v19

    .line 2881
    int-to-float v0, v10

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x3f80

    sub-float v19, v12, v19

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mScalePivotY:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v16, v18, v19

    .line 2888
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    neg-int v6, v0

    .line 2889
    .local v6, left:I
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v13, v6, v18

    .line 2890
    .local v13, right:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v17, v0

    .line 2891
    .local v17, top:I
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v4, v17, v18

    .line 2893
    .local v4, bottom:I
    sub-int v18, v13, v6

    if-lez v18, :cond_0

    sub-int v18, v4, v17

    if-gtz v18, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return-void

    .line 2902
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 2903
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 2904
    .local v11, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2905
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2909
    .end local v11           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 2910
    .local v14, sc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getBackgroundColor()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getIsDrawCursorRing()Z

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 2911
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public scrollToCenter_MultiTouch(ILandroid/webkit/SelectionUnitInfo;)V
    .locals 16
    .parameter "node"
    .parameter "nodeinfo"

    .prologue
    .line 2920
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->AbortScrollerAnimation()V

    .line 2921
    if-nez p1, :cond_0

    move-object/from16 v0, p2

    iget v11, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v11, :cond_b

    .line 2922
    :cond_0
    const/4 v7, 0x0

    .line 2923
    .local v7, nodeRect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget v11, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v11, :cond_7

    .line 2924
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 2925
    new-instance v7, Landroid/graphics/Rect;

    .end local v7           #nodeRect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-direct {v7, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2930
    .restart local v7       #nodeRect:Landroid/graphics/Rect;
    :goto_0
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2931
    const/4 v3, 0x0

    .local v3, nScrollX:I
    const/4 v4, 0x0

    .line 2932
    .local v4, nScrollY:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v10

    .line 2933
    .local v10, textWrapWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v10, :cond_8

    const/4 v1, 0x1

    .line 2935
    .local v1, adjustWidth:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 2936
    iget v11, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iput v11, v7, Landroid/graphics/Rect;->right:I

    .line 2937
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v3, v11, v12

    .line 2939
    const/4 v2, 0x0

    .line 2940
    .local v2, charRect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget v11, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v11, :cond_2

    .line 2941
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #charRect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-direct {v2, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2943
    .restart local v2       #charRect:Landroid/graphics/Rect;
    :cond_2
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 2944
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v4, v11, v12

    .line 2953
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v11, v11, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v11, v11, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-boolean v11, v11, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bIsHitImageNode:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2954
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v12, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v13, v13, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v13, v13, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerContentCenter:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v12, v12, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v12, v12, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int v3, v11, v12

    .line 2955
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v13, v13, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v13, v13, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerContentCenter:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v12, v12, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v12, v12, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v4, v11, v12

    .line 2958
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11, v3}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    .line 2959
    .local v5, nX:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v6

    .line 2960
    .local v6, nY:I
    if-gez v5, :cond_4

    const/4 v5, 0x0

    .line 2962
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11, v5}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11, v6}, Landroid/webkit/WebView;->setMyScrollY(I)V

    .line 2966
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 2967
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v11

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 2968
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v11

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 2971
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 2972
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 2994
    .end local v1           #adjustWidth:Z
    .end local v2           #charRect:Landroid/graphics/Rect;
    .end local v3           #nScrollX:I
    .end local v4           #nScrollY:I
    .end local v5           #nX:I
    .end local v6           #nY:I
    .end local v7           #nodeRect:Landroid/graphics/Rect;
    .end local v10           #textWrapWidth:I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->invalidate()V

    .line 2995
    return-void

    .line 2927
    .restart local v7       #nodeRect:Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-virtual {v11, v0, v12, v13}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v7

    goto/16 :goto_0

    .line 2933
    .restart local v3       #nScrollX:I
    .restart local v4       #nScrollY:I
    .restart local v10       #textWrapWidth:I
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2946
    .restart local v1       #adjustWidth:Z
    .restart local v2       #charRect:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v11, v11, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v11, v11, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v11, v11, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v12, v12, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v12, v12, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v12

    if-eqz v11, :cond_a

    .line 2947
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v14, v14, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v14, v14, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v14, v14, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v14, v14, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v15, v15, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v15, v15, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptHitPointRatio:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    add-int/2addr v14, v15

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->this$0:Landroid/webkit/ZoomManager;

    iget-object v12, v12, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v12, v12, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_ptInitFingerCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v4, v11, v12

    goto/16 :goto_2

    .line 2949
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v4, v11, v12

    goto/16 :goto_2

    .line 2975
    .end local v1           #adjustWidth:Z
    .end local v2           #charRect:Landroid/graphics/Rect;
    .end local v3           #nScrollX:I
    .end local v4           #nScrollY:I
    .end local v7           #nodeRect:Landroid/graphics/Rect;
    .end local v10           #textWrapWidth:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    .line 2976
    .local v8, oldScrollX:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollY()I

    move-result v9

    .line 2977
    .local v9, oldScrollY:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 2978
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setMyScrollY(I)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollX()I

    move-result v11

    if-ne v8, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollY()I

    move-result v11

    if-eq v9, v11, :cond_d

    .line 2980
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setIsUserScroll(Z)V

    .line 2985
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 2986
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v11

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 2987
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v11

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 2990
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 2991
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->fnScrollingEnd()V

    goto/16 :goto_3
.end method
