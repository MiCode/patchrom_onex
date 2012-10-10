.class public Lcom/htc/music/GliderAdapter;
.super Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;
.source "GliderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/GliderAdapter$QueryHandler;,
        Lcom/htc/music/GliderAdapter$AlbumInfo;
    }
.end annotation


# static fields
.field private static final CHANGE_BACKGROUND_PERIOD:J = 0x5dcL

.field private static final TAG:Ljava/lang/String; = "[GliderAdapter]"

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

.field private mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

.field private mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

.field private mCanUpdateSelectedItem:Z

.field private mComponentCount:I

.field private mCookie:J

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

.field private mMusicContext:Lcom/htc/music/HtcMusic;

.field private mPreSelectedAlbumId:I

.field private mPreSelectedPos:I

.field private mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mSelectedPos:I

.field private mTransparentBitmap:Lcom/htc/sunny2/SBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
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

    sput-object v0, Lcom/htc/music/GliderAdapter;->mMdColumns:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 4
    .parameter "musicContext"
    .parameter "spresentation"

    .prologue
    const/16 v1, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;-><init>()V

    .line 51
    iput v1, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    .line 52
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 56
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 58
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 59
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    .line 66
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 69
    iput v1, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    .line 71
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    .line 72
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    .line 74
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedPos:I

    .line 75
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    .line 76
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 78
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    .line 82
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    .line 84
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/GliderAdapter;->mCookie:J

    .line 87
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 93
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    .line 539
    new-instance v0, Lcom/htc/music/GliderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/GliderAdapter$1;-><init>(Lcom/htc/music/GliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 103
    iput-object p1, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    .line 104
    iput-object p2, p0, Lcom/htc/music/GliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 105
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/GliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/GliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/GliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/GliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/GliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/GliderAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/htc/music/GliderAdapter;->mCookie:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/GliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    return p1
.end method

.method private declared-synchronized addBitmapToCache(I)Z
    .locals 19
    .parameter "nItemPos"

    .prologue
    .line 415
    monitor-enter p0

    const/4 v14, 0x0

    .line 416
    .local v14, bmp:Lcom/htc/sunny2/SBitmap;
    const/4 v11, 0x0

    .local v11, addToDecoder:Z
    const/4 v12, 0x0

    .line 417
    .local v12, bHasCached:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move v13, v12

    .line 473
    .end local v12           #bHasCached:Z
    .local v13, bHasCached:I
    :goto_0
    monitor-exit p0

    return v13

    .line 419
    .end local v13           #bHasCached:I
    .restart local v12       #bHasCached:Z
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    :cond_1
    move v13, v12

    .line 420
    .restart local v13       #bHasCached:I
    goto :goto_0

    .line 423
    .end local v13           #bHasCached:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    move-object v14, v0

    .line 425
    if-eqz v14, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_3
    const/4 v11, 0x1

    .line 426
    :goto_1
    if-nez v11, :cond_4

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 429
    .local v16, oldAlbumId:Ljava/lang/Integer;
    if-nez v16, :cond_7

    .line 430
    const/4 v11, 0x1

    .line 438
    .end local v16           #oldAlbumId:Ljava/lang/Integer;
    :cond_4
    :goto_2
    if-eqz v11, :cond_b

    .line 439
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v0, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    .local v18, service:Lcom/htc/music/IMediaPlaybackService;
    if-eqz v18, :cond_5

    .line 443
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 444
    const-string v2, "[GliderAdapter]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add to decoder path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v17

    .line 446
    .local v17, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    move/from16 v3, p1

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v17           #path:Ljava/lang/String;
    .end local v18           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_5
    :goto_3
    move v13, v12

    .line 473
    .restart local v13       #bHasCached:I
    goto/16 :goto_0

    .line 425
    .end local v13           #bHasCached:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 431
    .restart local v16       #oldAlbumId:Ljava/lang/Integer;
    :cond_7
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_4

    .line 432
    invoke-virtual {v14}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 433
    const/4 v11, 0x1

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 415
    .end local v16           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 451
    .restart local v18       #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_8
    :try_start_4
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, artPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v7, v3

    move/from16 v3, p1

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 454
    .end local v4           #artPath:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 455
    .local v15, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 459
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v18           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    if-eqz v2, :cond_5

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_a

    const-string v2, "<unknown>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    goto :goto_3

    .line 465
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v7, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v8, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    move/from16 v6, p1

    move/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 470
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_3
.end method

.method private createDefaultAlbum()V
    .locals 5

    .prologue
    .line 477
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    iget v4, p0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/SBitmap;->createBitmap(III)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 481
    :cond_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 496
    :cond_2
    :goto_0
    return-void

    .line 485
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 486
    .local v0, bmpOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 487
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 488
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003f

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 489
    .local v1, defaultBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 490
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    iget v3, p0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 491
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/music/GliderAdapter;->reload()V

    .line 110
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

    .line 786
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 788
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clearAllCache()V
    .locals 1

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->clear()V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 535
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 536
    invoke-virtual {p0}, Lcom/htc/music/GliderAdapter;->clearAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumInfo(I)Lcom/htc/music/GliderAdapter$AlbumInfo;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    if-lt p1, v0, :cond_1

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized getItemBitmap(I)Lcom/htc/sunny2/SBitmap;
    .locals 5
    .parameter "nItemPos"

    .prologue
    const/4 v4, 0x1

    .line 371
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedPos:I

    iget v3, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-eq v2, v3, :cond_0

    .line 372
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    instance-of v2, v2, Lcom/htc/music/HtcMusic;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_3

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 382
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_5

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 386
    :cond_5
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    if-eqz v2, :cond_6

    .line 387
    const-string v2, "<unknown>"

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 388
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 391
    :cond_6
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 392
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 393
    .local v1, oldAlbumId:Ljava/lang/Integer;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v4, v2, :cond_9

    .line 394
    :cond_7
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 401
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-ne v2, v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 395
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_8

    .line 396
    :cond_a
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 397
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 371
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v1           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 4
    .parameter "nSelectedPos"

    .prologue
    .line 619
    monitor-enter p0

    const/4 v1, 0x0

    .line 620
    .local v1, nStart:I
    const/4 v0, 0x0

    .line 621
    .local v0, nEnd:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_2

    .line 622
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p1, v2

    .line 623
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int v0, p1, v2

    .line 624
    if-gez v1, :cond_0

    .line 625
    const/4 v1, 0x0

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 627
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 629
    :cond_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 630
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 631
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v2, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    .line 637
    :cond_2
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    iget v3, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-le v2, v3, :cond_5

    if-ltz p1, :cond_5

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-le v2, p1, :cond_5

    .line 639
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    .line 644
    :goto_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    .line 645
    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_4

    .line 646
    :cond_3
    const/4 p1, 0x0

    .line 650
    :cond_4
    iput p1, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 641
    :cond_5
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pauseDecoder()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 502
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 17

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 114
    .local v9, res:Landroid/content/res/Resources;
    const v1, 0x7f060007

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v15

    .line 116
    .local v15, translateX:[F
    const v1, 0x7f060008

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v16

    .line 118
    .local v16, translateY:[F
    const v1, 0x7f060009

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v12

    .line 120
    .local v12, scale:[F
    const v1, 0x7f06000a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v10

    .line 122
    .local v10, rotateX:[F
    const v1, 0x7f06000b

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v11

    .line 124
    .local v11, rotateY:[F
    const v1, 0x7f06000c

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 126
    .local v7, alpha:[I
    const v1, 0x7f0b000a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    .line 127
    const v1, 0x7f0b000b

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    .line 129
    const v1, 0x7f0b000c

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 130
    .local v14, spriteWidth:I
    const v1, 0x7f0b000d

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 132
    .local v13, spriteHeight:I
    if-eqz v15, :cond_2

    if-eqz v16, :cond_2

    if-eqz v12, :cond_2

    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    if-eqz v7, :cond_2

    .line 134
    array-length v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    .line 135
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    .line 136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-nez v1, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    new-array v1, v1, [Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 142
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    if-ge v8, v1, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    if-nez v1, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v2}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v2, v1, v8

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v12, v8

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v12, v8

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v10, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v11, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iput v13, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iput v14, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v15, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v16, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    aget v2, v7, v8

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 163
    .end local v8           #i:I
    :cond_2
    const-string v1, "[GliderAdapter]"

    const-string v2, "init failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-nez v1, :cond_4

    .line 167
    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/util/AsyncImageDecoder;->setReportError(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/util/AsyncImageDecoder;->setRecycleOnPause(Z)V

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v1, :cond_5

    .line 172
    new-instance v1, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 175
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/GliderAdapter;->createDefaultAlbum()V

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v1, :cond_6

    .line 179
    new-instance v1, Lcom/htc/music/GliderAdapter$QueryHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/htc/music/GliderAdapter$QueryHandler;-><init>(Lcom/htc/music/GliderAdapter;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 181
    :cond_6
    return-void
.end method

.method public declared-synchronized requestAllBitmap(I)V
    .locals 12
    .parameter "nSelectedPos"

    .prologue
    const/4 v11, 0x1

    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 730
    :cond_0
    monitor-exit p0

    return-void

    .line 659
    :cond_1
    const/4 v2, 0x1

    .line 660
    .local v2, nCacheSize:I
    :try_start_1
    iget v10, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    rsub-int/lit8 v3, v10, 0x0

    .line 661
    .local v3, nLowBound:I
    const/4 v7, 0x1

    .line 662
    .local v7, nUpBound:I
    const/4 v6, 0x0

    .line 663
    .local v6, nScannedCount:I
    iget-object v10, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v8, v10

    .line 665
    .local v8, queueLen:I
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    .line 667
    iget-object v10, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    .line 668
    iget v10, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    add-int/lit8 v7, v10, -0x1

    .line 670
    iget-object v10, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v10}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 672
    if-lt p1, v3, :cond_0

    if-gt p1, v7, :cond_0

    .line 676
    invoke-direct {p0, p1}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    .line 677
    add-int/lit8 v6, v6, 0x1

    .line 679
    iget-boolean v10, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    if-nez v10, :cond_0

    .line 684
    const/4 v9, -0x1

    .line 685
    .local v9, sign:I
    const/4 v4, 0x1

    .line 686
    .local v4, nOffset:I
    const/4 v5, 0x0

    .line 687
    .local v5, nPos:I
    const/4 v1, 0x0

    .local v1, bUpBound:Z
    const/4 v0, 0x0

    .line 688
    .local v0, bLowBound:Z
    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 689
    :cond_2
    const/4 v10, -0x1

    if-ne v10, v9, :cond_8

    if-nez v0, :cond_8

    .line 690
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 691
    if-ge v5, v3, :cond_3

    .line 692
    const/4 v0, 0x1

    .line 693
    goto :goto_0

    .line 694
    :cond_3
    if-ne v5, v3, :cond_4

    .line 695
    const/4 v0, 0x1

    .line 698
    :cond_4
    if-gez v5, :cond_5

    .line 699
    add-int/2addr v5, v8

    .line 702
    :cond_5
    invoke-direct {p0, v5}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    .line 703
    add-int/lit8 v6, v6, 0x1

    .line 722
    :cond_6
    :goto_1
    if-ne v11, v9, :cond_7

    .line 723
    add-int/lit8 v4, v4, 0x1

    .line 725
    if-le v2, v6, :cond_0

    .line 728
    :cond_7
    mul-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 705
    :cond_8
    if-ne v11, v9, :cond_6

    if-nez v1, :cond_6

    .line 706
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 707
    if-le v5, v7, :cond_9

    .line 708
    const/4 v1, 0x1

    .line 709
    goto :goto_0

    .line 710
    :cond_9
    if-ne v5, v7, :cond_a

    .line 711
    const/4 v1, 0x1

    .line 714
    :cond_a
    if-lt v5, v8, :cond_b

    .line 715
    sub-int/2addr v5, v8

    .line 718
    :cond_b
    invoke-direct {p0, v5}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 655
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
    .line 505
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 508
    :cond_0
    return-void
.end method

.method public declared-synchronized setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    .locals 17
    .parameter "albumInfo"
    .parameter "isPluginMode"
    .parameter "selectedPos"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    .line 185
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 186
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    .line 187
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/GliderAdapter;->mPreSelectedPos:I

    .line 188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 193
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    if-nez v2, :cond_8

    .line 194
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    if-eqz v2, :cond_3

    .line 195
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 197
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v16, selection:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 200
    const-string v2, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-ge v11, v2, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v15, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 213
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 214
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1

    .line 215
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 184
    .end local v11           #i:I
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 217
    .restart local v11       #i:I
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v16       #selection:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string v2, "[GliderAdapter]"

    const-string v3, "Something wrong in setAlbumInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/GliderAdapter;->mCookie:J

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/GliderAdapter;->mCookie:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/music/GliderAdapter;->mMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v11           #i:I
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-le v2, v3, :cond_5

    if-ltz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-le v2, v0, :cond_5

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 236
    .local v14, oldAlbumId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v12, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 237
    .local v12, newAlbumId:I
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_4

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/SBitmap;

    .line 239
    .local v10, bmp:Lcom/htc/sunny2/SBitmap;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 240
    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->substitute()Lcom/htc/sunny2/SBitmap;

    move-result-object v13

    .line 241
    .local v13, newBmp:Lcom/htc/sunny2/SBitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v10           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v13           #newBmp:Lcom/htc/sunny2/SBitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    if-ne v2, v12, :cond_5

    .line 249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 253
    .end local v12           #newAlbumId:I
    .end local v14           #oldAlbumId:Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-le v2, v3, :cond_9

    if-ltz p3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-le v2, v0, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    .line 260
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_7

    .line 261
    if-ltz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-lt v0, v2, :cond_7

    .line 262
    :cond_6
    const/16 p3, 0x0

    .line 266
    :cond_7
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_8
    monitor-exit p0

    return-void

    .line 257
    :cond_9
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setDlAlbumArt(ILjava/lang/String;)V
    .locals 10
    .parameter "albumId"
    .parameter "dlArtPath"

    .prologue
    .line 272
    monitor-enter p0

    if-gez p1, :cond_1

    .line 273
    :try_start_0
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: Illegal Arguments"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 278
    :cond_2
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumInfoArray = null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 282
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_5

    .line 283
    :cond_4
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumIdPosMap = null or size <= 0"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_5
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 288
    .local v4, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 293
    const/4 v3, -0x1

    .line 294
    .local v3, pos:I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 295
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 298
    if-ltz v3, :cond_c

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    .line 299
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-ne v7, p1, :cond_6

    .line 300
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 304
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iput-object p2, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 306
    iget v6, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    .line 307
    .local v6, validPos:I
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    if-ge v6, v7, :cond_a

    .line 308
    iget v6, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    .line 312
    :cond_7
    :goto_2
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int v2, v6, v7

    .line 313
    .local v2, lowerBound:I
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    add-int v5, v6, v7

    .line 317
    .local v5, upperBound:I
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v7, :cond_6

    .line 318
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 319
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    if-gt v2, v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-eqz v0, :cond_6

    .line 320
    :cond_9
    const-string v7, "[GliderAdapter]"

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

    .line 321
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->remove(Ljava/lang/Object;)V

    .line 322
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 323
    invoke-virtual {p0, v3}, Lcom/htc/music/GliderAdapter;->notifyUpdateItem(I)V

    .line 324
    invoke-direct {p0, v3}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 309
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    :cond_a
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_7

    .line 310
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v6, v7, -0x1

    goto :goto_2

    .line 326
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    .restart local v2       #lowerBound:I
    .restart local v5       #upperBound:I
    :cond_b
    invoke-direct {p0, v3}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 333
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    .end local v6           #validPos:I
    :cond_c
    const-string v7, "[GliderAdapter]"

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
    .line 737
    const/4 v12, 0x0

    .local v12, nStartX:F
    const/4 v7, 0x0

    .line 738
    .local v7, nEndX:F
    const/4 v14, 0x0

    .local v14, nStartY:F
    const/4 v9, 0x0

    .line 739
    .local v9, nEndY:F
    const/16 v16, 0x0

    .local v16, nStartZ:F
    const/4 v11, 0x0

    .line 741
    .local v11, nEndZ:F
    const/4 v13, 0x0

    .local v13, nStartXF:F
    const/4 v8, 0x0

    .line 742
    .local v8, nEndXF:F
    const/4 v15, 0x0

    .local v15, nStartYF:F
    const/4 v10, 0x0

    .line 744
    .local v10, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 746
    .local v6, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/music/GliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    .line 747
    .local v5, currentLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-nez v5, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/music/GliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v17

    .line 749
    .local v17, nextLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-eqz v17, :cond_0

    .line 751
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 752
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 753
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 754
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 755
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

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 756
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

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 757
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 760
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 761
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 762
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 763
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 764
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

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 765
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

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 766
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 768
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 769
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 770
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v16, v0

    .line 771
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 772
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 773
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 774
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

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 775
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

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 776
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 779
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method
