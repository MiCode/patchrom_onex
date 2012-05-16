.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    }
.end annotation


# static fields
.field protected static final ADDITIONAL_TEXTURE_BUFFER:I = 0x1

.field public static final BUNDLE_CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field public static final BUNDLE_GRID_FILE_CACHE_SIZE:Ljava/lang/String; = "GRID_FILE_CACHE_SIZE"

.field public static final BUNDLE_GRID_MEM_CACHE_SIZE:Ljava/lang/String; = "GRID_MEM_CACHE_SIZE"

.field public static final BUNDLE_GRID_WIDTH_HEIGHT:Ljava/lang/String; = "GRID_WIDTH_HEIGHT"

.field public static final BUNDLE_IS_MULTIPLE_FOLDER_IMAGES:Ljava/lang/String; = "MULTIPLE_FOLDER_IMAGES"

.field public static final BUNDLE_SUB_INDEX:Ljava/lang/String; = "SUB_INDEX"

.field public static final BUNDLE_TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field protected static final DEFAULT_MEM_CACHE_SIZE:I = 0xc8

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field public static final FLAG_CHECK_IMAGE_UPDATE:I = 0x1

.field public static final FLAG_DEFAULT:I = 0x0

.field protected static final ITEMS_PER_PAGE:I = 0x18

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field protected static final MAX_TASK_COUNT:I = 0x2

#the value of this static final field might be set in the static constructor
.field protected static final MAX_TEXTURES_LIMIT_COUNT:I = 0x0

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected TAG:Ljava/lang/String;

.field protected mBeginIndex:I

.field protected mBorderColor:I

.field protected mBorderWidth:I

.field protected mBottomIndex:I

.field protected mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected mCachePuller:Lcom/htc/sunny2/common/CachePuller;

.field protected mCacheSet:I

.field protected mColumnCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

.field protected mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

.field protected mDirection:I

.field protected mEnableAntiAlias:Z

.field protected mEnableBorder:Z

.field protected mEndIndex:I

.field protected mFailTexture:Lcom/htc/sunny2/Texture;

.field protected mFailTextureUsedCount:I

.field private mFileCacheSize:I

.field protected mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

.field protected mGridWidthHeight:I

.field protected mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

.field protected mIsCacheEnabled:Z

.field protected mIsInitial:Z

.field protected mIsMediaListExist:Z

.field protected mIsMutipleFolderImages:Z

.field private mIsPaused:Z

.field protected mItemCounts:I

.field protected mItemParams:Lcom/htc/sunny2/IParamsPreparator;

.field protected mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field protected mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field protected mOverlapImageSize:I

.field protected mStop:Z

.field protected mSunnyEnvironment:I

.field protected mTask:Lcom/htc/sunny2/common/IterationTask;

.field private mTaskWaitingTime:J

.field protected mTextureBufferRange:I

.field protected mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

.field protected mTextureMap:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mTexturesCount:I

.field protected mTopIndex:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

.field protected previousUpDirection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    :goto_0
    sput v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "GridViewPreparator"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    .line 216
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    .line 313
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    .line 314
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 315
    const/16 v0, 0xb2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 316
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 318
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 319
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 320
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 321
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 322
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 323
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 324
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 325
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 326
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 327
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 328
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 329
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 330
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 331
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 332
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 333
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 334
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    .line 335
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 336
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    .line 337
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 340
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 341
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 342
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 343
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 344
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 346
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 348
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 349
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 350
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 351
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 352
    new-instance v0, Lcom/htc/sunny2/common/CachePuller;

    invoke-direct {v0}, Lcom/htc/sunny2/common/CachePuller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    .line 353
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 354
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 355
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 356
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 357
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 358
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 360
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    .line 361
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    .line 362
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    .line 363
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    .line 370
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    .line 372
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 373
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 374
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 376
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 377
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    .line 379
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 381
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemParams:Lcom/htc/sunny2/IParamsPreparator;

    .line 408
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 409
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 2832
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 2833
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    .line 392
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 394
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 395
    return-void
.end method

.method private isTextureNullOrDirty(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 1773
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1774
    .local v0, texture:Lcom/htc/sunny2/Texture;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isProcessed(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private textureMapRelease(Lcom/htc/sunny2/common/TextureMap;Ljava/util/List;Z)V
    .locals 3
    .parameter "oldMap"
    .parameter
    .parameter "isTextureToPool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/common/TextureMap;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p2, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    if-nez p1, :cond_1

    .line 877
    :cond_0
    return-void

    .line 874
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 875
    invoke-virtual {p1, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunny2/Texture;Ljava/util/List;Z)V

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private textureRelease(Lcom/htc/sunny2/Texture;Ljava/util/List;Z)V
    .locals 2
    .parameter "texture"
    .parameter
    .parameter "isTextureToPool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/Texture;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    if-nez p1, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne p1, v0, :cond_2

    .line 887
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_0

    .line 889
    :cond_2
    if-eqz p2, :cond_3

    .line 890
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 893
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_4

    .line 894
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[textureRelease] mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->release()V

    .line 897
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 900
    :cond_4
    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->release()V

    .line 901
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0
.end method


# virtual methods
.method public bind(ILcom/htc/sunny2/IMediaList;I)V
    .locals 5
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 601
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->unbind(I)V

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    if-lez v0, :cond_2

    .line 611
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 612
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 614
    :cond_2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 615
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 621
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList has no media"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 623
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_6

    .line 629
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind() NG - not null texture pool or map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_6
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 632
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 634
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 635
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_7

    .line 636
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 639
    :cond_7
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 640
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 642
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v0, :cond_8

    .line 643
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 644
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 645
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 646
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 649
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_9

    .line 650
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mTextureForDirtyUpdate != 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_9
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    .line 654
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 655
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bind] Buffer range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 658
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_d

    .line 659
    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 663
    :goto_1
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 664
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 665
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v0, :cond_a

    .line 666
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 669
    :cond_a
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 671
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    .line 673
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_b

    .line 674
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 677
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_c

    .line 678
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 679
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 680
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 683
    :cond_c
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 684
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind-, scroll speed 0, item count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 661
    :cond_d
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    goto :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 9
    .parameter "mediaListIdx"
    .parameter "index"

    .prologue
    .line 1118
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate + mediaListIdx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", item index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-nez v6, :cond_2

    .line 1122
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate() NG - null texture map or null media list or null decodeItem"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1126
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    .line 1127
    .local v4, texture:Lcom/htc/sunny2/Texture;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v6, p2, :cond_1

    .line 1134
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1135
    .local v1, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v1, :cond_5

    .line 1137
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 1138
    .local v0, itemCount:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate() NG = null media item, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator item count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    .end local v0           #itemCount:I
    :cond_5
    invoke-interface {v1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, newIdentifier:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, oldIdentifier:Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1153
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1154
    const-string v6, "TextureForFail"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1156
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v7, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1172
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    .line 1173
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate -"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1163
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 1164
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 1165
    .local v5, textureId:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6, p2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureId(II)V

    .line 1166
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    goto/16 :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    monitor-exit v1

    .line 597
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 570
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->release()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 585
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 587
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 595
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailPreparator_deInit - Textures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected decodeFromCacheOrOriginalFile(J)Z
    .locals 14
    .parameter "limitedTimeMillis"

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    .line 2108
    .local v12, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preparator list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", media list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2111
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2112
    const/4 v0, 0x1

    .line 2154
    :goto_0
    return v0

    .line 2115
    :cond_0
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    .line 2117
    .local v9, useService:Z
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2118
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v11

    .line 2119
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v11, :cond_1

    .line 2120
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v12, Lcom/htc/sunny2/IMediaData;

    .line 2121
    .restart local v12       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_2

    .line 2122
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MediaItem is null, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2124
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2125
    const/4 v0, 0x1

    goto :goto_0

    .line 2128
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MeidaDataList is null, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2130
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2131
    const/4 v0, 0x1

    goto :goto_0

    .line 2134
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_2
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2135
    .local v3, filePath:Ljava/lang/String;
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v10

    .line 2139
    .local v10, identifier:Ljava/lang/String;
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2140
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2143
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 2144
    new-instance v13, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v13}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 2145
    .local v13, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v0, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setTaskIndex(I)V

    .line 2146
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2147
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2148
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2149
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_3

    if-eqz v13, :cond_3

    .line 2151
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2153
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2154
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected decodeOriginalFile(J)Z
    .locals 17
    .parameter "limitedTimeMillis"

    .prologue
    .line 2359
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2432
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2362
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v15

    .line 2363
    .local v15, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v15, :cond_0

    .line 2364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v13

    .line 2365
    .local v13, itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", identifier "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", preparator list count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", media list count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2368
    const/4 v2, 0x1

    goto :goto_1

    .line 2370
    .end local v13           #itemCount:I
    :cond_0
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2371
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v14

    .line 2372
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v14, :cond_1

    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v15, Lcom/htc/sunny2/IMediaData;

    .line 2374
    .restart local v15       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v15, :cond_2

    .line 2375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v13

    .line 2376
    .restart local v13       #itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", subIdx "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", identifier "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", preparator list count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", media list count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2379
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2382
    .end local v13           #itemCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v13

    .line 2383
    .restart local v13       #itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] List is null, index = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", subIdx "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", identifier "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", preparator list count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", media list count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2386
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2390
    .end local v13           #itemCount:I
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_2
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    .line 2391
    .local v4, filePath:Ljava/lang/String;
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->isItemDataReady()Z

    move-result v12

    .line 2392
    .local v12, isDataPrared:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2397
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2398
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V

    .line 2399
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2402
    :cond_3
    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 2403
    .local v1, tempItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2404
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2405
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 2406
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 2407
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2408
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 2409
    invoke-interface {v15}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2413
    new-instance v16, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v16 .. v16}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 2414
    .local v16, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 2415
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2417
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2418
    .local v10, bundle:Landroid/os/Bundle;
    const-string v2, "isDataReady"

    invoke-virtual {v10, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2419
    const-string v2, "index"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2420
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/common/IterationDecodeTask;->setBundle(Landroid/os/Bundle;)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v2

    or-int/lit8 v11, v2, 0x30

    .line 2423
    .local v11, decodeFlags:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_4

    if-eqz v16, :cond_4

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2429
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    goto/16 :goto_0

    .line 2359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 9
    .parameter "newContentIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1819
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 1820
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1822
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1860
    :cond_0
    :goto_0
    return-object v0

    .line 1824
    :cond_1
    const/4 v0, 0x0

    .line 1825
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    const/4 v1, -0x1

    .line 1826
    .local v1, contentIndex:I
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_3

    .line 1827
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 1828
    if-eq v1, v6, :cond_2

    .line 1830
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1831
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1832
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1835
    :cond_2
    if-ne v1, v6, :cond_3

    .line 1836
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 1837
    if-eq v1, v6, :cond_3

    .line 1839
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1840
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_3

    .line 1841
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1846
    :cond_3
    if-ne v1, v6, :cond_4

    .line 1847
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 1848
    if-eq v1, v6, :cond_4

    .line 1850
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1851
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_4

    .line 1852
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1857
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_0

    .line 1858
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 13
    .parameter "decodeItem"

    .prologue
    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 1620
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_2

    .line 1621
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1622
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .local v3, i:I
    :goto_0
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v9, :cond_5

    .line 1624
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1626
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1627
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1769
    :goto_1
    return-void

    .line 1622
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1634
    .end local v3           #i:I
    :cond_2
    iput-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1638
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1639
    .local v2, end:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v9

    .line 1640
    .local v1, count:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v9, v1

    .line 1641
    .local v0, begin:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v1

    add-int/lit8 v1, v9, -0x1

    .line 1642
    move v3, v0

    .restart local v3       #i:I
    :goto_2
    if-gt v3, v2, :cond_5

    .line 1644
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 1646
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1647
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1648
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    .line 1653
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1654
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v1, v9

    if-nez v9, :cond_8

    .line 1656
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v9, :cond_7

    .line 1670
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    :cond_5
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_12

    .line 1672
    const/4 v4, 0x1

    .local v4, j:I
    :goto_3
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v4, v9, :cond_12

    .line 1674
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_6

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_b

    .line 1675
    :cond_6
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_4
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v9, :cond_f

    .line 1677
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v9, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    .line 1678
    .local v6, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v6, :cond_9

    .line 1679
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Layer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IMediaData is null, item index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iput v12, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1658
    .end local v4           #j:I
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    .restart local v0       #begin:I
    .restart local v1       #count:I
    .restart local v2       #end:I
    :cond_7
    add-int/lit8 v2, v0, -0x1

    .line 1659
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v2, v9

    add-int/lit8 v0, v9, 0x1

    .line 1661
    if-ltz v0, :cond_5

    .line 1663
    const/4 v1, 0x0

    .line 1664
    add-int/lit8 v3, v0, -0x1

    .line 1642
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1683
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .restart local v4       #j:I
    .restart local v6       #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_9
    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v9

    if-nez v9, :cond_a

    .line 1685
    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1686
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1687
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    .line 1675
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1693
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_b
    iput-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1694
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1695
    .restart local v2       #end:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v9

    .line 1696
    .restart local v1       #count:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v9, v1

    .line 1697
    .restart local v0       #begin:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v1

    add-int/lit8 v1, v9, -0x1

    .line 1698
    move v3, v0

    :goto_5
    if-gt v3, v2, :cond_f

    .line 1700
    if-gez v3, :cond_c

    const/4 v3, 0x0

    .line 1702
    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v9, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    .line 1703
    .restart local v6       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v6, :cond_d

    .line 1704
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Layer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IMediaData is null, item index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iput v12, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1708
    :cond_d
    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_e

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v9

    if-nez v9, :cond_e

    .line 1710
    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1711
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1712
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    .line 1716
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 1717
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v1, v9

    if-nez v9, :cond_11

    .line 1719
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v9, :cond_10

    .line 1672
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1721
    .restart local v0       #begin:I
    .restart local v1       #count:I
    .restart local v2       #end:I
    .restart local v6       #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_10
    add-int/lit8 v2, v0, -0x1

    .line 1722
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v2, v9

    add-int/lit8 v0, v9, 0x1

    .line 1724
    if-ltz v0, :cond_f

    .line 1726
    const/4 v1, 0x0

    .line 1727
    add-int/lit8 v3, v0, -0x1

    .line 1698
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 1736
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .end local v4           #j:I
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_12
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v8, v9, -0x1

    .line 1737
    .local v8, searchUpIndex:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v7, v9, 0x1

    .line 1738
    .local v7, searchDownIndex:I
    const/4 v5, 0x0

    .line 1739
    .local v5, loopCount:I
    :cond_13
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v8, v9, :cond_14

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v8, v9, :cond_15

    :cond_14
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v7, v9, :cond_1a

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v7, v9, :cond_1a

    .line 1741
    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v8, v9, :cond_17

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v8, v9, :cond_17

    .line 1742
    invoke-direct {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1743
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_16

    .line 1744
    iput v8, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1748
    :cond_16
    add-int/lit8 v8, v8, -0x1

    .line 1750
    :cond_17
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v7, v9, :cond_19

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v7, v9, :cond_19

    .line 1751
    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1752
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1753
    iput v7, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1757
    :cond_18
    add-int/lit8 v7, v7, 0x1

    .line 1759
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 1760
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v5, v9, :cond_13

    .line 1761
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_1a
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v9, v10, :cond_1b

    .line 1766
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "bottom index is smaller than top index"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_1b
    iput v12, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1
.end method

.method public freeOutOfRange(III)V
    .locals 10
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 1197
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, freeCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    .line 1203
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v2

    .line 1204
    .local v2, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v4

    .line 1205
    .local v4, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v3

    .line 1207
    .local v3, maxIndex:I
    if-gez v4, :cond_0

    .line 1208
    const/4 v4, 0x0

    .line 1210
    :cond_0
    if-lt v3, v2, :cond_1

    .line 1211
    add-int/lit8 v3, v2, -0x1

    .line 1213
    :cond_1
    move v1, v4

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_5

    .line 1215
    if-gt p2, v1, :cond_3

    if-gt v1, p3, :cond_3

    .line 1213
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1221
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1222
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    .line 1224
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 1225
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v1, v9}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1227
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1228
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1229
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1237
    .end local v1           #i:I
    .end local v2           #itemsCount:I
    .end local v3           #maxIndex:I
    .end local v4           #minIndex:I
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v7, :cond_7

    .line 1239
    const/4 v1, 0x0

    .restart local v1       #i:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    .local v5, s:I
    :goto_2
    if-ge v1, v5, :cond_7

    .line 1241
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1242
    .restart local v6       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_6

    .line 1244
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1245
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1247
    add-int/lit8 v0, v0, 0x1

    .line 1239
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1252
    .end local v1           #i:I
    .end local v5           #s:I
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;
    .locals 4
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    .line 1178
    const/4 v1, 0x0

    .line 1179
    .local v1, texture:Lcom/htc/sunny2/Texture;
    const/4 v0, 0x0

    .line 1180
    .local v0, subIdx:I
    if-eqz p3, :cond_0

    .line 1181
    const-string v2, "SUB_INDEX"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1183
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 1184
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 1188
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v1, v2, :cond_3

    .line 1191
    .end local v1           #texture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v1

    .line 1186
    .restart local v1       #texture:Lcom/htc/sunny2/Texture;
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0

    .line 1191
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .locals 1
    .parameter "subIdx"

    .prologue
    .line 1800
    const/4 v0, 0x0

    .line 1801
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    packed-switch p1, :pswitch_data_0

    .line 1814
    :goto_0
    return-object v0

    .line 1803
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 1804
    goto :goto_0

    .line 1806
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 1807
    goto :goto_0

    .line 1809
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 1810
    goto :goto_0

    .line 1801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;
    .locals 4
    .parameter "subIdx"

    .prologue
    .line 2750
    const/4 v0, 0x0

    .line 2751
    .local v0, map:Lcom/htc/sunny2/common/TextureMap;
    packed-switch p1, :pswitch_data_0

    .line 2762
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTextureMap] Error subIndex, subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :goto_0
    return-object v0

    .line 2753
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2754
    goto :goto_0

    .line 2756
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 2757
    goto :goto_0

    .line 2759
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 2760
    goto :goto_0

    .line 2751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "inValue"

    .prologue
    const/4 v3, 0x0

    .line 415
    if-nez p2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "InValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 476
    :goto_0
    return-void

    .line 422
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 424
    const-string v1, "TEXTURE_MAX_COUNT"

    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 425
    .local v0, texturePreparationMaxCount:I
    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v0, v1, :cond_1

    .line 426
    sget v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailPreparator_init +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 434
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Environment handle is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 438
    monitor-exit v2

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 441
    :cond_2
    :try_start_1
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 442
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v1, :cond_3

    .line 444
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "TexturePreparationMaxCount is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 446
    monitor-exit v2

    goto :goto_0

    .line 448
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 450
    const-string v1, "CACHE_SET"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 451
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 452
    const-string v1, "MULTIPLE_FOLDER_IMAGES"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 453
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_4

    .line 454
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 460
    :goto_1
    const-string v1, "GRID_WIDTH_HEIGHT"

    const/16 v3, 0xb2

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 461
    const-string v1, "GRID_MEM_CACHE_SIZE"

    const/16 v3, 0xc8

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 462
    const-string v1, "GRID_FILE_CACHE_SIZE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 464
    new-instance v1, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 465
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 468
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 470
    new-instance v1, Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 471
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->setPriority(I)V

    .line 472
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 473
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailPreparator_init -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit v2

    goto/16 :goto_0

    .line 456
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V
    .locals 7
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 480
    if-nez p2, :cond_0

    .line 482
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][GridViewPreparatorImpl][init]: no param..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 559
    :goto_0
    return-void

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 489
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getMaxTextureCount()I

    move-result v1

    .line 490
    .local v1, nMaxTextureCount:I
    sget v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v1, v3, :cond_1

    .line 491
    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    .line 494
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 496
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][GridViewPreparatorImpl][init].."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 498
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v3, :cond_2

    .line 500
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "Environment handle is 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 502
    monitor-exit v4

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 505
    :cond_2
    :try_start_1
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 506
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v3, :cond_3

    .line 508
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][GridViewPreparatorImpl][init]: zero texture count.."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 510
    monitor-exit v4

    goto :goto_0

    .line 512
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 517
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 518
    instance-of v3, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    if-eqz v3, :cond_5

    .line 520
    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    move-object v2, v0

    .line 521
    .local v2, paramFolder:Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableOverlayImage()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 522
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v3, :cond_4

    .line 523
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;->getOverlapImageSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 524
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableAntialias()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    .line 526
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Folder"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 528
    .end local v2           #paramFolder:Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v3, v5

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 529
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[init] Buffer range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getCacheSet()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 535
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v3, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 537
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getDimension()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 538
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getMemoryCacheSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 539
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->isEnableFileCache()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 540
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getFileCacheSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 542
    :cond_6
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->isEnableBorder()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    .line 543
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v3, :cond_7

    .line 544
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getBorderWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    .line 545
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getBorderColor()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    .line 548
    :cond_7
    new-instance v3, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 549
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 551
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 552
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 554
    new-instance v3, Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 555
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/IterationTaskThread;->setPriority(I)V

    .line 556
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 557
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "ThumbnailPreparator_init -"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 2784
    const/4 v0, 0x1

    return v0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 1780
    :cond_0
    const/4 v0, 0x1

    .line 1782
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(II)Z
    .locals 5
    .parameter "index"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 1786
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 1787
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-nez v0, :cond_1

    .line 1788
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isOffLineDecodeAndNotInOffLineVisibleRange] Null ItemAttrbutes, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_0
    :goto_0
    return v1

    .line 1792
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v2, :cond_0

    .line 1794
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 1614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterate(J)V
    .locals 0
    .parameter "limitedTimeMillis"

    .prologue
    .line 398
    return-void
.end method

.method public loadRange(IIIJ)V
    .locals 30
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_0

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] null media list."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :goto_0
    return-void

    .line 1266
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v2, :cond_2

    .line 1268
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] no cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1271
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-nez v2, :cond_3

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] no texture map."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1279
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move/from16 v19, v0

    .line 1280
    .local v19, beginIndex:I
    if-gez v19, :cond_4

    .line 1281
    const/16 v19, 0x0

    .line 1282
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move/from16 v21, v0

    .line 1283
    .local v21, endIndex:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_5

    .line 1284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v21, v2, -0x1

    .line 1287
    :cond_5
    const/16 v24, 0x0

    .local v24, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    move/from16 v0, v24

    if-ge v0, v2, :cond_6

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_7

    .line 1394
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1294
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v26

    .line 1295
    .local v26, map:Lcom/htc/sunny2/common/TextureMap;
    if-nez v26, :cond_8

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] Get map error, size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1299
    :cond_8
    move/from16 v9, v19

    .local v9, i:I
    :goto_2
    move/from16 v0, v21

    if-gt v9, v0, :cond_9

    .line 1302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_a

    .line 1287
    :cond_9
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1309
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, v9}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v27

    .line 1310
    .local v27, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v27, :cond_b

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v23

    .line 1312
    .local v23, itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] mediaData is null, content identifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaList count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1315
    .end local v23           #itemCount:I
    :cond_b
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v11

    .line 1316
    .local v11, useService:Z
    if-eqz v11, :cond_e

    .line 1317
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v25

    .line 1318
    .local v25, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v24, 0x1

    if-ge v2, v3, :cond_d

    .line 1299
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_c
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1321
    .restart local v25       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_d
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #mediaData:Lcom/htc/sunny2/IMediaData;
    check-cast v27, Lcom/htc/sunny2/IMediaData;

    .line 1322
    .restart local v27       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-eqz v27, :cond_c

    .line 1326
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_e
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    .line 1327
    .local v5, filePath:Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v22

    .line 1331
    .local v22, identifier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v13

    long-to-int v8, v13

    const/16 v10, 0x11

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/common/CachePuller;->setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] mCachePuller.setup NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1337
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/CachePuller;->iterate(J)Z

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CachePuller;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1339
    .local v20, bitmap:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_c

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1347
    .local v12, texture:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_10

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] FindATextureToReuse NG - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1353
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1356
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v2, :cond_11

    .line 1357
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move/from16 v18, v0

    invoke-virtual/range {v12 .. v18}, Lcom/htc/sunny2/Texture;->setBorder(IIIIII)V

    .line 1360
    :cond_11
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v28

    .line 1361
    .local v28, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_14

    .line 1362
    :cond_12
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v12, v2}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 1388
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_c

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    move/from16 v0, v24

    invoke-interface {v2, v0, v9, v3}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1364
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] NG - oriTextureHandle != 0, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    move-object/from16 v0, v28

    if-eq v0, v12, :cond_17

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_13

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_16

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] oriTextureHandle is not failTexture, recycle to pool"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v29

    .line 1370
    .local v29, recycledTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-virtual/range {v29 .. v29}, Lcom/htc/sunny2/Texture;->release()V

    .line 1373
    const/16 v29, 0x0

    .line 1374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1381
    .end local v29           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_15
    :goto_6
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v12, v2}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_5

    .line 1377
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] oriTextureHandle is failTexture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    .line 1384
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public notifyDataItemChanged(II)V
    .locals 17
    .parameter "mediaListIdx"
    .parameter "itemIdx"

    .prologue
    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged+, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v1, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1049
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v15

    .line 1050
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1053
    .local v9, currentIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 1054
    .local v10, currentTextureHandle:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_1

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1057
    :cond_1
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 1058
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_2

    .line 1059
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1062
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1065
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_3

    .line 1066
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1068
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1071
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v14

    .line 1072
    .local v14, map:Lcom/htc/sunny2/common/TextureMap;
    if-eqz v14, :cond_5

    .line 1078
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunny2/Texture;Ljava/util/List;Z)V

    .line 1081
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v1, :cond_6

    .line 1083
    monitor-exit v15

    goto/16 :goto_0

    .line 1112
    .end local v14           #map:Lcom/htc/sunny2/common/TextureMap;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1085
    .restart local v14       #map:Lcom/htc/sunny2/common/TextureMap;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_a

    .line 1086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    .line 1087
    .local v11, item:Lcom/htc/sunny2/IMediaData;
    if-nez v11, :cond_7

    .line 1088
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    .line 1089
    .local v12, itemCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: mediaData is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    monitor-exit v15

    goto/16 :goto_0

    .line 1093
    .end local v12           #itemCount:I
    :cond_7
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1094
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1095
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v13, :cond_8

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #item:Lcom/htc/sunny2/IMediaData;
    check-cast v11, Lcom/htc/sunny2/IMediaData;

    .line 1097
    .restart local v11       #item:Lcom/htc/sunny2/IMediaData;
    if-nez v11, :cond_9

    .line 1098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    .line 1099
    .restart local v12       #itemCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: mediaData is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    monitor-exit v15

    goto/16 :goto_0

    .line 1103
    .end local v12           #itemCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    .line 1104
    .restart local v12       #itemCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: MediaList is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    monitor-exit v15

    goto/16 :goto_0

    .line 1108
    .end local v12           #itemCount:I
    .end local v13           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v16, v0

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1112
    .end local v11           #item:Lcom/htc/sunny2/IMediaData;
    :goto_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1110
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public notifyDataItemChanged(III)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "flag"

    .prologue
    .line 1036
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkImageUpdate(II)V

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 229
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 235
    :cond_0
    if-ne p1, v2, :cond_3

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 243
    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    .line 245
    :cond_2
    monitor-exit v1

    .line 246
    return-void

    .line 238
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 8
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 1496
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v3, :cond_0

    .line 1497
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "onProcessPreparationIRT_Force stop"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1609
    :goto_0
    return v1

    .line 1502
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v3

    .line 1503
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    if-eqz v4, :cond_1

    .line 1506
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1507
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1509
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v3, :cond_2

    .line 1513
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "onProcessPreparationIRT_Not initialize"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1514
    goto :goto_0

    .line 1509
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1516
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 1519
    goto :goto_0

    .line 1522
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1524
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v3, :cond_4

    .line 1525
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Force stop"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    goto :goto_0

    .line 1529
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 1530
    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v1, :cond_5

    .line 1531
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "DecodeItem is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1533
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1537
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v1, v7, :cond_a

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v1, v4, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v1, v4, :cond_a

    .line 1539
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecodeItem is expired "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_7

    .line 1541
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1542
    :cond_7
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 1543
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_8

    .line 1544
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1546
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v1, v4, :cond_9

    .line 1547
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1548
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 1550
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1553
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1557
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processMediaThumbnail(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1558
    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    .line 1560
    :cond_b
    const/4 v0, 0x0

    .line 1561
    .local v0, loopCount:I
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->getTaskCount()I

    move-result v1

    if-ge v1, v6, :cond_12

    if-ge v0, v6, :cond_12

    .line 1563
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 1565
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v1, v7, :cond_11

    .line 1567
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1568
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 1569
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_f

    .line 1573
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    .line 1575
    :cond_c
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_e

    .line 1576
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeFromCacheOrOriginalFile(J)Z

    .line 1596
    :cond_d
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1578
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    goto :goto_2

    .line 1606
    .end local v0           #loopCount:I
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1581
    .restart local v0       #loopCount:I
    :cond_f
    :try_start_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture cache is full, textureMap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", texturePool "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", decodeItem index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTexturesCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_10

    .line 1583
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextureMap2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TextureMap3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", failTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_2

    .line 1590
    :cond_11
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 1592
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1599
    :cond_12
    const/4 v0, 0x0

    .line 1601
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processCurrentTask(J)Z

    .line 1602
    add-int/lit8 v0, v0, 0x1

    .line 1603
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v1

    if-nez v1, :cond_14

    if-lt v0, v6, :cond_13

    .line 1604
    :cond_14
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v2

    goto/16 :goto_0

    .end local v0           #loopCount:I
    :cond_15
    move v1, v2

    .line 1609
    goto/16 :goto_0
.end method

.method public pausePreparator()V
    .locals 2

    .prologue
    .line 2836
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2837
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 2838
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2839
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2842
    :cond_0
    return-void

    .line 2838
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processCurrentTask(J)Z
    .locals 25
    .parameter "limitedTimeMillis"

    .prologue
    .line 2158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2161
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2171
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 2350
    :goto_1
    return v3

    .line 2163
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2166
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto :goto_0

    .line 2174
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/sunny2/common/IterationTask;

    .line 2175
    .local v18, mTask:Lcom/htc/sunny2/common/IterationTask;
    if-nez v18, :cond_3

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCurrentTask] IteratorTask is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const/4 v3, 0x0

    goto :goto_1

    .line 2179
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/common/IterationTask;->getBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 2181
    .local v12, bundle:Landroid/os/Bundle;
    const/4 v15, 0x1

    .line 2182
    .local v15, isReady:Z
    const/16 v20, -0x1

    .line 2183
    .local v20, mediaIndex:I
    if-eqz v12, :cond_4

    .line 2184
    const-string v3, "isDataReady"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2185
    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 2187
    :cond_4
    if-eqz v15, :cond_5

    if-ltz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    .line 2188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v19

    .line 2189
    .local v19, mediaData:Lcom/htc/sunny2/IMediaData;
    if-eqz v19, :cond_5

    .line 2190
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/htc/sunny2/IMediaData;->setReadyToDecode(Z)V

    .line 2195
    .end local v19           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 2197
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2199
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2200
    const/4 v14, 0x0

    .line 2201
    .local v14, isFailed:Z
    const/4 v2, 0x0

    .line 2202
    .local v2, mCacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_a

    move-object/from16 v23, v18

    .line 2204
    check-cast v23, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    .line 2205
    .local v23, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v14

    .line 2206
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    .line 2216
    .end local v23           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v24

    .line 2218
    .local v24, texture:Lcom/htc/sunny2/Texture;
    if-nez v24, :cond_7

    .line 2221
    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v24

    .line 2223
    :cond_7
    if-nez v24, :cond_8

    .line 2224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "No reusable texture."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v22

    .line 2229
    .local v22, oldTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_9

    .line 2230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunny2/Texture;

    .line 2231
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2236
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 2237
    if-eqz v14, :cond_d

    .line 2240
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_c

    .line 2242
    const/4 v2, 0x0

    .line 2243
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    .line 2250
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2207
    .end local v22           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v24           #texture:Lcom/htc/sunny2/Texture;
    :cond_a
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_b

    .line 2208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask] Encode cache task"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2210
    :cond_b
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v3, :cond_6

    move-object/from16 v23, v18

    .line 2212
    check-cast v23, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 2213
    .local v23, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    const/4 v14, 0x0

    .line 2214
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    goto/16 :goto_2

    .line 2245
    .end local v23           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    .restart local v22       #oldTexture:Lcom/htc/sunny2/Texture;
    .restart local v24       #texture:Lcom/htc/sunny2/Texture;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCurrentTask] Error on encode cache"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2247
    const/4 v2, 0x0

    goto :goto_3

    .line 2254
    :cond_d
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_10

    .line 2255
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2256
    .local v10, bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_f

    .line 2257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2258
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2333
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2334
    const/4 v2, 0x0

    .line 2337
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2260
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto :goto_4

    .line 2266
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_10
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2267
    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_16

    .line 2269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2271
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2272
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v3, :cond_15

    .line 2274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v21

    .line 2275
    .local v21, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v21, :cond_11

    .line 2276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v16

    .line 2277
    .local v16, itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2280
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2281
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2284
    .end local v16           #itemCount:I
    :cond_11
    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v11

    .line 2285
    .local v11, useService:Z
    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2286
    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v17

    .line 2287
    .local v17, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v17, :cond_12

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v21, Lcom/htc/sunny2/IMediaData;

    .line 2289
    .restart local v21       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v21, :cond_13

    .line 2290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v16

    .line 2291
    .restart local v16       #itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2294
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2295
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2298
    .end local v16           #itemCount:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v16

    .line 2299
    .restart local v16       #itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] ITERATE: MediaDataList is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2302
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2303
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2307
    .end local v16           #itemCount:I
    .end local v17           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_13
    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2309
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v13, 0x11

    .line 2310
    .local v13, cacheSourceType:I
    :goto_5
    new-instance v23, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct/range {v23 .. v23}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2311
    .local v23, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 2312
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2313
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_e

    if-eqz v23, :cond_e

    .line 2318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2319
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2309
    .end local v13           #cacheSourceType:I
    .end local v23           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_14
    const/4 v13, 0x1

    goto :goto_5

    .line 2322
    .end local v11           #useService:Z
    .end local v21           #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2324
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 2328
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto/16 :goto_4

    .line 2342
    .end local v2           #mCacheItem:Lcom/htc/sunny2/common/CacheItem;
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v14           #isFailed:Z
    .end local v22           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v24           #texture:Lcom/htc/sunny2/Texture;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 2343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2350
    :cond_18
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2344
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_18

    .line 2345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2347
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto :goto_6
.end method

.method protected processMediaThumbnail(J)Z
    .locals 13
    .parameter "limitedTimeMillis"

    .prologue
    .line 1864
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1866
    const/4 v9, 0x0

    .line 2102
    :goto_0
    return v9

    .line 1869
    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    .line 1870
    .local v1, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 1872
    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    .line 1873
    const/4 v9, 0x0

    goto :goto_0

    .line 1876
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 1877
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "InValid task, skip."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1879
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1880
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1881
    const/4 v0, 0x0

    .line 1882
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1884
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 1887
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v9, v10, :cond_4

    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v9, v10, :cond_8

    .line 1890
    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 1891
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v9, :cond_d

    .line 1892
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1893
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v9, v10}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    .line 1894
    .local v4, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_5

    .line 1895
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1897
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1900
    :cond_5
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    .line 1901
    .local v8, useService:Z
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1902
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1903
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v3, :cond_6

    .line 1904
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v4, Lcom/htc/sunny2/IMediaData;

    .line 1905
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_7

    .line 1906
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1908
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1911
    :cond_6
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - MedaiDataList is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1913
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1916
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_7
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1917
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 1918
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 1919
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v8, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 1920
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v2, 0x11

    .line 1921
    .local v2, cacheSourceType:I
    :goto_1
    new-instance v7, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v7}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 1922
    .local v7, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 1923
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1924
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 1925
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1926
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 1927
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_8

    if-eqz v7, :cond_8

    .line 1929
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v9, v7}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1942
    .end local v2           #cacheSourceType:I
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v7           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    .end local v8           #useService:Z
    :cond_8
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1944
    .local v6, reusableTexture:Lcom/htc/sunny2/Texture;
    if-nez v6, :cond_9

    .line 1947
    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1950
    :cond_9
    if-eqz v6, :cond_22

    .line 1951
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1952
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_20

    .line 1953
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1954
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v6, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 1955
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v9, :cond_12

    .line 1956
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 1957
    .local v5, oldTexture:Lcom/htc/sunny2/Texture;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_11

    .line 1961
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v9

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v9, v10, :cond_f

    .line 1963
    :cond_a
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_b

    .line 1964
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1965
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 1967
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2037
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2039
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v9, :cond_1f

    .line 2041
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v9, v10}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    .line 2042
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_1a

    .line 2043
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2045
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1920
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #reusableTexture:Lcom/htc/sunny2/Texture;
    .restart local v8       #useService:Z
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1932
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v8           #useService:Z
    :cond_d
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1933
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1934
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1935
    const/4 v0, 0x0

    .line 1937
    :cond_e
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1938
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1971
    .restart local v5       #oldTexture:Lcom/htc/sunny2/Texture;
    .restart local v6       #reusableTexture:Lcom/htc/sunny2/Texture;
    :cond_f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oldTexture not fail texture, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_10

    .line 1973
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1974
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1976
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1979
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1980
    const/4 v1, 0x0

    .line 1981
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1982
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1985
    :cond_11
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1986
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 1988
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    :cond_12
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 1989
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 1990
    .restart local v5       #oldTexture:Lcom/htc/sunny2/Texture;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_15

    .line 1992
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "oldTexture not fail texture 2"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_14

    .line 1994
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1995
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 1997
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1999
    :cond_13
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 2000
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2002
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2005
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2006
    const/4 v1, 0x0

    .line 2007
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2008
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2010
    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2012
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    :cond_16
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 2013
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2014
    .restart local v5       #oldTexture:Lcom/htc/sunny2/Texture;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_19

    .line 2016
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "oldTexture not fail texture 3"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_18

    .line 2018
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 2019
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2021
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2023
    :cond_17
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 2024
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2026
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2029
    :cond_18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2030
    const/4 v1, 0x0

    .line 2031
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2032
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2034
    :cond_19
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2048
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_1a
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    .line 2049
    .restart local v8       #useService:Z
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 2050
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2051
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v3, :cond_1b

    .line 2052
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v4, Lcom/htc/sunny2/IMediaData;

    .line 2053
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_1c

    .line 2054
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2056
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2059
    :cond_1b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - MediaDataList is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2061
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2064
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_1c
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2065
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 2066
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2067
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v8, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 2068
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v9

    if-eqz v9, :cond_1e

    const/16 v2, 0x11

    .line 2069
    .restart local v2       #cacheSourceType:I
    :goto_3
    new-instance v7, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v7}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2070
    .restart local v7       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 2071
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2072
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2073
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2074
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2075
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_1d

    if-eqz v7, :cond_1d

    .line 2077
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v9, v7}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2102
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #cacheSourceType:I
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v7           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    .end local v8           #useService:Z
    :cond_1d
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2068
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    .restart local v8       #useService:Z
    :cond_1e
    const/4 v2, 0x1

    goto :goto_3

    .line 2080
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v8           #useService:Z
    :cond_1f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2081
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2084
    :cond_20
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - get null bitmap, recycle texture"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 2086
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2088
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2090
    :cond_21
    iget-object v9, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v9, :cond_1d

    .line 2091
    iget-object v9, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v10, 0x0

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    goto :goto_4

    .line 2095
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_22
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - No reusable texture"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_23

    .line 2097
    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 2098
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2100
    :cond_23
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected queryTexture(I)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "contentIndex"

    .prologue
    .line 2717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected queryTexture(II)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 2721
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 2722
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :goto_0
    return-object v1

    .line 2726
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v0

    .line 2727
    .local v0, map:Lcom/htc/sunny2/common/TextureMap;
    if-nez v0, :cond_2

    .line 2728
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2732
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;
    .locals 12
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunny2/IMediaList;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh+"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v9, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v9, :cond_1

    .line 693
    :cond_0
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refresh() - null mediaList "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v9, :cond_4

    if-eqz p2, :cond_4

    .line 698
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh() - call bind()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 700
    const/4 v7, 0x0

    .line 830
    :goto_2
    return-object v7

    .line 693
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 703
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 704
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh() - new media list count is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v7, 0x0

    goto :goto_2

    .line 709
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v9, :cond_e

    .line 710
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "decodeItem is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_6
    :goto_3
    sget-object v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 727
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v9, :cond_7

    .line 728
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v9}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 731
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v9, :cond_8

    .line 732
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getMemCacheSize()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->newMemoryCacheSet(II)Z

    .line 736
    :cond_8
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 737
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 738
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "Clear video tasks."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_9
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v10

    .line 741
    :try_start_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12

    .line 742
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/common/IterationTask;

    .line 743
    .local v8, task:Lcom/htc/sunny2/common/IterationTask;
    if-eqz v8, :cond_a

    .line 744
    const/4 v3, 0x0

    .line 745
    .local v3, item:Lcom/htc/sunny2/common/CacheItem;
    instance-of v9, v8, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v9, :cond_11

    .line 746
    move-object v0, v8

    check-cast v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v3

    .line 750
    :cond_b
    :goto_5
    if-eqz v3, :cond_d

    .line 751
    iget-object v1, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 752
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_c

    .line 753
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 755
    :cond_c
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 757
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual {v8}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_4

    .line 761
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/sunny2/common/CacheItem;
    .end local v8           #task:Lcom/htc/sunny2/common/IterationTask;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 712
    :cond_e
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 713
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_f

    .line 714
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v9}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 715
    :cond_f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v9, v10, :cond_10

    .line 716
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 717
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 719
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 722
    :cond_10
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 747
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/htc/sunny2/common/CacheItem;
    .restart local v8       #task:Lcom/htc/sunny2/common/IterationTask;
    :cond_11
    :try_start_1
    instance-of v9, v8, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v9, :cond_b

    .line 748
    move-object v0, v8

    check-cast v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v3

    goto :goto_5

    .line 761
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/sunny2/common/CacheItem;
    .end local v8           #task:Lcom/htc/sunny2/common/IterationTask;
    :cond_12
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 767
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v9

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 768
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_13

    .line 769
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 770
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-gez v9, :cond_13

    .line 771
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 774
    :cond_13
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_14

    .line 775
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 776
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gez v9, :cond_14

    .line 777
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 780
    :cond_14
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_15

    .line 781
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 782
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v9, :cond_15

    .line 783
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 786
    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_16

    .line 787
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 788
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v9, :cond_16

    .line 789
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 795
    :cond_16
    const/4 v7, 0x0

    .line 796
    .local v7, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    if-nez p4, :cond_17

    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 798
    .restart local v7       #release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    :cond_17
    const/4 v4, 0x0

    .local v4, j:I
    :goto_6
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v4, v9, :cond_19

    .line 799
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v6

    .line 801
    .local v6, oldMap:Lcom/htc/sunny2/common/TextureMap;
    if-eqz v6, :cond_18

    .line 802
    new-instance v5, Lcom/htc/sunny2/common/TextureMap;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v5, v9}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    .line 803
    .local v5, newMap:Lcom/htc/sunny2/common/TextureMap;
    invoke-virtual {p0, v5, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureMap(Lcom/htc/sunny2/common/TextureMap;I)V

    .line 805
    invoke-virtual {p0, v6, v5, p2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureReuseForNewTextureMap(Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/IMediaList;I)V

    .line 806
    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureMapRelease(Lcom/htc/sunny2/common/TextureMap;Ljava/util/List;Z)V

    .line 798
    .end local v5           #newMap:Lcom/htc/sunny2/common/TextureMap;
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 812
    .end local v6           #oldMap:Lcom/htc/sunny2/common/TextureMap;
    :cond_19
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 814
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 815
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_1a

    .line 816
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v9, v10

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 818
    :cond_1a
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 819
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[refresh] Buffer range "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ItemsAttributes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 823
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_1b

    .line 824
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ItemsAttributes2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 825
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ItemsAttributes3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 828
    :cond_1b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh-"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected removeTexture(II)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 2736
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 2737
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_0
    return-object v1

    .line 2740
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v0

    .line 2741
    .local v0, map:Lcom/htc/sunny2/common/TextureMap;
    if-nez v0, :cond_2

    .line 2742
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2746
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 1485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setDecodeDirection(I)V

    .line 1486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1487
    return-void
.end method

.method public resumePreparator()V
    .locals 2

    .prologue
    .line 2845
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2846
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 2847
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2849
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2851
    :cond_0
    return-void

    .line 2847
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setColumnNumber(I)V
    .locals 3
    .parameter "numColumn"

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    .line 406
    :cond_0
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1491
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 1492
    return-void
.end method

.method protected setFailTextureToCurrentTask()V
    .locals 1

    .prologue
    .line 2644
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2645
    return-void
.end method

.method protected setFailTextureToCurrentTask(Z)V
    .locals 5
    .parameter "notifyFail"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2648
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2650
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_3

    .line 2651
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_2

    .line 2652
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - texture is dirty, mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2655
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2662
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2714
    :cond_1
    :goto_1
    return-void

    .line 2658
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2659
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 2663
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v0, v1, :cond_1

    .line 2665
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] texture is dirty, current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2670
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v0, :cond_8

    .line 2673
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 2674
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2676
    :cond_5
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2677
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2697
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_d

    .line 2698
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_c

    .line 2699
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2700
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2702
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2709
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2679
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2682
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 2683
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2685
    :cond_9
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2686
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_2

    .line 2688
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2691
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 2692
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2694
    :cond_b
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2695
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2705
    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2706
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_3

    .line 2710
    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v0, v1, :cond_1

    .line 2712
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 222
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 225
    :cond_0
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setTextureMap(Lcom/htc/sunny2/common/TextureMap;I)V
    .locals 3
    .parameter "map"
    .parameter "subIdx"

    .prologue
    .line 2768
    packed-switch p2, :pswitch_data_0

    .line 2779
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTextureMap] Error subIdx, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :goto_0
    return-void

    .line 2770
    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    goto :goto_0

    .line 2773
    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    goto :goto_0

    .line 2776
    :pswitch_2
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    goto :goto_0

    .line 2768
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setTextureToCurrentTask(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bmp"

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 2513
    if-nez p1, :cond_4

    .line 2514
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_1

    .line 2516
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_3

    .line 2517
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2518
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 2520
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2526
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v11, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2528
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 2529
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2641
    :cond_2
    :goto_1
    return-void

    .line 2523
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 2524
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 2533
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2534
    .local v10, width:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2535
    .local v7, height:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2536
    .local v0, texture:Lcom/htc/sunny2/Texture;
    if-nez v0, :cond_5

    .line 2537
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setTextureToCurrentTask NG - mDecodeItem.mTexture is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2540
    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 2542
    invoke-virtual {v0, v10}, Lcom/htc/sunny2/Texture;->setSourceWidth(I)V

    .line 2543
    invoke-virtual {v0, v7}, Lcom/htc/sunny2/Texture;->setSourceHeight(I)V

    .line 2544
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 2545
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v2, :cond_6

    .line 2547
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/Texture;->setBorder(IIIIII)V

    .line 2550
    :cond_6
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny2/Sunny2;->Texture_Realize(I)V

    .line 2552
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v2, :cond_e

    .line 2554
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2555
    .local v8, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v8, :cond_9

    .line 2556
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2558
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 2636
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_8

    .line 2637
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2640
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v11, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2560
    .restart local v8       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_9
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2562
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_a

    .line 2563
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2564
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2565
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    .line 2568
    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    goto :goto_2

    .line 2571
    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 1 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_d

    .line 2573
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 2574
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    .line 2575
    .local v9, recycledTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2576
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 2578
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2580
    :cond_c
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2583
    .end local v9           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2587
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_e
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 2589
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2590
    .restart local v8       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v8, :cond_f

    .line 2591
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2593
    :cond_f
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 2 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_11

    .line 2595
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 2596
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    .line 2597
    .restart local v9       #recycledTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2598
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 2600
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2602
    :cond_10
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2605
    .end local v9           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_11
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2609
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_12
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 2611
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2612
    .restart local v8       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v8, :cond_13

    .line 2613
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2615
    :cond_13
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 3 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_15

    .line 2617
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 2618
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    .line 2619
    .restart local v9       #recycledTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2620
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 2622
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2624
    :cond_14
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2627
    .end local v9           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_15
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2632
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_16
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Add decodeItem to mTextureMap is Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 2634
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_2
.end method

.method public setVisibleRange(III)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1402
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v2, :cond_1

    .line 1403
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Not initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1408
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Visible range setting error. beginIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1411
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 1412
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1413
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 1414
    .local v1, intervalCount:I
    if-gez v1, :cond_4

    .line 1416
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "visible range is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1420
    :cond_4
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-nez v2, :cond_5

    .line 1421
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "item count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    :cond_5
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    .line 1426
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 1429
    :cond_6
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    .line 1430
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1434
    :cond_7
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_8

    .line 1435
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1436
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1438
    :cond_8
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int v0, v2, v1

    .line 1439
    .local v0, difference:I
    if-ltz v0, :cond_10

    .line 1441
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1442
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_f

    .line 1444
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1449
    :cond_9
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1450
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_a

    .line 1451
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1452
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1462
    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_b

    .line 1463
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->setVisibleRange(II)V

    .line 1465
    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_e

    .line 1466
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 1467
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v2, v3, :cond_c

    .line 1468
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 1470
    :cond_c
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 1471
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v2, v3, :cond_d

    .line 1472
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 1474
    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 1476
    :cond_e
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_0

    .line 1477
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 1445
    :cond_f
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    .line 1447
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    goto :goto_1

    .line 1457
    :cond_10
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1458
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "top = bottom = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V
    .locals 16
    .parameter "mediaItem"

    .prologue
    .line 2436
    const/4 v12, 0x0

    .line 2437
    .local v12, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v15, 0x1001

    .line 2438
    .local v15, type:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 2439
    const/16 v15, 0x1002

    .line 2441
    :cond_0
    packed-switch v15, :pswitch_data_0

    .line 2454
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v14

    .line 2455
    .local v14, mediaSourceType:I
    iput v14, v12, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2457
    const/4 v11, 0x0

    .line 2458
    .local v11, hasError:Z
    packed-switch v14, :pswitch_data_1

    .line 2488
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v10

    .line 2489
    .local v10, filePath:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2490
    :cond_1
    const/4 v11, 0x1

    .line 2495
    .end local v10           #filePath:Ljava/lang/String;
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v2

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v2

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2497
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 2498
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 2500
    if-nez v11, :cond_7

    const/4 v2, 0x1

    :goto_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v2, v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v13

    .line 2504
    .local v13, itemAttrtibutes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v13, :cond_3

    .line 2505
    iget v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 2507
    .end local v13           #itemAttrtibutes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2509
    const/4 v12, 0x0

    .line 2510
    return-void

    .line 2443
    .end local v11           #hasError:Z
    .end local v14           #mediaSourceType:I
    :pswitch_1
    new-instance v1, Lcom/htc/sunny2/common/ImageDecodeItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/ImageDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 2444
    .local v1, imageDecodeItem:Lcom/htc/sunny2/common/ImageDecodeItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v2

    or-int/lit8 v9, v2, 0x30

    .line 2446
    .local v9, decodeFlags:I
    invoke-virtual {v1, v9}, Lcom/htc/sunny2/common/ImageDecodeItem;->setDecodeFlags(I)V

    .line 2447
    move-object v12, v1

    .line 2448
    goto/16 :goto_0

    .line 2450
    .end local v1           #imageDecodeItem:Lcom/htc/sunny2/common/ImageDecodeItem;
    .end local v9           #decodeFlags:I
    :pswitch_2
    new-instance v12, Lcom/htc/sunny2/common/ImageResourceDecodeItem;

    .end local v12           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    move-object/from16 v0, p1

    invoke-direct {v12, v2, v3, v0}, Lcom/htc/sunny2/common/ImageResourceDecodeItem;-><init>(IILcom/htc/sunny2/IMediaData;)V

    .restart local v12       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    goto/16 :goto_0

    .line 2460
    .restart local v11       #hasError:Z
    .restart local v14       #mediaSourceType:I
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2461
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_1

    .line 2463
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    const/4 v11, 0x1

    .line 2466
    goto/16 :goto_1

    .line 2468
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2469
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto/16 :goto_1

    .line 2471
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const/4 v11, 0x1

    .line 2474
    goto/16 :goto_1

    .line 2476
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2477
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    goto/16 :goto_1

    .line 2479
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/4 v11, 0x1

    .line 2482
    goto/16 :goto_1

    .line 2500
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2441
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2458
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected textureReuseForNewTextureMap(Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/IMediaList;I)V
    .locals 10
    .parameter "oldMap"
    .parameter "newMap"
    .parameter "medialist"
    .parameter "subIdx"

    .prologue
    .line 834
    if-nez p1, :cond_1

    .line 869
    :cond_0
    return-void

    .line 836
    :cond_1
    const/4 v4, 0x0

    .line 837
    .local v4, originalOldMapSize:I
    const/4 v5, 0x0

    .line 839
    .local v5, recycledCount:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v4

    .line 840
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .local v0, i:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v0, v7, :cond_0

    .line 842
    invoke-interface {p3, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 843
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v3, :cond_3

    .line 845
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[textureReuseForNewTextureMap] null media data, item count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", item index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 849
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 850
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, p4, 0x1

    if-lt v7, v8, :cond_2

    .line 853
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mediaData:Lcom/htc/sunny2/IMediaData;
    check-cast v3, Lcom/htc/sunny2/IMediaData;

    .line 854
    .restart local v3       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-eqz v3, :cond_2

    .line 859
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_4
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, identifier:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 861
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    .line 863
    invoke-virtual {p2, v0, v6, v1}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 864
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public unbind(I)V
    .locals 7
    .parameter "mediaListIdx"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 909
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind+"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v3, :cond_4

    .line 911
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "decodeItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_1

    .line 927
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 928
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 931
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 932
    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 934
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v3, :cond_2

    .line 935
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->freeInvisibleRange()V

    .line 938
    :cond_2
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 940
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_9

    .line 943
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 945
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 946
    .local v2, texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_7

    .line 948
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 949
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 943
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    .end local v0           #i:I
    .end local v1           #s:I
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 914
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_5

    .line 915
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 916
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v3, v4, :cond_6

    .line 917
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 918
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 920
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 923
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 950
    .restart local v0       #i:I
    .restart local v1       #s:I
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_3

    .line 951
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_2

    .line 954
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_8
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 957
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_9
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_d

    .line 958
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_3
    if-ge v0, v1, :cond_c

    .line 960
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 961
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_b

    .line 963
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 964
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 958
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 965
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_a

    .line 966
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_4

    .line 969
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_c
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 972
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_11

    .line 973
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_5
    if-ge v0, v1, :cond_10

    .line 975
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 976
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_f

    .line 978
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 979
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 973
    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 980
    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_e

    .line 981
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    .line 984
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_10
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 987
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v3, :cond_14

    .line 990
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_7
    if-ge v0, v1, :cond_13

    .line 992
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 993
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_12

    .line 995
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 996
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 990
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 999
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_13
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 1002
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_14
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_15

    .line 1004
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 1005
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    .line 1008
    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1009
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1010
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1013
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_16

    .line 1014
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 1015
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    .line 1017
    :cond_16
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 1019
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1020
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1021
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Clear video tasks."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_17
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_18

    .line 1026
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Release mContentList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 1028
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 1031
    :cond_18
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1032
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind-"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void
.end method
