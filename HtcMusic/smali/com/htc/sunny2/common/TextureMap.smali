.class public Lcom/htc/sunny2/common/TextureMap;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    }
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "TextureMap"


# instance fields
.field private mMaxValidIndex:I

.field private mMinValidIndex:I

.field private mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

.field private mValidItemsCount:I

.field private textureInfoRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/common/TextureMap$TextureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .parameter "contentListItemsCount"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v4, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    .line 32
    iput v1, p0, Lcom/htc/sunny2/common/TextureMap;->mValidItemsCount:I

    .line 33
    iput v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    .line 34
    iput v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    .line 36
    new-instance v1, Lcom/htc/sunny2/ObjectRecycler;

    const-string v2, "TextureMap.TextureInfo Recycler"

    invoke-direct {v1, v2}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->textureInfoRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 45
    new-array v1, p1, [Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    iput-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aput-object v4, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    .line 50
    iput v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    .line 51
    return-void
.end method


# virtual methods
.method public findAValidIndexNotInRange(II)I
    .locals 3
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 60
    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 61
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 74
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 61
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0           #i:I
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 68
    add-int/lit8 v0, p2, 0x1

    .restart local v0       #i:I
    :goto_2
    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-gt v0, v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 74
    .end local v0           #i:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findAValidIndexNotInRange(III)I
    .locals 4
    .parameter "begin"
    .parameter "end"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    .line 79
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v1, v3

    .line 80
    .local v1, textureLength:I
    iget v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    if-ge v3, v1, :cond_0

    iget v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-lt v3, v1, :cond_2

    :cond_0
    move v0, v2

    .line 102
    :cond_1
    :goto_0
    return v0

    .line 83
    :cond_2
    if-ltz p3, :cond_4

    .line 84
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    if-ge v0, v1, :cond_3

    .line 85
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_3
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    :goto_2
    if-le v0, p2, :cond_6

    if-lez v0, :cond_6

    .line 89
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 93
    .end local v0           #i:I
    :cond_4
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    .restart local v0       #i:I
    :goto_3
    if-le v0, p2, :cond_5

    if-lez v0, :cond_5

    .line 94
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 97
    :cond_5
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    :goto_4
    if-ge v0, p1, :cond_6

    if-ge v0, v1, :cond_6

    .line 98
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v2

    .line 102
    goto :goto_0
.end method

.method public get(I)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 168
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v0, v2, p1

    .line 173
    .local v0, textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, v0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    if-nez v1, :cond_2

    .line 178
    const-string v1, "TextureMap"

    const-string v2, "get() - sunnyTexture should not be 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    iget-object v1, v0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0
.end method

.method public getContentListItemsCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v0, v0

    return v0
.end method

.method public getIdentifier(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 186
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v1

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v0, v2, p1

    .line 191
    .local v0, textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, v0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    if-nez v1, :cond_2

    .line 196
    const-string v1, "TextureMap"

    const-string v2, "getIdentifier() - sunnyTexture should not be 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    iget-object v1, v0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxValidIndex()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    return v0
.end method

.method public getMinValidIndex()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    return v0
.end method

.method public put(ILcom/htc/sunny2/Texture;)V
    .locals 1
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "texture"
    .parameter "identifier"

    .prologue
    .line 207
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    if-nez p2, :cond_3

    .line 212
    :cond_2
    const-string v1, "TextureMap"

    const-string v2, "put()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->textureInfoRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    .line 217
    .local v0, textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    if-nez v0, :cond_4

    .line 218
    new-instance v0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    .end local v0           #textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/TextureMap$TextureInfo;-><init>(Lcom/htc/sunny2/common/TextureMap;)V

    .line 221
    .restart local v0       #textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->set(Lcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aput-object v0, v1, p1

    .line 223
    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mValidItemsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/common/TextureMap;->mValidItemsCount:I

    .line 225
    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    if-ge p1, v1, :cond_5

    .line 226
    iput p1, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    .line 229
    :cond_5
    iget v1, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-le p1, v1, :cond_0

    .line 230
    iput p1, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    goto :goto_0
.end method

.method public remove(I)Lcom/htc/sunny2/Texture;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 107
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v3, v3

    if-lt p1, v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 140
    :cond_1
    :goto_0
    return-object v0

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v1, v3, p1

    .line 112
    .local v1, textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    if-nez v1, :cond_3

    move-object v0, v2

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, v1, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    .line 118
    .local v0, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v1}, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->free()V

    .line 119
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->textureInfoRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    .line 121
    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aput-object v2, v3, p1

    .line 122
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mValidItemsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/common/TextureMap;->mValidItemsCount:I

    .line 124
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    if-ne p1, v2, :cond_4

    .line 125
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 126
    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    iget v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 132
    :cond_4
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-ne p1, v2, :cond_1

    .line 133
    :goto_2
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-ltz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    iget v3, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 133
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    goto :goto_2

    .line 125
    :cond_5
    iget v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v3

    .line 149
    :cond_1
    const/4 v1, -0x1

    .line 151
    .local v1, removeIndex:I
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mMinValidIndex:I

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/htc/sunny2/common/TextureMap;->mMaxValidIndex:I

    if-gt v0, v4, :cond_2

    .line 152
    iget-object v4, p0, Lcom/htc/sunny2/common/TextureMap;->mTextures:[Lcom/htc/sunny2/common/TextureMap$TextureInfo;

    aget-object v2, v4, v0

    .line 153
    .local v2, textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    move v1, v0

    .line 159
    .end local v2           #textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    :cond_2
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 163
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    goto :goto_0

    .line 151
    .restart local v2       #textureInfo:Lcom/htc/sunny2/common/TextureMap$TextureInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/sunny2/common/TextureMap;->mValidItemsCount:I

    return v0
.end method
