.class public Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;


# static fields
.field private static final ALPHA_PER_STEP:F = 0.05f

.field private static final BLUR_STEP:F = 0.5f

.field private static final MAX_ALPHA_PER:F = 0.6f

.field private static final MAX_BLUR:F = 5.0f

.field private static final RENDERORDER_ABOVEALL:I = 0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAlphaIndex:F

.field private mAnimationState:I

.field private mBlurIndex:F

.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;",
            "Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDepth:F

.field private mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

.field private mHandlerScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

.field private mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

.field private mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

.field private mRootNodeContent:Lcom/htc/sunny2/SceneNode;

.field private mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

.field private mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

.field private mSelectedIndex:I

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "ScreenCacheHandler"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 50
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mStatusBarHeight:I

    .line 52
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

    .line 53
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

    .line 54
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    .line 57
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    .line 59
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    .line 60
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    .line 61
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCurrentDepth:F

    .line 62
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 63
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    .line 64
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAnimationState:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTransitionSnapShotShowIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTransitionSnapShotHideIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/SceneNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public static final getScreenCacheHandler(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .locals 4
    .parameter "sunnyScene"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v2

    .line 77
    .local v2, viewHost:Lcom/htc/sunny2/view/SView;
    instance-of v3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-nez v3, :cond_0

    move-object v1, v0

    .line 81
    .end local v0           #screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .end local v2           #viewHost:Lcom/htc/sunny2/view/SView;
    .local v1, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    :goto_0
    return-object v1

    .line 80
    .end local v1           #screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .restart local v0       #screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .restart local v2       #viewHost:Lcom/htc/sunny2/view/SView;
    :cond_0
    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .end local v2           #viewHost:Lcom/htc/sunny2/view/SView;
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v0

    move-object v1, v0

    .line 81
    .end local v0           #screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .restart local v1       #screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    goto :goto_0
.end method

.method public static final getScreenCacheHandler(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .locals 1
    .parameter "cacheHost"

    .prologue
    .line 68
    invoke-interface {p0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    move-result-object v0

    .line 69
    .local v0, screenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    return-object v0
.end method

.method private onTransitionSnapShotHideIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    .locals 2
    .parameter "screenCache"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$6;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    .line 709
    :cond_0
    return-void
.end method

.method private onTransitionSnapShotShowIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    .locals 12
    .parameter "screenCache"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 614
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenItemTop()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 615
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getScreenItemBottom()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 616
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    .line 617
    .local v3, nWidth:I
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v8

    .line 619
    .local v2, nHeight:I
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    if-nez v7, :cond_0

    .line 621
    const-string v7, "ScreenCacheHandler"

    const-string v8, "[HTCAlbum][ScreenCacheHandler][onTransitionSnapShotShowIRT]: new texture"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v7

    iput-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    .line 624
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;->getSunnyWindow()I

    move-result v5

    .line 625
    .local v5, sunnyWindow:I
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v4

    .line 626
    .local v4, spriteId:I
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v6

    .line 627
    .local v6, textureId:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    .line 628
    .local v1, contextId:I
    const v7, 0x148888

    invoke-static {v6, v7, v3, v2}, Lcom/htc/sunny2/Sunny2;->Texture_RealizeBlankTexture(IIII)Z

    .line 632
    invoke-static {v5, v10, v10, v10, v10}, Lcom/htc/sunny2/Sunny2;->Window_SetClearColor(IFFFF)V

    .line 633
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    invoke-static {v5, v6, v11, v7, v11}, Lcom/htc/sunny2/Sunny2;->Window_RenderPartialSceneToTexture(IIILandroid/graphics/Rect;Z)Z

    move-result v0

    .line 639
    .local v0, bResult:Z
    const/high16 v7, 0x40a0

    invoke-static {v4, v1, v6, v7}, Lcom/htc/sunny2/Sunny2;->BlurSprite_SetTexture(IIIF)Z

    .line 660
    sget-object v7, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v8, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v7, v8, :cond_1

    .line 662
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9, v10, v10}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 668
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdateContentBlur(F)V

    .line 670
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v7, v11}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 671
    iget-object v7, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7, v11}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 675
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v7, :cond_2

    .line 677
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;

    invoke-direct {v8, p0, p1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    invoke-interface {v7, v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    .line 688
    :cond_2
    return-void
.end method

.method private onUpdateContentAlpha(F)V
    .locals 3
    .parameter "fAlpha"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 564
    .local v0, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    goto :goto_0
.end method

.method private onUpdateContentBlur(F)V
    .locals 5
    .parameter "fBlur"

    .prologue
    .line 548
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 549
    .local v1, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-nez v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    .line 553
    .local v2, spriteId:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v0

    .line 557
    .local v0, contextId:I
    invoke-static {v2, v0, p1}, Lcom/htc/sunny2/Sunny2;->BlurSprite_SetBlurParameter(IIF)Z

    goto :goto_0
.end method


# virtual methods
.method public attachIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;Lcom/htc/sunny2/SceneNode;)V
    .locals 8
    .parameter "host"
    .parameter "environmentHost"
    .parameter "sceneNode"

    .prologue
    const/4 v7, 0x1

    .line 85
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 86
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 87
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->values()[Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    move-result-object v4

    array-length v0, v4

    .line 88
    .local v0, nCacheSize:I
    const/4 v3, 0x0

    .line 90
    .local v3, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_6

    .line 92
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->values()[Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    check-cast v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 93
    .restart local v3       #screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v3, :cond_3

    .line 95
    const-string v4, "ScreenCacheHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ScreenCacheHandler][attach]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, rootNodeNew:Lcom/htc/sunny2/SceneNode;
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v4, v5, :cond_5

    .line 105
    :cond_0
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v4, v5, :cond_4

    .line 107
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    .end local v2           #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

    .line 108
    .restart local v2       #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v2, v7}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    .line 115
    :cond_1
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 126
    :cond_2
    :goto_2
    iget-object v4, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 127
    iget-object v4, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 128
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v4, v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 90
    .end local v2           #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .restart local v2       #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    :cond_4
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v4, v5, :cond_1

    .line 112
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    .end local v2           #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

    .line 113
    .restart local v2       #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v2, v7}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    goto :goto_1

    .line 117
    :cond_5
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v4, v5, :cond_2

    .line 122
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    .end local v2           #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    .line 123
    .restart local v2       #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    invoke-static {}, Lcom/htc/sunny2/SpriteBlur;->obtain()Lcom/htc/sunny2/SpriteBlur;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    goto :goto_2

    .line 131
    .end local v2           #rootNodeNew:Lcom/htc/sunny2/SceneNode;
    :cond_6
    return-void
.end method

.method public detachIRT(Lcom/htc/sunny2/SceneNode;)V
    .locals 7
    .parameter "sceneNode"

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->values()[Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    move-result-object v3

    array-length v0, v3

    .line 135
    .local v0, nCacheSize:I
    const/4 v2, 0x0

    .line 137
    .local v2, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_5

    .line 139
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->values()[Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 140
    .restart local v2       #screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v2, :cond_1

    .line 142
    const-string v3, "ScreenCacheHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ScreenCacheHandler][detach]: clear cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v3, v4, :cond_2

    .line 146
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

    invoke-interface {v3, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 147
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 148
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 149
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeHeader:Lcom/htc/sunny2/SceneNode;

    .line 168
    :goto_1
    iget-object v3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->release()V

    .line 170
    iget-object v3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 173
    :cond_0
    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iput-object v3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    .line 174
    iput-object v6, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 175
    iput-object v6, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    .line 176
    iput-object v6, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 177
    iput-object v6, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    .line 178
    iput-object v6, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

    .line 137
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_2
    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v3, v4, :cond_3

    .line 153
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

    invoke-interface {v3, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 154
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 155
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 156
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeFooter:Lcom/htc/sunny2/SceneNode;

    goto :goto_1

    .line 158
    :cond_3
    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v3, v4, :cond_4

    .line 160
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    invoke-interface {v3, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 161
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 162
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 163
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    goto :goto_1

    .line 166
    :cond_4
    iget-object v3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    goto :goto_1

    .line 181
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 182
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 183
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mEnvironmentHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 184
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    .line 185
    iput-object v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    .line 186
    return-void
.end method

.method public enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
    .locals 5
    .parameter "sunnyScene"
    .parameter "cacheType"

    .prologue
    .line 196
    instance-of v2, p1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const-string v2, "ScreenCacheHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ScreenCacheHandler][enableScreenCache]: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    invoke-direct {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;-><init>()V

    .line 204
    .local v1, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    iput-object p2, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    .line 206
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-eq v2, p2, :cond_2

    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v2, p2, :cond_3

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    if-nez v2, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;

    .line 215
    .local v0, cacheHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;->onCreateScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    goto :goto_0

    .line 218
    .end local v0           #cacheHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;
    :cond_3
    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v2, p2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    if-nez v2, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;

    .line 223
    .restart local v0       #cacheHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;->onCreateTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    goto :goto_0
.end method

.method public getItemClicked()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    return v0
.end method

.method public getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    return-object v0
.end method

.method public getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    return-object v0
.end method

.method public onItemClickIRT(ILcom/htc/sunny2/SceneNode;)V
    .locals 4
    .parameter "nIndex"
    .parameter "itemNode"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    sget-object v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 451
    .local v0, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 454
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    .line 456
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getRootNode()Lcom/htc/sunny2/SceneNode;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTagSnapShotFlagIRT(ILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/SceneNode;)V

    .line 457
    const-string v1, "ScreenCacheHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ScreenCacheHandler][onItemClickIRT]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLayoutChangedIRT(II)V
    .locals 3
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v0, "ScreenCacheHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ScreenCacheHandler][onLayoutChangedIRT]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 481
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;->onLayoutChangedIRT(II)V

    goto :goto_0
.end method

.method public onTagSnapShotFlagIRT(ILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/SceneNode;)V
    .locals 8
    .parameter "nIndex"
    .parameter "rootNode"
    .parameter "itemNode"

    .prologue
    const/4 v7, 0x1

    .line 572
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    sget-object v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 573
    .local v3, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 608
    :cond_0
    return-void

    .line 577
    :cond_1
    if-eqz p2, :cond_2

    .line 578
    invoke-virtual {p2}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v4

    invoke-static {v4, v7, v7}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddPartialSceneRenderFlag(IIZ)V

    .line 580
    :cond_2
    if-eqz p3, :cond_3

    .line 582
    const/4 v4, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    if-ne v4, p1, :cond_3

    .line 584
    const-string v4, "ScreenCacheHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ScreenCacheHandler][onTagSnapShotFlagIRT]: remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p3}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v4

    invoke-static {v4, v7, v7}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemovePartialSceneRenderFlag(IIZ)V

    .line 593
    :cond_3
    invoke-virtual {p2}, Lcom/htc/sunny2/SceneNode;->getChildrenCount()I

    move-result v0

    .line 594
    .local v0, nChildCount:I
    const/4 v2, 0x0

    .line 596
    .local v2, sceneNode:Lcom/htc/sunny2/SceneNode;
    const-string v4, "ScreenCacheHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ScreenCacheHandler][onTagSnapShotFlagIRT]: Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v1, 0x0

    .local v1, nChildIndex:I
    :goto_0
    if-le v0, v1, :cond_0

    .line 599
    invoke-virtual {p2, v1}, Lcom/htc/sunny2/SceneNode;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    if-nez v2, :cond_5

    .line 597
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_5
    instance-of v4, v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotItemFolder;

    if-eqz v4, :cond_4

    move-object v4, v2

    .line 605
    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotItemFolder;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotItemFolder;->enableSnapShotFolderImageIRT(Z)V

    goto :goto_1
.end method

.method public onUpdatePositionAnimation()Z
    .locals 13

    .prologue
    const/high16 v12, 0x40a0

    const v11, 0x3f19999a

    const/high16 v10, 0x3f00

    const v9, 0x3d4ccccd

    const/4 v8, 0x0

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHandlerTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;

    if-nez v4, :cond_0

    .line 534
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 490
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getAnimationController()Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v1

    .line 491
    .local v1, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 492
    .local v3, v:Lcom/htc/sunny2/view/Vector3F;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mRootNodeContent:Lcom/htc/sunny2/SceneNode;

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v7, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 494
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 495
    .local v2, fBlurIndex:F
    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    cmpl-float v4, v8, v4

    if-nez v4, :cond_2

    .line 498
    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCurrentDepth:F

    .line 499
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 500
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    .line 531
    :cond_1
    :goto_1
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdateContentBlur(F)V

    .line 532
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdateContentAlpha(F)V

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCurrentDepth:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 506
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCurrentDepth:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 509
    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCurrentDepth:F

    .line 511
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    add-float/2addr v4, v10

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 512
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    cmpg-float v4, v12, v4

    if-gez v4, :cond_3

    .line 513
    iput v12, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 515
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    add-float/2addr v4, v9

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    .line 516
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    cmpg-float v4, v11, v4

    if-gez v4, :cond_1

    .line 517
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    goto :goto_1

    .line 522
    :cond_4
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    sub-float/2addr v4, v10

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 523
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_5

    .line 524
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mBlurIndex:F

    .line 526
    :cond_5
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    sub-float/2addr v4, v9

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    .line 527
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_1

    .line 528
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAlphaIndex:F

    goto :goto_1
.end method

.method public postConfigurationUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V
    .locals 4
    .parameter "rect"
    .parameter "bIsVisible"
    .parameter "listener"

    .prologue
    .line 410
    move v0, p2

    .line 411
    .local v0, bIsShowSnapShot:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 412
    .local v1, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-nez v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iput-object p3, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

    .line 416
    if-eqz p1, :cond_2

    .line 417
    iput-object p1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    new-instance v3, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;

    invoke-direct {v3, p0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    invoke-interface {v2, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postScreenTransitionUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V
    .locals 4
    .parameter "rect"
    .parameter "bIsVisible"
    .parameter "listener"

    .prologue
    .line 384
    move v0, p2

    .line 385
    .local v0, bIsShowSnapShot:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->CONTENT:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 386
    .local v1, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-nez v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iput-object p3, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

    .line 390
    if-eqz p1, :cond_2

    .line 391
    iput-object p1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    new-instance v3, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    invoke-interface {v2, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postScrollCacheDisplay(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
    .locals 3
    .parameter "cacheType"
    .parameter "bIsVisible"
    .parameter "listener"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 244
    .local v0, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mIsVisible:Z

    .line 248
    iput-object p3, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    .line 250
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postScrollCacheUpdate(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
    .locals 5
    .parameter "cacheType"
    .parameter "bitmap"
    .parameter "listener"

    .prologue
    .line 274
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    .line 275
    .local v2, screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-nez v3, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iput-object p2, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 279
    iput-object p3, v2, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    .line 280
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getWidth()I

    move-result v1

    .line 281
    .local v1, nHostWidth:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getHeight()I

    move-result v0

    .line 283
    .local v0, nHostHeight:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;II)V

    invoke-interface {v3, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resetItemClicked()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I

    .line 462
    return-void
.end method

.method public setAnimationState(I)V
    .locals 0
    .parameter "nAnimationState"

    .prologue
    .line 540
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mAnimationState:I

    .line 541
    return-void
.end method

.method public setStatusBarHeight(I)V
    .locals 1
    .parameter "nHeight"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mStatusBarHeight:I

    if-nez v0, :cond_0

    .line 190
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mStatusBarHeight:I

    .line 191
    :cond_0
    return-void
.end method
