.class public Lcom/htc/sunny2/common/CacheItem;
.super Lcom/htc/sunny2/frameworks/cache/CacheTask;
.source "CacheItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/CacheItem$IOTYPE;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHESET:I = -0x1

.field public static final STATUS_DEFAULT:I = 0x0

.field public static final STATUS_NOT_DECODE:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1


# instance fields
.field public enableCropCenter:Z

.field public isDecodeSuccess:Z

.field public mCacheHeight:I

.field public mCacheWidth:I

.field public mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

.field public mInputStream:Ljava/io/InputStream;

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mSourceHeight:I

.field public mSourceType:I

.field public mSourceWidth:I

.field mStatusFlag:I

.field public mSubIndex:I

.field public mTargetHeight:I

.field public mTargetQuality:I

.field public mTargetWidth:I

.field public mUri:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 9
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 49
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 53
    int-to-long v6, p6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    .line 26
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 54
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 55
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V
    .locals 10
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"
    .parameter "hasSubList"

    .prologue
    .line 59
    move/from16 v0, p6

    int-to-long v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    .line 26
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 60
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 61
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 9
    .parameter "ioType"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 45
    const/4 v2, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 84
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 85
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    .line 86
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    .line 87
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 88
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 89
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 90
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 93
    return-void
.end method


# virtual methods
.method public isStatus(I)Z
    .locals 1
    .parameter "statusFlag"

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 10
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    .line 66
    move/from16 v0, p6

    int-to-long v6, v0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-super/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 67
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 68
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method public updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V
    .locals 10
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"
    .parameter "hasSubList"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    .line 73
    move/from16 v0, p6

    int-to-long v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-super/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 74
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 75
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

.method public updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V
    .locals 0
    .parameter "ioType"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 80
    return-void
.end method
