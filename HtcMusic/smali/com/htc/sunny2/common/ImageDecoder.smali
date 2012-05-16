.class public Lcom/htc/sunny2/common/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;,
        Lcom/htc/sunny2/common/ImageDecoder$STATE;
    }
.end annotation


# static fields
.field public static final DECODE_FLAG_ALLOW_EXIF_THUMB:I = 0x10

.field public static final DECODE_FLAG_ALLOW_LOAD_ITERATE:I = 0x40

.field public static final DECODE_FLAG_ALLOW_SPMO:I = 0x20

.field public static final DECODE_FLAG_BITMAP_COLOR_DEPTH:I = 0x400

.field public static final DECODE_FLAG_DECODE_SOURCE_WIDTH_HEIGHT:I = 0x1000

.field public static final DECODE_FLAG_NO_PROGRESSIVE_JPEG:I = 0x100

.field public static final DECODE_FLAG_SCALE_FOR_3D:I = 0x1

.field public static final DECODE_FLAG_SCALE_TO_FILL:I = 0x4

.field public static final DECODE_FLAG_SCALE_TO_FIT:I = 0x2

.field public static final DECODE_FLAG_SIDE_BY_SIDE:I = 0x200

.field public static final DEFAULT_COLOR_DEPTH:I = -0x1

.field private static final LTAG:Ljava/lang/String;


# instance fields
.field private decodeHandle:I

.field private mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

.field private mDecodeFlags:I

.field private mFilePath:Ljava/lang/String;

.field private mIsProgressiveJpeg:Z

.field private mIsSideBySide:Z

.field private mMimeType:Ljava/lang/String;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private outputSunnyBitmap:I

.field private outputSunnyTexture:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

.field private toSunnyTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 61
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 66
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 68
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 69
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 71
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 72
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 73
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 75
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private closeMemberParcelFileDescriptor()V
    .locals 2

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1045
    :cond_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doDecode(J)Z
    .locals 5
    .parameter "ticks"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 938
    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_0

    .line 940
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - null decodeHandle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 978
    :goto_0
    return v1

    .line 945
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v0

    .line 947
    .local v0, rs:I
    if-nez v0, :cond_1

    move v1, v2

    .line 949
    goto :goto_0

    .line 951
    :cond_1
    if-ne v0, v2, :cond_4

    .line 953
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 954
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 956
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 958
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - decode finish, but null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 963
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v2, :cond_3

    .line 965
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 970
    :cond_3
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 976
    :cond_4
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDecode() NG - decodeIterate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method private doLoad(J)Z
    .locals 8
    .parameter "ticks"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 858
    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v5, :cond_0

    .line 860
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "doLoad() NG - null decodeHandle"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 862
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 932
    :goto_0
    return v3

    .line 866
    :cond_0
    const/4 v2, -0x1

    .line 867
    .local v2, rs:I
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_1

    .line 869
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFilePathIterate(IJ)I

    move-result v2

    .line 894
    :goto_1
    if-nez v2, :cond_4

    move v3, v4

    .line 896
    goto :goto_0

    .line 871
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_2

    .line 874
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFDIterate(IJ)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 879
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_3

    .line 882
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadInputStreamIterate(IJ)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 883
    :catch_1
    move-exception v0

    .line 884
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 889
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - unknow state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 898
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    .line 900
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 901
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 902
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSourceWithFilePath()V

    .line 903
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v5, :cond_5

    .line 904
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v5, p0, v6, v7}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 907
    :cond_5
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 908
    const-string v5, "image/mpo"

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 910
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v1

    .line 911
    .local v1, mpoPhotoCount:I
    if-lez v1, :cond_8

    .line 913
    iget-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v5, :cond_7

    .line 914
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    .line 924
    .end local v1           #mpoPhotoCount:I
    :cond_6
    :goto_2
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0

    .line 916
    .restart local v1       #mpoPhotoCount:I
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_2

    .line 921
    :cond_8
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 929
    .end local v1           #mpoPhotoCount:I
    :cond_9
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - loadIterate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 931
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0
.end method

.method private doMakeTexture(J)Z
    .locals 4
    .parameter "ticks"

    .prologue
    const/4 v3, 0x0

    .line 1011
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_0

    .line 1013
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1033
    :goto_0
    return v3

    .line 1018
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    if-nez v0, :cond_1

    .line 1020
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null texture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1025
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - setup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1032
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public static heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 24
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 1057
    .local v19, w:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1059
    .local v11, h:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1060
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1062
    .local v3, candidateH:I
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidateW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " candidateH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1066
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 1067
    const/16 v20, 0x1

    .line 1102
    :goto_0
    return v20

    .line 1069
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    .line 1070
    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    div-int v20, v19, v2

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1071
    add-int/lit8 v2, v2, -0x1

    .line 1074
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    .line 1075
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v20, v11, v2

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 1076
    add-int/lit8 v2, v2, -0x1

    .line 1085
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 1086
    .local v16, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    .line 1087
    .local v9, currentHeap:J
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 1088
    .local v12, leftMemory:J
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current Heap "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " left memory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-wide/16 v17, 0x0

    .line 1091
    .local v17, totalPixels:J
    const/4 v15, 0x3

    .line 1092
    .local v15, resampleTryCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v14, 0x2

    .line 1093
    .local v14, pixelBytes:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 1095
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1096
    div-int v20, v19, v2

    move/from16 v0, v20

    int-to-long v7, v0

    .line 1097
    .local v7, curW:J
    div-int v20, v11, v2

    move/from16 v0, v20

    int-to-long v5, v0

    .line 1098
    .local v5, curH:J
    mul-long v20, v7, v5

    int-to-long v0, v14

    move-wide/from16 v22, v0

    mul-long v17, v20, v22

    .line 1099
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidate "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " curW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", curH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    cmp-long v20, v17, v12

    if-lez v20, :cond_4

    add-int/lit8 v15, v15, -0x1

    if-gtz v15, :cond_3

    :cond_4
    move/from16 v20, v2

    .line 1102
    goto/16 :goto_0

    .line 1092
    .end local v5           #curH:J
    .end local v7           #curW:J
    .end local v14           #pixelBytes:I
    :cond_5
    const/4 v14, 0x4

    goto :goto_1
.end method

.method private loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 11
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 269
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 270
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    .line 272
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 274
    const/4 v1, 0x0

    .line 395
    :goto_0
    return v1

    .line 277
    :cond_0
    const-string v1, "image/webp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    move/from16 v0, p5

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 280
    .local v9, result:Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 282
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 284
    const/4 v1, 0x0

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 288
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 294
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 295
    iput-object v9, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 296
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    .end local v9           #result:Landroid/graphics/Bitmap;
    :cond_2
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    .line 299
    .local v7, isIterator:Z
    :goto_1
    const/4 v10, -0x1

    .line 300
    .local v10, rs:I
    iput-object p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 301
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 302
    const-string v1, "image/jps"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 304
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_5

    .line 305
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 312
    :goto_3
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 315
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 317
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 319
    const/4 v1, 0x0

    goto :goto_0

    .line 298
    .end local v7           #isIterator:Z
    .end local v10           #rs:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 301
    .restart local v7       #isIterator:Z
    .restart local v10       #rs:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 307
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_3

    .line 321
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v10

    .line 366
    :cond_7
    :goto_4
    if-eqz v10, :cond_e

    .line 368
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFilePathToBitmap() NG - loadFromFilePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 370
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 323
    :cond_8
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 327
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 330
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_9

    .line 332
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 334
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 336
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v10

    .line 338
    if-nez v7, :cond_7

    .line 340
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v8

    .line 341
    .local v8, mpoPhotoCount:I
    if-lez v8, :cond_b

    .line 343
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_a

    .line 344
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_4

    .line 346
    :cond_a
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_4

    .line 351
    :cond_b
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v8           #mpoPhotoCount:I
    :cond_c
    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 357
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_d

    .line 359
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 361
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 363
    :cond_d
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v10

    goto/16 :goto_4

    .line 373
    :cond_e
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->isProgressiveJpeg(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 374
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    if-ne v1, v2, :cond_f

    .line 375
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_f

    .line 376
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 377
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 382
    :cond_f
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 383
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 384
    if-eqz v7, :cond_10

    .line 385
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 395
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 387
    :cond_10
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 388
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 389
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSourceWithFilePath()V

    .line 390
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_11

    .line 391
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 393
    :cond_11
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_5
.end method

.method private loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z
    .locals 9
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 538
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 539
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v0, :cond_0

    .line 541
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 543
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 546
    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 550
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :cond_1
    and-int/lit8 v0, p6, 0x40

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 554
    .local v7, isIterator:Z
    :goto_1
    const/4 v8, -0x1

    .line 556
    .local v8, rs:I
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 560
    :goto_2
    if-eqz v8, :cond_3

    .line 562
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 564
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    .end local v7           #isIterator:Z
    .end local v8           #rs:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 557
    .restart local v7       #isIterator:Z
    .restart local v8       #rs:I
    :catch_0
    move-exception v6

    .line 558
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 567
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 568
    if-eqz v7, :cond_4

    .line 569
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 579
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 571
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 572
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 573
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v0, p0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 576
    :cond_5
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_3
.end method

.method private loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 12
    .parameter "parcelFileDescriptor"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 415
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 417
    .local v8, fileDescriptor:Ljava/io/FileDescriptor;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 418
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    .line 420
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 422
    const/4 v1, 0x0

    .line 521
    :goto_0
    return v1

    .line 424
    :cond_0
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 425
    .local v9, isIterator:Z
    :goto_1
    const/4 v11, -0x1

    .line 426
    .local v11, rs:I
    iput-object p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 427
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 428
    const-string v1, "image/jps"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 430
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_3

    .line 431
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 438
    :goto_3
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 441
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 443
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 445
    const/4 v1, 0x0

    goto :goto_0

    .line 424
    .end local v9           #isIterator:Z
    .end local v11           #rs:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 427
    .restart local v9       #isIterator:Z
    .restart local v11       #rs:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 433
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_3

    .line 448
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 502
    :goto_4
    if-eqz v11, :cond_b

    .line 504
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFileDescriptor() NG - loadFromFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 506
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 449
    :catch_0
    move-exception v7

    .line 450
    .local v7, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 453
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 457
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 460
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 462
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 464
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 467
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v11

    .line 470
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v10

    .line 471
    .local v10, mpoPhotoCount:I
    if-lez v10, :cond_8

    .line 473
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_7

    .line 474
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 483
    .end local v10           #mpoPhotoCount:I
    :catch_1
    move-exception v7

    .line 484
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 476
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v10       #mpoPhotoCount:I
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_4

    .line 481
    :cond_8
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .end local v10           #mpoPhotoCount:I
    :cond_9
    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 488
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_a

    .line 490
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 492
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 496
    :cond_a
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    goto/16 :goto_4

    .line 497
    :catch_2
    move-exception v7

    .line 498
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 509
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 510
    if-eqz v9, :cond_c

    .line 511
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 521
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 513
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 514
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 515
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_d

    .line 516
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V

    .line 518
    :cond_d
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_5
.end method

.method private loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "filePath"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 94
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v9, v2

    .line 99
    .local v9, sourceLandscape:Z
    :goto_0
    div-int v3, p3, p4

    if-eqz v3, :cond_2

    move v8, v2

    .line 100
    .local v8, preferLandscape:Z
    :goto_1
    if-eq v8, v9, :cond_0

    .line 101
    move v10, p3

    .line 102
    .local v10, temp:I
    move p3, p4

    .line 103
    move p4, v10

    .line 105
    .end local v10           #temp:I
    :cond_0
    invoke-static {v7, p3, p4}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, result:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 111
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .end local v0           #result:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #preferLandscape:Z
    .end local v9           #sourceLandscape:Z
    :cond_1
    move v9, v1

    .line 98
    goto :goto_0

    .restart local v9       #sourceLandscape:Z
    :cond_2
    move v8, v1

    .line 99
    goto :goto_1
.end method

.method private setupDecodeParameters(IIIII)Z
    .locals 6
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "requireColorDepth"
    .parameter "decodeFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 636
    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_0

    .line 638
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "setupDecodeParameters() NG - null decodeHandle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    return v2

    .line 642
    :cond_0
    iput p5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 644
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    move-result v0

    .line 645
    .local v0, rs:I
    if-eqz v0, :cond_1

    .line 647
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setDegree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v0

    .line 652
    if-eqz v0, :cond_2

    .line 654
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setPreferSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_2
    const/4 v1, 0x0

    .line 659
    .local v1, scaleType:I
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_4

    .line 660
    const/4 v1, 0x1

    .line 664
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v0

    .line 665
    if-eqz v0, :cond_5

    .line 667
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setScaleType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 661
    :cond_4
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_3

    .line 662
    const/4 v1, 0x2

    goto :goto_1

    .line 671
    :cond_5
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_6

    .line 673
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v0

    .line 674
    if-eqz v0, :cond_6

    .line 676
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromExifFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 681
    :cond_6
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_7

    .line 683
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    move-result v0

    .line 684
    if-eqz v0, :cond_7

    .line 686
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromSPMOFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :cond_7
    const/4 v4, -0x1

    if-eq p4, v4, :cond_8

    and-int/lit16 v4, p5, 0x400

    if-eqz v4, :cond_8

    .line 693
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    move-result v0

    .line 694
    if-eqz v0, :cond_8

    .line 696
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setBitmapColorDepth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 701
    goto/16 :goto_0
.end method


# virtual methods
.method public adjustWidthHeightFromSourceWithFilePath()V
    .locals 6

    .prologue
    .line 1106
    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_1

    .line 1109
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 1110
    .local v3, path:Ljava/lang/String;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1111
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1112
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1114
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1115
    .local v4, width:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1116
    .local v1, height:I
    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    if-gt v4, v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    if-le v1, v5, :cond_1

    .line 1117
    :cond_0
    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 1118
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    .end local v1           #height:I
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #width:I
    :cond_1
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method doConvertToSunnyBitmap(J)Z
    .locals 3
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    .line 984
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 986
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1006
    :goto_0
    return v2

    .line 991
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_1

    .line 993
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 998
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1000
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - set sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1005
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public free()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 706
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 707
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 709
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 710
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 712
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 714
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 720
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-eqz v1, :cond_2

    .line 722
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 723
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 727
    :cond_1
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 730
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 731
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 732
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 733
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 734
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 735
    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 736
    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public getFullPhotoHeight()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    return v0
.end method

.method public getFullPhotoWidth()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    return v0
.end method

.method public isFree()Z
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressiveJpeg()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    return v0
.end method

.method public iterate(J)Z
    .locals 6
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p1

    .line 759
    .local v0, timeLimit:J
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_1

    .line 761
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "iterate() NG - not setup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    :goto_0
    return v2

    .line 766
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_3

    .line 767
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doLoad(J)Z

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    .line 769
    goto :goto_0

    .line 775
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_4

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doDecode(J)Z

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    .line 779
    goto :goto_0

    .line 785
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_6

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_5

    move v2, v3

    .line 789
    goto :goto_0

    .line 792
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doConvertToSunnyBitmap(J)Z

    move-result v4

    if-ne v4, v3, :cond_6

    move v2, v3

    .line 794
    goto :goto_0

    .line 800
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_8

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_7

    move v2, v3

    .line 804
    goto :goto_0

    .line 807
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doMakeTexture(J)Z

    move-result v4

    if-ne v4, v3, :cond_8

    move v2, v3

    .line 809
    goto :goto_0

    .line 815
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v3, v4, :cond_0

    .line 822
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v3, v4, :cond_0

    goto :goto_0
.end method

.method public loadFromFilePathToBitmap(Lcom/htc/sunny2/IMediaData;IIII)Z
    .locals 8
    .parameter "mediaItem"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 256
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, mimeType:Ljava/lang/String;
    const/4 v6, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 1
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 264
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToSunnyTexture(Lcom/htc/sunny2/IMediaData;IILjava/lang/String;IIII)Z
    .locals 14
    .parameter "mediaItem"
    .parameter "outputSunnyBitmap"
    .parameter "outputSunnyTexture"
    .parameter "filePath"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 119
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 121
    :cond_0
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - zero parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 123
    const/4 v4, 0x0

    .line 249
    :goto_0
    return v4

    .line 126
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, mimeType:Ljava/lang/String;
    const-string v4, "image/webp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 131
    .local v12, result:Landroid/graphics/Bitmap;
    if-nez v12, :cond_2

    .line 133
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 135
    const/4 v4, 0x0

    goto :goto_0

    .line 138
    :cond_2
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 139
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 141
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 142
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 147
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 148
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 149
    iput-object v12, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 150
    const/4 v4, 0x1

    goto :goto_0

    .line 153
    .end local v12           #result:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 154
    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_4

    .line 156
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - decodeBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 158
    const/4 v4, 0x0

    goto :goto_0

    .line 164
    :cond_4
    const/4 v13, 0x5

    .line 165
    .local v13, rs:I
    if-eqz v10, :cond_7

    const-string v4, "image/jps"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 167
    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_5

    .line 168
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 175
    :goto_1
    and-int/lit8 p8, p8, -0x11

    .line 178
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 180
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 182
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 170
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_1

    .line 184
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    .line 230
    :goto_2
    if-eqz v13, :cond_d

    .line 232
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromFilePathToSunnyTexture() NG - loadFromFilePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 234
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 186
    :cond_7
    if-eqz v10, :cond_b

    const-string v4, "image/mpo"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 191
    and-int/lit8 p8, p8, -0x11

    .line 194
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_8

    .line 196
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 198
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 200
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    .line 203
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    .line 204
    .local v11, mpoPhotoCount:I
    if-lez v11, :cond_a

    .line 206
    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_9

    .line 207
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_2

    .line 209
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_2

    .line 214
    :cond_a
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 220
    .end local v11           #mpoPhotoCount:I
    :cond_b
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_c

    .line 222
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 224
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 227
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 237
    :cond_d
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 238
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 240
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 241
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 246
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 247
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 249
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z
    .locals 7
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 527
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z
    .locals 1
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 533
    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToTexture(Ljava/io/InputStream;IIIIII)Z
    .locals 9
    .parameter "inputStream"
    .parameter "outputSunnyBitmap"
    .parameter "outputSunnyTexture"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 586
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 587
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v0, :cond_0

    .line 589
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 591
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    .line 594
    :cond_0
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 598
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :cond_1
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 602
    .local v7, isIterator:Z
    :goto_1
    const/4 v8, -0x1

    .line 604
    .local v8, rs:I
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 608
    :goto_2
    if-eqz v8, :cond_3

    .line 610
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 612
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    .end local v7           #isIterator:Z
    .end local v8           #rs:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 605
    .restart local v7       #isIterator:Z
    .restart local v8       #rs:I
    :catch_0
    move-exception v6

    .line 606
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 615
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 617
    if-eqz v7, :cond_4

    .line 618
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 624
    :goto_3
    iput p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 625
    iput p3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 627
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 628
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 631
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 620
    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_3
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;IIII)Z
    .locals 8
    .parameter "parcelFileDescriptor"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 402
    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 1
    .parameter "parcelFileDescriptor"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 409
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 742
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 745
    :cond_0
    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 87
    return-void
.end method

.method public setPreferSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1052
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 1053
    return-void
.end method

.method public succeeded()Z
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeOutBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 838
    .local v0, output:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 840
    return-object v0
.end method
