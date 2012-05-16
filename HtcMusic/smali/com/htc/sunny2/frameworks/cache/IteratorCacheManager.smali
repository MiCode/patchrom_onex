.class public Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;
.super Ljava/lang/Object;
.source "IteratorCacheManager.java"


# static fields
.field public static final CACHE_RESULT_CONTINUE:I = 0x2

.field public static final CACHE_RESULT_ERROR:I = 0x3

.field public static final CACHE_RESULT_FINISH:I = 0x4

.field public static final CACHE_RESULT_OK:I = 0x1

.field public static final CACHE_SET_CUSTOM:I = 0x64

.field public static final CACHE_SET_DEFAULT:I = -0x1

.field public static final CACHE_SET_FOLDER:I = 0x65

.field public static final CACHE_SET_HIGH:I = 0xc

.field public static final CACHE_SET_LOW:I = 0xa

.field public static final CACHE_SET_MIDIUM:I = 0xb

.field public static final CACHE_TASK_DECODE:I = 0x2

.field public static final CACHE_TASK_ENCODE:I = 0x1

.field public static final CACHE_TYPE_DEFAULT:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SOURCE_BOTH:I = 0x11

.field public static final SOURCE_MEMORY:I = 0x1

.field public static final SOURCE_STORAGE:I = 0x10


# instance fields
.field private mEnableFileCache:Z

.field private mEnableMemCache:Z

.field private mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

.field private final mLocker:Ljava/lang/Object;

.field private mMaxSize:I

.field private mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

.field private mMemCacheKey:I

.field private mMemCacheSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "memCacheSize"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 68
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    .line 69
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    .line 77
    if-lez p1, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    .line 79
    invoke-virtual {p0, v1, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 81
    :cond_0
    return-void
.end method

.method private getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 552
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 554
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 556
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 557
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    .line 560
    :cond_0
    return-object v0
.end method

.method private newMemoryCache(II)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeMemoryCache(I)V

    .line 471
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[newMemoryCache] New cache key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 473
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    .line 474
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    return-void
.end method

.method private pullMemBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "task"

    .prologue
    .line 519
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    .line 521
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 522
    :try_start_0
    iget v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 523
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 525
    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v1

    .line 526
    .local v1, memItem:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_0

    .line 527
    iget-object v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    monitor-exit v3

    .line 532
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v1           #memItem:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :goto_0
    return-object v2

    .line 529
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_0
    monitor-exit v3

    .line 532
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private pushMemBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 8
    .parameter "task"

    .prologue
    .line 497
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    .line 499
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 500
    :try_start_0
    iget v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 501
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_1

    .line 503
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;-><init>()V

    .line 504
    .local v1, memItem:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    iget v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    .line 505
    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    .line 506
    iget v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->type:I

    .line 507
    iget-object v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 508
    const-string v2, "CacheManager"

    const-string v4, "pushMemBitmap bmp=null"

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    :cond_0
    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    .end local v1           #memItem:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :cond_1
    monitor-exit v3

    .line 515
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_2
    return-void

    .line 513
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeMemBitmap(ILjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 537
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_1

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 542
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    .line 545
    :cond_0
    monitor-exit v2

    .line 547
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    return-void

    .line 545
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeMemoryCache(I)V
    .locals 5
    .parameter "key"

    .prologue
    .line 455
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 456
    :try_start_0
    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeMemoryCache] Remove cache key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 459
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 462
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_0
    monitor-exit v2

    .line 465
    return-void

    .line 464
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveToMemCache(I)Z
    .locals 4
    .parameter "resultCode"

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-nez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    const/4 v2, 0x4

    if-ne v2, p1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->getCacheTask()Lcom/htc/sunny2/frameworks/cache/CacheTask;

    move-result-object v0

    .line 202
    .local v0, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pushMemBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 205
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private switchCache(I)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 418
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    .line 420
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 276
    :cond_0
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1
    .parameter "bEnable"
    .parameter "source"

    .prologue
    .line 254
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 256
    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    .line 262
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    .line 266
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    goto :goto_0
.end method

.method public enableFileCache(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "defaultCacheSize"

    .prologue
    .line 97
    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    .line 99
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    return v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeCacheTask(J)I
    .locals 2
    .parameter "deadLine"

    .prologue
    .line 174
    const/4 v0, 0x3

    .line 176
    .local v0, nRet:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v0

    .line 183
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->saveToMemCache(I)Z

    .line 185
    return v0
.end method

.method public freeInvisibleRange()V
    .locals 4

    .prologue
    .line 433
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[freeInvisibleRange] CacheKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visible range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    .line 438
    monitor-exit v1

    .line 451
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->removeInvisibleRange()V

    .line 450
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "task"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pullMemBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheKey:I

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, -0x1

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v0

    goto :goto_0
.end method

.method public newCacheSet(IIIIZ)V
    .locals 0
    .parameter "key"
    .parameter "memSize"
    .parameter "fileSize"
    .parameter "colorDepth"
    .parameter "keepVisible"

    .prologue
    .line 359
    invoke-virtual/range {p0 .. p5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->resetMemoryCacheSize(IIIIZ)V

    .line 360
    return-void
.end method

.method public newMemoryCacheSet(II)Z
    .locals 2
    .parameter "cacheSetID"
    .parameter "memCacheSize"

    .prologue
    .line 86
    move v0, p2

    .line 87
    .local v0, size:I
    if-gtz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCache(II)V

    .line 92
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    return v1
.end method

.method public onMediaMounted()V
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->onMediaMounted()V

    .line 368
    :cond_0
    return-void
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I
    .locals 3
    .parameter "task"
    .parameter "source"
    .parameter "exeTime"

    .prologue
    .line 143
    const/4 v1, 0x3

    .line 144
    .local v1, nRet:I
    const/4 v0, 0x0

    .line 146
    .local v0, bmp:Landroid/graphics/Bitmap;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pullMemBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    const/4 v1, 0x4

    .line 151
    if-eqz p1, :cond_0

    iput-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 158
    :cond_0
    if-nez v0, :cond_1

    .line 160
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-eqz v2, :cond_1

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    .line 162
    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->saveToMemCache(I)Z

    .line 169
    :cond_1
    return v1
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I
    .locals 2
    .parameter "task"
    .parameter "source"
    .parameter "exeTime"

    .prologue
    .line 117
    const/4 v0, 0x3

    .line 119
    .local v0, nRet:I
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pushMemBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 121
    const/4 v0, 0x4

    .line 124
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-eqz v1, :cond_1

    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v1, p1, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v0

    .line 128
    :cond_1
    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 283
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[release] Release now..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, cacheSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;>;"
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-enter v4

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 287
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 291
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_0

    .line 287
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 294
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->release()V

    .line 297
    :cond_1
    return-void
.end method

.method public removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 240
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iget-object v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeMemBitmap(ILjava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 244
    :cond_0
    return-void
.end method

.method public resetMemoryCacheSize(IIIIZ)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"
    .parameter "fileSize"
    .parameter "colorDepth"
    .parameter "keepVisible"

    .prologue
    .line 315
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    .line 317
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCache(I)Z

    .line 322
    const/4 v0, 0x1

    .line 324
    .local v0, doCreate:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v2

    if-eq p2, v2, :cond_3

    const/4 v1, 0x1

    .line 329
    .local v1, sizeChanged:Z
    :goto_0
    if-nez v1, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 332
    if-eqz p5, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 339
    .end local v1           #sizeChanged:Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCache(II)V

    .line 344
    .end local v0           #doCreate:Z
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableFileCache:Z

    if-eqz v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mFileCache:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->switchCacheSet(III)V

    .line 350
    :cond_2
    return-void

    .line 326
    .restart local v0       #doCreate:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 335
    .restart local v1       #sizeChanged:Z
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_1
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 6
    .parameter "key"
    .parameter "cacheSize"
    .parameter "keepVisible"

    .prologue
    const/4 v3, 0x0

    .line 308
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->resetMemoryCacheSize(IIIIZ)V

    .line 311
    return-void
.end method

.method public setRangeBoundary(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 407
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    .line 408
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setRangeBoundaries(II)V

    .line 409
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 5
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    const/4 v4, 0x0

    .line 376
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    .line 377
    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    .line 379
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    if-gez v2, :cond_0

    .line 381
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    neg-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    .line 382
    iput v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    .line 385
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    if-le v2, v3, :cond_1

    .line 387
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    sub-int v0, v2, v3

    .line 388
    .local v0, extra:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMaxSize:I

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    .line 389
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    .line 391
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    if-gez v2, :cond_1

    .line 392
    iput v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    .line 395
    .end local v0           #extra:I
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    .line 397
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 398
    .local v1, memCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v1, :cond_3

    .line 399
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleStart:I

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->mVisibleEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setVisibleRange(II)V

    .line 403
    .end local v1           #memCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_2
    :goto_0
    return-void

    .line 401
    .restart local v1       #memCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_3
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[setVisibleRange] null memory cache set assigned!!"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCacheSet(IIIIZ)V
    .locals 0
    .parameter "key"
    .parameter "memSize"
    .parameter "fileSize"
    .parameter "colorDepth"
    .parameter "keepVisible"

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->resetMemoryCacheSize(IIIIZ)V

    .line 355
    return-void
.end method
