.class public Lcom/htc/music/util/BlurBitmap;
.super Ljava/lang/Object;
.source "BlurBitmap.java"


# static fields
.field private static final BLUE_MASK:I = 0xff

.field private static final GREEN_MASK:I = 0xff00

.field private static final GREEN_MASK_SHIFT:I = 0x8

.field private static final KERNEL_NORM:[I = null

.field private static final KERNEL_SIZE:I = 0x9

.field private static final MULTIPLY_COLOR:I = -0x555556

.field private static final NUM_COLORS:I = 0x100

.field private static final RADIUS:I = 0x4

.field private static final RED_MASK:I = 0xff0000

.field private static final RED_MASK_SHIFT:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v1, 0x900

    new-array v1, v1, [I

    sput-object v1, Lcom/htc/music/util/BlurBitmap;->KERNEL_NORM:[I

    .line 27
    const/16 v0, 0x8ff

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 28
    sget-object v1, Lcom/htc/music/util/BlurBitmap;->KERNEL_NORM:[I

    div-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static boxBlurFilter([I[III)V
    .locals 19
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    const/4 v7, 0x0

    .line 109
    .local v7, inPos:I
    add-int/lit8 v8, p2, -0x1

    .line 110
    .local v8, maxX:I
    const/16 v16, 0x0

    .local v16, y:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 112
    const/4 v14, 0x0

    .line 113
    .local v14, red:I
    const/4 v5, 0x0

    .line 114
    .local v5, green:I
    const/4 v4, 0x0

    .line 115
    .local v4, blue:I
    const/4 v6, -0x4

    .local v6, i:I
    :goto_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    .line 116
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0, v8}, Lcom/htc/music/util/FloatUtils;->clamp(III)I

    move-result v17

    add-int v17, v17, v7

    aget v3, p0, v17

    .line 117
    .local v3, argb:I
    const/high16 v17, 0xff

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x10

    add-int v14, v14, v17

    .line 118
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    add-int v5, v5, v17

    .line 119
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    add-int v4, v4, v17

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 122
    .end local v3           #argb:I
    :cond_0
    const/16 v2, 0xff

    .line 124
    .local v2, alpha:I
    move/from16 v11, v16

    .line 125
    .local v11, outPos:I
    const/4 v15, 0x0

    .local v15, x:I
    :goto_2
    move/from16 v0, p2

    if-eq v15, v0, :cond_1

    .line 127
    const/high16 v17, -0x100

    sget-object v18, Lcom/htc/music/util/BlurBitmap;->KERNEL_NORM:[I

    aget v18, v18, v14

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    sget-object v18, Lcom/htc/music/util/BlurBitmap;->KERNEL_NORM:[I

    aget v18, v18, v5

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    sget-object v18, Lcom/htc/music/util/BlurBitmap;->KERNEL_NORM:[I

    aget v18, v18, v4

    or-int v17, v17, v18

    aput v17, p1, v11

    .line 131
    add-int/lit8 v17, v15, -0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/htc/music/util/FloatUtils;->clamp(III)I

    move-result v13

    .line 132
    .local v13, prevX:I
    add-int/lit8 v17, v15, 0x4

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/htc/music/util/FloatUtils;->clamp(III)I

    move-result v10

    .line 133
    .local v10, nextX:I
    add-int v17, v7, v13

    aget v12, p0, v17

    .line 134
    .local v12, prevArgb:I
    add-int v17, v7, v10

    aget v9, p0, v17

    .line 135
    .local v9, nextArgb:I
    const/high16 v17, 0xff

    and-int v17, v17, v9

    const/high16 v18, 0xff

    and-int v18, v18, v12

    sub-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x10

    add-int v14, v14, v17

    .line 136
    const v17, 0xff00

    and-int v17, v17, v9

    const v18, 0xff00

    and-int v18, v18, v12

    sub-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x8

    add-int v5, v5, v17

    .line 137
    and-int/lit16 v0, v9, 0xff

    move/from16 v17, v0

    and-int/lit16 v0, v12, 0xff

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int v4, v4, v17

    .line 138
    add-int v11, v11, p3

    .line 125
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 140
    .end local v9           #nextArgb:I
    .end local v10           #nextX:I
    .end local v12           #prevArgb:I
    .end local v13           #prevX:I
    :cond_1
    add-int v7, v7, p2

    .line 110
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 142
    .end local v2           #alpha:I
    .end local v4           #blue:I
    .end local v5           #green:I
    .end local v6           #i:I
    .end local v11           #outPos:I
    .end local v14           #red:I
    .end local v15           #x:I
    :cond_2
    return-void
.end method

.method public static load(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "source"

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/16 v17, 0x0

    .line 102
    :goto_0
    return-object v17

    .line 43
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 44
    .local v21, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 45
    .local v20, sourceHeight:I
    const/16 v12, 0x80

    .line 46
    .local v12, destWidth:I
    const/16 v11, 0x80

    .line 47
    .local v11, destHeight:I
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v4, v12

    div-float v14, v2, v4

    .line 48
    .local v14, fitX:F
    move/from16 v0, v20

    int-to-float v2, v0

    int-to-float v4, v11

    div-float v15, v2, v4

    .line 54
    .local v15, fitY:F
    cmpg-float v2, v14, v15

    if-gez v2, :cond_1

    .line 56
    const v2, 0x3e4ccccd

    move/from16 v0, v21

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v5, v2

    .line 57
    .local v5, cropWidth:I
    int-to-float v2, v11

    mul-float/2addr v2, v14

    const v4, 0x3e4ccccd

    mul-float/2addr v2, v4

    float-to-int v9, v2

    .line 58
    .local v9, cropHeight:I
    const v2, 0x3ecccccd

    move/from16 v0, v21

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v6, v2

    .line 59
    .local v6, cropX:I
    sub-int v2, v20, v9

    div-int/lit8 v7, v2, 0x2

    .line 60
    .local v7, cropY:I
    const/high16 v2, 0x3f80

    div-float/2addr v2, v14

    const v4, 0x3e4ccccd

    div-float v19, v2, v4

    .line 71
    .local v19, scale:F
    :goto_1
    mul-int v16, v5, v9

    .line 72
    .local v16, numPixels:I
    move/from16 v0, v16

    new-array v3, v0, [I

    .line 73
    .local v3, in:[I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 76
    .local v22, tmp:[I
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 89
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 92
    .local v13, filtered:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 93
    .local v17, output:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v10, canvas:Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 95
    .local v18, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 97
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const v4, -0x555556

    const/4 v8, 0x0

    invoke-direct {v2, v4, v8}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 99
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v10, v13, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 63
    .end local v3           #in:[I
    .end local v5           #cropWidth:I
    .end local v6           #cropX:I
    .end local v7           #cropY:I
    .end local v9           #cropHeight:I
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v13           #filtered:Landroid/graphics/Bitmap;
    .end local v16           #numPixels:I
    .end local v17           #output:Landroid/graphics/Bitmap;
    .end local v18           #paint:Landroid/graphics/Paint;
    .end local v19           #scale:F
    .end local v22           #tmp:[I
    :cond_1
    int-to-float v2, v12

    mul-float/2addr v2, v15

    const v4, 0x3e4ccccd

    mul-float/2addr v2, v4

    float-to-int v5, v2

    .line 64
    .restart local v5       #cropWidth:I
    const v2, 0x3e4ccccd

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v9, v2

    .line 65
    .restart local v9       #cropHeight:I
    sub-int v2, v21, v5

    div-int/lit8 v6, v2, 0x2

    .line 66
    .restart local v6       #cropX:I
    const v2, 0x3ecccccd

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v7, v2

    .line 67
    .restart local v7       #cropY:I
    const/high16 v2, 0x3f80

    div-float/2addr v2, v15

    const v4, 0x3e4ccccd

    div-float v19, v2, v4

    .restart local v19       #scale:F
    goto :goto_1
.end method
