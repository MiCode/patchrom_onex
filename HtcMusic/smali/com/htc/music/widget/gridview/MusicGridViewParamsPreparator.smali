.class public Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
.super Ljava/lang/Object;
.source "MusicGridViewParamsPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/IParamsPreparator;


# instance fields
.field final CACHE_SET:I

.field mDimension:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->CACHE_SET:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    .line 11
    if-ltz p1, :cond_0

    .line 12
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public enableBorder()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public enableFileCache()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    return v0
.end method

.method public getFileCacheSize()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTextureCount()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x3c

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableBorder()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableFileCache()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public setCacheSet(I)V
    .locals 0
    .parameter "nCacheSet"

    .prologue
    .line 37
    return-void
.end method

.method public setDimension(I)V
    .locals 0
    .parameter "nDimension"

    .prologue
    .line 29
    if-ltz p1, :cond_0

    .line 30
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;->mDimension:I

    .line 32
    :cond_0
    return-void
.end method
