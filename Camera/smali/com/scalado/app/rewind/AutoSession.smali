.class public Lcom/scalado/app/rewind/AutoSession;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;,
        Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;,
        Lcom/scalado/app/rewind/AutoSession$Command;,
        Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;,
        Lcom/scalado/app/rewind/AutoSession$LooperThread;,
        Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;,
        Lcom/scalado/app/rewind/AutoSession$Replacement;,
        Lcom/scalado/app/rewind/AutoSession$ToUiHandler;,
        Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I = null

.field private static final ABSOLUTE_MIN_FEATHERING:I = 0x2

.field private static final MSG_ADD_JPEG:I = 0x1

.field private static final MSG_ALL_IMAGES_ADDED:I = 0x81

.field private static final MSG_ERROR:I = 0x100

.field private static final MSG_GET_MERGED_IMG:I = 0x3

.field private static final MSG_GET_SOURCE_IMG:I = 0x4

.field private static final MSG_LTW_COMPLETED:I = 0x80

.field private static final MSG_OUTPUT_JPEG:I = 0x2

.field private static final MSG_OUTPUT_SOURCE_JPEG:I = 0x10

.field private static final MSG_QUIT:I = 0x20

.field private static final MSG_RECTS:I = 0xa0

.field private static final MSG_RECTS_BACK_INDEX:I = 0xa1

.field private static final MSG_RECYCLE:I = 0x8

.field private static final MSG_SAVE_COMPLETED:I = 0x8c

.field private static final REF_MIN_FEATHERING:I = 0x8

.field private static final REF_MIN_FEATHERING_DIM_LENGTH:I = 0xcc0

.field private static final REF_MIN_MAX_TRANSLATION:I = 0x3c

.field private static final REF_MIN_MAX_TRANSLATION_DIM_LENGTH:I = 0xcc0

.field private static final TAG:Ljava/lang/String; = "AutoSession"

.field private static maxRelativeTranslation:F

.field private static sLogging:Z


# instance fields
.field private backgroundImageIndex:I

.field private mAbortRequested:Z

.field private mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

.field private mBestBgIndex:I

.field private mDecoders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/caps/codec/decoder/JpegDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mDryMode:Z

.field private mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

.field private mFaceDetection2W:I

.field private mFaceDetectionBaseW:I

.field private mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetectionDims2:Lcom/scalado/base/Size;

.field private mFirstTime:Z

.field private mImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mImgs2:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

.field private mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

.field private mLtwCompleted:Z

.field private mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

.field private mMaxJpegSize:I

.field private mMaxMaxTranslation:I

.field private mMergedImg:Lcom/scalado/base/Image;

.field private mMergedJpeg:Lcom/scalado/base/Buffer;

.field private mMinFeathering:I

.field private mMinMaxTranslation:I

.field private mNotReplaced:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mNumImages:I

.field private mNumReceived:I

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mRelMaxTranslation:F

.field private mReplacements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mScreenImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/scalado/caps/Session;

.field private mSrcDims:Lcom/scalado/base/Size;

.field private mT0:J

.field private mT0All:J

.field private mT1:J

.field private mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

.field private mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

.field private mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

.field private mUseImage2:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession$Command;->values()[Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->ABORT:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->CONTINUE:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->SKIP_THIS:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    .line 123
    const v0, 0x3f333333

    sput v0, Lcom/scalado/app/rewind/AutoSession;->maxRelativeTranslation:F

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "numImages"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 444
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    .line 101
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    .line 112
    sget-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    .line 113
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 114
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    .line 115
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 117
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    .line 118
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    .line 119
    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    .line 121
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    .line 142
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    .line 143
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    .line 144
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    .line 148
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    .line 160
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$LooperThread;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    .line 169
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$ToUiHandler;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    .line 179
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    .line 184
    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 185
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    .line 189
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mDryMode:Z

    .line 191
    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    .line 193
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    .line 445
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    .line 446
    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 447
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->start()V

    .line 448
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/AutoSession;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1587
    invoke-static {p0}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/AutoSession;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateAddJpeg(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/AutoSession;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateGetMergedImage()V

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/AutoSession;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateGetSourceImage(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateRecycle()V

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/app/rewind/AutoSession;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1294
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/AutoSession;->doSaveSourceJpeg(ILjava/lang/String;)V

    return-void
.end method

.method private boundDim(III)I
    .locals 2
    .parameter "start"
    .parameter "length"
    .parameter "maxLength"

    .prologue
    .line 1400
    add-int v1, p1, p2

    if-le v1, p3, :cond_0

    .line 1401
    add-int v1, p1, p2

    sub-int v0, v1, p3

    .line 1402
    .local v0, d:I
    sub-int/2addr p2, v0

    .line 1403
    const/4 v1, -0x1

    invoke-direct {p0, p2, v1}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result p2

    .line 1405
    .end local v0           #d:I
    :cond_0
    return p2
.end method

.method private convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12
    .parameter "r"

    .prologue
    const/high16 v11, 0x3f00

    .line 1360
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v9}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 1362
    .local v3, srcDims:Lcom/scalado/base/Size;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1363
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 1362
    mul-float v4, v9, v10

    .line 1364
    .local v4, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1365
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 1364
    mul-float v2, v9, v10

    .line 1366
    .local v2, h:F
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1367
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 1366
    mul-float/2addr v9, v10

    .line 1367
    mul-float v10, v11, v4

    .line 1366
    add-float v0, v9, v10

    .line 1368
    .local v0, cx:F
    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1369
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 1368
    mul-float/2addr v9, v10

    .line 1369
    mul-float v10, v11, v2

    .line 1368
    add-float v1, v9, v10

    .line 1372
    .local v1, cy:F
    mul-float v9, v11, v4

    sub-float v9, v0, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1373
    .local v5, x0:I
    mul-float v9, v11, v2

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1374
    .local v7, y0:I
    mul-float v9, v11, v4

    add-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1375
    .local v6, x1:I
    mul-float v9, v11, v2

    add-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1376
    .local v8, y1:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v9
.end method

.method private correctOrientation(Lcom/scalado/stream/BufferStream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 6
    .parameter "stream"

    .prologue
    .line 1155
    new-instance v2, Lcom/scalado/caps/exif/Session;

    .line 1154
    invoke-direct {v2, p1}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 1158
    .local v2, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1159
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v3, 0x0

    .line 1161
    .local v3, inputDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1162
    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    .line 1167
    :goto_0
    return-object v5

    .line 1163
    :catch_0
    move-exception v1

    .line 1164
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Rotating image "

    invoke-static {v5}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 1165
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private createLtw()V
    .locals 3

    .prologue
    .line 981
    new-instance v1, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 982
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 986
    return-void

    .line 983
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/Decoder;

    invoke-virtual {v2, v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->addSource(Lcom/scalado/caps/Decoder;)V

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createReplaceRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 9
    .parameter "r"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1380
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1381
    .local v3, x:I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1382
    .local v4, y:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1383
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1384
    .local v0, h:I
    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v3

    .line 1385
    invoke-direct {p0, v4, v6}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v4

    .line 1386
    invoke-direct {p0, v2, v8}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v2

    .line 1387
    invoke-direct {p0, v0, v8}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v0

    .line 1388
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Lcom/scalado/app/rewind/AutoSession;->boundDim(III)I

    move-result v2

    .line 1389
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Lcom/scalado/app/rewind/AutoSession;->boundDim(III)I

    move-result v0

    .line 1390
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 1391
    .local v1, innerRect:Lcom/scalado/base/Rect;
    const-string v5, "AutoSession"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",w"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual {v1, v3}, Lcom/scalado/base/Rect;->setX(I)V

    .line 1393
    invoke-virtual {v1, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 1394
    invoke-virtual {v1, v2}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 1395
    invoke-virtual {v1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 1396
    return-object v1
.end method

.method private decodeJpeg(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 1039
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 1040
    .local v3, srcJpeg:Ljava/nio/ByteBuffer;
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1041
    .local v0, buffer:Lcom/scalado/base/Buffer;
    new-instance v4, Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1043
    .local v4, stream:Lcom/scalado/stream/BufferStream;
    invoke-direct {p0, v4}, Lcom/scalado/app/rewind/AutoSession;->correctOrientation(Lcom/scalado/stream/BufferStream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v1

    .line 1047
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_start_0
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v5, :cond_0

    .line 1053
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findFaceDetectionDims()V

    .line 1054
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v6}, Lcom/scalado/app/rewind/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 1055
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findMinFeathering()V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v2

    .line 1049
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "AutoSession"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception when scaling image "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doLtw()V
    .locals 3

    .prologue
    .line 820
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    .line 821
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 822
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v1, :cond_4

    .line 823
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->trackingSuccessful:Z

    if-nez v1, :cond_1

    .line 824
    const-string v1, "AutoSession"

    const-string v2, "Tracking failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    if-nez v1, :cond_3

    .line 828
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    if-eqz v1, :cond_3

    .line 829
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    invoke-interface {v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;->onMergeCompositionError()Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v0

    .line 830
    .local v0, cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 837
    .end local v0           #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :cond_3
    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-nez v1, :cond_0

    .line 841
    :cond_4
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->replaceFaces()V

    .line 842
    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-nez v1, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->renderScreen()V

    .line 846
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->sendReplacementInfo()V

    .line 847
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->log()V

    goto :goto_0

    .line 832
    .restart local v0       #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    goto :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private doSaveSourceJpeg(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "filename"

    .prologue
    .line 1297
    const-string v0, "Outputting source %d to %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1302
    :cond_0
    const-string v0, "AutoSession"

    .line 1303
    const-string v1, "Session not initialized correctly or incorrect state. Cannot save source jpeg."

    .line 1301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, p2}, Lcom/scalado/app/rewind/FileUtils;->save(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureTwoMult(II)I
    .locals 1
    .parameter "val"
    .parameter "dir"

    .prologue
    .line 1409
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1410
    add-int/2addr p1, p2

    .line 1412
    :cond_0
    return p1
.end method

.method private findFaceDetectionDims()V
    .locals 10

    .prologue
    .line 1189
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1190
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 1191
    .local v3, srcDims:Lcom/scalado/base/Size;
    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    .line 1192
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    .line 1193
    .local v4, w:I
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 1195
    .local v2, h:I
    const/16 v5, 0x3c0

    .line 1196
    .local v5, wBase:I
    const/16 v7, 0x320

    .line 1197
    .local v7, wBaseMin:I
    const/16 v6, 0x4b0

    .line 1205
    .local v6, wBaseMax:I
    div-int/lit8 v8, v4, 0x4

    if-lt v8, v7, :cond_7

    div-int/lit8 v8, v4, 0x4

    if-gt v8, v6, :cond_7

    .line 1206
    div-int/lit8 v4, v4, 0x4

    .line 1218
    :goto_0
    const/16 v4, 0x300

    .line 1220
    iget v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    if-lez v8, :cond_0

    .line 1221
    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    .line 1223
    :cond_0
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 1224
    .local v0, ar:F
    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1225
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_1

    .line 1226
    add-int/lit8 v4, v4, 0x1

    .line 1228
    :cond_1
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2

    .line 1229
    add-int/lit8 v2, v2, 0x1

    .line 1231
    :cond_2
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 1232
    iget-boolean v8, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v8, :cond_6

    .line 1234
    const/16 v4, 0x500

    .line 1235
    iget v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    if-lez v8, :cond_3

    .line 1236
    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    .line 1238
    :cond_3
    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1239
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_4

    .line 1240
    add-int/lit8 v4, v4, 0x1

    .line 1242
    :cond_4
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_5

    .line 1243
    add-int/lit8 v2, v2, 0x1

    .line 1245
    :cond_5
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    .line 1247
    :cond_6
    return-void

    .line 1208
    .end local v0           #ar:F
    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method private findMinFeathering()V
    .locals 7

    .prologue
    .line 1250
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1251
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 1252
    .local v3, srcDims:Lcom/scalado/base/Size;
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    .line 1253
    .local v4, w:I
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 1254
    .local v2, h:I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1255
    const/high16 v6, 0x454c

    .line 1254
    div-float/2addr v5, v6

    .line 1255
    const/high16 v6, 0x4100

    .line 1254
    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1256
    .local v1, f:I
    const/4 v5, 0x2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    .line 1257
    return-void
.end method

.method private getMaxTranslation(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7
    .parameter "rBg"
    .parameter "rFg"

    .prologue
    .line 1172
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1173
    .local v0, dimSize:I
    mul-int/lit8 v5, v0, 0x3c

    int-to-float v5, v5

    const/high16 v6, 0x454c

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1174
    .local v4, minValue:I
    iget v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    if-ltz v5, :cond_0

    .line 1175
    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    .line 1178
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1179
    .local v1, dx:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1182
    .local v2, dy:F
    float-to-int v5, v1

    float-to-int v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1183
    .local v3, maxTransl:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1185
    return v3
.end method

.method private log()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1446
    const-string v1, "--- Faces ---"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Faces detected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1448
    const-string v1, "Replaced faces = %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RectTracker;->logDump(Z)V

    .line 1451
    const-string v1, "--- Replaced faces ---"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time (since all imgs) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time (total) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1455
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected bg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1468
    const-string v1, "***"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1469
    return-void

    .line 1456
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 1458
    .local v0, repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    const-string v2, "Replace area = %s, feath. = %d, max. trans. = %d"

    new-array v3, v9, [Ljava/lang/Object;

    .line 1459
    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFeathering:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1460
    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mMaxTransl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1457
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1461
    const-string v2, "   id = %d, bg = %d, fg = %d"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1462
    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1461
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1464
    const-string v2, "   bg = %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectBg:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1466
    const-string v2, "   fg = %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectFg:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1465
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1588
    sget-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    if-eqz v0, :cond_0

    .line 1589
    const-string v0, "AutoSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_0
    return-void
.end method

.method private static final logd2(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1594
    sget-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    if-eqz v0, :cond_0

    .line 1596
    const-string v0, "AutoSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    return-void
.end method

.method private privateAddJpeg(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 777
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-lt v3, v4, :cond_1

    .line 778
    const-string v3, "AutoSession"

    const-string v4, "All images arleady added!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    if-eqz v3, :cond_2

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    .line 783
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 785
    :cond_2
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v3, v4, :cond_3

    .line 786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    .line 788
    :cond_3
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    if-nez v3, :cond_5

    .line 789
    new-instance v3, Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    invoke-direct {v3, v4}, Lcom/scalado/app/rewind/RectTracker;-><init>(I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 792
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    if-nez v3, :cond_4

    .line 793
    new-instance v3, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    .line 795
    :cond_4
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setFaceDectionExtern(Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;)V

    .line 796
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/high16 v4, 0x4020

    const/high16 v5, 0x4040

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setRectScaling(FF)V

    .line 797
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 798
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setMaxTranslation(F)V

    .line 801
    :cond_5
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 802
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 804
    .local v2, index:I
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/AutoSession;->decodeJpeg(I)V

    .line 805
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/AutoSession;->scaleDown(I)V

    .line 806
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Image;

    .line 807
    .local v0, image:Lcom/scalado/base/Image;
    const/4 v1, 0x0

    .line 808
    .local v1, image2:Lcom/scalado/base/Image;
    iget-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v3, :cond_6

    .line 809
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #image2:Lcom/scalado/base/Image;
    check-cast v1, Lcom/scalado/base/Image;

    .line 811
    .restart local v1       #image2:Lcom/scalado/base/Image;
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/base/Image;

    invoke-virtual {v4, v3, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 812
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 813
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v3, v4, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->doLtw()V

    goto/16 :goto_0
.end method

.method private privateGetMergedImage()V
    .locals 4

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    .line 1337
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1338
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1339
    return-void
.end method

.method private privateGetSourceImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, image:Lcom/scalado/base/Image;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 1344
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #image:Lcom/scalado/base/Image;
    check-cast v0, Lcom/scalado/base/Image;

    .line 1352
    .restart local v0       #image:Lcom/scalado/base/Image;
    :goto_0
    if-nez v0, :cond_0

    .line 1353
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderScreen(I)Lcom/scalado/base/Image;

    move-result-object v0

    .line 1355
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1356
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1357
    return-void

    .line 1348
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "AutoSession"

    .line 1349
    const-string v3, "In privateGetSourceImage: Index out of bounds or session not initialized correctly."

    .line 1347
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private privateRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1557
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1558
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1559
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1560
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1561
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1562
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    .line 1563
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedJpeg:Lcom/scalado/base/Buffer;

    .line 1565
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 1566
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    .line 1568
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 1569
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 1571
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 1572
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1573
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1575
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1576
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 1577
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1579
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 1580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 1581
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 1582
    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    .line 1584
    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    .line 1585
    return-void
.end method

.method private privateRecycleLtw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1544
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1546
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1547
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 1548
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 1549
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1550
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1551
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1552
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 1553
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1554
    return-void
.end method

.method private renderOutput(Ljava/lang/String;)V
    .locals 12
    .parameter "filename"

    .prologue
    const/16 v11, 0x8c

    .line 1261
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Outputting to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 1262
    const/4 v6, 0x0

    .line 1264
    .local v6, stream:Lcom/scalado/stream/FileStream;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v8, :cond_0

    .line 1265
    const-string v8, "AutoSession"

    .line 1266
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Session not initilized correctly. Not possible to output to file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1266
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1265
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v9}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1269
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1273
    .end local v5           #msg:Landroid/os/Message;
    :cond_0
    :try_start_0
    new-instance v7, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v7, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .local v7, stream:Lcom/scalado/stream/FileStream;
    :try_start_1
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 1275
    .local v0, dims:Lcom/scalado/base/Size;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v2, v7, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1276
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1277
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1278
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v9, 0x8c

    invoke-virtual {v8, v9, p1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1280
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1284
    if-eqz v7, :cond_3

    .line 1286
    :try_start_2
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v7

    .line 1292
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .end local v5           #msg:Landroid/os/Message;
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    :cond_1
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v1

    .line 1282
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v8, "AutoSession"

    const-string v9, "Exception when rendering to file."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1284
    if-eqz v6, :cond_1

    .line 1286
    :try_start_4
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1287
    :catch_1
    move-exception v3

    .line 1288
    .local v3, ioe:Ljava/io/IOException;
    const-string v8, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1283
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1284
    :goto_2
    if-eqz v6, :cond_2

    .line 1286
    :try_start_5
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1291
    :cond_2
    :goto_3
    throw v8

    .line 1287
    :catch_2
    move-exception v3

    .line 1288
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v9, "AutoSession"

    const-string v10, "Exception when closing file."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1287
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dims:Lcom/scalado/base/Size;
    .restart local v2       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    .restart local v5       #msg:Landroid/os/Message;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catch_3
    move-exception v3

    .line 1288
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v8, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3           #ioe:Ljava/io/IOException;
    :cond_3
    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_0

    .line 1283
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_2

    .line 1281
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_1
.end method

.method private renderScreen(I)Lcom/scalado/base/Image;
    .locals 6
    .parameter "index"

    .prologue
    .line 871
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    if-eqz v4, :cond_0

    .line 872
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 876
    :cond_0
    const/4 v1, 0x0

    .line 884
    .local v1, image:Lcom/scalado/base/Image;
    :goto_0
    return-object v1

    .line 878
    .end local v1           #image:Lcom/scalado/base/Image;
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 879
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 880
    .local v3, session:Lcom/scalado/caps/Session;
    new-instance v1, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v4, v5}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 881
    .restart local v1       #image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v2, v3, v1}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 882
    .local v2, screen:Lcom/scalado/caps/screen/Screen;
    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    goto :goto_0
.end method

.method private renderScreen()V
    .locals 5

    .prologue
    .line 851
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    if-nez v2, :cond_1

    .line 854
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    .line 864
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 865
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    return-void

    .line 856
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 857
    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 858
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 859
    .local v0, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/screen/Screen;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v2, v3, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 860
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    .line 862
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    goto :goto_0
.end method

.method private renderToBuffer()Lcom/scalado/base/Buffer;
    .locals 9

    .prologue
    .line 1311
    const/4 v0, 0x0

    .line 1313
    .local v0, buffer:Lcom/scalado/base/Buffer;
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v7, :cond_0

    .line 1315
    const-string v7, "AutoSession"

    .line 1316
    const-string v8, "Session not initialized correctly. Cannot do renderToBuffer()."

    .line 1315
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v7, 0x0

    .line 1332
    :goto_0
    return-object v7

    .line 1321
    :cond_0
    :try_start_0
    new-instance v1, Lcom/scalado/base/Buffer;

    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    mul-int/lit8 v7, v7, 0x1

    invoke-direct {v1, v7}, Lcom/scalado/base/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .local v1, buffer:Lcom/scalado/base/Buffer;
    :try_start_1
    new-instance v6, Lcom/scalado/stream/BufferStream;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1323
    .local v6, stream:Lcom/scalado/stream/BufferStream;
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v7}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 1324
    .local v2, dims:Lcom/scalado/base/Size;
    new-instance v4, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v4, v6, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1325
    .local v4, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v7, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 1326
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #dims:Lcom/scalado/base/Size;
    .end local v4           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #stream:Lcom/scalado/stream/BufferStream;
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    :goto_1
    move-object v7, v0

    .line 1332
    goto :goto_0

    .line 1327
    :catch_0
    move-exception v3

    .line 1328
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v7, "AutoSession"

    const-string v8, "Exception when rendering to file."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1329
    const/4 v0, 0x0

    goto :goto_1

    .line 1327
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    goto :goto_2
.end method

.method private replaceFaces()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 888
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->createLtw()V

    .line 889
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/RectTracker;->getBestStartImage()I

    move-result v0

    .line 890
    .local v0, bg:I
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v7, v7, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v7, :cond_0

    .line 891
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/RectTracker;->getMaxScoreImage()I

    move-result v0

    .line 893
    :cond_0
    if-gez v0, :cond_1

    .line 894
    const-string v7, "AutoSession"

    const-string v8, "Failed to determine best image."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    div-int/lit8 v0, v7, 0x2

    .line 897
    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v7, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setBackgroundSource(I)V

    .line 898
    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    .line 900
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/RectTracker;->getIds()[I

    move-result-object v3

    .line 902
    .local v3, ids:[I
    if-eqz v3, :cond_2

    .line 904
    array-length v8, v3

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_3

    .line 923
    :cond_2
    :goto_1
    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    .line 924
    return-void

    .line 904
    :cond_3
    aget v2, v3, v7

    .line 905
    .local v2, id:I
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v9, v0, v2}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v9

    if-nez v9, :cond_5

    .line 906
    const-string v9, "id=%d unknown in bg=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 904
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 911
    :cond_5
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v9, v2}, Lcom/scalado/app/rewind/RectTracker;->getSelectedFg(I)I

    move-result v1

    .line 912
    .local v1, fg:I
    if-eq v1, v0, :cond_7

    move v4, v5

    .line 913
    .local v4, replace:Z
    :goto_2
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v9, v9, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v9, :cond_6

    .line 914
    const/4 v4, 0x0

    .line 916
    :cond_6
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/scalado/app/rewind/AutoSession;->replaceOneFace(IIIZ)V

    .line 917
    iget-boolean v9, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-eqz v9, :cond_4

    goto :goto_1

    .end local v4           #replace:Z
    :cond_7
    move v4, v6

    .line 912
    goto :goto_2
.end method

.method private replaceOneFace(IIIZ)V
    .locals 15
    .parameter "bg"
    .parameter "fg"
    .parameter "id"
    .parameter "doReplace"

    .prologue
    .line 927
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    .line 928
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v10

    .line 929
    .local v10, rBg:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v11

    .line 931
    .local v11, rFg:Landroid/graphics/Rect;
    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    invoke-direct {p0, v10}, Lcom/scalado/app/rewind/AutoSession;->convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 935
    invoke-direct {p0, v11}, Lcom/scalado/app/rewind/AutoSession;->convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 937
    invoke-direct {p0, v10, v11}, Lcom/scalado/app/rewind/AutoSession;->getMaxTranslation(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v7

    .line 939
    .local v7, maxTransl:I
    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    if-le v7, v2, :cond_2

    .line 940
    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    .line 941
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 942
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    invoke-interface {v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;->onToGreatTranslation()Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v13

    .line 943
    .local v13, cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I

    move-result-object v2

    invoke-virtual {v13}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 954
    .end local v13           #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v6, v2, 0x4

    .line 955
    .local v6, feathering:I
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->hasNeighbours(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 956
    iget v6, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    .line 959
    :cond_3
    invoke-direct {p0, v10}, Lcom/scalado/app/rewind/AutoSession;->createReplaceRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;

    move-result-object v5

    .line 960
    .local v5, innerRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;

    move-result-object v12

    .line 961
    .local v12, orgLargeRect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 962
    const/4 v12, 0x0

    .line 964
    :cond_4
    if-eqz p4, :cond_6

    .line 966
    iget-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mDryMode:Z

    if-nez v2, :cond_5

    .line 967
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2, v5, v6, v7}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceArea(Lcom/scalado/base/Rect;II)V

    .line 968
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->update()V

    .line 969
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->commit()V

    .line 971
    :cond_5
    iget-object v14, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/AutoSession$Replacement;

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v8, p1

    move/from16 v9, p2

    .line 972
    invoke-direct/range {v2 .. v12}, Lcom/scalado/app/rewind/AutoSession$Replacement;-><init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 971
    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 945
    .end local v5           #innerRect:Lcom/scalado/base/Rect;
    .end local v6           #feathering:I
    .end local v12           #orgLargeRect:Landroid/graphics/Rect;
    .restart local v13       #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :pswitch_0
    const/16 p4, 0x0

    .line 946
    goto :goto_1

    .line 948
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    goto/16 :goto_0

    .line 975
    .end local v13           #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    .restart local v5       #innerRect:Lcom/scalado/base/Rect;
    .restart local v6       #feathering:I
    .restart local v12       #orgLargeRect:Landroid/graphics/Rect;
    :cond_6
    iget-object v14, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/AutoSession$Replacement;

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v8, p1

    move/from16 v9, p2

    .line 976
    invoke-direct/range {v2 .. v12}, Lcom/scalado/app/rewind/AutoSession$Replacement;-><init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 975
    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scaleDown(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 989
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 990
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 997
    .local v5, session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 999
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1001
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1002
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-boolean v6, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v6, :cond_0

    .line 1020
    new-instance v5, Lcom/scalado/caps/Session;

    .end local v5           #session:Lcom/scalado/caps/Session;
    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1025
    .restart local v5       #session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/base/Image;

    .end local v3           #image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1026
    .restart local v3       #image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1028
    .restart local v2       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    :try_start_1
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1029
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :goto_1
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_0
    return-void

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AutoSession"

    const-string v7, "Exception when rendering image!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1030
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1031
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "AutoSession"

    const-string v7, "Exception when rendering image!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendReplacementInfo()V
    .locals 19

    .prologue
    .line 1472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v14

    .line 1473
    .local v14, n:I
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1474
    .local v17, replacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1487
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    .line 1488
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1487
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1489
    .local v15, notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0xa1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1506
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v13}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1508
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/util/ArrayList;

    .line 1509
    .local v12, lists:[Ljava/util/ArrayList;
    const/4 v1, 0x0

    aput-object v17, v12, v1

    .line 1510
    const/4 v1, 0x1

    aput-object v15, v12, v1

    .line 1512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2, v12}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v13}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1514
    return-void

    .line 1474
    .end local v12           #lists:[Ljava/util/ArrayList;
    .end local v13           #msg:Landroid/os/Message;
    .end local v15           #notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 1475
    .local v16, repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    new-instance v11, Lcom/scalado/base/Rect;

    invoke-direct {v11}, Lcom/scalado/base/Rect;-><init>()V

    .line 1476
    .local v11, cr:Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v1, v2, v11}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1477
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1478
    .local v5, r:Landroid/graphics/Rect;
    invoke-static {v11, v5}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 1480
    .local v7, faceRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 1481
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/scalado/app/rewind/AutoSession;->transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1483
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->wasFound(II)Z

    move-result v8

    .line 1485
    .local v8, found:Z
    new-instance v1, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1489
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v7           #faceRect:Landroid/graphics/Rect;
    .end local v8           #found:Z
    .end local v11           #cr:Lcom/scalado/base/Rect;
    .end local v16           #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    .restart local v15       #notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 1490
    .restart local v16       #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    new-instance v11, Lcom/scalado/base/Rect;

    invoke-direct {v11}, Lcom/scalado/base/Rect;-><init>()V

    .line 1491
    .restart local v11       #cr:Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v1, v2, v11}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1492
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1493
    .restart local v5       #r:Landroid/graphics/Rect;
    invoke-static {v11, v5}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 1495
    .restart local v7       #faceRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_3

    .line 1496
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/scalado/app/rewind/AutoSession;->transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1498
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->wasFound(II)Z

    move-result v8

    .line 1499
    .restart local v8       #found:Z
    new-instance v1, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static setLogging(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 534
    sput-boolean p0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    .line 535
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->setLogging(Z)V

    .line 536
    return-void
.end method

.method private transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "r"

    .prologue
    .line 1517
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 1518
    .local v1, x0:F
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 1519
    .local v3, y0:F
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1520
    .local v2, x1:F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 1521
    .local v4, y1:F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1522
    .local v0, rDst:Landroid/graphics/Rect;
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1523
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1524
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1525
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1526
    return-object v0
.end method

.method private transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter "r"

    .prologue
    .line 1530
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 1531
    .local v0, scr:Lcom/scalado/base/Rect;
    invoke-static {p1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1532
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Lcom/scalado/base/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private transformToScreen(Lcom/scalado/base/Rect;)Landroid/graphics/Rect;
    .locals 3
    .parameter "r"

    .prologue
    .line 1536
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 1537
    .local v0, cr:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1538
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1539
    .local v1, dst:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1540
    return-object v1
.end method


# virtual methods
.method public addJpeg(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "jpeg"

    .prologue
    .line 548
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 605
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    return-void
.end method

.method public getMergedImage()V
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method

.method public getSourceImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 587
    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 589
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    return-void
.end method

.method public numSourceJpegs()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public outputToFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 563
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendEmptyMessage(I)Z

    .line 598
    return-void
.end method

.method public saveSourceJpeg(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "filename"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    .line 638
    const/16 v2, 0x10

    const/4 v3, -0x1

    .line 637
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 639
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    return-void
.end method

.method public setAdvisor(Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;)V
    .locals 0
    .parameter "advisor"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    .line 626
    return-void
.end method

.method public setBaseFaceDetctionWidth(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 506
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    .line 507
    return-void
.end method

.method public setCompositionMaxTranslation(F)V
    .locals 0
    .parameter "relMaxTranslation"

    .prologue
    .line 494
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    .line 495
    return-void
.end method

.method public setFaceDetectEx(Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;)V
    .locals 0
    .parameter "FDE"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    .line 198
    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 616
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    .line 617
    return-void
.end method

.method public setMaxTranslation(I)V
    .locals 0
    .parameter "maxTranslation"

    .prologue
    .line 474
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    .line 475
    return-void
.end method

.method public setMinTranslation(I)V
    .locals 0
    .parameter "minTranslation"

    .prologue
    .line 484
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    .line 485
    return-void
.end method

.method public setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 3
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 460
    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    .line 461
    iput-object p2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    .line 462
    return-void
.end method

.method public setSecondaryFaceDetctionWidth(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 526
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    .line 527
    return-void
.end method

.method public setSecondaryImage(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    .line 515
    return-void
.end method
