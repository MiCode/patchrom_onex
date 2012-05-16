.class public Lcom/htc/music/DMCMusicPlaybackService;
.super Landroid/app/Service;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;,
        Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;,
        Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;,
        Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;,
        Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.music.DMCMusicPlaybackService"

.field public static final CMDDMC_CURRENTINDEX:Ljava/lang/String; = "com.htc.music.dmc_currentindex"

.field public static final CMDDMC_DMR:Ljava/lang/String; = "com.htc.music.dmc_dmr"

.field public static final CMDDMC_PLAYLIST:Ljava/lang/String; = "com.htc.music.dmc_playlist"

.field public static final CMDDMC_SETDMR:Ljava/lang/String; = "com.htc.music.dmc_setdmr"

.field public static final CMDDMC_SETSRC:Ljava/lang/String; = "com.htc.music.dmc_setsrc"

.field public static final CMDFORCEPLAY:Ljava/lang/String; = "forcePlay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDREFRESH_PLAYLIST:Ljava/lang/String; = "com.htc.music.refreshplaylist"

.field public static final DLNA_COOKIE_MUSIC:I = 0x1

.field private static final DLNA_ERROR_HANDLE:I = 0x4

.field public static final DLNA_SOURCE_LOCAL:I = 0x0

.field public static final DLNA_SOURCE_REMOTE:I = 0x1

.field public static final DMCSERVICE_DLNA_CONNECTED:Ljava/lang/String; = "com.htc.music.dmcservice.dlna_connected"

.field public static final DMCSERVICE_RELEASED:Ljava/lang/String; = "com.htc.music.dmcservice.released"

.field public static final DMCSERVICE_REPEAT_CHANGED:Ljava/lang/String; = "com.htc.music.dmcservice.repeat_changed"

.field public static final DMCSERVICE_SET_PLAYBACK_COTNROL_ENABLED:Ljava/lang/String; = "com.htc.music.dmcservice.set_playback_control_enabled"

.field public static final DMCSERVICE_SHUFFLE_CHANGED:Ljava/lang/String; = "com.htc.music.dmcservice.shuffle_changed"

.field public static final ERROR_CANNOT_PAUSE:I = -0x2712

.field public static final ERROR_CANNOT_SEEK:I = -0x2713

.field public static final ERROR_DEFAULT:I = -0x2710

.field public static final ERROR_DMR_DISCONNECT:I = -0x2715

.field public static final ERROR_DMR_RESPONSE_TIMEOUT:I = -0x2717

.field public static final ERROR_DMS_DISCONNECT:I = -0x2716

.field public static final ERROR_NOT_SURRPOT_FORMAT:I = -0x2714

.field public static final ERROR_UNABLE_TO_PALY:I = -0x2711

.field public static final ERROR_UNKNOWN_ERROR:I = -0x2718

.field public static final EXTRA_IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field private static final IDLE_DELAY:I = 0xea60

.field private static final MEDIA_ERROR_BASE:I = -0x2710

.field private static final NOTIFY_UPPER:I = 0x5

.field public static final PLAYBACKSERVICE_STATUS:I = 0x2

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_PLAYSTATE_CHANGED_BUFFERING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.buffering"

.field private static final PLUGIN_PLAYSTATE_CHANGED_WAITING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.waiting"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DMCMusicPlaybackService]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final CV_CONTENT:Ljava/lang/String;

.field private final CV_POSITION:Ljava/lang/String;

.field private final CV_SERVER:Ljava/lang/String;

.field private final CV_SHUFFLE_MODE:Ljava/lang/String;

.field private final DLNA_CALLER_MUSIC:I

.field private final DMC_SERVICE_PREFERENCES:Ljava/lang/String;

.field private final DMC_SOURCE:Ljava/lang/String;

.field private final MAX_PLAYABCK_CONTROL_TIMEOUT:I

.field private final MAX_TRANSITIONING_COUNT:I

.field private final MSG_CLEAR_ALBUMART_REQ_QUEUE:I

.field private final MSG_GET_NOW_PLAYING_QUEUE:I

.field private final MSG_HANDLE_ALBUMART:I

.field private final MSG_NEXT:I

.field private final MSG_PLAYER_ERROR_HANDLE:I

.field private final MSG_PREV:I

.field private final MSG_REQUEST_ALBUMART:I

.field private final MSG_SET_DATA_SOURCE:I

.field private final STATE_NONE:I

.field private final STATE_PAUSED:I

.field private final STATE_PAUSED_TRANSITIONING:I

.field private final STATE_PLAYING:I

.field private final STATE_PLAYING_TRANSITIONING:I

.field private final UI_PLAYBACK_CONTROL_TIMEOUT:I

.field private final UI_REQUEST_NEXT:I

.field private final UI_REQUEST_PAUSE:I

.field private final UI_REQUEST_PLAY:I

.field private final UI_REQUEST_PREV:I

.field private final hexdigits:[C

.field isPlaybackDisabled:Z

.field private mAlbumArtNameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSize:I

.field private mArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private mContainerID:Ljava/lang/String;

.field private mContentID:Ljava/lang/String;

.field private mContentPath:Ljava/lang/String;

.field private mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

.field private mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

.field private mCurPLDirection:I

.field private mCurPLEndIdx:J

.field private mCurPLStartIdx:J

.field mCurrentDMRID:Ljava/lang/String;

.field mCurrentDMRName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCols:[Ljava/lang/String;

.field private mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDirection:I

.field private mEndIdx:J

.field mForcePlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsAlbumArtGetting:Z

.field private mIsDLNAManagerConnected:Z

.field private mIsPlayPressed:Z

.field private mIsServiceConnected:Z

.field private mIsSupposedToBePlaying:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private volatile mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotify:Lcom/htc/music/IPluginIPCNotify;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPlayList:[I

.field private mPlayListBak:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayState:I

.field private mPlaybackHandler:Landroid/os/Handler;

.field private mQueryContentID:Ljava/lang/String;

.field private mQueryPosition:I

.field private mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererStatusListener:Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

.field private mRepeatMode:I

.field private mServerID:Ljava/lang/String;

.field private mServiceInUse:I

.field private mServiceStartId:I

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mShuffleMode:I

.field private mShuffleSeq:[I

.field private final mSortOrder:Ljava/lang/String;

.field private mSquareAlbum:Landroid/graphics/Bitmap;

.field private mStartIdx:J

.field private mTransCanvas:Landroid/graphics/Canvas;

.field private mTransitionCount:I

.field private final mUiBinder:Landroid/os/IBinder;

.field private mUriPath:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mlCurPosition:J

.field mnSource:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->DLNA_CALLER_MUSIC:I

    .line 106
    const-string v0, "server"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_SERVER:Ljava/lang/String;

    .line 107
    const-string v0, "content"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_CONTENT:Ljava/lang/String;

    .line 108
    const-string v0, "position"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_POSITION:Ljava/lang/String;

    .line 109
    const-string v0, "shuffle"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_SHUFFLE_MODE:Ljava/lang/String;

    .line 111
    const-string v0, "index_id COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSortOrder:Ljava/lang/String;

    .line 140
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    .line 141
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    .line 142
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 144
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 145
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 146
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    .line 148
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .line 149
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListBak:[I

    .line 150
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleSeq:[I

    .line 152
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 153
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 154
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 156
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    .line 167
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z

    .line 169
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    .line 170
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    .line 171
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 173
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    .line 174
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    .line 177
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    .line 178
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 180
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 181
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 187
    new-instance v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAContentItemDetails;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 189
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRendererStatusListener:Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

    .line 192
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_NONE:I

    .line 193
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PLAYING:I

    .line 194
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PLAYING_TRANSITIONING:I

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PAUSED:I

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PAUSED_TRANSITIONING:I

    .line 198
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MAX_TRANSITIONING_COUNT:I

    .line 199
    const v0, 0x88b8

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MAX_PLAYABCK_CONTROL_TIMEOUT:I

    .line 201
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    .line 204
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_PLAY:I

    .line 205
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_PAUSE:I

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_NEXT:I

    .line 207
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_PREV:I

    .line 209
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 210
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    .line 214
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_PLAYBACK_CONTROL_TIMEOUT:I

    .line 216
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    .line 217
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    .line 219
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 220
    const-string v0, "dmc_service"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->DMC_SERVICE_PREFERENCES:Ljava/lang/String;

    .line 221
    const-string v0, "dmc_source"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->DMC_SOURCE:Ljava/lang/String;

    .line 224
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_PREV:I

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_NEXT:I

    .line 226
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_SET_DATA_SOURCE:I

    .line 227
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_REQUEST_ALBUMART:I

    .line 228
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_HANDLE_ALBUMART:I

    .line 229
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_CLEAR_ALBUMART_REQ_QUEUE:I

    .line 230
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_GET_NOW_PLAYING_QUEUE:I

    .line 231
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_PLAYER_ERROR_HANDLE:I

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    .line 529
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mStartIdx:J

    .line 530
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mEndIdx:J

    .line 531
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDirection:I

    .line 532
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 533
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 536
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 537
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 539
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mUriPath:Ljava/lang/String;

    .line 542
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryPosition:I

    .line 543
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    .line 546
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "content_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uri_path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "albumart_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "serve_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "index_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 554
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$1;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 721
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    .line 722
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    .line 724
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    .line 725
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    .line 726
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 805
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->hexdigits:[C

    .line 935
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    .line 936
    iput-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    .line 937
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    .line 938
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 1051
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$2;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1067
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$3;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    .line 1215
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsServiceConnected:Z

    .line 1216
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mlCurPosition:J

    .line 2616
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$4;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    return-void

    .line 805
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->initErrorRetryHandle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/DMCMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMCMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    return p1
.end method

.method static synthetic access$1908(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/DMCMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/DMCMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumId()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->close()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p9}, Lcom/htc/music/DMCMusicPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/htc/music/DMCMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->setRenderer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->startToPlay()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/DMCMusicPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    return-void
.end method

.method static synthetic access$3102(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$3302(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$3602(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/DMCMusicPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->handleError(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 643
    .local v1, retval:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, albumArtFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    const/4 v1, 0x1

    .line 649
    :cond_0
    return v1
.end method

.method private close()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 999
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Goto Music, passing ContentID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1004
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v4, "powerOffDMR()"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 1006
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDLNAManager render = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1012
    .local v1, rtt:Landroid/content/Intent;
    const-string v2, "com.htc.music.dmcservice.released"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1021
    const-string v2, "Server"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string v2, "container"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string v2, "content"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    const-string v2, "startIdx"

    iget-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1026
    const-string v2, "endIdx"

    iget-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1027
    const-string v2, "direction"

    iget v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1028
    const-string v2, "filepath"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    :goto_1
    const-string v2, "Render"

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v2, "SaveRender"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    const-string v2, "forcePlay"

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1048
    invoke-direct {p0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->notifyChange(Landroid/content/Intent;)V

    .line 1049
    return-void

    .line 1008
    .end local v1           #rtt:Landroid/content/Intent;
    :cond_0
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v4, "renderer is null donot close"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    .restart local v1       #rtt:Landroid/content/Intent;
    :cond_1
    const-string v4, "Server"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    const-string v4, "container"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, playPos:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v2, :cond_2

    .line 1037
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getQueuePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_2
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1040
    :cond_2
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v4, "mControllerInfo is null"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private disablePlaybakControl()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 2593
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2594
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2595
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2596
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    .line 2597
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 2598
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2599
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2600
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2603
    :cond_1
    return-void
.end method

.method private enablePlaybakControl()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 2606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2607
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2608
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2609
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    .line 2610
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2611
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2612
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2614
    :cond_0
    return-void
.end method

.method private ensurePathExists(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 667
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 672
    :cond_0
    return-void
.end method

.method private eraseAllFilesIfNeeded(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 676
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 678
    .local v1, fileArray:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 679
    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 680
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 681
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private getAlbumArtPath(I)Ljava/lang/String;
    .locals 17
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1645
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v13, :cond_3

    .line 1648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-nez v13, :cond_1

    .line 1649
    const-string v13, "[DMCMusicPlaybackService]"

    const-string v14, "mControllerInfo is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const/4 v11, 0x0

    .line 1762
    :cond_0
    :goto_0
    return-object v11

    .line 1652
    :cond_1
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...LOCAL, current=> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v15, v15, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...path => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v15, v15, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v13, v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1655
    const/4 v11, 0x0

    goto :goto_0

    .line 1657
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v11, v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    goto :goto_0

    .line 1658
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 1659
    const/4 v11, 0x0

    .line 1660
    .local v11, retval:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v13}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v1

    .line 1662
    .local v1, contentID:Ljava/lang/String;
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...REMOTE, current=> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_5

    .line 1666
    :cond_4
    const-string v13, "[DMCMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...REMOTE, contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1672
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1673
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1674
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1683
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_8

    .line 1684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1685
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1697
    :cond_7
    :goto_1
    if-nez v11, :cond_0

    .line 1703
    :cond_8
    const/4 v6, 0x0

    .line 1704
    .local v6, duplicatedRequest:Z
    const/4 v2, 0x0

    .line 1705
    .local v2, curCV:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 1706
    .local v3, curCV_contentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1708
    .local v4, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_9

    .line 1709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curCV:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 1710
    .restart local v2       #curCV:Landroid/content/ContentValues;
    if-nez v2, :cond_b

    .line 1711
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :cond_9
    :goto_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_11

    .line 1741
    const-string v13, "[DMCMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1688
    .end local v2           #curCV:Landroid/content/ContentValues;
    .end local v3           #curCV_contentId:Ljava/lang/String;
    .end local v4           #curCV_shuffleMode:Ljava/lang/Integer;
    .end local v6           #duplicatedRequest:Z
    .end local v9           #i:I
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1689
    .local v7, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1691
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/DMCMusicPlaybackService;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    move-object v11, v8

    goto :goto_1

    .line 1715
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v2       #curCV:Landroid/content/ContentValues;
    .restart local v3       #curCV_contentId:Ljava/lang/String;
    .restart local v4       #curCV_shuffleMode:Ljava/lang/Integer;
    .restart local v6       #duplicatedRequest:Z
    .restart local v9       #i:I
    :cond_b
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1716
    :cond_c
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1723
    :cond_d
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1724
    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1726
    if-eqz v3, :cond_e

    if-nez v4, :cond_f

    .line 1727
    :cond_e
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1733
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_10

    .line 1735
    const/4 v6, 0x1

    .line 1736
    goto/16 :goto_3

    .line 1708
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1748
    :cond_11
    if-nez v11, :cond_0

    .line 1750
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1751
    .local v10, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1752
    .local v5, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1753
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1754
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1762
    .end local v1           #contentID:Ljava/lang/String;
    .end local v2           #curCV:Landroid/content/ContentValues;
    .end local v3           #curCV_contentId:Ljava/lang/String;
    .end local v4           #curCV_shuffleMode:Ljava/lang/Integer;
    .end local v5           #data:Landroid/os/Bundle;
    .end local v6           #duplicatedRequest:Z
    .end local v9           #i:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #retval:Ljava/lang/String;
    .end local v12           #status:Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private getAlbumId()I
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 2135
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v0, v5, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return v6

    .line 2138
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2140
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayPos = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v10, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    int-to-long v7, v0

    .line 2142
    .local v7, audioId:J
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 2145
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2149
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2150
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2151
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2153
    const-string v0, "album_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2155
    .local v6, albumId:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2156
    const/4 v9, 0x0

    .line 2157
    goto :goto_0

    .line 2159
    .end local v6           #albumId:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2160
    const/4 v9, 0x0

    .line 2161
    goto :goto_0

    .line 2167
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #audioId:J
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumId() mControllerInfo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumId() mPlayList "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 604
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://dlna/images"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 608
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "$$ albumArtDownloadedNotify: No provider client: cpClient..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v0, 0x0

    .line 637
    :goto_0
    return-object v0

    .line 613
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 615
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 617
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: afDescriptor => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 635
    const/4 v1, 0x0

    .line 637
    goto :goto_0

    .line 621
    :cond_1
    :try_start_1
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "getAssetFileDescriptorFromPath: afDescriptor is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 623
    :catch_0
    move-exception v2

    .line 624
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 627
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 629
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getContentIDFromID(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 1978
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDLNAErrorString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, errorCause:Ljava/lang/String;
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%% getDLNAErrorString()... errorCause => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-object v0
.end method

.method private getDmpAlbumArtDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, retval:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/DMCMusicPlaybackService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 656
    .local v1, vSDcard:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.dmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    .line 659
    :cond_0
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "getDmpAlbumArtDirPath()...vSDcard is null and return path as null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 1191
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1192
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1193
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1195
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1196
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/DMCMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1197
    return-void
.end method

.method private handleError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/4 v1, -0x1

    .line 2632
    sparse-switch p1, :sswitch_data_0

    .line 2671
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    const/16 v0, -0x2718

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2677
    :goto_0
    return-void

    .line 2634
    :sswitch_0
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    goto :goto_0

    .line 2637
    :sswitch_1
    const/16 v0, -0x2713

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    goto :goto_0

    .line 2645
    :sswitch_2
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2646
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2650
    :sswitch_3
    const/16 v0, -0x2714

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2651
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2656
    :sswitch_4
    const/16 v0, -0x2715

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2657
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2661
    :sswitch_5
    const/16 v0, -0x2717

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2662
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2666
    :sswitch_6
    const/16 v0, -0x2716

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2667
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2632
    :sswitch_data_0
    .sparse-switch
        -0x13c -> :sswitch_2
        -0x13a -> :sswitch_0
        -0x134 -> :sswitch_2
        -0x133 -> :sswitch_5
        -0x12f -> :sswitch_2
        -0x12e -> :sswitch_2
        -0x12d -> :sswitch_6
        -0x12c -> :sswitch_4
        -0x1 -> :sswitch_4
        0x2c0 -> :sswitch_3
        0x2c6 -> :sswitch_1
        0x2ca -> :sswitch_3
        0x2cc -> :sswitch_2
    .end sparse-switch
.end method

.method private initErrorRetryHandle()V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method private notifyChange(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 964
    return-void
.end method

.method private pluginNotifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1201
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1202
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "notify"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1204
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1205
    return-void
.end method

.method private pluginNotifyError(I)V
    .locals 4
    .parameter "nErrId"

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1209
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1210
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "error_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1211
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1212
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1213
    return-void
.end method

.method private reloadQueue()V
    .locals 1

    .prologue
    .line 812
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method private resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "afd"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x0

    .line 730
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v5

    .line 799
    :goto_0
    return-object v1

    .line 734
    :cond_1
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_2

    .line 735
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    .line 737
    :cond_2
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v6, :cond_3

    .line 738
    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v11, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 743
    :cond_3
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 744
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 745
    const/4 v6, 0x1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 746
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 752
    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-gez v6, :cond_4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_5

    .line 753
    :cond_4
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 754
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 755
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 794
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 796
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[DMCMusicPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail resize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 799
    goto :goto_0

    .line 758
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_1
    const-string v6, "[DMCMusicPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail 1st resize width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 762
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 763
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 767
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v8, :cond_6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_2
    int-to-float v6, v6

    div-float v4, v7, v6

    .line 771
    .local v4, scale:F
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 772
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 773
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 775
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 776
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 780
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 781
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 782
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 787
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 790
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 791
    const/4 v3, 0x0

    .line 793
    goto/16 :goto_0

    .line 767
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_6
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 8
    .parameter "afd"
    .parameter "filepath"

    .prologue
    .line 687
    const/4 v3, 0x0

    .line 689
    .local v3, retval:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 690
    :cond_0
    const/4 v4, 0x0

    .line 717
    :goto_0
    return v4

    .line 693
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 696
    .local v2, newAlbumArt:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    .line 698
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 702
    :goto_1
    if-eqz v1, :cond_4

    .line 703
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 704
    const/4 v3, 0x1

    .line 714
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 715
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    .line 717
    goto :goto_0

    .line 700
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard(), newAlbumArt is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 708
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 706
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard()..fos is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 710
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 711
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveQueue(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 809
    return-void
.end method

.method private setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 5
    .parameter "serverId"
    .parameter "containerId"
    .parameter "contentId"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "dir"
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    .line 2089
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "setDlnaPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 2092
    new-instance v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 2093
    .local v0, dlnaRemotePLInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iput-object p2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 2094
    iput-object p3, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 2095
    iput p8, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 2096
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 2097
    iput-wide p4, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 2098
    iput-wide p6, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 2099
    iput v4, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 2100
    iput-object p1, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 2101
    iget-object v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 2102
    iget-object v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 2103
    iget-object v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2104
    iput-wide p4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 2105
    iput-wide p6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 2106
    iput p8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 2107
    iput-object p9, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 2112
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2113
    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    .line 2115
    :cond_1
    new-instance v1, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 2116
    .local v1, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v4, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 2117
    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 2118
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 2119
    const-string v2, "HtcMusic"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 2121
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 2122
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 2123
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 2124
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2126
    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    if-eqz v2, :cond_3

    .line 2127
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->play()V

    .line 2128
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    .line 2131
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->reloadQueue()V

    .line 2132
    return-void
.end method

.method private setRenderer()V
    .locals 5

    .prologue
    .line 1983
    new-instance v1, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 1984
    .local v1, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    const/4 v2, 0x1

    iput v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 1985
    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 1986
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 1987
    const-string v2, "HtcMusic"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 1990
    const/4 v0, 0x0

    .line 1991
    .local v0, newDmrId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 1992
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v3, "Render"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1993
    if-nez v0, :cond_0

    .line 1994
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "renderer is null in Intent. Try to get renderer from dlnamanager"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    .line 2002
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2003
    :cond_1
    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    .line 2004
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRenderer currentDMRId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2006
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 2014
    :goto_1
    return-void

    .line 1998
    :cond_2
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "intent is nul. get dmr from dlna manager"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2008
    :cond_3
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "mCurrentDMRID is null close dmc service"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const/16 v2, -0x2715

    invoke-direct {p0, v2}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    goto :goto_1

    .line 2012
    :cond_4
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "DMR id is the same don\'t set DMR"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startToPlay()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2017
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 2019
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "command"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, cmd:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "forcePlay"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    .line 2021
    const-string v4, "com.htc.music.refreshplaylist"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2023
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "com.htc.music.dmc_setsrc"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 2027
    iget v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v4, :cond_4

    .line 2028
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "com.htc.music.dmc_playlist"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .line 2029
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "com.htc.music.dmc_currentindex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2030
    .local v3, nCurIndex:I
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-eqz v4, :cond_3

    .line 2031
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST:playlist ok, setDataSource..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startToPlay CMDREFRESH_PLAYLIST:nCurIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    invoke-virtual {v4, v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource([II)V

    .line 2037
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->saveQueue()V

    .line 2068
    .end local v3           #nCurIndex:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 2069
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 2070
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->play()V

    .line 2072
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->reloadQueue()V

    .line 2073
    iput-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    .line 2081
    .end local v0           #cmd:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2082
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2083
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2084
    return-void

    .line 2035
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #nCurIndex:I
    :cond_3
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST:playlist null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    .end local v3           #nCurIndex:I
    :cond_4
    iget v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v4, v7, :cond_0

    .line 2040
    new-instance v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 2041
    .local v1, dlnaRemotePLInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "container"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 2042
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 2043
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "direction"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 2044
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 2045
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "startIdx"

    invoke-virtual {v4, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 2046
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "endIdx"

    invoke-virtual {v4, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 2047
    iput v7, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 2048
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 2049
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "filepath"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 2050
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContentPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 2052
    iget-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 2053
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand mServerID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand contentID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2058
    iget-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    iput-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 2059
    iget-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    iput-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 2060
    iget v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 2062
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 2063
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    goto/16 :goto_1

    .line 2076
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #dlnaRemotePLInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :cond_5
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private stop(Z)V
    .locals 1
    .parameter "remove_status_icon"

    .prologue
    const/4 v0, 0x0

    .line 1257
    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1265
    if-eqz p1, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->gotoIdleState()V

    .line 1270
    :cond_0
    if-eqz p1, :cond_1

    .line 1271
    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1272
    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1273
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1275
    :cond_1
    return-void
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1605
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "clearAlbumArtRequests()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1607
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1611
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "clearNowplayingQueueRequests()...do nothing..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    return-void
.end method

.method public duration()J
    .locals 6

    .prologue
    .line 1352
    const-wide/16 v0, 0x0

    .line 1353
    .local v0, duration:J
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1356
    :cond_0
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-wide v0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "index"

    .prologue
    .line 1486
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumArtByIndex()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 0

    .prologue
    .line 1483
    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 7
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1616
    iget v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v5, :cond_1

    .line 1617
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v3

    .line 1640
    :cond_0
    :goto_0
    return-object v3

    .line 1618
    :cond_1
    iget v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1619
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1620
    .local v2, key:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1621
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1622
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1626
    :cond_2
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    .end local v1           #file:Ljava/io/File;
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v3

    .line 1631
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1632
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v4

    .line 1637
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .line 1640
    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1767
    invoke-virtual {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1384
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "getAlbumName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1388
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1392
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "getArtistName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1396
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 5

    .prologue
    .line 1225
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1226
    const/4 v0, -0x1

    .line 1235
    :cond_0
    :goto_0
    return v0

    .line 1228
    :cond_1
    const/4 v0, -0x1

    .line 1229
    .local v0, audioId:I
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1231
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1961
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1540
    const/4 v0, 0x0

    .line 1541
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 1544
    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 1528
    :cond_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1532
    const/4 v0, 0x0

    .line 1533
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 1536
    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1548
    const/4 v0, 0x0

    .line 1549
    .local v0, location:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1550
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 1596
    :goto_0
    return-object v1

    .line 1558
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_1

    .line 1559
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 1560
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 1596
    goto :goto_0

    .line 1562
    :cond_1
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "mDLNAContentItemDetails is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1501
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 16
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1771
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNowplayingQueue()... interval => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const/4 v11, 0x0

    .line 1774
    .local v11, queueLen:I
    const/4 v14, 0x0

    .line 1775
    .local v14, tmpCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1777
    .local v9, nowPlayingQueue:[Landroid/content/ContentValues;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1778
    .local v15, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serve_id= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v1, " AND _id IN ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    if-ge v8, v1, :cond_1

    .line 1785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aget v1, v1, v8

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1786
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_0

    .line 1787
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1790
    :cond_1
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "content_name"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "artist_name"

    aput-object v4, v3, v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "index_id COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1832
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_7

    .line 1833
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1835
    const/4 v12, 0x0

    .line 1836
    .local v12, sentTime:I
    if-nez p1, :cond_2

    .line 1837
    move/from16 p1, v11

    .line 1840
    :cond_2
    move/from16 v0, p1

    if-le v11, v0, :cond_5

    .line 1841
    move/from16 v0, p1

    new-array v9, v0, [Landroid/content/ContentValues;

    .line 1845
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_6

    .line 1846
    rem-int v10, v8, p1

    .line 1848
    .local v10, queueIdx:I
    const-string v1, "content_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1850
    .local v13, title:Ljava/lang/String;
    const-string v1, "artist_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1854
    .local v7, artist:Ljava/lang/String;
    move/from16 v0, p1

    if-lt v8, v0, :cond_3

    if-nez v10, :cond_3

    .line 1855
    add-int/lit8 v12, v12, 0x1

    .line 1856
    if-eqz v9, :cond_3

    array-length v1, v9

    if-lez v1, :cond_3

    .line 1857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    add-int/lit8 v2, v12, -0x1

    mul-int v2, v2, p1

    mul-int v3, p1, v12

    add-int/lit8 v3, v3, -0x1

    const-string v4, "com.htc.music.DMCMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 1862
    :cond_3
    aget-object v1, v9, v10

    if-nez v1, :cond_4

    .line 1863
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    aput-object v1, v9, v10

    .line 1865
    :cond_4
    aget-object v1, v9, v10

    const-string v2, "title"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    aget-object v1, v9, v10

    const-string v2, "artist"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 1845
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1843
    .end local v7           #artist:Ljava/lang/String;
    .end local v10           #queueIdx:I
    .end local v13           #title:Ljava/lang/String;
    :cond_5
    new-array v9, v11, [Landroid/content/ContentValues;

    goto :goto_1

    .line 1871
    :cond_6
    if-eqz v9, :cond_7

    if-lez v11, :cond_7

    .line 1872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    mul-int v2, p1, v12

    add-int/lit8 v3, v11, -0x1

    const-string v4, "com.htc.music.DMCMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 1876
    .end local v12           #sentTime:I
    :cond_7
    if-eqz v14, :cond_8

    .line 1877
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1878
    const/4 v14, 0x0

    .line 1880
    :cond_8
    return-void
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1497
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1948
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 5
    .parameter "shufflePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1884
    monitor-enter p0

    .line 1885
    const/4 v1, 0x0

    .line 1887
    .local v1, retval:I
    :try_start_0
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    .line 1889
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListBak:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    .line 1890
    move v1, v0

    .line 1897
    .end local v0           #i:I
    :cond_0
    :goto_1
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<< getPositionByShufflePosition( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )...retval => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    monitor-exit p0

    return v1

    .line 1888
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1895
    .end local v0           #i:I
    :cond_2
    move v1, p1

    goto :goto_1

    .line 1900
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method public getQueueSize()I
    .locals 4

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    long-to-int v0, v1

    .line 1478
    .local v0, queueSize:I
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueueSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return v0
.end method

.method public getRepeatMode()I
    .locals 5

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    .line 1457
    .local v0, nDlnaRepeatmode:I
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRepeatMode()...DLNA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const/4 v1, 0x0

    .line 1461
    .local v1, nRepeatmode:I
    packed-switch v0, :pswitch_data_0

    .line 1472
    :goto_0
    return v1

    .line 1463
    :pswitch_0
    const/4 v1, 0x0

    .line 1464
    goto :goto_0

    .line 1466
    :pswitch_1
    const/4 v1, 0x1

    .line 1467
    goto :goto_0

    .line 1469
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getShuffleMode()I
    .locals 3

    .prologue
    .line 1426
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShuffleMode()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    const/4 v0, 0x1

    .line 1431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 5
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1928
    monitor-enter p0

    .line 1929
    const/4 v1, 0x0

    .line 1931
    .local v1, retval:I
    :try_start_0
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1932
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    .line 1933
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListBak:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 1934
    move v1, v0

    .line 1941
    .end local v0           #i:I
    :cond_0
    :goto_1
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>>>> getShufflePositionByPosition( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )...retval => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    monitor-exit p0

    return v1

    .line 1932
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1939
    .end local v0           #i:I
    :cond_2
    move v1, p1

    goto :goto_1

    .line 1944
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackDetails(I)V
    .locals 4
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1905
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackDetails()... position => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    if-lt p1, v1, :cond_1

    .line 1908
    :cond_0
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackDetails()...position is illegal, position => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :goto_0
    return-void

    .line 1912
    :cond_1
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryPosition:I

    .line 1916
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1917
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListBak:[I

    .line 1922
    .local v0, tempQueue:[I
    :goto_1
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    .line 1923
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    goto :goto_0

    .line 1919
    .end local v0           #tempQueue:[I
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .restart local v0       #tempQueue:[I
    goto :goto_1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1376
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "getTrackName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1380
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, isPlaying:Z
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1249
    :cond_0
    const/4 v0, 0x1

    .line 1253
    :goto_0
    return v0

    .line 1251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginReady()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1952
    const/4 v0, 0x0

    .line 1957
    .local v0, retval:Z
    const/4 v1, 0x1

    return v1
.end method

.method loadDMSInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2725
    const-string v1, "DLNA"

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2727
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "server"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 2728
    const-string v1, "container"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 2729
    const-string v1, "content"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2730
    const-string v1, "startIdx"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 2731
    const-string v1, "endIdx"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 2732
    const-string v1, "direction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 2733
    const-string v1, "filepath"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 2734
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContainerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    return-void
.end method

.method loadQueue()V
    .locals 11

    .prologue
    .line 2781
    iget-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "queue"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2782
    .local v6, q:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2783
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2784
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2785
    .local v4, len:I
    new-array v8, v4, [I

    iput-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .line 2786
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2787
    aget-object v7, v1, v2

    .line 2788
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2789
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2790
    shl-int/lit8 v5, v5, 0x4

    .line 2791
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2792
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 2793
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 2789
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2794
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 2795
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 2797
    :cond_1
    const/4 v4, 0x0

    .line 2801
    .end local v0           #c:C
    :cond_2
    iget-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aput v5, v8, v2

    .line 2786
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2804
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public next(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v3, 0x0

    .line 1339
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== next()...force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1341
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1342
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1346
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mlCurPosition:J

    .line 1347
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "=== next()...END "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    return-void
.end method

.method notifyDlnaConnected()V
    .locals 2

    .prologue
    .line 2751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.dlna_connected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2752
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2753
    return-void
.end method

.method notifyRepeatChanged()V
    .locals 2

    .prologue
    .line 2741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.repeat_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2742
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2743
    return-void
.end method

.method notifyShuffleChanged()V
    .locals 2

    .prologue
    .line 2746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.shuffle_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2747
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2748
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 817
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 818
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 819
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, action:Ljava/lang/String;
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind()...MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->reloadQueue()V

    .line 825
    const-class v1, Lcom/htc/music/IDmcUiPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, ">> onBind IDmcUiPlaybackService!! <<"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    .line 829
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 834
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onCreate()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 837
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 838
    new-instance v1, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    .line 839
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 840
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRendererStatusListener:Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V

    .line 841
    new-instance v1, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    .line 844
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[DMCMusicPlaybackService]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 846
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 847
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    .line 848
    new-instance v1, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    .line 851
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    .line 852
    const-string v1, "dmc_service"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 854
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "dmc_source"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 855
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v1, v3, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->loadDMSInfo()V

    .line 860
    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    .line 866
    return-void

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->loadQueue()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 871
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->saveDmcInfo()V

    .line 887
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 888
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    .line 891
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 896
    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 900
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 902
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->stopForeground(Z)V

    .line 908
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 912
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    .line 913
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 915
    :cond_4
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 916
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 918
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V

    .line 919
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 921
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "onDestroy finished."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 926
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onRebind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 928
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 929
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, action:Ljava/lang/String;
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onRebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 933
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 942
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iput p3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    .line 944
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 945
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    .line 949
    const-class v0, Lcom/htc/music/IDmcUiPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "start IDmcUiPlaybackService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    :goto_0
    return v2

    .line 954
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->setRenderer()V

    .line 956
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->startToPlay()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 968
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onUnbind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, action:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    if-gtz v1, :cond_0

    .line 974
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "incorrect service refer count, try to recover it"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :goto_0
    return v4

    .line 978
    :cond_0
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 979
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onUnbind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    if-lez v1, :cond_1

    .line 982
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbind() mServiceInUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->saveCurrentPos()V

    .line 988
    invoke-virtual {p0, v4}, Lcom/htc/music/DMCMusicPlaybackService;->stopForeground(Z)V

    .line 989
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->stopSelf(I)V

    .line 992
    :cond_2
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onUnbind finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1283
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "pause()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1286
    monitor-enter p0

    .line 1287
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1290
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1291
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1296
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->gotoIdleState()V

    .line 1297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1303
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1304
    return-void

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1303
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1307
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "play()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1311
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1312
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1313
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1315
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1318
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v1, :cond_1

    .line 1319
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1320
    .local v0, status:Landroid/app/Notification;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/DMCMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1322
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1324
    .end local v0           #status:Landroid/app/Notification;
    :cond_1
    return-void
.end method

.method public position()J
    .locals 6

    .prologue
    .line 1362
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1363
    .local v0, position:J
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-wide v0
.end method

.method public prev()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1327
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "=== prev()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1329
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1330
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1332
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1334
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mlCurPosition:J

    .line 1335
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "=== prev()...End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    return-void
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1506
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback()...cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    if-eqz p1, :cond_0

    .line 1509
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1511
    :cond_0
    return-void
.end method

.method saveCurrentPos()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 2682
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v2, :cond_0

    .line 2683
    const-string v2, "Music"

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2686
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2687
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "curpos"

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2697
    :goto_0
    return-void

    .line 2690
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "DLNA"

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2692
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2693
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "curpos"

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2694
    const-string v2, "content"

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method saveDMSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 4
    .parameter "serverId"
    .parameter "containerId"
    .parameter "contentId"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "dir"
    .parameter "filePath"

    .prologue
    .line 2707
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "saveDMSInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2710
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2711
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "server"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2712
    const-string v2, "container"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2713
    const-string v2, "content"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2714
    const-string v2, "repeatmode"

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2715
    const-string v2, "shufflemode"

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2716
    const-string v2, "startIdx"

    invoke-interface {v0, v2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2717
    const-string v2, "endIdx"

    invoke-interface {v0, v2, p6, p7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2718
    const-string v2, "direction"

    invoke-interface {v0, v2, p8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2719
    const-string v2, "filepath"

    invoke-interface {v0, v2, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2722
    return-void
.end method

.method saveDmcInfo()V
    .locals 3

    .prologue
    .line 2700
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2701
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dmc_source"

    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2703
    return-void
.end method

.method saveQueue()V
    .locals 7

    .prologue
    .line 2756
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-nez v5, :cond_0

    .line 2757
    const-string v5, "[DMCMusicPlaybackService]"

    const-string v6, "mPlaylist is null cannot save queue"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    :goto_0
    return-void

    .line 2761
    :cond_0
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2762
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2763
    .local v4, q:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 2764
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aget v3, v5, v2

    .line 2765
    .local v3, n:I
    if-nez v3, :cond_1

    .line 2766
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2768
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 2769
    and-int/lit8 v0, v3, 0xf

    .line 2770
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 2771
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2773
    .end local v0           #digit:I
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2776
    .end local v3           #n:I
    :cond_3
    const-string v5, "queue"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2777
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 1368
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    .line 1372
    return-wide p1
.end method

.method public setQueuePosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1400
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueuePosition()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    if-gez p1, :cond_0

    .line 1411
    :goto_0
    return-void

    .line 1404
    :cond_0
    monitor-enter p0

    .line 1405
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->initErrorRetryHandle()V

    .line 1407
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    .line 1409
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1410
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 4
    .parameter "repeatmode"

    .prologue
    .line 1435
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatMode()...repeatmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    .line 1438
    const/4 v0, 0x0

    .line 1440
    .local v0, dlnaRepeatmode:I
    packed-switch p1, :pswitch_data_0

    .line 1452
    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    .line 1453
    return-void

    .line 1442
    :pswitch_0
    const/4 v0, 0x0

    .line 1443
    goto :goto_0

    .line 1445
    :pswitch_1
    const/4 v0, 0x2

    .line 1446
    goto :goto_0

    .line 1448
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShuffleMode(I)V
    .locals 3
    .parameter "shufflemode"

    .prologue
    .line 1414
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffleMode()...shufflemode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    .line 1416
    if-nez p1, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setShuffle()V

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setShuffle()V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "nVol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1973
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setVolume(I)V

    .line 1975
    return-void
.end method

.method public startPluginActivity()V
    .locals 0

    .prologue
    .line 1521
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1278
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "stop()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->stop(Z)V

    .line 1280
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "unregisterCallback()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1517
    return-void
.end method
