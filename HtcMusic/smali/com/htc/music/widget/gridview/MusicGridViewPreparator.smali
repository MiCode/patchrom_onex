.class public Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.source "MusicGridViewPreparator.java"


# instance fields
.field mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 0
    .parameter "host"
    .parameter "name"
    .parameter "musicGridViewUtil"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 20
    return-void
.end method


# virtual methods
.method public loadRange(IIIJ)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 29
    return-void
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;
    .locals 1
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
    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected textureReuseForNewTextureMap(Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/IMediaList;I)V
    .locals 10
    .parameter "oldMap"
    .parameter "newMap"
    .parameter "medialist"
    .parameter "subIdx"

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    .local v4, originalOldMapSize:I
    const/4 v5, 0x0

    .line 44
    .local v5, recycledCount:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v4

    .line 46
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget-object v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount()I

    move-result v8

    add-int v0, v7, v8

    .line 47
    .local v0, bottomIndex:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v0, v7, :cond_2

    .line 48
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v7, -0x1

    .line 49
    if-gez v0, :cond_2

    .line 50
    const/4 v0, 0x0

    .line 54
    :cond_2
    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 56
    .local v1, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 58
    invoke-interface {p3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 59
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v3, :cond_4

    .line 61
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

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_4
    instance-of v7, v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v7, :cond_5

    .line 77
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 78
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_3

    .line 80
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v2, v6, v7}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 86
    .restart local v6       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_3

    .line 88
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v2, v6, v7}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 0
    .parameter "musicGridViewUtil"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 24
    return-void
.end method
