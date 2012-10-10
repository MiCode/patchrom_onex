.class public Lcom/htc/music/MiniPlayer;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MiniPlayer$NonUIHandler;,
        Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;,
        Lcom/htc/music/MiniPlayer$ILoadSuccessListener;,
        Lcom/htc/music/MiniPlayer$MiniPlayerCreator;
    }
.end annotation


# static fields
.field private static final DECODE_ALBUM_ART:I = 0x2714

.field private static final Decode_BitMap:Ljava/lang/String; = "DECODED_BITMAP"

.field private static final TAG:Ljava/lang/String; = "[MiniPlayer]"


# instance fields
.field isMonitoring:Z

.field private isReleased:Z

.field loadQueueFail:Z

.field loadTrackFail:Z

.field private mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

.field protected mContext:Landroid/app/Activity;

.field public mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasSet:Z

.field mInternalEnough:Z

.field private mIsServiceBinded:Z

.field private mLauncherListener:Landroid/view/View$OnClickListener;

.field private mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

.field private mMaxNotifyAlbumArtSideLen:I

.field private mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPlayPause:Lcom/htc/widget/HtcRimImageButton;

.field protected mPlayerContainer:Landroid/view/ViewGroup;

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field protected mThumb:Landroid/widget/ImageView;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbPath:Ljava/lang/String;

.field protected mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

.field private mUIHandler:Landroid/os/Handler;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 72
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 75
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    .line 77
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 78
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 79
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    .line 81
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 138
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 139
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 165
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 202
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 278
    new-instance v2, Lcom/htc/music/MiniPlayer$1;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$1;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 378
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 380
    new-instance v2, Lcom/htc/music/MiniPlayer$2;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$2;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    .line 487
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 488
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 730
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 731
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 732
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 946
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 947
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 958
    new-instance v2, Lcom/htc/music/MiniPlayer$3;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$3;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    .line 1076
    new-instance v2, Lcom/htc/music/MiniPlayer$4;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$4;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    .line 1094
    new-instance v2, Lcom/htc/music/MiniPlayer$5;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$5;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 111
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 116
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 117
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    const v2, 0x7f020054

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 120
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 124
    new-instance v2, Lcom/htc/widget/HtcFooter;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 125
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v2, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/MiniPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->doPauseResume()V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 445
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private initNonUiHandler()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 953
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiniPlayerWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 954
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 955
    new-instance v0, Lcom/htc/music/MiniPlayer$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    goto :goto_0
.end method


# virtual methods
.method public addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 205
    return-void
.end method

.method protected bindMediaPlayer()V
    .locals 3

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 418
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string v0, "[MiniPlayer]"

    const-string v1, "someone called bindService again but service already binded!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsServiceBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public inflateView()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->initNonUiHandler()V

    .line 135
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->initializeView(Landroid/app/Activity;)V

    .line 136
    return-void
.end method

.method protected initGlancelauncher()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_1
    return-void
.end method

.method protected initPlayPauseBtn()V
    .locals 6

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_b_transport_outer"

    const v3, 0x2080014

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v3, "common_b_transport_pressed"

    const v4, 0x2080015

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v4, "common_b_transport_rest"

    const v5, 0x2080016

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 271
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 274
    return-void
.end method

.method protected initializeView(Landroid/app/Activity;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v6, 0x2050001

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 215
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 218
    .local v0, layoutInflator:Landroid/view/LayoutInflater;
    const v4, 0x7f03003a

    invoke-virtual {v0, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 220
    .local v2, playerLayout:Landroid/view/View;
    const v4, 0x7f08008e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 221
    const v4, 0x7f080090

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    .line 222
    const v4, 0x7f080091

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcRimImageButton;

    iput-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 224
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 226
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 229
    :cond_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const v4, 0x7f08008f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 233
    .local v1, listItem:Lcom/htc/widget/HtcListItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 236
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 240
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v2, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 247
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initGlancelauncher()V

    .line 248
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initPlayPauseBtn()V

    .line 250
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    goto :goto_0
.end method

.method public isLoadTrackSuccess()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshInfo()V
    .locals 0

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 724
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 725
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    .line 726
    return-void
.end method

.method protected registerEventReceiver()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "com.htc.music.dmcsvcman.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "com.htc.music.dmcsvcman.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    const-string v1, "[MiniPlayer]"

    const-string v2, "registerEventReceiver"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 170
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 171
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 173
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 180
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 187
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 189
    :cond_2
    return-void
.end method

.method public removeLoadSuccessListener()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 209
    return-void
.end method

.method protected setArtistName(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_0

    .line 879
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDefaultThumb()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, v0, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method protected setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "bitmap"
    .parameter "thumbPath"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    if-eqz v0, :cond_2

    .line 745
    if-eqz p1, :cond_1

    .line 746
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 763
    :cond_1
    :goto_0
    return-void

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 753
    if-eqz p1, :cond_3

    .line 754
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 759
    :goto_1
    iput-object p2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 760
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 3
    .parameter "trackName"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_2

    .line 862
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 875
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const-string v1, "-- --"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 873
    :cond_2
    const-string v0, "[MiniPlayer]"

    const-string v1, "mTrackDetail is NULL!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 145
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 149
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->bindMediaPlayer()V

    .line 152
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->registerEventReceiver()V

    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 159
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unRegisterEventReceiver()V

    .line 161
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    goto :goto_0
.end method

.method protected unBindMediaPlayer()V
    .locals 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 426
    return-void
.end method

.method protected unRegisterEventReceiver()V
    .locals 3

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[MiniPlayer]"

    const-string v2, "somebody called unregister twice!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDMCInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, artistName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 459
    .local v1, trackName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 466
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 470
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 471
    invoke-virtual {p0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 472
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v6, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    invoke-interface {v2, v6}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 475
    :cond_1
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 476
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 485
    :goto_0
    return-void

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 479
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3

    .line 480
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    invoke-interface {v2, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 482
    :cond_3
    iput-boolean v6, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 483
    iput-boolean v6, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    goto :goto_0
.end method

.method protected updateDMCThumb()V
    .locals 7

    .prologue
    .line 766
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    const/4 v1, 0x0

    .line 777
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 779
    .local v0, albumArtPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 781
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/htc/music/DMCServiceManager;->getDMCThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 782
    const-string v4, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 799
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 787
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v4}, Lcom/htc/music/DMCServiceManager;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_2

    .line 789
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 792
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 803
    :cond_4
    iget v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 804
    .local v2, maxSideLen:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, v2, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 805
    :cond_5
    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 806
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    const/4 v1, 0x0

    .line 809
    invoke-virtual {p0, v3, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updatePlayPauseBtn()V
    .locals 7

    .prologue
    const v6, 0x20800bb

    .line 890
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-nez v4, :cond_0

    .line 934
    :goto_0
    return-void

    .line 892
    :cond_0
    const/4 v1, 0x0

    .line 894
    .local v1, isPlaying:Z
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 896
    .local v3, playIcon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 898
    .local v2, isPluginMode:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    .line 899
    const/4 v2, 0x1

    .line 903
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 905
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 907
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    goto :goto_0

    .line 916
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 919
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 925
    :goto_2
    if-eqz v1, :cond_4

    .line 926
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const v5, 0x20800b6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 932
    :goto_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 928
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_3

    .line 901
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected updateThumb()V
    .locals 5

    .prologue
    .line 821
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_2

    .line 827
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 831
    :cond_2
    const/4 v0, 0x0

    .line 834
    .local v0, albumArtPath:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 839
    :goto_1
    if-eqz v0, :cond_4

    .line 840
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 844
    iget-boolean v3, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    if-nez v3, :cond_3

    .line 845
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    .line 847
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v4, 0x2714

    invoke-virtual {v3, v4}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 849
    .local v2, msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 850
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v3, v2}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 835
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 836
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 855
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0
.end method

.method public updateTrackInfo()V
    .locals 22

    .prologue
    .line 491
    const/4 v8, 0x0

    .line 492
    .local v8, artistName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 494
    .local v21, trackName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 497
    .local v16, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_3

    .line 498
    const-string v2, "[MiniPlayer]"

    const-string v3, "Service is null!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v17

    .line 611
    .local v17, pluginReady:Z
    if-nez v17, :cond_0

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_0
    :goto_0
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_2e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 634
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 654
    :goto_2
    return-void

    .line 502
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 504
    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_7

    .line 609
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v17

    .line 611
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_4

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_4
    :goto_3
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_32

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_5

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_6

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 508
    :cond_7
    if-eqz v16, :cond_16

    .line 509
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 510
    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 514
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v21

    .line 516
    if-nez v8, :cond_f

    if-nez v21, :cond_f

    .line 517
    const-string v2, "[MiniPlayer]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 520
    .local v13, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v13, :cond_9

    .line 522
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 524
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 525
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v21

    .line 531
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 532
    const/4 v13, 0x0

    .line 536
    :cond_9
    if-eqz v8, :cond_a

    .line 537
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 539
    :cond_a
    if-eqz v8, :cond_b

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 540
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 542
    :cond_c
    if-eqz v21, :cond_d

    .line 543
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 545
    :cond_d
    if-eqz v21, :cond_e

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 547
    :cond_e
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 548
    const/4 v14, -0x1

    .local v14, nBegin:I
    const/4 v15, -0x1

    .line 550
    .local v15, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 551
    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 553
    if-ltz v14, :cond_f

    if-le v15, v14, :cond_f

    .line 554
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v21

    .line 609
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v14           #nBegin:I
    .end local v15           #nEnd:I
    :cond_f
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v17

    .line 611
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_10

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_10
    :goto_6
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_36

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_11

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_12

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 527
    .restart local v13       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v11

    .line 528
    .local v11, ex:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 603
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v10

    .line 604
    .local v10, e:Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 609
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result v17

    .line 611
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_13

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_13
    :goto_7
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_2a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_14

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_15

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 560
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_16
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v19

    .line 561
    .local v19, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v18

    .line 562
    .local v18, position:I
    if-eqz v19, :cond_17

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_17

    if-ltz v18, :cond_17

    move-object/from16 v0, v19

    array-length v2, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    move/from16 v0, v18

    if-gt v2, v0, :cond_1b

    .line 609
    :cond_17
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v17

    .line 611
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_18

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_18
    :goto_8
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_3a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_19

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1a

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 567
    :cond_1b
    const/16 v2, 0xb

    :try_start_d
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "artist_id"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "is_podcast"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "bookmark"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "composer"

    aput-object v3, v4, v2

    .line 581
    .local v4, mCursorCols:[Ljava/lang/String;
    aget v2, v19, v18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 582
    .local v12, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is_music>=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 584
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1c

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    move-result v2

    if-nez v2, :cond_20

    .line 609
    :cond_1c
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-result v17

    .line 611
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_1d

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_1d
    :goto_9
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_3e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_1e

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_1e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1f

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 588
    :cond_20
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 589
    const-string v2, "artist"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 590
    if-eqz v8, :cond_21

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 591
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 594
    :cond_22
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 596
    if-eqz v9, :cond_f

    .line 597
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_5

    .line 608
    .end local v4           #mCursorCols:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #id:Ljava/lang/String;
    .end local v18           #position:I
    .end local v19           #queue:[I
    :catchall_0
    move-exception v2

    .line 609
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result v17

    .line 611
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_23

    .line 612
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    .line 621
    .end local v17           #pluginReady:Z
    :cond_23
    :goto_a
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "artist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 624
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz v21, :cond_26

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v3, :cond_24

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 630
    :cond_24
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v3, v5, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v3, :cond_25

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 633
    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 634
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 608
    :goto_b
    throw v2

    .line 616
    :catch_2
    move-exception v11

    .line 617
    .local v11, ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto :goto_a

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v3, :cond_27

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_27
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .local v20, status:Ljava/lang/String;
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateTrackInfo] status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v3, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 647
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {v3}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto :goto_b

    .line 649
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v5, 0x7f070001

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_b

    .line 616
    .end local v20           #status:Ljava/lang/String;
    .restart local v10       #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    .line 617
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2b

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 647
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .end local v10           #e:Landroid/os/RemoteException;
    :goto_c
    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto/16 :goto_2

    .line 649
    .restart local v10       #e:Landroid/os/RemoteException;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v10           #e:Landroid/os/RemoteException;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    .end local v20           #status:Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 617
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2f

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_2f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 647
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto :goto_c

    .line 649
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 616
    .end local v20           #status:Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 617
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_33

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 647
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 649
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 616
    .end local v20           #status:Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 617
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_37

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 647
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 649
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 616
    .end local v20           #status:Ljava/lang/String;
    .restart local v18       #position:I
    .restart local v19       #queue:[I
    :catch_7
    move-exception v11

    .line 617
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3b

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_3b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 647
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 649
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 616
    .end local v20           #status:Ljava/lang/String;
    .restart local v4       #mCursorCols:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #id:Ljava/lang/String;
    :catch_8
    move-exception v11

    .line 617
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 636
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3f

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 639
    :cond_3f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 643
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 647
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 649
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d
.end method
