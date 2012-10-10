.class public Lcom/htc/music/carmode/CarGliderAdapter;
.super Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;
.source "CarGliderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;,
        Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    }
.end annotation


# static fields
.field private static final CHANGE_BACKGROUND_PERIOD:J = 0x5dcL

.field private static final DEFAULT_ALBUM_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "[CarGliderAdapter]"

.field private static final mMdColumns:[Ljava/lang/String;


# instance fields
.field private mAlbumIdArtPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumIdPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlbumIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

.field private mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

.field private mCanUpdateSelectedItem:Z

.field private mComponentCount:I

.field private mCookie:J

.field private mCurrentAlbumArtId:I

.field private mCurrentAlbumId:I

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

.field private mImageHeight:I

.field private mImageWidth:I

.field mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mIsDownloadInfoQueried:Z

.field private mIsEnhancerExist:Z

.field private mIsPluginMode:Z

.field private mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

.field private mMemCacheSize:I

.field private mMemCacheSizeHalf:I

.field private mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

.field private mNormalScale:Z

.field private mPreSelectedPos:I

.field private mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mSelectedPos:I

.field private mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

.field private mUnknownAlbumId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMdColumns:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/sunny2/widget/presentation/SPresentation;Z)V
    .locals 5
    .parameter "musicContext"
    .parameter "spresentation"
    .parameter "defaultBig"

    .prologue
    const/16 v1, 0x9

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;-><init>()V

    .line 45
    iput v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    .line 46
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 50
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 52
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 53
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 60
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 63
    iput v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 65
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    .line 66
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    .line 68
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    .line 69
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    .line 77
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    .line 80
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 86
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    .line 493
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGliderAdapter$1;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 573
    iput v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCurrentAlbumId:I

    .line 597
    iput v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCurrentAlbumArtId:I

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 98
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 99
    iput-object p2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 100
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarGliderAdapter;->init(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarGliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarGliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/carmode/CarGliderAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/carmode/CarNowPlayingActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunny2/widget/presentation/SPresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarGliderAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized addBitmapToCache(I)Z
    .locals 14
    .parameter "nItemPos"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 382
    monitor-enter p0

    const/4 v10, 0x0

    .line 383
    .local v10, bmp:Lcom/htc/sunny2/SBitmap;
    const/4 v7, 0x0

    .local v7, addToDecoder:Z
    const/4 v8, 0x0

    .line 384
    .local v8, bHasCached:Z
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move v9, v8

    .line 426
    .end local v8           #bHasCached:Z
    .local v9, bHasCached:I
    :goto_0
    monitor-exit p0

    return v9

    .line 386
    .end local v9           #bHasCached:I
    .restart local v8       #bHasCached:Z
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    move v9, v8

    .line 387
    .restart local v9       #bHasCached:I
    goto :goto_0

    .line 390
    .end local v9           #bHasCached:I
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    move-object v10, v0

    .line 392
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v1

    if-ne v3, v1, :cond_6

    :cond_3
    move v7, v3

    .line 393
    :goto_1
    if-nez v7, :cond_4

    .line 395
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 396
    .local v12, oldAlbumId:Ljava/lang/Integer;
    if-nez v12, :cond_7

    .line 397
    const/4 v7, 0x1

    .line 405
    .end local v12           #oldAlbumId:Ljava/lang/Integer;
    :cond_4
    :goto_2
    if-eqz v7, :cond_9

    .line 406
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    if-ne v1, v3, :cond_8

    .line 407
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v13, v1, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .local v13, service:Lcom/htc/music/IMediaPlaybackService;
    if-eqz v13, :cond_5

    .line 410
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    move v2, p1

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v13           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_5
    :goto_3
    move v9, v8

    .line 426
    .restart local v9       #bHasCached:I
    goto :goto_0

    .end local v9           #bHasCached:I
    :cond_6
    move v7, v2

    .line 392
    goto :goto_1

    .line 398
    .restart local v12       #oldAlbumId:Ljava/lang/Integer;
    :cond_7
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v1, v2, :cond_4

    .line 399
    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 400
    const/4 v7, 0x1

    .line 401
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 382
    .end local v12           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 411
    .restart local v13       #service:Lcom/htc/music/IMediaPlaybackService;
    :catch_0
    move-exception v11

    .line 412
    .local v11, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 416
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v13           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_8
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    if-eqz v1, :cond_5

    .line 417
    iget v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v1, v2, :cond_5

    .line 418
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v3, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v4, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    move v2, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 423
    :cond_9
    const/4 v8, 0x1

    goto :goto_3
.end method

.method private createDefaultAlbum()V
    .locals 5

    .prologue
    .line 430
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/SBitmap;->createBitmap(III)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 450
    :cond_2
    :goto_0
    return-void

    .line 438
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 439
    .local v0, bmpOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 440
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 441
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 443
    .local v1, defaultBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 444
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 445
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init(Z)V
    .locals 0
    .parameter "defaultBig"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->reload(Z)V

    .line 105
    return-void
.end method

.method private interpolateLinear(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 748
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 750
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method private setLoadingBackground()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method


# virtual methods
.method public animate(Z)V
    .locals 12
    .parameter "normalScale"

    .prologue
    .line 760
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 839
    :cond_0
    return-void

    .line 762
    :cond_1
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 763
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v5, v7, [F

    .line 764
    .local v5, targetTranslationX:[F
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v6, v7, [F

    .line 765
    .local v6, targetTranslationY:[F
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v4, v7, [F

    .line 768
    .local v4, targetScale:[F
    const/4 v3, 0x1

    .line 770
    .local v3, nUIPos:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v5, v3

    .line 771
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    aput v7, v6, v3

    .line 772
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v4, v3

    .line 774
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 775
    .local v0, animationController:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v5, v3

    aget v10, v6, v3

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 776
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v4, v3

    aget v10, v4, v3

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 777
    const-wide/16 v7, 0x96

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 779
    sget-object v7, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 780
    if-eqz p1, :cond_2

    .line 781
    new-instance v7, Lcom/htc/music/carmode/CarGliderAdapter$2;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarGliderAdapter$2;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 818
    :goto_0
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerView(I)Lcom/htc/sunny2/view/SView;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 821
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v2, v7, :cond_0

    .line 822
    const/4 v7, 0x1

    if-ne v7, v2, :cond_3

    .line 821
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 798
    .end local v2           #i:I
    :cond_2
    new-instance v7, Lcom/htc/music/carmode/CarGliderAdapter$3;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarGliderAdapter$3;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0

    .line 824
    .restart local v2       #i:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v5, v2

    .line 825
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    aput v7, v6, v2

    .line 826
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v4, v2

    .line 828
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 829
    .local v1, animationController2:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v5, v2

    aget v10, v6, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 830
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v4, v2

    aget v10, v4, v2

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 831
    const-wide/16 v7, 0x96

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 833
    sget-object v7, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 835
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerView(I)Lcom/htc/sunny2/view/SView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2
.end method

.method protected changeLayout(Z)V
    .locals 6
    .parameter "normalScale"

    .prologue
    .line 843
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v4, :cond_0

    .line 861
    :goto_0
    return-void

    .line 844
    :cond_0
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v2, v4, [F

    .line 845
    .local v2, targetTranslationX:[F
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v3, v4, [F

    .line 846
    .local v3, targetTranslationY:[F
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v1, v4, [F

    .line 848
    .local v1, targetScale:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v0, v4, :cond_1

    .line 850
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v4, v2, v0

    .line 851
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    aput v4, v3, v0

    .line 852
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v4, v1, v0

    .line 854
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v2, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 855
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v3, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 857
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v1, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 858
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v1, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 860
    :cond_1
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersLayout()V

    goto :goto_0
.end method

.method public declared-synchronized clearAllCache()V
    .locals 1

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->clear()V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 489
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 490
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->clearAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumInfo(I)Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-lt p1, v0, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized getItemBitmap(I)Lcom/htc/sunny2/SBitmap;
    .locals 5
    .parameter "nItemPos"

    .prologue
    const/4 v4, 0x1

    .line 343
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-eq v2, v3, :cond_0

    .line 344
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    instance-of v2, v2, Lcom/htc/music/carmode/CarNowPlayingActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_3

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 353
    :cond_3
    const/4 v0, 0x0

    .line 354
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_5

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 358
    :cond_5
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 359
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 360
    .local v1, oldAlbumId:Ljava/lang/Integer;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v4, v2, :cond_8

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 368
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-ne v2, v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 362
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_7

    .line 363
    :cond_9
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 364
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 343
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v1           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 315
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 323
    :goto_0
    monitor-exit p0

    return v0

    .line 318
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 4
    .parameter "nSelectedPos"

    .prologue
    .line 576
    monitor-enter p0

    const/4 v1, 0x0

    .line 577
    .local v1, nStart:I
    const/4 v0, 0x0

    .line 578
    .local v0, nEnd:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_2

    .line 579
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p1, v2

    .line 580
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int v0, p1, v2

    .line 581
    if-gez v1, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 584
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 586
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 587
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 588
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v2, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 590
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    .line 592
    :cond_2
    iput p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 576
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pauseDecoder()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 456
    :cond_0
    return-void
.end method

.method public reload(Z)V
    .locals 18
    .parameter "defaultBig"

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 109
    .local v10, res:Landroid/content/res/Resources;
    const v2, 0x7f060001

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v16

    .line 111
    .local v16, translateX:[F
    const v2, 0x7f060002

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v17

    .line 113
    .local v17, translateY:[F
    const v2, 0x7f060003

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v13

    .line 115
    .local v13, scale:[F
    const v2, 0x7f060004

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v11

    .line 117
    .local v11, rotateX:[F
    const v2, 0x7f060005

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v12

    .line 119
    .local v12, rotateY:[F
    const v2, 0x7f060006

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 121
    .local v8, alpha:[I
    const v2, 0x7f0b0002

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    .line 122
    const v2, 0x7f0b0003

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    .line 124
    const v2, 0x7f0b0004

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 125
    .local v15, spriteWidth:I
    const v2, 0x7f0b0005

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 127
    .local v14, spriteHeight:I
    if-eqz v16, :cond_2

    if-eqz v17, :cond_2

    if-eqz v13, :cond_2

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    .line 129
    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 131
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-nez v2, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v2, v2, [Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 136
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v9, v2, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    if-nez v2, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v3}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v3, v2, v9

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v13, v9

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v13, v9

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v11, v9

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v12, v9

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iput v14, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iput v15, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v16, v9

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v17, v9

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    aget v3, v8, v9

    iput v3, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 156
    .end local v9           #i:I
    :cond_2
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "init failed"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-nez v2, :cond_4

    .line 162
    new-instance v2, Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->setReportError(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->setRecycleOnPause(Z)V

    .line 166
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_5

    .line 167
    new-instance v2, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    invoke-direct {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 170
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/carmode/CarGliderAdapter;->createDefaultAlbum()V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v2, :cond_6

    .line 174
    new-instance v2, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 176
    :cond_6
    return-void
.end method

.method public declared-synchronized requestAllBitmap(I)V
    .locals 12
    .parameter "nSelectedPos"

    .prologue
    const/4 v11, 0x1

    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 686
    :cond_0
    monitor-exit p0

    return-void

    .line 616
    :cond_1
    const/4 v2, 0x1

    .line 617
    .local v2, nCacheSize:I
    :try_start_1
    iget v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    rsub-int/lit8 v3, v10, 0x0

    .line 618
    .local v3, nLowBound:I
    const/4 v7, 0x1

    .line 619
    .local v7, nUpBound:I
    const/4 v6, 0x0

    .line 620
    .local v6, nScannedCount:I
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v8, v10

    .line 622
    .local v8, queueLen:I
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 623
    iget-boolean v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    if-ne v10, v11, :cond_3

    .line 624
    const/4 v7, 0x1

    .line 630
    :goto_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v10}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 633
    if-lt p1, v3, :cond_0

    if-gt p1, v7, :cond_0

    .line 637
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    .line 638
    add-int/lit8 v6, v6, 0x1

    .line 640
    const/4 v9, -0x1

    .line 641
    .local v9, sign:I
    const/4 v4, 0x1

    .line 642
    .local v4, nOffset:I
    const/4 v5, 0x0

    .line 643
    .local v5, nPos:I
    const/4 v1, 0x0

    .local v1, bUpBound:Z
    const/4 v0, 0x0

    .line 644
    .local v0, bLowBound:Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 645
    :cond_2
    const/4 v10, -0x1

    if-ne v10, v9, :cond_9

    if-nez v0, :cond_9

    .line 646
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 647
    if-ge v5, v3, :cond_4

    .line 648
    const/4 v0, 0x1

    .line 649
    goto :goto_1

    .line 626
    .end local v0           #bLowBound:Z
    .end local v1           #bUpBound:Z
    .end local v4           #nOffset:I
    .end local v5           #nPos:I
    .end local v9           #sign:I
    :cond_3
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    .line 627
    iget v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    add-int/lit8 v7, v10, -0x1

    goto :goto_0

    .line 650
    .restart local v0       #bLowBound:Z
    .restart local v1       #bUpBound:Z
    .restart local v4       #nOffset:I
    .restart local v5       #nPos:I
    .restart local v9       #sign:I
    :cond_4
    if-ne v5, v3, :cond_5

    .line 651
    const/4 v0, 0x1

    .line 654
    :cond_5
    if-gez v5, :cond_6

    .line 655
    add-int/2addr v5, v8

    .line 658
    :cond_6
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    .line 659
    add-int/lit8 v6, v6, 0x1

    .line 678
    :cond_7
    :goto_2
    if-ne v11, v9, :cond_8

    .line 679
    add-int/lit8 v4, v4, 0x1

    .line 681
    if-le v2, v6, :cond_0

    .line 684
    :cond_8
    mul-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 661
    :cond_9
    if-ne v11, v9, :cond_7

    if-nez v1, :cond_7

    .line 662
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 663
    if-le v5, v7, :cond_a

    .line 664
    const/4 v1, 0x1

    .line 665
    goto :goto_1

    .line 666
    :cond_a
    if-ne v5, v7, :cond_b

    .line 667
    const/4 v1, 0x1

    .line 670
    :cond_b
    if-lt v5, v8, :cond_c

    .line 671
    sub-int/2addr v5, v8

    .line 674
    :cond_c
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 612
    .end local v0           #bLowBound:Z
    .end local v1           #bUpBound:Z
    .end local v2           #nCacheSize:I
    .end local v3           #nLowBound:I
    .end local v4           #nOffset:I
    .end local v5           #nPos:I
    .end local v6           #nScannedCount:I
    .end local v7           #nUpBound:I
    .end local v8           #queueLen:I
    .end local v9           #sign:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public resumeDecoder()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 462
    :cond_0
    return-void
.end method

.method public declared-synchronized setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V
    .locals 17
    .parameter "albumInfo"
    .parameter "isPluginMode"
    .parameter "selectedPos"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    .line 180
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 181
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 182
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    if-eqz v2, :cond_3

    .line 186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 188
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v16, selection:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 191
    const-string v2, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-ge v11, v2, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v15, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 204
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 205
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1

    .line 206
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 179
    .end local v11           #i:I
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 208
    .restart local v11       #i:I
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v16       #selection:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "Something wrong in setAlbumInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    .line 215
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/music/carmode/CarGliderAdapter;->mMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v11           #i:I
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_4

    if-ltz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-le v2, v0, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 224
    .local v14, oldAlbumId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v12, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 225
    .local v12, newAlbumId:I
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/SBitmap;

    .line 227
    .local v10, bmp:Lcom/htc/sunny2/SBitmap;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 228
    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->substitute()Lcom/htc/sunny2/SBitmap;

    move-result-object v13

    .line 229
    .local v13, newBmp:Lcom/htc/sunny2/SBitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v10           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v12           #newAlbumId:I
    .end local v13           #newBmp:Lcom/htc/sunny2/SBitmap;
    .end local v14           #oldAlbumId:Ljava/lang/Integer;
    :cond_4
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setDlAlbumArt(ILjava/lang/String;)V
    .locals 10
    .parameter "albumId"
    .parameter "dlArtPath"

    .prologue
    .line 241
    monitor-enter p0

    if-gez p1, :cond_1

    .line 242
    :try_start_0
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: Illegal Arguments"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 247
    :cond_2
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumInfoArray = null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 251
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_5

    .line 252
    :cond_4
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumIdPosMap = null or size <= 0"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_5
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 257
    .local v4, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 262
    const/4 v3, -0x1

    .line 263
    .local v3, pos:I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 264
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 267
    if-ltz v3, :cond_c

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    .line 268
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-ne v7, p1, :cond_6

    .line 269
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 273
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iput-object p2, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 275
    iget v6, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    .line 276
    .local v6, validPos:I
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    if-ge v6, v7, :cond_a

    .line 277
    iget v6, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 281
    :cond_7
    :goto_2
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int v2, v6, v7

    .line 282
    .local v2, lowerBound:I
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    add-int v5, v6, v7

    .line 286
    .local v5, upperBound:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v7, :cond_6

    .line 287
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 288
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    if-gt v2, v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-eqz v0, :cond_6

    .line 289
    :cond_9
    const-string v7, "[CarGliderAdapter]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDlAlbumArt: update image of position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->remove(Ljava/lang/Object;)V

    .line 291
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 292
    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->notifyUpdateItem(I)V

    .line 293
    invoke-direct {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 278
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    :cond_a
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_7

    .line 279
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v6, v7, -0x1

    goto :goto_2

    .line 295
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    .restart local v2       #lowerBound:I
    .restart local v5       #upperBound:I
    :cond_b
    invoke-direct {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 301
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    .end local v6           #validPos:I
    :cond_c
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "pos illegal"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 22
    .parameter "nTimeSlot"
    .parameter "nTotalTimeSlot"
    .parameter "nCurrentUIPos"
    .parameter "nNextUIPos"
    .parameter "layout"
    .parameter "isBouncing"

    .prologue
    .line 693
    const/4 v12, 0x0

    .local v12, nStartX:F
    const/4 v7, 0x0

    .line 694
    .local v7, nEndX:F
    const/4 v14, 0x0

    .local v14, nStartY:F
    const/4 v9, 0x0

    .line 695
    .local v9, nEndY:F
    const/16 v16, 0x0

    .local v16, nStartZ:F
    const/4 v11, 0x0

    .line 697
    .local v11, nEndZ:F
    const/4 v13, 0x0

    .local v13, nStartXF:F
    const/4 v8, 0x0

    .line 698
    .local v8, nEndXF:F
    const/4 v15, 0x0

    .local v15, nStartYF:F
    const/4 v10, 0x0

    .line 700
    .local v10, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 702
    .local v6, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    .line 703
    .local v5, currentLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-nez v5, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v17

    .line 705
    .local v17, nextLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-eqz v17, :cond_0

    .line 707
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 708
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 709
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 710
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 711
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 712
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 713
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 716
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 717
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 718
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 719
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 720
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 721
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v10, v15

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 722
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 724
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 725
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 726
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v16, v0

    .line 727
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 728
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 729
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 730
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 731
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 732
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v11, v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 735
    int-to-float v0, v6

    move/from16 v18, v0

    iget v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v20, v0

    iget v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 739
    if-nez v6, :cond_0

    goto/16 :goto_0
.end method
