.class public Lcom/htc/sunny2/common/ItrCacheEncodeTask;
.super Lcom/htc/sunny2/common/IterationTask;
.source "ItrCacheEncodeTask.java"


# static fields
.field private static final CANCEL_TASK:I = -0x1

.field private static final DEFAULT_TIME_LIMIT:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field private mIsSetup:Z

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field private mResultCode:I

.field private mSourceType:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTask;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 13
    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 15
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mStartTime:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    return-void
.end method

.method private getTimeLimit()J
    .locals 4

    .prologue
    .line 57
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

    .line 61
    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

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
    .line 87
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-object v0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

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
    .line 65
    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

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
    .line 42
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    .line 44
    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onIterate()Z
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->shouldContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->getTimeLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->shouldContinue()Z

    move-result v0

    :goto_0
    return v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mStartTime:J

    .line 36
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->getTimeLimit()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 38
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mResultCode:I

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIsSetup:Z

    .line 78
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    .line 79
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 80
    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0
    .parameter "cacheItem"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 84
    return-void
.end method

.method public setCacheSourceType(I)V
    .locals 0
    .parameter "cacheSourceType"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mSourceType:I

    .line 92
    return-void
.end method

.method public setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V
    .locals 0
    .parameter "iteratorCacheManager"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 96
    return-void
.end method
