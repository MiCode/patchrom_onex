.class public Lcom/htc/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/AudioPreview$NonUiHandler;,
        Lcom/htc/music/AudioPreview$PreviewPlayer;,
        Lcom/htc/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# static fields
.field private static final CMDFINISH:Ljava/lang/String; = "finish"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final DIALOG_DRM_CONFIRM:I = 0x0

.field private static final DIALOG_DRM_ERROR:I = 0x1

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x3

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final NONDRM:I = 0x0

.field private static final PROPERTIES:I = 0x2

.field private static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field private static final SET_ALBUMART:I = 0x1

.field private static final SET_DEFAULT_ALBUMART:I = 0x2

.field private static final SET_NAMES:I = 0x0

.field private static final SHARE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[AudioPreview]"

.field private static final TRACK_ENDED:I = 0x1

.field private static final USE_AS_CONTACT_RINGTONE:I = 0x3

.field private static final USE_AS_RINGTONE:I = 0x1


# instance fields
.field private mActivityPopup:Z

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumID:I

.field private mArtistName:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentAudioType:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDrmConsumed:Z

.field private mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaId:J

.field private mMsg:Ljava/lang/String;

.field private mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    .line 117
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 118
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 119
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    .line 122
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    .line 149
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 507
    new-instance v0, Lcom/htc/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$2;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 594
    new-instance v0, Lcom/htc/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$3;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 653
    new-instance v0, Lcom/htc/music/AudioPreview$4;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$4;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    .line 1472
    new-instance v0, Lcom/htc/music/AudioPreview$9;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$9;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1548
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/AudioPreview;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/AudioPreview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/AudioPreview;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->setPlayPause(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/AudioPreview;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/htc/music/AudioPreview;->canUseAsRingtone(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/music/AudioPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/AudioPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/AudioPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    return-void
.end method

.method private appExist(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1422
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 1423
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method private canUseAsRingtone(IZ)Z
    .locals 7
    .parameter "audioType"
    .parameter "onErrorToast"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1363
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->checkSizeLimit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1364
    if-eqz p2, :cond_0

    .line 1365
    const v4, 0x7f0700ae

    invoke-direct {p0, v4}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1401
    :cond_0
    :goto_0
    return v3

    .line 1372
    :cond_1
    const/4 v2, 0x0

    .line 1373
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1376
    iget-wide v5, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v5, v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1377
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1378
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 1379
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1382
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1383
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1391
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    .line 1394
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 1395
    if-eqz v0, :cond_5

    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 1398
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 1399
    const v3, 0x7f0700af

    invoke-direct {p0, v3}, Lcom/htc/music/AudioPreview;->showToast(I)V

    :cond_6
    move v3, v0

    .line 1401
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 1391
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 1395
    goto :goto_2
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 1056
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    const-string v1, "[AudioPreview]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    return v0

    .line 1061
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1062
    const-string v1, "[AudioPreview]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSizeLimit()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1406
    const/4 v1, 0x0

    .line 1408
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v0

    .line 1409
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 1410
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1411
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    mul-int/lit16 v5, v0, 0x400

    if-le v4, v5, :cond_1

    move v1, v2

    .line 1417
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 1411
    goto :goto_0

    .line 1413
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v4, v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit16 v5, v0, 0x400

    if-le v4, v5, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1417
    goto :goto_1
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1070
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1071
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1072
    const-string v3, "[AudioPreview]"

    const-string v5, "drmCursor == null in consumeRights"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_0
    return v4

    .line 1076
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1077
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, filepath:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1081
    const/4 v0, 0x0

    .line 1082
    invoke-static {p0, p1, v2, v3}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 1083
    .local v1, error:I
    const-string v5, "[AudioPreview]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumeRights(uri) error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    if-nez v1, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private createDrawableForTile(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "tileDrawable"
    .parameter "clip"

    .prologue
    .line 1450
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_0

    .line 1461
    .end local p1
    :goto_0
    return-object p1

    .line 1453
    .restart local p1
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1455
    .local v2, tileBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1457
    .local v1, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1459
    .local v0, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1461
    if-eqz p2, :cond_1

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v3

    .end local v1           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    move-object p1, v1

    goto :goto_0
.end method

.method private initLayoutParameter()V
    .locals 10

    .prologue
    .line 411
    const v8, 0x7f08000a

    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 412
    .local v7, topPanel:Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    .line 416
    const-string v8, "com.htc.R.drawable.popup_top_dark"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 431
    :cond_0
    const v8, 0x7f08000c

    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 432
    .local v1, centerPanel:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 433
    const-string v8, "com.htc.R.drawable.popup_center_bright"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 437
    :cond_1
    const v8, 0x7f080010

    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 438
    .local v2, centerRight:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x205

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 440
    .local v4, m1:I
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 441
    .local v5, m2:I
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x205000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 442
    .local v6, m6_2:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v8, v4, v5

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v6, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 444
    const/4 v8, 0x1

    const v9, 0x7f08000d

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 445
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #m1:I
    .end local v5           #m2:I
    .end local v6           #m6_2:I
    :cond_2
    const v8, 0x7f080017

    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 449
    .local v0, buttonPanel:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    .line 453
    const-string v8, "com.htc.R.drawable.popup_bottom_medium"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 456
    :cond_3
    return-void
.end method

.method private setPlayPause(Z)V
    .locals 3
    .parameter "bPlay"

    .prologue
    .line 583
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimImageButton;

    .line 584
    .local v0, b:Lcom/htc/widget/HtcRimImageButton;
    if-eqz v0, :cond_0

    .line 585
    if-nez p1, :cond_1

    .line 586
    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 589
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showPostPrepareUI()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    .line 495
    iget v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 497
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 501
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 503
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    .line 505
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 980
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 981
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 539
    const-string v0, "[AudioPreview]"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 542
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->start()V

    .line 543
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->release()V

    .line 464
    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 465
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 467
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 3

    .prologue
    .line 571
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimImageButton;

    .line 572
    .local v0, b:Lcom/htc/widget/HtcRimImageButton;
    if-eqz v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 577
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 984
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method canShare()I
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 1291
    iget-object v9, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    iget-wide v9, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 1359
    :goto_0
    return v0

    .line 1294
    :cond_1
    iget-wide v9, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v9, v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1295
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 1296
    goto :goto_0

    .line 1298
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 1299
    :cond_3
    if-eqz v1, :cond_4

    .line 1300
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 1301
    goto :goto_0

    .line 1304
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1305
    const/4 v0, 0x0

    .line 1308
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1309
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1312
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1314
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1315
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1319
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 1321
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 1322
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 1323
    const-string v9, "[AudioPreview]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1325
    const/4 v1, 0x0

    move v0, v8

    .line 1326
    goto :goto_0

    .line 1329
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 1330
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1332
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1334
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 1336
    :cond_8
    const/4 v0, 0x2

    .line 1340
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1356
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1357
    const/4 v1, 0x0

    .line 1359
    goto/16 :goto_0

    .line 1344
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1345
    const-string v8, "[AudioPreview]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const/4 v0, 0x0

    goto :goto_1

    .line 1351
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1021
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1023
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1024
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1025
    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    .line 1053
    :goto_0
    return-void

    .line 1026
    :cond_0
    if-nez v5, :cond_3

    .line 1027
    invoke-static {v3, p1, v8}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1028
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1029
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->playDrm()V

    goto :goto_0

    .line 1031
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    .line 1032
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1033
    invoke-virtual {p0, v7}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    goto :goto_0

    .line 1035
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->playDrm()V

    goto :goto_0

    .line 1039
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1041
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1042
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1047
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1048
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 1051
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 1044
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public drmConsume()V
    .locals 3

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v1, :cond_0

    .line 1207
    const-string v1, "[AudioPreview]"

    const-string v2, "Check if the DRM File to play is legal"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    .line 1209
    .local v0, isLegal:Z
    if-nez v0, :cond_1

    .line 1210
    const-string v1, "[AudioPreview]"

    const-string v2, "Cannot play drm file because the rights has been expired."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const v1, 0x7f070096

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1218
    .end local v0           #isLegal:Z
    :cond_0
    :goto_0
    return-void

    .line 1214
    .restart local v0       #isLegal:Z
    :cond_1
    const-string v1, "[AudioPreview]"

    const-string v2, "Legal rights to play drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 482
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 483
    return-void
.end method

.method public generateReflection(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "srcBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 941
    if-ltz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-gt v0, v2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    .line 942
    :cond_0
    const-string v2, "[AudioPreview]"

    const-string v4, "The reflection\'s width/height is out of bound"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v12, 0x0

    .line 972
    :cond_1
    return-object v12

    .line 946
    :cond_2
    mul-int v2, p2, p3

    new-array v3, v2, [I

    .line 947
    .local v3, srcPix:[I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 948
    .local v16, srcHeight:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 949
    .local v12, bm:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .local v18, y:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 950
    mul-int v4, v18, p2

    const/4 v6, 0x0

    sub-int v2, v16, p3

    add-int v7, v18, v2

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 949
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 954
    :cond_3
    const/high16 v10, 0x3000

    .line 955
    .local v10, alpha:I
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 956
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 957
    mul-int v2, v18, p2

    add-int v14, v2, v17

    .line 958
    .local v14, index:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v15, v2, 0xff

    .line 959
    .local v15, r:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v13, v2, 0xff

    .line 960
    .local v13, g:I
    aget v2, v3, v14

    and-int/lit16 v11, v2, 0xff

    .line 962
    .local v11, b:I
    shl-int/lit8 v2, v15, 0x10

    or-int/2addr v2, v10

    shl-int/lit8 v4, v13, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v11

    aput v2, v3, v14

    .line 956
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 964
    .end local v11           #b:I
    .end local v13           #g:I
    .end local v14           #index:I
    .end local v15           #r:I
    :cond_4
    const/high16 v2, 0x100

    add-int/2addr v10, v2

    .line 955
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 969
    .end local v17           #x:I
    :cond_5
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 970
    mul-int v4, v18, p2

    const/4 v6, 0x0

    sub-int v2, p3, v18

    add-int/lit8 v7, v2, -0x1

    const/4 v9, 0x1

    move-object v2, v12

    move/from16 v5, p2

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 969
    add-int/lit8 v18, v18, 0x1

    goto :goto_3
.end method

.method public getAlbumArtPath(I)Ljava/lang/String;
    .locals 10
    .parameter "albumId"

    .prologue
    const/4 v9, 0x0

    .line 1501
    move v8, p1

    .line 1502
    .local v8, id:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    move-object v0, v9

    .line 1537
    :cond_0
    :goto_0
    return-object v0

    .line 1507
    :cond_1
    const/4 v7, 0x0

    .line 1509
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1511
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1514
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1515
    :cond_2
    const-string v0, "[AudioPreview]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    if-eqz v7, :cond_3

    .line 1541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1542
    const/4 v7, 0x0

    :cond_3
    move-object v0, v9

    .line 1516
    goto :goto_0

    .line 1519
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1520
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 1521
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 1522
    :cond_5
    const-string v0, "[AudioPreview]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    if-eqz v7, :cond_6

    .line 1541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1542
    const/4 v7, 0x0

    :cond_6
    move-object v0, v9

    .line 1523
    goto/16 :goto_0

    .line 1527
    :cond_7
    :try_start_2
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1528
    .local v6, artColumnIndex:I
    if-gez v6, :cond_9

    .line 1529
    const-string v0, "[AudioPreview]"

    const-string v1, "Cannot find art column index"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1540
    if-eqz v7, :cond_8

    .line 1541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1542
    const/4 v7, 0x0

    :cond_8
    move-object v0, v9

    .line 1530
    goto/16 :goto_0

    .line 1533
    :cond_9
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1534
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1540
    if-eqz v7, :cond_0

    .line 1541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1542
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1536
    :cond_a
    :try_start_4
    const-string v0, "[AudioPreview]"

    const-string v1, "Cannot move to first position"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1540
    if-eqz v7, :cond_b

    .line 1541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1542
    const/4 v7, 0x0

    :cond_b
    move-object v0, v9

    .line 1537
    goto/16 :goto_0

    .line 1540
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #artColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_c

    .line 1541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1542
    const/4 v7, 0x0

    .line 1540
    :cond_c
    throw v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1466
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1469
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 1466
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "drmuri"

    .prologue
    .line 988
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    .line 994
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 995
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 997
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 998
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 999
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1000
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1001
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1003
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1005
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1007
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_header_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_trailor_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sd_content_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1011
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 1012
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1013
    const/4 v11, 0x0

    .line 1017
    :cond_1
    return-object v10

    .line 1011
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 1012
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1013
    const/4 v11, 0x0

    .line 1011
    :cond_2
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v1, -0x1

    .line 833
    if-eq p2, v1, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 839
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 841
    const-string v1, "SELECTED_ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 842
    .local v0, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 843
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 848
    :goto_1
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    invoke-static {v1, v2, v3, v0}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;)V

    goto :goto_1

    .line 837
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    .line 641
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 647
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 650
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 32
    .parameter "icicle"

    .prologue
    .line 159
    const-string v4, "[AudioPreview]"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v12, commandFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.music.musicservicecommand"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/htc/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AudioPreviewActivityWorker"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance v4, Lcom/htc/music/AudioPreview$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/htc/music/AudioPreview$NonUiHandler;-><init>(Lcom/htc/music/AudioPreview;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-nez v4, :cond_0

    .line 171
    const-string v4, "[AudioPreview]"

    const-string v5, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 175
    .local v19, intent:Landroid/content/Intent;
    if-nez v19, :cond_2

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 184
    :cond_3
    const-string v4, "[AudioPreview]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUri - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    .line 187
    .local v27, scheme:Ljava/lang/String;
    const-string v4, "playatglance"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 188
    .local v24, playAtGlance:Z
    if-eqz v24, :cond_4

    .line 189
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 190
    .local v21, newIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/htc/music/HtcMusic;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 196
    .end local v21           #newIntent:Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->setVolumeControlStream(I)V

    .line 197
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->requestWindowFeature(I)Z

    .line 198
    const v4, 0x7f030002

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->setContentView(I)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 201
    .local v20, mWinMgr:Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 202
    .local v14, displayWidth:I
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 203
    .local v13, displayHeight:I
    if-ge v14, v13, :cond_7

    move/from16 v17, v14

    .line 204
    .local v17, iPortraitWidth:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Landroid/view/Window;->setLayout(II)V

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->initLayoutParameter()V

    .line 208
    const v4, 0x7f080011

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 209
    const v4, 0x7f080012

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 210
    const v4, 0x7f080014

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 211
    const v4, 0x7f080015

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    .line 212
    const v4, 0x7f08000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    .line 214
    const v4, 0x7f080016

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 216
    const v4, 0x7f080018

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcRimImageButton;

    .line 217
    .local v11, b:Lcom/htc/widget/HtcRimImageButton;
    const-string v4, "common_b_transport_outer"

    const v5, 0x2080014

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_transport_pressed"

    const v6, 0x2080015

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_transport_rest"

    const v7, 0x2080016

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v11, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 221
    invoke-virtual {v11}, Lcom/htc/widget/HtcRimImageButton;->requestFocus()Z

    .line 232
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 233
    const-string v4, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 236
    .local v25, player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    if-nez v25, :cond_9

    .line 237
    new-instance v4, Lcom/htc/music/AudioPreview$PreviewPlayer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/htc/music/AudioPreview$PreviewPlayer;-><init>(Lcom/htc/music/AudioPreview$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/htc/music/AudioPreview;)V

    .line 240
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 260
    .local v26, resources:Landroid/content/res/Resources;
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 261
    .local v22, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 262
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 263
    const v4, 0x7f020042

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 265
    const v4, 0x7f08000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 266
    .local v28, view:Landroid/widget/ImageView;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int v29, v4, v5

    .line 267
    .local v29, width:I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int v16, v4, v5

    .line 269
    .local v16, height:I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move/from16 v0, v16

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move/from16 v0, v29

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v4, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 279
    :cond_6
    new-instance v3, Lcom/htc/music/AudioPreview$1;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/htc/music/AudioPreview$1;-><init>(Lcom/htc/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 325
    .local v3, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v4, "content"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 327
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "artist"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "album_id"

    aput-object v9, v7, v8

    const-string v8, "_data=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3           #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    .end local v11           #b:Lcom/htc/widget/HtcRimImageButton;
    .end local v16           #height:I
    .end local v17           #iPortraitWidth:I
    .end local v22           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v25           #player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    .end local v26           #resources:Landroid/content/res/Resources;
    .end local v28           #view:Landroid/widget/ImageView;
    .end local v29           #width:I
    :cond_7
    move/from16 v17, v13

    .line 203
    goto/16 :goto_1

    .line 243
    .restart local v11       #b:Lcom/htc/widget/HtcRimImageButton;
    .restart local v17       #iPortraitWidth:I
    .restart local v25       #player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 245
    :catch_0
    move-exception v15

    .line 246
    .local v15, ex:Ljava/lang/Exception;
    const-string v4, "[AudioPreview]"

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const v4, 0x7f070068

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto/16 :goto_0

    .line 252
    .end local v15           #ex:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/htc/music/AudioPreview;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v4}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->showPostPrepareUI()V

    goto/16 :goto_2

    .line 331
    .restart local v3       #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    .restart local v16       #height:I
    .restart local v22       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v26       #resources:Landroid/content/res/Resources;
    .restart local v28       #view:Landroid/widget/ImageView;
    .restart local v29       #width:I
    :cond_a
    const-string v4, "content"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/external/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    .line 336
    .local v18, id:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "artist"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "album_id"

    aput-object v9, v7, v8

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v18           #id:Ljava/lang/String;
    :cond_b
    const-string v4, "file"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 344
    .local v23, path:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "artist"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "album_id"

    aput-object v9, v7, v8

    const-string v8, "_data=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v23, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v23           #path:Ljava/lang/String;
    :cond_c
    const-string v4, "file"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 352
    .restart local v23       #path:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "artist"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "album_id"

    aput-object v9, v7, v8

    const-string v8, "_data=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v30, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    .end local v23           #path:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v4}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->setNames()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f0700b4

    const v8, 0x1040013

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1089
    packed-switch p1, :pswitch_data_0

    .line 1192
    const/4 v4, 0x0

    invoke-super {p0, p1, v4}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1091
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1093
    const/4 v1, 0x0

    goto :goto_0

    .line 1096
    :cond_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$6;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$6;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/AudioPreview$5;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$5;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1109
    .local v1, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 1112
    .end local v1           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070068

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$7;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$7;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v1, v0

    .line 1119
    goto :goto_0

    .line 1123
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    if-ne p1, v5, :cond_1

    .line 1124
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const v4, 0x7f0700b6

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1135
    .local v2, items:[Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$8;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$8;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .local v3, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v1, v3

    .line 1190
    goto/16 :goto_0

    .line 1130
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v3           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    new-array v2, v5, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .restart local v2       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    const-string v1, "[AudioPreview]"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->stopPlayback()V

    .line 377
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/AudioPreview$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 379
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 384
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 394
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 403
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 408
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[AudioPreview]"

    const-string v2, "unregister mIntentReceiver fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 856
    sparse-switch p1, :sswitch_data_0

    .line 881
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 859
    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 868
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    goto :goto_1

    .line 877
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->stopPlayback()V

    .line 878
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 856
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1196
    packed-switch p1, :pswitch_data_0

    .line 1203
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1198
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1199
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 729
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    .end local p1
    :goto_0
    return-void

    .line 487
    .restart local p1
    :cond_0
    check-cast p1, Lcom/htc/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 488
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->setNames()V

    .line 489
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->start()V

    .line 490
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 368
    .local v0, player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 369
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    if-nez v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 477
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 478
    return-void

    .line 476
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    goto :goto_0
.end method

.method public playDrm()V
    .locals 5

    .prologue
    .line 1221
    const/4 v0, 0x0

    .line 1224
    .local v0, drmFileToPlay:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    :cond_0
    if-eqz v0, :cond_1

    .line 1229
    const-string v2, "[AudioPreview]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmFileToPlay= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->drmConsume()V

    .line 1232
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1233
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V

    .line 1246
    :cond_1
    :goto_0
    return-void

    .line 1235
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    .line 1236
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v1

    .line 1239
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[AudioPreview]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const v2, 0x7f070068

    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1241
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 683
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    goto :goto_1
.end method

.method public setMusicInfoFromMetadataRetriever()V
    .locals 6

    .prologue
    .line 1249
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1250
    const/4 v3, 0x0

    .line 1251
    .local v3, trackName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1252
    .local v0, artistName:Ljava/lang/String;
    const-string v4, "[AudioPreview]"

    const-string v5, "get metadata from MediaMetadataRetriever"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1255
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v2, :cond_0

    .line 1258
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1260
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 1261
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1266
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1267
    const/4 v2, 0x0

    .line 1270
    :cond_0
    if-eqz v3, :cond_1

    .line 1271
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1272
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    :cond_1
    if-eqz v0, :cond_2

    .line 1276
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1277
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    .end local v0           #artistName:Ljava/lang/String;
    .end local v2           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v3           #trackName:Ljava/lang/String;
    :cond_2
    return-void

    .line 1262
    .restart local v0       #artistName:Ljava/lang/String;
    .restart local v2       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v3       #trackName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1263
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "[AudioPreview]"

    const-string v5, "Retrieve metadata fail"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 551
    :cond_0
    return-void
.end method

.method public tileify(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    .line 1427
    instance-of v6, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_4

    move-object v1, p1

    .line 1428
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1429
    .local v1, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 1430
    .local v0, N:I
    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    .line 1432
    .local v5, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1433
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 1434
    .local v3, id:I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v6, 0x102000d

    if-eq v3, v6, :cond_0

    const v6, 0x102000f

    if-ne v3, v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, v7, v6}, Lcom/htc/music/AudioPreview;->createDrawableForTile(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1434
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1438
    .end local v3           #id:I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1440
    .local v4, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1441
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1440
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1444
    :cond_3
    move-object p1, v4

    .line 1446
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v2           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object p1
.end method
