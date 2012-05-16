.class public Lcom/htc/sunny2/Sprite$Layer;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layer"
.end annotation


# instance fields
.field private mHeight:F

.field private mIsVisible:Z

.field private mLayerId:I

.field private mWidth:F

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/htc/sunny2/Sprite;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/Sprite;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput p2, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 327
    return-void
.end method


# virtual methods
.method public enableColorBlending(Z)V
    .locals 2
    .parameter "enableColorBlending"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_EnableColorBlending(IIZ)V

    .line 424
    return-void
.end method

.method public getGeometry()[I
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mWidth:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mHeight:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mX:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mY:F

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getLayerId()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    return v0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetAlpha(III)V

    .line 416
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetColor(IIIII)V

    .line 412
    return-void
.end method

.method public setRGBOperation(I)V
    .locals 2
    .parameter "rgbOp"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetRGBOperation(III)V

    .line 420
    return-void
.end method

.method public setRenderable(Z)V
    .locals 2
    .parameter "renderable"

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerRenderable(IIZ)V

    .line 402
    :cond_0
    return-void
.end method

.method public setTexture(II)V
    .locals 2
    .parameter "textureIndex"
    .parameter "texture"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 351
    return-void
.end method

.method public setTexture(ILcom/htc/sunny2/Texture;)V
    .locals 3
    .parameter "textureIndex"
    .parameter "texture"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, textureId:I
    if-eqz p2, :cond_0

    .line 344
    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v1, v1, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v1, v2, p1, v0}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 347
    return-void
.end method

.method public setTextureCoordinatesBy2P(FFFF)V
    .locals 6
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 365
    return-void
.end method

.method public setTextureRotate(I)V
    .locals 14
    .parameter "rotateDegrees"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 368
    sparse-switch p1, :sswitch_data_0

    .line 379
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v4, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 381
    :goto_0
    return-void

    .line 370
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 373
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v4, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v3

    move v12, v2

    move v13, v2

    invoke-static/range {v4 .. v13}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 376
    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v4, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v6, v3

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    move v11, v3

    move v12, v2

    move v13, v3

    invoke-static/range {v4 .. v13}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setTouchable(IIZ)V
    .locals 2
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "touchable"

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerTouchable(IIZ)V

    .line 408
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    .line 385
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerVisible(IIZ)V

    .line 386
    return-void
.end method

.method public setupGeometry(FFFFF)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "originX"
    .parameter "originY"
    .parameter "originZ"

    .prologue
    .line 334
    iput p3, p0, Lcom/htc/sunny2/Sprite$Layer;->mX:F

    .line 335
    iput p4, p0, Lcom/htc/sunny2/Sprite$Layer;->mY:F

    .line 336
    iput p2, p0, Lcom/htc/sunny2/Sprite$Layer;->mHeight:F

    .line 337
    iput p1, p0, Lcom/htc/sunny2/Sprite$Layer;->mWidth:F

    .line 338
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupGeometry(IIFFFFF)V

    .line 339
    return-void
.end method

.method public setupTextureWithTextureInfoAndRotate(III)V
    .locals 2
    .parameter "textureIndex"
    .parameter "texture"
    .parameter "degreesOfDisplayRotate"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 360
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    .line 361
    return-void
.end method

.method public setupTextureWithTextureInfoAndRotate(ILcom/htc/sunny2/Texture;I)V
    .locals 3
    .parameter "textureIndex"
    .parameter "texture"
    .parameter "degreesOfDisplayRotate"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    .line 356
    return-void
.end method
