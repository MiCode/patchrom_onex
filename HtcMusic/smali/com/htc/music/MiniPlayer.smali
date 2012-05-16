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

.field protected mTrackDetail:Lcom/htc/widget/HeaderBarText;

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

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 71
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 74
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    .line 76
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 77
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 78
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    .line 80
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 137
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 138
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 164
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 201
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 273
    new-instance v2, Lcom/htc/music/MiniPlayer$1;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$1;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 373
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 375
    new-instance v2, Lcom/htc/music/MiniPlayer$2;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$2;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    .line 482
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 483
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 725
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 726
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 727
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 941
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 942
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 953
    new-instance v2, Lcom/htc/music/MiniPlayer$3;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$3;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    .line 1071
    new-instance v2, Lcom/htc/music/MiniPlayer$4;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$4;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    .line 1087
    new-instance v2, Lcom/htc/music/MiniPlayer$5;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$5;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 110
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 115
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 116
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    const v2, 0x7f020052

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 123
    new-instance v2, Lcom/htc/widget/HtcFooter;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 124
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v2, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/MiniPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->doPauseResume()V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 435
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 440
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0

    .line 438
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
    .line 946
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 948
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiniPlayerWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 949
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 950
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
    .line 203
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 204
    return-void
.end method

.method protected bindMediaPlayer()V
    .locals 3

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_0
    const-string v0, "[MiniPlayer]"

    const-string v1, "someone called bindService again but service already binded!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
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

    .line 411
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
    .line 1098
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public inflateView()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->initNonUiHandler()V

    .line 134
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->initializeView(Landroid/app/Activity;)V

    .line 135
    return-void
.end method

.method protected initGlancelauncher()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_1
    return-void
.end method

.method protected initPlayPauseBtn()V
    .locals 6

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 262
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

    .line 266
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 269
    return-void
.end method

.method protected initializeView(Landroid/app/Activity;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x2050001

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 214
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 217
    .local v0, layoutInflator:Landroid/view/LayoutInflater;
    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, playerLayout:Landroid/view/View;
    const v3, 0x7f08008e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 220
    const v3, 0x7f08008f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    .line 221
    const v3, 0x7f080090

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 223
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 225
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 228
    :cond_1
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 231
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 235
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/16 v5, 0x12c

    invoke-static {v1, v3, v4, v6, v5}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 242
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initGlancelauncher()V

    .line 243
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initPlayPauseBtn()V

    .line 245
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 246
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    goto :goto_0
.end method

.method public isLoadTrackSuccess()Z
    .locals 1

    .prologue
    .line 192
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
    .line 718
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 719
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 720
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    .line 721
    return-void
.end method

.method protected registerEventReceiver()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "com.htc.music.dmcsvcman.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "com.htc.music.dmcsvcman.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    const-string v1, "[MiniPlayer]"

    const-string v2, "registerEventReceiver"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 169
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 170
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 172
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 179
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 186
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 188
    :cond_2
    return-void
.end method

.method public removeLoadSuccessListener()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 208
    return-void
.end method

.method protected setArtistName(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 874
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDefaultThumb()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, v0, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method protected setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "bitmap"
    .parameter "thumbPath"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 739
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    if-eqz v0, :cond_2

    .line 740
    if-eqz p1, :cond_1

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    :cond_1
    :goto_0
    return-void

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 748
    if-eqz p1, :cond_3

    .line 749
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 754
    :goto_1
    iput-object p2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 755
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 3
    .parameter "trackName"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_2

    .line 857
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 870
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const-string v1, "-- --"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 868
    :cond_2
    const-string v0, "[MiniPlayer]"

    const-string v1, "mTrackDetail is NULL!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 144
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 148
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->bindMediaPlayer()V

    .line 151
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->registerEventReceiver()V

    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 158
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unRegisterEventReceiver()V

    .line 160
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    goto :goto_0
.end method

.method protected unBindMediaPlayer()V
    .locals 2

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 420
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 421
    return-void
.end method

.method protected unRegisterEventReceiver()V
    .locals 3

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[MiniPlayer]"

    const-string v2, "somebody called unregister twice!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDMCInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, artistName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 454
    .local v1, trackName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 458
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

    .line 459
    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 461
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

    .line 462
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 465
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 466
    invoke-virtual {p0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 467
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v6, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    invoke-interface {v2, v6}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 470
    :cond_1
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 471
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 474
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3

    .line 475
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    invoke-interface {v2, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 477
    :cond_3
    iput-boolean v6, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 478
    iput-boolean v6, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    goto :goto_0
.end method

.method protected updateDMCThumb()V
    .locals 7

    .prologue
    .line 761
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    const/4 v1, 0x0

    .line 772
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 774
    .local v0, albumArtPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 776
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/htc/music/DMCServiceManager;->getDMCThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 777
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

    .line 792
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 794
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 782
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v4}, Lcom/htc/music/DMCServiceManager;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_2

    .line 784
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 787
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 798
    :cond_4
    iget v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 799
    .local v2, maxSideLen:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, v2, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 800
    :cond_5
    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 801
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 802
    const/4 v1, 0x0

    .line 804
    invoke-virtual {p0, v3, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updatePlayPauseBtn()V
    .locals 7

    .prologue
    const v6, 0x20800bb

    .line 885
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-nez v4, :cond_0

    .line 929
    :goto_0
    return-void

    .line 887
    :cond_0
    const/4 v1, 0x0

    .line 889
    .local v1, isPlaying:Z
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 891
    .local v3, playIcon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 893
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

    .line 894
    const/4 v2, 0x1

    .line 898
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 900
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 902
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    goto :goto_0

    .line 911
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 914
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 920
    :goto_2
    if-eqz v1, :cond_4

    .line 921
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const v5, 0x20800b6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 927
    :goto_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 923
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_3

    .line 896
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected updateThumb()V
    .locals 5

    .prologue
    .line 816
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_2

    .line 822
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 826
    :cond_2
    const/4 v0, 0x0

    .line 829
    .local v0, albumArtPath:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 834
    :goto_1
    if-eqz v0, :cond_4

    .line 835
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 839
    iget-boolean v3, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    if-nez v3, :cond_3

    .line 840
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    .line 842
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v3, :cond_0

    .line 843
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v4, 0x2714

    invoke-virtual {v3, v4}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 844
    .local v2, msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 845
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v3, v2}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 830
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 831
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 850
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0
.end method

.method public updateTrackInfo()V
    .locals 22

    .prologue
    .line 486
    const/4 v8, 0x0

    .line 487
    .local v8, artistName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 489
    .local v21, trackName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 492
    .local v16, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_3

    .line 493
    const-string v2, "[MiniPlayer]"

    const-string v3, "Service is null!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 604
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v17

    .line 606
    .local v17, pluginReady:Z
    if-nez v17, :cond_0

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_2e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_1

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 629
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 649
    :goto_2
    return-void

    .line 497
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 499
    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_7

    .line 604
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v17

    .line 606
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_4

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_32

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_6

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 503
    :cond_7
    if-eqz v16, :cond_16

    .line 504
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 505
    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 509
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v21

    .line 511
    if-nez v8, :cond_f

    if-nez v21, :cond_f

    .line 512
    const-string v2, "[MiniPlayer]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 515
    .local v13, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v13, :cond_9

    .line 517
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 520
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v21

    .line 526
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 527
    const/4 v13, 0x0

    .line 531
    :cond_9
    if-eqz v8, :cond_a

    .line 532
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 534
    :cond_a
    if-eqz v8, :cond_b

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 535
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 537
    :cond_c
    if-eqz v21, :cond_d

    .line 538
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 540
    :cond_d
    if-eqz v21, :cond_e

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 542
    :cond_e
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 543
    const/4 v14, -0x1

    .local v14, nBegin:I
    const/4 v15, -0x1

    .line 545
    .local v15, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 546
    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 548
    if-ltz v14, :cond_f

    if-le v15, v14, :cond_f

    .line 549
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v21

    .line 604
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

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v17

    .line 606
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_10

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_36

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_11

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_12

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 522
    .restart local v13       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v11

    .line 523
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

    .line 598
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v10

    .line 599
    .local v10, e:Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 604
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result v17

    .line 606
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_13

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_2a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_14

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_15

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 555
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_16
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v19

    .line 556
    .local v19, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v18

    .line 557
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

    .line 604
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

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v17

    .line 606
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_18

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_3a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_19

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1a

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 562
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

    .line 576
    .local v4, mCursorCols:[Ljava/lang/String;
    aget v2, v19, v18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 577
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

    .line 579
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1c

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    move-result v2

    if-nez v2, :cond_20

    .line 604
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

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-result v17

    .line 606
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_1d

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_3e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_1e

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_1e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1f

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 583
    :cond_20
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 584
    const-string v2, "artist"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 585
    if-eqz v8, :cond_21

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 586
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 589
    :cond_22
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 591
    if-eqz v9, :cond_f

    .line 592
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_5

    .line 603
    .end local v4           #mCursorCols:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #id:Ljava/lang/String;
    .end local v18           #position:I
    .end local v19           #queue:[I
    :catchall_0
    move-exception v2

    .line 604
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result v17

    .line 606
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_23

    .line 607
    const/4 v8, 0x0

    .line 608
    const/16 v21, 0x0

    .line 616
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

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 619
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

    .line 620
    if-eqz v21, :cond_26

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_24

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 625
    :cond_24
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v3, v5, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v3, :cond_25

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 628
    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 629
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 603
    :goto_b
    throw v2

    .line 611
    :catch_2
    move-exception v11

    .line 612
    .local v11, ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto :goto_a

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v3, :cond_27

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_27
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {v3}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto :goto_b

    .line 644
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v5, 0x7f070001

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_b

    .line 611
    .end local v20           #status:Ljava/lang/String;
    .restart local v10       #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    .line 612
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2b

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .end local v10           #e:Landroid/os/RemoteException;
    :goto_c
    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto/16 :goto_2

    .line 644
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

    .line 611
    .end local v20           #status:Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 612
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2f

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_2f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto :goto_c

    .line 644
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 611
    .end local v20           #status:Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 612
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_33

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 644
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 611
    .end local v20           #status:Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 612
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_37

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 644
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 611
    .end local v20           #status:Ljava/lang/String;
    .restart local v18       #position:I
    .restart local v19       #queue:[I
    :catch_7
    move-exception v11

    .line 612
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3b

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_3b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 644
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 611
    .end local v20           #status:Ljava/lang/String;
    .restart local v4       #mCursorCols:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #id:Ljava/lang/String;
    :catch_8
    move-exception v11

    .line 612
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 613
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 631
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3f

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 634
    :cond_3f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 638
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

    .line 639
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

    .line 642
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_c

    .line 644
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d
.end method
