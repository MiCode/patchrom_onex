.class Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->postScrollCacheUpdate(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

.field final synthetic val$nHostHeight:I

.field final synthetic val$nHostWidth:I

.field final synthetic val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iput p3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$nHostHeight:I

    iput p4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$nHostWidth:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 290
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 291
    .local v0, cacheBitmap:Landroid/graphics/Bitmap;
    const/4 v3, -0x1

    .line 292
    .local v3, nWidth:I
    const/4 v2, -0x1

    .line 294
    .local v2, nHeight:I
    monitor-enter v0

    .line 296
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-ne v10, v4, :cond_1

    .line 298
    const-string v4, "ScreenCacheHandler"

    const-string v5, "[HTCAlbum][ScreenCacheHandler][postScrollCacheUpdate]: recycled..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    if-nez v4, :cond_4

    .line 304
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    .line 305
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 313
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 314
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v4, v5, :cond_5

    .line 320
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v5, v3

    int-to-float v6, v2

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$nHostHeight:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mStatusBarHeight:I
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$000(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 351
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    if-eqz v4, :cond_3

    .line 352
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v10}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 356
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    move-result-object v4

    new-instance v5, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;-><init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;)V

    invoke-interface {v4, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->postRenderRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 310
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 315
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 326
    :cond_5
    sget-object v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    if-ne v4, v5, :cond_2

    .line 328
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v4, :cond_6

    .line 331
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v5, v3

    int-to-float v6, v2

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$nHostHeight:I

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    goto :goto_2

    .line 340
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v5, v3

    int-to-float v6, v2

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$nHostWidth:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$nHostHeight:I

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    goto :goto_2
.end method
