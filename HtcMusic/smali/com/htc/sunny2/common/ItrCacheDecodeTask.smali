.class public Lcom/htc/sunny2/common/ItrCacheDecodeTask;
.super Lcom/htc/sunny2/common/IterationTask;
.source "ItrCacheDecodeTask.java"


# static fields
.field private static final CANCEL_TASK:I = -0x1

.field private static final DEFAULT_TIME_LIMIT:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field private mIsSetup:Z

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field private mResultCode:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTask;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 15
    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mStartTime:J

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    return-void
.end method

.method private getTimeLimit()J
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private shouldContinue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 89
    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCacheItem()Lcom/htc/sunny2/common/CacheItem;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-object v0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    .line 63
    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onIterate()Z
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->shouldContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getTimeLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->shouldContinue()Z

    move-result v0

    :goto_0
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 33
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mStartTime:J

    .line 35
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    if-nez v3, :cond_1

    .line 38
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 39
    .local v2, path:Ljava/lang/String;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 43
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 44
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    .line 52
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v4, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/16 v5, 0x11

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getTimeLimit()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    .line 57
    :goto_1
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ItrCacheDecodeTask][onSetup] Exception: Get original image width height error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v3, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->TAG:Ljava/lang/String;

    const-string v4, "[ItrCacheDecodeTask][onSetup] IteratorCacheManager or CacheItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 106
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 107
    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0
    .parameter "cacheItem"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 111
    return-void
.end method

.method public setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V
    .locals 0
    .parameter "iteratorCacheManager"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 119
    return-void
.end method
