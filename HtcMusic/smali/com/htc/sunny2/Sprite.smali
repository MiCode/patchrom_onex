.class public Lcom/htc/sunny2/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/Sprite$Layer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Sprite"

.field static sSpriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Sprite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAlpha:F

.field protected mBlurParameter:F

.field protected mCreateStack:Ljava/lang/String;

.field protected mLayers:[Lcom/htc/sunny2/Sprite$Layer;

.field protected mLayersCount:I

.field protected mNodeId:I

.field protected mSunnyEnvironment:I

.field protected mXPosition:F

.field protected mXRotate:F

.field protected mXScale:F

.field protected mYPosition:F

.field protected mYRotate:F

.field protected mYScale:F

.field protected mZPosition:F

.field protected mZRotate:F

.field protected mZScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunny2/Sprite;-><init>(I)V

    .line 85
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "layersCount"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/Sprite;-><init>(IF)V

    .line 89
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 6
    .parameter "layersCount"
    .parameter "blur"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Sprite;->mSunnyEnvironment:I

    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 p1, 0x1

    .line 96
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    .line 97
    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    .line 98
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mSunnyEnvironment:I

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->CreateBlurSprite(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    .line 99
    iput p2, p0, Lcom/htc/sunny2/Sprite;->mBlurParameter:F

    .line 105
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    new-array v1, v1, [Lcom/htc/sunny2/Sprite$Layer;

    iput-object v1, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    .line 106
    const/4 v0, 0x0

    .local v0, id:I
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    if-ge v0, v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    new-instance v2, Lcom/htc/sunny2/Sprite$Layer;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/Sprite$Layer;-><init>(Lcom/htc/sunny2/Sprite;I)V

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v0           #id:I
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mSunnyEnvironment:I

    invoke-static {v1, p1, v5}, Lcom/htc/sunny2/Sunny2;->CreateSpriteWithConfig(IIZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    .line 102
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mBlurParameter:F

    goto :goto_0

    .line 110
    .restart local v0       #id:I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    .line 112
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mXPosition:F

    .line 113
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mYPosition:F

    .line 114
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mZPosition:F

    .line 116
    iput v4, p0, Lcom/htc/sunny2/Sprite;->mXScale:F

    .line 117
    iput v4, p0, Lcom/htc/sunny2/Sprite;->mYScale:F

    .line 118
    iput v4, p0, Lcom/htc/sunny2/Sprite;->mZScale:F

    .line 120
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mXRotate:F

    .line 121
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mYRotate:F

    .line 122
    iput v3, p0, Lcom/htc/sunny2/Sprite;->mZRotate:F

    .line 133
    sget-object v2, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v2

    .line 134
    :try_start_0
    sget-object v1, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v2

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain()Lcom/htc/sunny2/Sprite;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/sunny2/Sprite;-><init>(I)V

    return-object v0
.end method

.method public static obtain(F)Lcom/htc/sunny2/Sprite;
    .locals 2
    .parameter "fBlur"

    .prologue
    .line 30
    new-instance v0, Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/htc/sunny2/Sprite;-><init>(IF)V

    return-object v0
.end method

.method public static obtain(I)Lcom/htc/sunny2/Sprite;
    .locals 1
    .parameter "layersCount"

    .prologue
    .line 41
    new-instance v0, Lcom/htc/sunny2/Sprite;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/Sprite;-><init>(I)V

    return-object v0
.end method

.method public static search(I)Lcom/htc/sunny2/Sprite;
    .locals 5
    .parameter "nNodeId"

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, desired:Lcom/htc/sunny2/Sprite;
    sget-object v4, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v4

    .line 47
    :try_start_0
    sget-object v3, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/Sprite;

    .line 48
    .local v2, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 49
    move-object v0, v2

    .line 53
    .end local v2           #s:Lcom/htc/sunny2/Sprite;
    :cond_1
    monitor-exit v4

    .line 54
    return-object v0

    .line 53
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public enableColorBlending()V
    .locals 3

    .prologue
    .line 308
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_EnableColorBlending(IIZ)V

    .line 309
    return-void
.end method

.method public enableTmC()V
    .locals 3

    .prologue
    .line 303
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetRGBOperation(III)V

    .line 304
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mAlpha:F

    return v0
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/sunny2/Sprite;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer(I)Lcom/htc/sunny2/Sprite$Layer;
    .locals 1
    .parameter "idx"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    aget-object v0, v0, p1

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    return v0
.end method

.method public getPosition()[F
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mXPosition:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mYPosition:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mZPosition:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getRotate()[F
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mXRotate:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mYRotate:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mZRotate:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getScale()[F
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mXScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mYScale:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mZScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getUserFlag()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetUserFlag(I)I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetVisible(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mBlurParameter:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 141
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroyBlurSprite(I)V

    .line 145
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    .line 146
    sget-object v1, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    sget-object v0, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroySprite(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 168
    iput p1, p0, Lcom/htc/sunny2/Sprite;->mAlpha:F

    .line 169
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetGroupAlpha(IF)V

    .line 170
    return-void
.end method

.method public setBlurTexture(Lcom/htc/sunny2/Texture;Lcom/htc/sunny2/SunnyContext;)V
    .locals 4
    .parameter "texture"
    .parameter "sunnyContext"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, handler:I
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    .line 243
    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Texture_Realize(I)V

    .line 246
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-virtual {p2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/Sprite;->mBlurParameter:F

    invoke-static {v1, v2, v0, v3}, Lcom/htc/sunny2/Sunny2;->BlurSprite_SetTexture(IIIF)Z

    .line 252
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-virtual {p2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/Sprite;->mBlurParameter:F

    invoke-static {v1, v2, v3}, Lcom/htc/sunny2/Sunny2;->BlurSprite_SetBlurParameter(IIF)Z

    .line 256
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 267
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetColor(IIIII)V

    .line 268
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 180
    iput p1, p0, Lcom/htc/sunny2/Sprite;->mXPosition:F

    .line 181
    iput p2, p0, Lcom/htc/sunny2/Sprite;->mYPosition:F

    .line 182
    iput p3, p0, Lcom/htc/sunny2/Sprite;->mZPosition:F

    .line 183
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    .line 184
    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 313
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRenderOrder(II)V

    .line 314
    return-void
.end method

.method public setReverse()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 273
    return-void
.end method

.method public setReverseRatio(F)V
    .locals 6
    .parameter "ratio"

    .prologue
    const/high16 v3, 0x3f80

    .line 277
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v5, v3, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 278
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 196
    iput p1, p0, Lcom/htc/sunny2/Sprite;->mXRotate:F

    .line 197
    iput p2, p0, Lcom/htc/sunny2/Sprite;->mYRotate:F

    .line 198
    iput p3, p0, Lcom/htc/sunny2/Sprite;->mZRotate:F

    .line 199
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRotate(IFFF)V

    .line 200
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "sX"
    .parameter "sY"
    .parameter "sZ"

    .prologue
    .line 173
    iput p1, p0, Lcom/htc/sunny2/Sprite;->mXScale:F

    .line 174
    iput p2, p0, Lcom/htc/sunny2/Sprite;->mYScale:F

    .line 175
    iput p3, p0, Lcom/htc/sunny2/Sprite;->mZScale:F

    .line 176
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    .line 177
    return-void
.end method

.method public setTexture(I)V
    .locals 2
    .parameter "texture"

    .prologue
    const/4 v1, 0x0

    .line 227
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, v1, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 228
    return-void
.end method

.method public setTexture(Lcom/htc/sunny2/Texture;)V
    .locals 3
    .parameter "texture"

    .prologue
    const/4 v2, 0x0

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, handler:I
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    .line 235
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v1, v2, v2, v0}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 236
    return-void
.end method

.method public setTextureCoordinatesBy2P(FFFF)V
    .locals 6
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 282
    return-void
.end method

.method public setTextureCoordinatesWithRotate(IFFFF)V
    .locals 10
    .parameter "rotateDegrees"
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x3f80

    .line 285
    sparse-switch p1, :sswitch_data_0

    .line 296
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 299
    :goto_0
    return-void

    .line 287
    :sswitch_0
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sub-float v3, v9, p2

    sub-float v5, v9, p3

    sub-float v7, v9, p4

    sub-float/2addr v9, p4

    move v2, p3

    move v4, p5

    move v6, p3

    move v8, p5

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 290
    :sswitch_1
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sub-float v2, v9, p2

    sub-float v3, v9, p3

    sub-float v4, v9, p2

    sub-float v5, v9, p5

    sub-float v6, v9, p4

    sub-float v7, v9, p3

    sub-float v8, v9, p4

    sub-float/2addr v9, p5

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 293
    :sswitch_2
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sub-float v2, v9, p3

    sub-float v4, v9, p5

    sub-float v6, v9, p3

    sub-float v8, v9, p5

    move v3, p2

    move v5, p3

    move v7, p4

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setTextureRotate(I)V
    .locals 1
    .parameter "rotateDegrees"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 260
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "touchable"

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTouchable(IZ)V

    .line 224
    return-void
.end method

.method public setUserFlag(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 215
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetUserFlag(II)V

    .line 216
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    .line 208
    return-void
.end method

.method public setupGeometry(FFFF)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "originX"
    .parameter "originY"

    .prologue
    .line 263
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupGeometry(IIFFFFF)V

    .line 264
    return-void
.end method
