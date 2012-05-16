.class public Lcom/htc/music/util/AsyncImageDecoder;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;,
        Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;,
        Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    }
.end annotation


# static fields
.field private static final DECODE:I = 0x1

.field private static final DECODED:I = 0x2

.field private static final QUIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[AsyncImageDecoder]"

.field private static final THREAD_NAME:Ljava/lang/String; = "AsyncImageDecoderThread"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mContext:Landroid/content/Context;

.field private mDecodeVisibleFirst:Z

.field private mEnd:I

.field private mFilter:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mMergeAfterDecoded:Z

.field private mMergeHeight:I

.field private mMergeImage:Landroid/graphics/Bitmap;

.field private mMergeImageId:I

.field private mMergeOffsetX:I

.field private mMergeOffsetY:I

.field private mMergeWidth:I

.field private mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

.field private mPause:Z

.field private mRecycleOnPause:Z

.field private mReportError:Z

.field private mScale:Z

.field private mStart:I

.field private mSyncObject:Ljava/lang/Object;

.field private mTouchFile:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 94
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 148
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 149
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 150
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 151
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 152
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;II)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 94
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 163
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 164
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 165
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 166
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 167
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 168
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 169
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 170
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 94
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 182
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 183
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 184
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 185
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 186
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 187
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 188
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 189
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 94
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 203
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 204
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 205
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 206
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 207
    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 208
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 209
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 210
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 211
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/util/AsyncImageDecoder;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/util/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    return-object v0
.end method

.method private add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 409
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 411
    .local v0, indexOfTask:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 416
    :goto_0
    monitor-exit v2

    .line 417
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v0           #indexOfTask:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeByAlbumId(IZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "albumId"
    .parameter "notScale"

    .prologue
    const/4 v9, 0x0

    .line 553
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 554
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v10, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v11, p1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 555
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 556
    const/4 v2, 0x0

    .line 558
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v10, "r"

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 559
    const/4 v6, 0x1

    .line 561
    .local v6, sampleSize:I
    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_0

    .line 562
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 563
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 564
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 565
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v10, 0x1

    .line 566
    .local v4, nextWidth:I
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v10, 0x1

    .line 567
    .local v3, nextHeight:I
    :goto_0
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v10, :cond_0

    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v10, :cond_0

    .line 568
    shl-int/lit8 v6, v6, 0x1

    .line 569
    shr-int/lit8 v4, v4, 0x1

    .line 570
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_0
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 575
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 576
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 579
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_2

    if-nez p2, :cond_2

    .line 580
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v10, v11, :cond_2

    .line 581
    :cond_1
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 582
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    move-object v0, v7

    .line 594
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 595
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 601
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 588
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 589
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    if-eqz v2, :cond_4

    .line 595
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    move-object v0, v9

    .line 601
    goto :goto_1

    .line 590
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 591
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 594
    if-eqz v2, :cond_4

    .line 595
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 596
    :catch_2
    move-exception v1

    .line 597
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 593
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 594
    if-eqz v2, :cond_5

    .line 595
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 593
    :cond_5
    :goto_4
    throw v9

    .line 596
    :catch_3
    move-exception v1

    .line 597
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 596
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 597
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 596
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v6       #sampleSize:I
    :catch_5
    move-exception v1

    .line 597
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "afd"

    .prologue
    const/4 v7, 0x0

    .line 605
    if-nez p1, :cond_1

    move-object v0, v7

    .line 651
    :cond_0
    :goto_0
    return-object v0

    .line 609
    :cond_1
    const/4 v5, 0x1

    .line 611
    .local v5, sampleSize:I
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_2

    .line 612
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 613
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 614
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 616
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v8, 0x1

    .line 617
    .local v4, nextWidth:I
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v8, 0x1

    .line 618
    .local v3, nextHeight:I
    :goto_1
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v8, :cond_2

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v8, :cond_2

    .line 619
    shl-int/lit8 v5, v5, 0x1

    .line 620
    shr-int/lit8 v4, v4, 0x1

    .line 621
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 625
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 626
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 627
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_4

    .line 631
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v8, v9, :cond_4

    .line 632
    :cond_3
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 633
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    move-object v0, v6

    .line 643
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p1, :cond_0

    .line 644
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, e:Ljava/io/IOException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "IO ex catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 640
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "[AsyncImageDecoder]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeByFileDescriptor failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    if-eqz p1, :cond_5

    .line 644
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_5
    :goto_2
    move-object v0, v7

    .line 651
    goto/16 :goto_0

    .line 642
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 643
    if-eqz p1, :cond_6

    .line 644
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 642
    :cond_6
    :goto_3
    throw v7

    .line 645
    :catch_2
    move-exception v1

    .line 646
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 647
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 648
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 645
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 646
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 647
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 648
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 647
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v1

    .line 648
    .restart local v1       #e:Ljava/lang/NullPointerException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 655
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    .line 690
    :cond_1
    :goto_0
    return-object v0

    .line 659
    :cond_2
    const/4 v4, 0x1

    .line 661
    .local v4, sampleSize:I
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_3

    .line 662
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 663
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 664
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 665
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 666
    .local v3, nextWidth:I
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 667
    .local v2, nextHeight:I
    :goto_1
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v3, v7, :cond_3

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v2, v7, :cond_3

    .line 668
    shl-int/lit8 v4, v4, 0x1

    .line 669
    shr-int/lit8 v3, v3, 0x1

    .line 670
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 674
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 675
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 676
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    .line 679
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    .line 680
    :cond_4
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 681
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    move-object v0, v5

    goto :goto_0

    .line 687
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 688
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "[AsyncImageDecoder]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBypath failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 690
    goto :goto_0
.end method

.method private getPathByAlbumId(I)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 487
    if-gez p1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-object v3

    .line 489
    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 492
    sget-object v2, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 493
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 495
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 498
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 499
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 500
    if-eqz v6, :cond_3

    .line 501
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 509
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 510
    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 511
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 512
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 514
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 511
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 215
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncImageDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 219
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 220
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;-><init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 222
    return-void
.end method

.method private isTaskExists(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z
    .locals 4
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 420
    if-nez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 422
    :cond_1
    const/4 v1, 0x0

    .line 423
    .local v1, temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    check-cast v1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 425
    .restart local v1       #temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    const/4 v2, 0x1

    goto :goto_0

    .line 423
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private notifyError(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    .line 278
    :cond_0
    return-void
.end method

.method private removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 518
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-object v5

    .line 520
    :cond_1
    const/4 v3, -0x1

    .line 521
    .local v3, start:I
    const/4 v0, -0x1

    .line 523
    .local v0, end:I
    iget-boolean v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-lt v6, v7, :cond_0

    .line 524
    iget v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 525
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 528
    const/4 v1, -0x1

    .line 529
    .local v1, firstVisible:I
    const/4 v4, 0x0

    .line 530
    .local v4, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 531
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    check-cast v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 532
    .restart local v4       #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v4, :cond_3

    .line 533
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$900(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v3, v6, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$900(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v6, v0, :cond_3

    .line 534
    move v1, v2

    .line 541
    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    .line 542
    iget-object v5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    goto :goto_0

    .line 538
    :cond_3
    const/4 v4, 0x0

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs add(III[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 337
    if-gez p2, :cond_1

    .line 338
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V

    .line 343
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 345
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 361
    if-nez p2, :cond_1

    .line 362
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V

    .line 367
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 369
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 387
    if-nez p2, :cond_1

    if-gez p3, :cond_1

    .line 388
    invoke-direct {p0, p4}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 393
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 395
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "notScale"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 313
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 314
    :cond_0
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 327
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;IZ[Ljava/lang/Object;)V

    .line 319
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 321
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 288
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 289
    :cond_0
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 294
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 296
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    return-void
.end method

.method public pauseDecode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 457
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-ne v0, v2, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "pauseDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iput-boolean v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 437
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 442
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 444
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 445
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    :cond_1
    return-void
.end method

.method public resumeDecode()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "resumeDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 469
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 471
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 550
    return-void
.end method

.method public setMergeImageResource(IIIII)V
    .locals 1
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 241
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_1
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 246
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 247
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 248
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 249
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    goto :goto_0
.end method

.method public setRecycleOnPause(Z)V
    .locals 0
    .parameter "recycleOnPause"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 230
    return-void
.end method

.method public setReportError(Z)V
    .locals 0
    .parameter "reportError"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 226
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 260
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 266
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
