.class public Lcom/htc/sunny2/SBitmap;
.super Ljava/lang/Object;
.source "SBitmap.java"


# static fields
.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final POWEROF2:Z = false

.field public static final RIGHT_BORDER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SBitmap"

.field public static final TOP_BORDER:I = 0x4


# instance fields
.field private mBmpHeight:I

.field private mBmpId:I

.field private mBmpWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bmp"
    .parameter "nBmpId"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    .line 42
    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    .line 45
    iput p2, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/SBitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    .line 42
    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    .line 51
    iget v0, p1, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    .line 52
    iget v0, p1, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    .line 53
    iget v0, p1, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    .line 54
    return-void
.end method

.method private static convertDimension(IIII)[I
    .locals 4
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"

    .prologue
    .line 67
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 89
    :goto_0
    return-object v2

    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 76
    .local v1, nNewWidth:I
    move v1, p0

    .line 79
    const/4 v0, 0x0

    .line 86
    .local v0, nNewHeight:I
    move v0, p1

    .line 89
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    goto :goto_0
.end method

.method public static createBitmap(III)Lcom/htc/sunny2/SBitmap;
    .locals 6
    .parameter "color"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    .line 236
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 238
    .local v2, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 240
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 241
    .local v3, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v4

    .line 247
    .local v4, sbmp:Lcom/htc/sunny2/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    const/4 v0, 0x0

    .line 250
    return-object v4
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;
    .locals 3
    .parameter "bmp"

    .prologue
    .line 113
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunny2/SBitmap;
    .locals 2
    .parameter "bmp"
    .parameter "transparentBorders"

    .prologue
    .line 130
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny2/SBitmap;
    .locals 1
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"

    .prologue
    .line 146
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;
    .locals 7
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 163
    if-eqz p0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v2, v5, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny2/Sunny2;->CreateBitmap(I)I

    move-result v0

    .line 167
    .local v0, bitmapHandler:I
    if-eqz v0, :cond_0

    .line 170
    if-nez p3, :cond_3

    .line 171
    invoke-static {v0, p0}, Lcom/htc/sunny2/Sunny2;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v6

    .line 172
    .local v6, ret:Z
    if-nez v6, :cond_2

    .line 174
    const-string v1, "SBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t transform Bitmap to SBitmap: ret="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v6           #ret:Z
    :cond_2
    :goto_1
    new-instance v1, Lcom/htc/sunny2/SBitmap;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/SBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 182
    .local v3, nNewWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 188
    .local v4, nNewHeight:I
    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;
    .locals 5
    .parameter "drawable"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v4, 0x0

    .line 204
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 224
    :goto_0
    return-object v3

    .line 206
    :cond_0
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 208
    .local v2, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v3

    .line 221
    .local v3, sbmp:Lcom/htc/sunny2/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    const/4 v0, 0x0

    .line 224
    goto :goto_0
.end method

.method public static createBitmap(Landroid/view/View;)Lcom/htc/sunny2/SBitmap;
    .locals 6
    .parameter "view"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    .line 99
    .local v2, sbmp:Lcom/htc/sunny2/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    return-object v2
.end method

.method private static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 57
    add-int/lit8 p0, p0, -0x1

    .line 58
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 59
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 60
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 61
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 62
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 63
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method public final getBmpId()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroyBitmap(I)V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    goto :goto_0
.end method

.method public substitute()Lcom/htc/sunny2/SBitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Substitute a recycled SBitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_0
    new-instance v0, Lcom/htc/sunny2/SBitmap;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/SBitmap;-><init>(Lcom/htc/sunny2/SBitmap;)V

    .line 292
    .local v0, newBitmap:Lcom/htc/sunny2/SBitmap;
    iput v3, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    .line 293
    iput v3, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    .line 294
    iput v3, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    .line 295
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
