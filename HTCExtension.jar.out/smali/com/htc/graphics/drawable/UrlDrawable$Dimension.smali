.class public Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
.super Ljava/lang/Object;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimension"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 468
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->reset()V

    .line 469
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 471
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 473
    iput p2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 474
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    .line 518
    .local v0, cloned:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 519
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 520
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v0

    return-object v0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 510
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 499
    instance-of v2, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 500
    check-cast v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 501
    .local v0, other:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v3, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 503
    .end local v0           #other:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_0
    return v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    return v0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 485
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 541
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 542
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 533
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 534
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
