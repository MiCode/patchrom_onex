.class public Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
.super Lcom/htc/sunny2/SceneNode;
.source "SSurfaceView.java"

# interfaces
.implements Lcom/htc/sunny2/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SViewRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;
    }
.end annotation


# static fields
.field private static final COMMON_PRIVATE_CORNER_RES_ID:Ljava/lang/String; = "com.android.internal.R.drawable.zzz_common_panel_container_mask"


# instance fields
.field private mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

.field private mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

.field private mBackgroundChanged:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSprite:Lcom/htc/sunny2/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunny2/Texture;

.field private mContextMenuForChild:Lcom/htc/sunny2/view/SView;

.field private mHight:I

.field private mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

.field private mOverlapRoundCornerChanged:Z

.field private mOverlapRoundCornerRect:Landroid/graphics/Rect;

.field private mOverlapRoundCornerResource:I

.field private mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

.field private mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private final sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;I)V
    .locals 4
    .parameter
    .parameter "nodeId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 470
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 438
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 441
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    .line 467
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    .line 468
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    .line 471
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v0, :cond_0

    .line 472
    invoke-super {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 475
    :cond_0
    iput p2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 477
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 478
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 480
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 481
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 482
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

    .line 483
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setRenderOrderMode(I)V

    .line 486
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method private checkAndRenderOrderChanged()V
    .locals 8

    .prologue
    .line 503
    const/high16 v3, -0x8000

    .line 504
    .local v3, hOrder:I
    const/4 v4, 0x0

    .line 506
    .local v4, hView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v2

    .line 507
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 508
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 509
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 510
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 511
    .local v1, childView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getRenderOrder()I

    move-result v6

    .line 512
    .local v6, order:I
    if-lt v6, v3, :cond_0

    .line 513
    move-object v4, v1

    .line 514
    move v3, v6

    .line 507
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    .end local v6           #order:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    .line 520
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 521
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 522
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 523
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    if-ne v1, v4, :cond_3

    .line 524
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 519
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 527
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_2

    .line 531
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 644
    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 649
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 651
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 654
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 711
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 630
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 632
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 633
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v0, :cond_0

    .line 635
    instance-of v2, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 637
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 584
    .local v1, count:I
    const/4 v2, 0x0

    .line 585
    .local v2, hitSprite:I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 586
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v6}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/htc/sunny2/Sunny2;->Window_HitTest(III)I

    move-result v2

    .line 589
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_2

    .line 592
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 593
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 594
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v6, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_1

    .line 595
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 592
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    .line 602
    .local v5, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v5, :cond_4

    .line 616
    .end local v5           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_3
    :goto_1
    return-void

    .line 604
    .restart local v5       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v4

    .line 605
    .local v4, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v4, :cond_3

    .line 607
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 608
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 609
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    if-eq v4, v0, :cond_5

    instance-of v6, v4, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_6

    .line 610
    :cond_5
    check-cast v4, Lcom/htc/sunny2/view/SView;

    .end local v4           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v4, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_1

    .line 607
    .restart local v4       #node:Lcom/htc/sunny2/SceneNode;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 928
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 934
    iput-object p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 937
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 5
    .parameter "sprite"

    .prologue
    .line 555
    if-nez p1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 566
    :cond_0
    :goto_0
    return-object v0

    .line 559
    :cond_1
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 560
    .local v0, pos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 561
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 562
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 563
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method invalidateGlobalBackground(IIZ)V
    .locals 13
    .parameter "width"
    .parameter "height"
    .parameter "focusPresent"

    .prologue
    .line 750
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    if-eq p1, v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    if-eq p2, v8, :cond_0

    .line 751
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 752
    iput p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 753
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 755
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v8, :cond_0

    .line 756
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, p1

    int-to-float v10, p2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 760
    :cond_0
    iget-boolean v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    if-lt p1, v8, :cond_1

    const/4 v8, 0x1

    if-ge p2, v8, :cond_2

    .line 845
    :cond_1
    :goto_0
    return-void

    .line 766
    :cond_2
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    .line 767
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v8, :cond_3

    .line 768
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 769
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 770
    if-nez p3, :cond_4

    .line 771
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    .line 844
    :cond_3
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    goto :goto_0

    .line 774
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 779
    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v8, :cond_6

    .line 780
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 781
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 782
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/16 v9, -0x64

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 784
    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 786
    const/4 v7, 0x0

    .line 787
    .local v7, sBmpBkg:Lcom/htc/sunny2/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v8, :cond_a

    .line 788
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v7

    .line 790
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    iget v8, v8, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    int-to-float v2, v8

    .line 791
    .local v2, bmpWidth:F
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    iget v8, v8, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    int-to-float v1, v8

    .line 793
    .local v1, bmpHeight:F
    const/4 v4, 0x0

    .line 794
    .local v4, fitScreenW:F
    const/4 v3, 0x0

    .line 796
    .local v3, fitScreenH:F
    int-to-float v8, p1

    cmpl-float v8, v2, v8

    if-gez v8, :cond_7

    int-to-float v8, p2

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_9

    .line 798
    :cond_7
    div-float v6, v1, v2

    .line 799
    .local v6, imageAspect:F
    int-to-float v8, p2

    int-to-float v9, p1

    div-float v5, v8, v9

    .line 801
    .local v5, frameAspect:F
    cmpl-float v8, v6, v5

    if-ltz v8, :cond_8

    .line 803
    int-to-float v3, p2

    .line 804
    int-to-float v8, p2

    div-float v4, v8, v6

    .line 819
    .end local v5           #frameAspect:F
    .end local v6           #imageAspect:F
    :goto_2
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v9, 0x3f80

    invoke-virtual {v8, v4, v3, v9}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 826
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmpHeight:F
    .end local v2           #bmpWidth:F
    .end local v3           #fitScreenH:F
    .end local v4           #fitScreenW:F
    :goto_3
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v8, :cond_b

    .line 827
    invoke-static {v7}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 828
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 834
    :goto_4
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 835
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 836
    if-nez p3, :cond_c

    .line 837
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    goto/16 :goto_1

    .line 808
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #bmpHeight:F
    .restart local v2       #bmpWidth:F
    .restart local v3       #fitScreenH:F
    .restart local v4       #fitScreenW:F
    .restart local v5       #frameAspect:F
    .restart local v6       #imageAspect:F
    :cond_8
    int-to-float v4, p1

    .line 809
    int-to-float v8, p1

    mul-float v3, v8, v6

    goto :goto_2

    .line 815
    .end local v5           #frameAspect:F
    .end local v6           #imageAspect:F
    :cond_9
    move v4, v2

    .line 816
    move v3, v1

    goto :goto_2

    .line 822
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmpHeight:F
    .end local v2           #bmpWidth:F
    .end local v3           #fitScreenH:F
    .end local v4           #fitScreenW:F
    :cond_a
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8, p1, p2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v7

    .line 823
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, p1

    int-to-float v10, p2

    const/high16 v11, 0x3f80

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    goto :goto_3

    .line 831
    :cond_b
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8, v7}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_4

    .line 840
    :cond_c
    iget-object v8, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1
.end method

.method invalidateOverlapRoundCorner(II)V
    .locals 18
    .parameter "width"
    .parameter "height"

    .prologue
    .line 848
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v13, :cond_0

    .line 849
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 850
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 851
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_0

    .line 854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 858
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 925
    :cond_1
    :goto_0
    return-void

    .line 862
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-nez v13, :cond_4

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_3

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 924
    :cond_3
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    goto :goto_0

    .line 870
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 871
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 873
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 874
    .local v5, extraPadding:Landroid/graphics/Rect;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 875
    .local v8, pLeft:I
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 876
    .local v9, pRiget:I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 877
    .local v10, pTop:I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 879
    .local v7, pBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 880
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 881
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    sub-int v14, p2, v7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 882
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 883
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v13, v14, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 884
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 885
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 886
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    sub-int v13, p1, v9

    const/4 v14, 0x0

    sub-int v15, p2, v7

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 888
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 890
    const-string v13, "com.android.internal.R.drawable.zzz_common_panel_container_mask"

    invoke-static {v13}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v12

    .line 891
    .local v12, resId:I
    if-nez v12, :cond_6

    .line 892
    const-string v13, "SSurfaceView"

    const-string v14, "[invalidateOverlapRoundCorner] get common resource fail: com.android.internal.R.drawable.zzz_common_panel_container_mask"

    new-instance v15, Ljava/lang/Exception;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    if-nez v13, :cond_7

    .line 901
    invoke-static {v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    .line 907
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-nez v13, :cond_5

    .line 910
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    .line 911
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 921
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1

    .line 895
    :cond_6
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 896
    .local v6, maskDrawable:Landroid/graphics/drawable/Drawable;
    sub-int v13, p1, v9

    sub-int v14, p2, v7

    invoke-virtual {v6, v8, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 897
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 904
    .end local v6           #maskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public isBindedSurface()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 2
    .parameter "feedbackConstant"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 2
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    const/4 v0, 0x1

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .parameter "soundConstant"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 674
    return-void
.end method

.method public refreshRenderOrder(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 535
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 537
    const/4 v1, 0x0

    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    move-object v2, p1

    .line 538
    check-cast v2, Ljava/lang/String;

    .line 539
    .local v2, szIdentity:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 540
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 544
    :goto_0
    if-eqz v1, :cond_1

    .line 546
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 547
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getEnvironmentRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 551
    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .end local v2           #szIdentity:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 552
    return-void

    .line 542
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .restart local v2       #szIdentity:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 491
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 493
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 498
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 500
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 658
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 659
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 661
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 662
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$500(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->requestLayout()V

    .line 571
    return-void
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 739
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 741
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 746
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 720
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 731
    :goto_0
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    .line 725
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 728
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
    .locals 2
    .parameter "originalView"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    .line 699
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 707
    const/4 v0, 0x1

    return v0
.end method
