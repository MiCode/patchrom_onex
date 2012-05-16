.class public Lcom/htc/sunny2/common/IterationDecodeTask;
.super Lcom/htc/sunny2/common/IterationTask;
.source "IterationDecodeTask.java"


# static fields
.field private static final DEFAULT_TIMELIMITS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field private mColorDepth:I

.field private mDecodeFlags:I

.field private mDecodeWebp:Z

.field private mDecodeWebpBmp:Landroid/graphics/Bitmap;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTask;-><init>()V

    .line 16
    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    .line 17
    iput-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 18
    iput v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 23
    iput-boolean v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 24
    iput-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method private decodeWebp()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 57
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 61
    .local v4, sourceType:I
    packed-switch v4, :pswitch_data_0

    .line 109
    :pswitch_0
    sget-object v5, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v6, "[IterationDecodeTask][decodeWebp] Unknown source type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/common/IterationDecodeTask;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 116
    :cond_0
    return v7

    .line 65
    :pswitch_1
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 66
    .local v0, filePath:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 70
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 71
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 73
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    sget-object v5, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v6, "[IterationDecodeTask][decodeWebp] FilePath is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v0           #filePath:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v5, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 81
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_2

    .line 82
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 86
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 89
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    sget-object v5, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v6, "[IterationDecodeTask][decodeWebp] ParcelFileDescriptor is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v5, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 96
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 97
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 101
    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 104
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    sget-object v5, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v6, "[IterationDecodeTask][decodeWebp] MediaData InputStream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V
    .locals 9
    .parameter "options"

    .prologue
    const-wide/high16 v7, 0x3fe0

    .line 44
    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 45
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 46
    .local v3, rx:F
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 47
    .local v4, ry:F
    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 49
    .local v2, ratio:F
    :goto_1
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    .line 50
    .local v1, decodeSizeW:I
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 51
    .local v0, decodeSizeH:I
    invoke-static {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    return-void

    .line 44
    .end local v0           #decodeSizeH:I
    .end local v1           #decodeSizeW:I
    .end local v2           #ratio:F
    .end local v3           #rx:F
    .end local v4           #ry:F
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 47
    .restart local v3       #rx:F
    .restart local v4       #ry:F
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v7, 0x0

    .line 280
    :goto_0
    return-object v7

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 258
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 260
    .local v1, height:I
    if-ne v4, v1, :cond_1

    move-object v7, p1

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 264
    .local v3, newMinSide:I
    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    .line 265
    .local v5, xMargin:I
    sub-int v7, v1, v3

    div-int/lit8 v6, v7, 0x2

    .line 266
    .local v6, yMargin:I
    const/4 v2, 0x0

    .line 268
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, v5, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    :goto_1
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    move-object p1, v2

    :cond_2
    move-object v7, p1

    .line 280
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCacheItem()Lcom/htc/sunny2/common/CacheItem;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 189
    return-void
.end method

.method public onEnd()V
    .locals 3

    .prologue
    .line 193
    iget-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 202
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 203
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 213
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 214
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    goto :goto_0

    .line 217
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    goto :goto_0
.end method

.method public onIterate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v1, :cond_0

    .line 29
    sget-object v1, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v2, "[IterationDecodeTask][onIterate] CacheItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v1, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationDecodeTask;->decodeWebp()Z

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] CacheItem is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v4, "image/webp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v13, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 138
    .local v13, sourceType:I
    packed-switch v13, :pswitch_data_0

    .line 174
    :pswitch_0
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] Unknown source type"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 143
    .local v1, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 144
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v7, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    goto :goto_0

    .line 147
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] FilePath is empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 155
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 156
    .restart local v2       #mimeType:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 157
    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v8, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v10, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move-object v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] ParcelFileDescriptor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v7, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 166
    .local v7, is:Ljava/io/InputStream;
    if-eqz v7, :cond_4

    .line 167
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v10, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v12, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move v8, v3

    invoke-virtual/range {v6 .. v12}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    goto/16 :goto_0

    .line 169
    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] MediaData InputStream is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iput-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 226
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 227
    iput-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 228
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 229
    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 233
    return-void
.end method

.method public setColorDepth(I)V
    .locals 0
    .parameter "requiredColorDepth"

    .prologue
    .line 244
    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 245
    return-void
.end method

.method public setDecodeFlag(I)V
    .locals 0
    .parameter "decodeFlag"

    .prologue
    .line 240
    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 241
    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/ImageDecoder;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V

    .line 249
    return-void
.end method
