.class public Lcom/htc/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackService$PublicServiceStub;,
        Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;,
        Lcom/htc/music/MediaPlaybackService$LocalPlayer;,
        Lcom/htc/music/MediaPlaybackService$MultiPlayer;,
        Lcom/htc/music/MediaPlaybackService$Shuffler;,
        Lcom/htc/music/MediaPlaybackService$DockEventListener;,
        Lcom/htc/music/MediaPlaybackService$QueryHandler;,
        Lcom/htc/music/MediaPlaybackService$NonUiHandler;,
        Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    }
.end annotation


# static fields
.field private static final ACTION_A2DP_PLUG:Ljava/lang/String; = "android.intent.action.A2DP_PLUG"

.field public static final ALBUMID:I = 0x0

.field public static final AND_NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final AND_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final AND_PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final AND_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final ANIMATION_CHANGE_ART:Ljava/lang/String; = "com.htc.music.changeart"

.field public static final ANIMATION_COMPLETE:Ljava/lang/String; = "com.htc.music.animationcomplete"

.field private static final ANIMATION_ENDED:I = 0x1

.field public static final ANIMATION_MOVE_NEXT:Ljava/lang/String; = "com.htc.music.rotateright"

.field public static final ANIMATION_MOVE_PREV:Ljava/lang/String; = "com.htc.music.rotateleft"

.field public static final ANIMATION_QUICKLY:Ljava/lang/String; = "com.htc.music.rotatequickly"

.field public static final ANIMATION_REFRESH:Ljava/lang/String; = "com.htc.music.refresh"

.field public static final ANIMATION_ROTATE_SELF_NEXT:Ljava/lang/String; = "com.htc.music.rotatecircle_next"

.field public static final ANIMATION_ROTATE_SELF_PREV:Ljava/lang/String; = "com.htc.music.rotatecircle_previous"

.field public static final ANIMATION_SHUFFLE:Ljava/lang/String; = "com.htc.music.shuffle"

.field private static final ANIMATION_TIME_OUT:I = 0x7be

.field private static final ANIMATION_TIME_OUT_DURATION:I = 0x1770

.field public static final ARTISTID:I = 0x1

.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.htc.music.asyncopencomplete"

.field private static final BINDPLUGIN_ON_BIND_COMPLETE:I = 0x4

.field public static final BLUETOOTH_AVRCP:Ljava/lang/String; = "com.broadcom.bluetooth.avrcp"

.field public static final BLUETOOTH_AVRCP_NOTIFY:Ljava/lang/String; = "com.broadcom.bluetooth.avrcp.notify"

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CMDBINDPLUGIN:Ljava/lang/String; = "bindplugin"

.field public static final CMDFFSTART:Ljava/lang/String; = "ffstart"

.field public static final CMDFFSTOP:Ljava/lang/String; = "ffstop"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPLAYALBUM:Ljava/lang/String; = "play_album"

.field public static final CMDPLAYARTIST:Ljava/lang/String; = "play_artist"

.field public static final CMDPLAYPLAYLIST:Ljava/lang/String; = "play_playlist"

.field public static final CMDPLAYTRACK:Ljava/lang/String; = "play_track"

.field public static final CMDPNEXT:I = 0x4

.field public static final CMDPPAUSE:I = 0x2

.field public static final CMDPPLAY:I = 0x0

.field public static final CMDPPREV:I = 0x3

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDPSTOP:I = 0x1

.field public static final CMDP_APPLY_SOUNDEFFECT:I = 0xb

.field public static final CMDP_RESTORE_SOUNDEFFECT:I = 0xc

.field public static final CMDRESUME:Ljava/lang/String; = "resume"

.field public static final CMDRWSTART:Ljava/lang/String; = "rwstart"

.field public static final CMDRWSTOP:Ljava/lang/String; = "rwstop"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_DECODE_NOTIFICATION_ALBUMART:I = 0x10

.field public static final CMD_NOTIFY_CHANGE_FOR_RELOAD_QUEUE:I = 0xf

.field public static final CMD_PLAY_ALL:I = 0x14

.field public static final CMD_REFRESH_PLAYLIST:I = 0x12

.field public static final CMD_RELOAD_QUEUE:I = 0xd

.field private static final CMD_ULOG_MUSIC_COUNT:I = 0x15

.field private static final CMD_ULOG_PLAYBACK_TIME:I = 0x16

.field public static final CMD_WORKER_PLAY:I = 0xe

.field public static final EXTRA_CURRENT_PLAYING_POS:Ljava/lang/String; = "current_playing_pos"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field private static final FADEIN:I = 0x4

.field private static final FFRW_REPEAT_FF:I = 0x1

.field private static final FFRW_REPEAT_NONE:I = 0x0

.field private static final FFRW_REPEAT_RW:I = 0x2

.field private static final FF_RW:I = 0x5

.field public static final GENREID:I = 0x2

.field public static final HTC_RCC_ALBUMART_PREFIX:Ljava/lang/String; = "htc_rcc_albumart_prefix_"

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LICENSE_EXPIRED:I = 0x6

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field public static final MODE_CAR:Ljava/lang/String; = "car"

.field private static final MSG_ARG_STATE_CHANGED:I = 0x7bd

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field private static final NO_ANIMATION:I = 0x0

.field public static final OS_ART_PATH_SHUFFLE_UPDATED:Ljava/lang/String; = "com.htc.music.artpathshuffleupdated"

.field public static final OS_ART_PATH_UPDATED:Ljava/lang/String; = "com.htc.music.artpathupdated"

.field public static final OS_BUFFERING:Ljava/lang/String; = "buffering"

.field public static final OS_EXTRASTATE:Ljava/lang/String; = "extrastate"

.field public static final OS_NOWPLAYING_QUEUE_UPDATED:Ljava/lang/String; = "com.htc.music.nowplayingqueueupdated"

.field public static final OS_ON_ERROR:Ljava/lang/String; = "com.htc.music.onerror"

.field public static final OS_TRACK_DETAILS_UPDATED:Ljava/lang/String; = "com.htc.music.trackdetailsupdated"

.field public static final OS_WAITING:Ljava/lang/String; = "waiting"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.playbackcomplete"

.field public static final PLAYBACK_RINGTONE:Ljava/lang/String; = "android.htc.intent.action.PLAYBACK_RINGTONE"

.field public static final PLAYLISTID:I = 0x3

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field private static final PLAY_NEXT_ANIMATION:I = 0x2

.field private static final PLAY_PREV_ANIMATION:I = 0x1

.field public static final PLAY_STARTED:Ljava/lang/String; = "com.htc.music.playstarted"

.field private static final PLUGIN_NOTIFY_CHANGE:I = 0x3

.field public static final PLUGIN_SERVICE_BINDED:Ljava/lang/String; = "com.htc.music.pluginservicebinded"

.field private static final PLUGIN_UPDATE_NOTIFICATION:I = 0x2

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.queuechanged"

.field public static final RECENTLY_PLAYED_ALBUM_CHANGED:Ljava/lang/String; = "com.htc.music.recentlyplayedalbumchanged"

.field public static final RECENT_PLAYED_CHANGED:Ljava/lang/String; = "com.htc.music.recentplayedchanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SAVE_STATUS_NONE:I = 0x0

.field public static final SAVE_STATUS_PERMANENT:I = 0x2

.field public static final SAVE_STATUS_TEMP:I = 0x1

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MediaPlaybackService]"

.field private static final TOAST_WARNING:I = 0x6

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.togglepause"

.field public static final TRACKID:I = 0x4

.field private static final TRACK_ENDED:I = 0x1

.field private static final UNBINDPLUGIN_ON_BIND_COMPLETE:I = 0x5

.field private static final UPDATE_NOTIFICATION_ALBUMART:I = 0x7

.field private static final mDoAnimationViaHeadset:Z = false

.field private static final mMaxNotifyAlbumArtSideLen:I = 0x48


# instance fields
.field private final MAX_RECENT_TRACK_LIST_SIZE:I

.field private final RECENT_ALBUM_LIST_COUNT:I

.field private final hexdigits:[C

.field private mA2DPReceiver:Landroid/content/BroadcastReceiver;

.field private mActivityIsLive:Z

.field private mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumId:I

.field private mAlbumList:[I

.field private mAlbumListLen:I

.field private mAnimation:Z

.field private mArtist:Ljava/lang/String;

.field private mArtistId:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[I

.field private mBindFailedCounter:I

.field private final mBinder:Landroid/os/IBinder;

.field private mBookmark:J

.field private mCAlbumId:I

.field private mCArtistId:I

.field private mCComposer:Ljava/lang/StringBuilder;

.field private mCGenreId:I

.field private mCPlaylistId:I

.field private mCardId:I

.field private mCategory:I

.field private mComposer:Ljava/lang/String;

.field mCursorCols:[Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDisplayName:Ljava/lang/String;

.field private mDockEventListener:Landroid/content/BroadcastReceiver;

.field private mDrmConsumed:Z

.field private mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

.field private mFFRWRepeat:I

.field private mFFToEndIsPlaying:Z

.field private mFileToPlay:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mId:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFileExist:Z

.field mIsInMirror:Z

.field private mIsPodcast:I

.field private volatile mIsReloadingQueue:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsSystemReady:Z

.field private volatile mIsWaitAnimation:Z

.field private mLastAlbumArtPath:Ljava/lang/String;

.field private mLastAlbumId:I

.field private mLastRepeatTime:J

.field private mLastSeekEventTime:J

.field private mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mLocalRecentAlbumId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMimeType:Ljava/lang/String;

.field private mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private mNonShuffleAlbumList:[I

.field private mNonShufflePlayList:[I

.field private mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

.field private mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

.field private mNotificationLock:Ljava/lang/Object;

.field private mOpenFailedCounter:I

.field private mOpts:Landroid/graphics/BitmapFactory$Options;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayOnNextPrev:Z

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mPublicBinder:Landroid/os/IBinder;

.field mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

.field private mQueueModified:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

.field private mRecentPlayTrackId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPlayList:Z

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepcnt:I

.field private mRepeatMode:I

.field private mSdCardRemoved:Z

.field private mSeeking:Z

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShuffleAlbumList:[I

.field private mShuffleMode:I

.field private mShufflePlayList:[I

.field mShuffleSeq:[I

.field private mShuffleSeqLen:I

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStartPlayMusicTimeStamp:J

.field private mStartSeekPos:J

.field mTest:Z

.field private mTitle:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnbindFailedCounter:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWakeLockAcquired:Z

.field private noisy_action_time:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1559
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 264
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 265
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 266
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 267
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 268
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 269
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    .line 274
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 276
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 277
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 278
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 279
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 282
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 283
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 284
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 285
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 288
    new-instance v0, Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    .line 289
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 307
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    .line 310
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 312
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 315
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const-string v1, "is_podcast"

    aput-object v1, v0, v8

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 333
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 338
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 341
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 342
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 343
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 346
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 347
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 366
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 367
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 368
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    .line 370
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 371
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    .line 372
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 377
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 380
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 383
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    .line 386
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 390
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 392
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 394
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCategory:I

    .line 395
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCArtistId:I

    .line 396
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCAlbumId:I

    .line 397
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mCGenreId:I

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCComposer:Ljava/lang/StringBuilder;

    .line 399
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCPlaylistId:I

    .line 403
    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 405
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 407
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 409
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 411
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 413
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    .line 415
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    .line 417
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 418
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 419
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 420
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    .line 428
    iput v8, p0, Lcom/htc/music/MediaPlaybackService;->RECENT_ALBUM_LIST_COUNT:I

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    .line 431
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->MAX_RECENT_TRACK_LIST_SIZE:I

    .line 433
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 434
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    .line 436
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    .line 440
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 442
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 446
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 447
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 448
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 449
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 450
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 451
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 452
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 453
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 454
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 455
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 456
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 457
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 458
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 460
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 461
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 813
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 897
    new-instance v0, Lcom/htc/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$1;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 1011
    new-instance v0, Lcom/htc/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$2;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    .line 1135
    new-instance v0, Lcom/htc/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$3;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1331
    new-instance v0, Lcom/htc/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$4;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 1398
    new-instance v0, Lcom/htc/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$5;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    .line 1452
    new-instance v0, Lcom/htc/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$6;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1518
    new-instance v0, Lcom/htc/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$7;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1535
    new-instance v0, Lcom/htc/music/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$8;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    .line 1783
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    .line 2853
    new-instance v0, Lcom/htc/music/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$9;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 4047
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 7639
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 7640
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 1560
    return-void

    .line 1783
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

.method public static Search([III)I
    .locals 3
    .parameter "array"
    .parameter "value"
    .parameter "len"

    .prologue
    .line 3658
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3659
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 3664
    .end local v0           #i:I
    :goto_1
    return v0

    .line 3658
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3663
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Bad thing ! I don\'t want to see this"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10500(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/music/MediaPlaybackService;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getShortcutInfoList()[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V

    return-void
.end method

.method static synthetic access$11300(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V

    return-void
.end method

.method static synthetic access$11400(Lcom/htc/music/MediaPlaybackService;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$11600(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return p1
.end method

.method static synthetic access$2308(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return p1
.end method

.method static synthetic access$3208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return p1
.end method

.method static synthetic access$3308(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->resetPlayerForWirelessConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    return v0
.end method

.method static synthetic access$5102(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    return p1
.end method

.method static synthetic access$5202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    return p1
.end method

.method static synthetic access$6208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$6302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$6400(Lcom/htc/music/MediaPlaybackService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    return-void
.end method

.method static synthetic access$7600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$8102(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$8108(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$8110(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$8200(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    return-void
.end method

.method static synthetic access$8400(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    return-void
.end method

.method static synthetic access$8700(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8802(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$8808(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$8900(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    return v0
.end method

.method static synthetic access$9100(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    return-void
.end method

.method private addRecentAlbumList()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 8265
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8298
    :goto_0
    return-void

    .line 8267
    :cond_0
    monitor-enter p0

    .line 8268
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 8269
    .local v0, currAlbumId:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 8270
    .local v2, indexOfAlbumId:I
    if-nez v2, :cond_1

    .line 8271
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "current album is recently album"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8272
    monitor-exit p0

    goto :goto_0

    .line 8297
    .end local v0           #currAlbumId:I
    .end local v2           #indexOfAlbumId:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 8274
    .restart local v0       #currAlbumId:I
    .restart local v2       #indexOfAlbumId:I
    :cond_1
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "addRecentPlayList"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8276
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 8277
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8280
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8282
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 8283
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8287
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_4

    .line 8288
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 8290
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8291
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_5

    .line 8292
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V

    .line 8296
    :goto_1
    const-string v3, "com.htc.music.recentlyplayedalbumchanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 8297
    monitor-exit p0

    goto :goto_0

    .line 8294
    :cond_5
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Save preference editor is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private addRecentPlayedPlaylist()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 8672
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8694
    :goto_0
    return-void

    .line 8674
    :cond_0
    monitor-enter p0

    .line 8675
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 8676
    .local v0, currAudioId:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 8677
    .local v1, indexOfAudioId:I
    if-nez v1, :cond_1

    .line 8678
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Current track is the most recent track."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8679
    monitor-exit p0

    goto :goto_0

    .line 8693
    .end local v0           #currAudioId:I
    .end local v1           #indexOfAudioId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8681
    .restart local v0       #currAudioId:I
    .restart local v1       #indexOfAudioId:I
    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayedPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8683
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 8684
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8687
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8689
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 8690
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8692
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveRecentPlayedPlaylist()V

    .line 8693
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addToAlbumList([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3270
    array-length v0, p1

    .line 3271
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3272
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3273
    const/4 p2, 0x0

    .line 3275
    :cond_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3276
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-le p2, v3, :cond_1

    .line 3277
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3281
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    sub-int v2, v3, p2

    .line 3282
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3283
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3282
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3287
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3288
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 3287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3290
    :cond_3
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3291
    return-void
.end method

.method private addToPlayList([II)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 3142
    array-length v0, p1

    .line 3143
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3144
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reset PlayList Length."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3146
    const/4 p2, 0x0

    .line 3148
    :cond_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3149
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v4, :cond_1

    .line 3150
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3154
    :cond_1
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v3, v4, p2

    .line 3155
    .local v3, tailsize:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3156
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v7, p2, v1

    sub-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 3155
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3160
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3161
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    aget v6, p1, v1

    aput v6, v4, v5

    .line 3160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3163
    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3164
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v8, :cond_4

    .line 3167
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v2

    .line 3168
    .local v2, shufflePlayList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3169
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3173
    .end local v2           #shufflePlayList:[I
    :goto_2
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3174
    return-void

    .line 3171
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private addToQueue(II)V
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 8863
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V

    .line 8864
    return-void
.end method

.method private addToQueue([I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 8867
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 8868
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToQueue size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8886
    :goto_0
    return-void

    .line 8872
    :cond_0
    const/4 v0, 0x0

    .line 8874
    .local v0, combineId:[I
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 8875
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_1

    .line 8876
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [I

    .line 8877
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8878
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    invoke-static {p1, v7, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8879
    invoke-virtual {p0, v0, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 8884
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    array-length v4, p1

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8885
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 8882
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_1
.end method

.method private addToQueueByDbTable(III)V
    .locals 6
    .parameter "table"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 8801
    const/4 v1, 0x0

    .line 8802
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 8804
    .local v0, albumList:[I
    monitor-enter p0

    .line 8805
    packed-switch p2, :pswitch_data_0

    .line 8859
    :goto_0
    :try_start_0
    monitor-exit p0

    .line 8860
    return-void

    .line 8808
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8809
    if-eqz v1, :cond_1

    .line 8810
    array-length v3, v1

    new-array v0, v3, [I

    .line 8811
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 8812
    aput p3, v0, v2

    .line 8811
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8814
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8815
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8859
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 8818
    :cond_1
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Cannot get audio id array from album list"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8824
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    .line 8825
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8827
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;II)[I

    move-result-object v1

    .line 8828
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8832
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8833
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8835
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8836
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8840
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    int-to-long v4, p3

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getAlbumListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 8841
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8843
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    int-to-long v4, p3

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v1

    .line 8844
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8848
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForSong(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8849
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8851
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 8852
    const/4 v3, 0x0

    aput p3, v1, v3

    .line 8853
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 8805
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addToQueueForMultiConditions(III)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 8797
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V

    .line 8798
    return-void
.end method

.method private addToQueueForMultiConditionsByDbTable(IIII)V
    .locals 3
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 8784
    const/4 v1, 0x0

    .line 8785
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 8786
    .local v0, albumList:[I
    monitor-enter p0

    .line 8787
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v1

    .line 8789
    array-length v2, v1

    new-array v0, v2, [I

    .line 8790
    invoke-static {v0, p4}, Ljava/util/Arrays;->fill([II)V

    .line 8791
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8792
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    .line 8793
    monitor-exit p0

    .line 8794
    return-void

    .line 8793
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private applyShuffleSeq([II)[I
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 4849
    if-nez p1, :cond_1

    .line 4850
    const/4 p1, 0x0

    .line 4871
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4852
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4859
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    if-eq p2, v2, :cond_2

    .line 4860
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 4863
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4867
    new-array v1, p2, [I

    .line 4868
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 4869
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 4868
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 4871
    goto :goto_0
.end method

.method private bindPluginService(Ljava/lang/String;)V
    .locals 7
    .parameter "className"

    .prologue
    const/4 v6, 0x0

    .line 5916
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 5950
    :cond_0
    :goto_0
    return-void

    .line 5918
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5919
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5920
    .local v0, bindedClass:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5921
    const/4 v2, 0x1

    .line 5922
    .local v2, isPowerOff:Z
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, v2}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 5923
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, p1, v6, v6}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    .line 5945
    .end local v0           #bindedClass:Ljava/lang/String;
    .end local v2           #isPowerOff:Z
    :cond_2
    :goto_1
    const-class v4, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5946
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "set remote control client as pause"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5947
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v4, :cond_0

    .line 5948
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 5926
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->getBindingClass()Ljava/lang/String;

    move-result-object v1

    .line 5927
    .local v1, bindingClass:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 5928
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5929
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 5930
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 5931
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5932
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 5937
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v4, :cond_5

    .line 5938
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 5940
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, p1, v6, v6}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_1
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 5459
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5460
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    :goto_0
    return v0

    .line 5464
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5465
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5469
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 1

    .prologue
    .line 5332
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 5333
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5334
    :cond_0
    return-void
.end method

.method private clearRecentAlbumList()V
    .locals 1

    .prologue
    .line 8467
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8468
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8469
    :cond_0
    return-void
.end method

.method private clearRecentPlayedPlaylist()V
    .locals 1

    .prologue
    .line 8769
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8770
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8771
    :cond_0
    return-void
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5477
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 5478
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 5479
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "consumeRights: drmCursor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5489
    :goto_0
    return v4

    .line 5484
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5485
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5487
    .local v2, filepath:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, p1, v2, v5}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 5488
    .local v1, error:I
    const-string v5, "[MediaPlaybackService]"

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5489
    if-nez v1, :cond_1

    .line 5491
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5492
    const/4 v0, 0x0

    move v4, v3

    .line 5489
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 5491
    .end local v1           #error:I
    .end local v2           #filepath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5492
    const/4 v0, 0x0

    .line 5491
    throw v3
.end method

.method private doAutoShuffleUpdate()V
    .locals 8

    .prologue
    .line 4413
    const/4 v2, 0x0

    .line 4415
    .local v2, notify:Z
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 4416
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    .line 4417
    const/4 v2, 0x1

    .line 4420
    :cond_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v3, v5, 0x7

    .line 4421
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 4423
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 4424
    .local v1, idx:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4425
    .local v4, which:Ljava/lang/Integer;
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 4426
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 4427
    const/4 v2, 0x1

    .line 4421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4420
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:Ljava/lang/Integer;
    :cond_1
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 4429
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_2
    if-eqz v2, :cond_3

    .line 4431
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4433
    :cond_3
    return-void
.end method

.method private ensureAlbumListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3210
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3214
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    new-array v2, v4, [I

    .line 3215
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3216
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_1

    .line 3217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3218
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3221
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 3223
    shl-int/lit8 v4, p1, 0x1

    new-array v3, v4, [I

    .line 3224
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_2

    .line 3225
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3226
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3229
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 3231
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3232
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3239
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3234
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_2
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3109
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3113
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [I

    .line 3114
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3115
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_1

    .line 3116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3117
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3120
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 3122
    mul-int/lit8 v4, p1, 0x2

    new-array v3, v4, [I

    .line 3123
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_2

    .line 3124
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3125
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3128
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 3130
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3131
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3138
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3133
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private ensureRecentlyPlayedAlbumList()V
    .locals 18

    .prologue
    .line 8359
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v14

    .line 8360
    .local v14, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8362
    const-string v1, "[MediaPlaybackService]"

    const-string v4, "[ensureRecentlyPlayedAlbumList] Storage not mounted!"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8457
    :cond_0
    :goto_0
    return-void

    .line 8366
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8369
    .local v15, tempRecentAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 8370
    const-string v1, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "actuall recent album size = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8371
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 8372
    .local v16, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 8374
    .local v5, whereArgument:[Ljava/lang/String;
    const-string v1, "_id in ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8375
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 8376
    const-string v1, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    .line 8378
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_2

    .line 8379
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8375
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 8381
    :cond_3
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8383
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 8386
    .local v3, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8390
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 8391
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 8392
    .local v13, ididx:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 8393
    .local v8, count:I
    const-string v1, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cursor.getCount() = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8394
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_6

    .line 8395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 8396
    .local v9, curAlbumId:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8397
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8398
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v9, v1, :cond_5

    .line 8399
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8394
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 8402
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 8406
    .end local v8           #count:I
    .end local v9           #curAlbumId:I
    .end local v13           #ididx:I
    :cond_6
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8410
    .end local v3           #cols:[Ljava/lang/String;
    .end local v5           #whereArgument:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x8

    if-ge v1, v4, :cond_c

    .line 8411
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v11, v1, 0x8

    .line 8412
    .local v11, diff:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album COLLATE NOCASE ASC LIMIT 0,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8414
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 8415
    .restart local v16       #where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8416
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8417
    const/4 v5, 0x0

    .line 8418
    .restart local v5       #whereArgument:[Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 8419
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 8421
    const-string v1, " AND _id not in ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8422
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_9

    .line 8423
    const-string v1, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8424
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    .line 8425
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_8

    .line 8426
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8422
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 8428
    :cond_9
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8430
    .end local v12           #i:I
    :cond_a
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 8431
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 8435
    .restart local v3       #cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8438
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 8439
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8440
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 8441
    .restart local v8       #count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    if-ge v12, v8, :cond_b

    .line 8442
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 8444
    .local v7, albumId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8445
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 8441
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 8448
    .end local v7           #albumId:I
    .end local v8           #count:I
    .end local v12           #i:I
    :cond_b
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8452
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #cols:[Ljava/lang/String;
    .end local v5           #whereArgument:[Ljava/lang/String;
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #diff:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8455
    const-string v1, "com.htc.music.recentlyplayedalbumchanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ensureShuffleSeqCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 3243
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 3247
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 3248
    .local v2, newlist:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 3249
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_1

    .line 3250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3251
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3254
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 3258
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_2
    return-void
.end method

.method private forcePlay()V
    .locals 3

    .prologue
    .line 4392
    monitor-enter p0

    .line 4393
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    .line 4394
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4395
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcePlay mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4396
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_0

    .line 4397
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4398
    :cond_0
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 4400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4402
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 4403
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4404
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4407
    :cond_1
    monitor-exit p0

    .line 4408
    return-void

    .line 4407
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private genJasonString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 8994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8995
    .local v0, comp:Ljava/lang/StringBuilder;
    const-string v5, "[htc_lockscreen_music_control]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8996
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8997
    .local v1, data:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 8998
    .local v4, jasonStr:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8999
    .local v2, dropIntent:Landroid/content/Intent;
    const/high16 v5, 0x1400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9004
    const-string v5, "from-lockscreen"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9007
    :try_start_0
    const-string v5, "drop_intent"

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9008
    const-string v5, "albumart"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9009
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 9015
    :goto_0
    if-eqz v4, :cond_0

    .line 9016
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9019
    :cond_0
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genJasonString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 9010
    :catch_0
    move-exception v3

    .line 9011
    .local v3, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 9012
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Failed to generate JSON string."

    invoke-static {v5, v6, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8943
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 5113
    monitor-enter p0

    .line 5114
    :try_start_0
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    monitor-exit p0

    return-wide v0

    .line 5115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultTracks()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 5450
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5455
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private getLastAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8951
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNowplaying()[I
    .locals 4

    .prologue
    .line 6050
    monitor-enter p0

    .line 6051
    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    .line 6058
    :goto_0
    return-object v2

    .line 6053
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 6054
    .local v1, len:I
    new-array v2, v1, [I

    .line 6055
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 6056
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 6055
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6058
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 6059
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPluginClass(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5953
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5954
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5956
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginCount()I
    .locals 1

    .prologue
    .line 5961
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5962
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginCount()I

    move-result v0

    .line 5964
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5991
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5992
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 5994
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5983
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5984
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5986
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5969
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5970
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    .line 5972
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6017
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6018
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    .line 6020
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginUpdateNotification()Landroid/app/Notification;
    .locals 19

    .prologue
    .line 7810
    new-instance v11, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    .line 7811
    .local v11, status:Lcom/htc/wrap/android/app/HtcWrapNotification;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 7812
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030057

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7821
    .local v14, views:Landroid/widget/RemoteViews;
    const v15, 0x7f0800b0

    const-string v16, "music_notification_pause_btn"

    const v17, 0x7f020057

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7822
    const v15, 0x7f0800b0

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport_middle"

    const v18, 0x7f02005a

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7827
    const/4 v4, 0x0

    .local v4, artist:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, album:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, track:Ljava/lang/String;
    const/4 v10, 0x0

    .line 7829
    .local v10, salbumartpath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v10

    .line 7830
    if-nez v10, :cond_5

    .line 7832
    const v15, 0x7f080062

    const v16, 0x7f020052

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7891
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 7892
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v13

    .line 7893
    const v15, 0x7f0800b1

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7894
    if-eqz v4, :cond_0

    const-string v15, "<unknown>"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 7895
    :cond_0
    const v15, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7897
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 7898
    if-eqz v3, :cond_2

    const-string v15, "<unknown>"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 7899
    :cond_2
    const v15, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7902
    :cond_3
    const v15, 0x7f0800b2

    const v16, 0x7f0701dd

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7907
    iput-object v14, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 7908
    iget v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v16, 0x4

    or-int v15, v15, v16

    iput v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 7909
    const v15, 0x7f02005d

    iput v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->icon:I

    .line 7911
    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7912
    .local v12, statusintent:Landroid/content/Intent;
    const/4 v15, 0x0

    const/high16 v16, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    .line 7914
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 7915
    .local v8, pauseIntent:Landroid/content/Intent;
    const-string v15, "command"

    const-string v16, "pause"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7916
    const-string v15, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7918
    const v15, 0x7f0800b0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/htc/notification/NotificationExtra;->setButtonAction(Landroid/app/Notification;ILandroid/app/PendingIntent;)V

    .line 7923
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v15

    if-ltz v15, :cond_4

    .line 7924
    invoke-virtual {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 7925
    .local v6, extras:Landroid/os/Bundle;
    const-string v15, "music_track"

    invoke-virtual {v6, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7926
    const-string v15, "music_artist"

    invoke-virtual {v6, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7927
    const-string v15, "music_album"

    invoke-virtual {v6, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7928
    const-string v15, "music_albumid"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7938
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v8           #pauseIntent:Landroid/content/Intent;
    .end local v10           #salbumartpath:Ljava/lang/String;
    .end local v12           #statusintent:Landroid/content/Intent;
    .end local v13           #track:Ljava/lang/String;
    .end local v14           #views:Landroid/widget/RemoteViews;
    :cond_4
    return-object v11

    .line 7835
    .restart local v3       #album:Ljava/lang/String;
    .restart local v4       #artist:Ljava/lang/String;
    .restart local v10       #salbumartpath:Ljava/lang/String;
    .restart local v13       #track:Ljava/lang/String;
    .restart local v14       #views:Landroid/widget/RemoteViews;
    :cond_5
    const/16 v7, 0x48

    .line 7837
    .local v7, maxSideLen:I
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 7839
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_6

    .line 7841
    const-string v15, "[MediaPlaybackService]"

    const-string v16, " bitmap is null..."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7842
    const v15, 0x7f080062

    const v16, 0x7f020052

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7888
    :goto_1
    const-string v15, "[MediaPlaybackService]"

    invoke-static {v15, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7854
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-gt v15, v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v15, v7, :cond_8

    .line 7856
    :cond_7
    const/4 v15, 0x0

    invoke-static {v5, v7, v7, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 7857
    .local v9, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 7858
    const/4 v5, 0x0

    .line 7859
    const v15, 0x7f080062

    invoke-virtual {v14, v15, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 7873
    .end local v9           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_8
    const v15, 0x7f080062

    invoke-virtual {v14, v15, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private getRecentAlbumId()[I
    .locals 7

    .prologue
    .line 8472
    monitor-enter p0

    .line 8474
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 8475
    .local v3, status:Ljava/lang/String;
    const/4 v1, 0x0

    .line 8476
    .local v1, isMounted:Z
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8478
    :cond_0
    const/4 v1, 0x1

    .line 8481
    :cond_1
    if-eqz v1, :cond_3

    .line 8482
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "actuall recent album size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8484
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 8487
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 8488
    .local v2, localRecentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 8489
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 8488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8491
    :cond_2
    monitor-exit p0

    .line 8493
    .end local v0           #i:I
    .end local v2           #localRecentAlbumId:[I
    :goto_1
    return-object v2

    :cond_3
    const/4 v4, 0x0

    new-array v2, v4, [I

    monitor-exit p0

    goto :goto_1

    .line 8597
    .end local v1           #isMounted:Z
    .end local v3           #status:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 14
    .parameter "albumIds"

    .prologue
    const/4 v13, 0x0

    .line 8602
    if-nez p1, :cond_1

    move-object v11, v13

    .line 8666
    :cond_0
    :goto_0
    return-object v11

    .line 8604
    :cond_1
    const/16 v0, 0x8

    new-array v11, v0, [Ljava/lang/String;

    .line 8605
    .local v11, recentAlbumartpath:[Ljava/lang/String;
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8606
    const/4 v7, 0x0

    .line 8608
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 8609
    .local v12, where:Ljava/lang/StringBuilder;
    array-length v0, p1

    new-array v4, v0, [Ljava/lang/String;

    .line 8611
    .local v4, recentAlbumId:[Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8612
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_1
    array-length v0, p1

    if-ge v9, v0, :cond_3

    .line 8613
    const-string v0, "_id = ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8614
    aget v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 8615
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v9, v0, :cond_2

    .line 8616
    const-string v0, " OR "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8612
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 8618
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8620
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8621
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8625
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 8626
    :cond_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8660
    if-eqz v7, :cond_5

    .line 8661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8662
    const/4 v7, 0x0

    :cond_5
    move-object v11, v13

    .line 8627
    goto :goto_0

    .line 8618
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8657
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 8658
    .local v8, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8660
    if-eqz v7, :cond_0

    .line 8661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8662
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 8630
    .restart local v4       #recentAlbumId:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #where:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8631
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 8633
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 8634
    :cond_7
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 8660
    if-eqz v7, :cond_8

    .line 8661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8662
    const/4 v7, 0x0

    :cond_8
    move-object v11, v13

    .line 8635
    goto/16 :goto_0

    .line 8639
    :cond_9
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 8640
    const/4 v9, 0x0

    :goto_3
    :try_start_8
    array-length v0, p1

    if-ge v9, v0, :cond_c

    .line 8641
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8642
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 8643
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 8646
    .local v6, currentAlbumId:I
    aget v0, p1, v9

    if-ne v6, v0, :cond_b

    .line 8647
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 8650
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recentAlbumartpath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8640
    .end local v6           #currentAlbumId:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 8653
    .restart local v6       #currentAlbumId:I
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 8642
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 8656
    .end local v6           #currentAlbumId:I
    .end local v10           #j:I
    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 8660
    if-eqz v7, :cond_0

    .line 8661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8656
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 8660
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_d

    .line 8661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8662
    const/4 v7, 0x0

    .line 8660
    :cond_d
    throw v0
.end method

.method private getRecentPlayedPlaylist()[I
    .locals 3

    .prologue
    .line 8774
    monitor-enter p0

    .line 8775
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 8776
    .local v1, recentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 8777
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 8776
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8779
    :cond_0
    monitor-exit p0

    return-object v1

    .line 8780
    .end local v0           #i:I
    .end local v1           #recentAlbumId:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getShortcutInfoList()[Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 9069
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getShortcutInfoList"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9070
    invoke-static {p0}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoListByContentValues(Landroid/content/Context;)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 4149
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 4150
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoIdleState: mPlayOnNextPrev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4154
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4155
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4158
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 4159
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 4167
    return-void
.end method

.method private handleDMCError(I)V
    .locals 5
    .parameter "errorId"

    .prologue
    .line 9028
    const/4 v1, 0x1

    .line 9029
    .local v1, isPowerOff:Z
    packed-switch p1, :pswitch_data_0

    .line 9050
    :goto_0
    return-void

    .line 9031
    :pswitch_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR disconnect error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9033
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 9034
    .local v0, currentPos:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrent pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9035
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v2, :cond_1

    .line 9036
    :cond_0
    const/4 v0, 0x0

    .line 9037
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 9038
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setQueuePosition(I)V

    goto :goto_0

    .line 9041
    .end local v0           #currentPos:I
    :pswitch_1
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMS disconnect error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9042
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    goto :goto_0

    .line 9029
    nop

    :pswitch_data_0
    .packed-switch -0x2716
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 5999
    monitor-enter p0

    .line 6000
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6001
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isDmcOrPushMode()Z

    move-result v0

    monitor-exit p0

    .line 6003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 6005
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isPluginMode()Z
    .locals 1

    .prologue
    .line 5708
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5709
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginMode()Z

    move-result v0

    .line 5711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReady()Z
    .locals 1

    .prologue
    .line 6009
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6010
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginReady()Z

    move-result v0

    .line 6012
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 1

    .prologue
    .line 5107
    monitor-enter p0

    .line 5108
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isServiceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5715
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5716
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5722
    :cond_0
    :goto_0
    return v0

    .line 5719
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, mService:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/music/MediaPlaybackService;>;"
    const/4 v0, 0x0

    .line 7970
    if-eqz p0, :cond_1

    .line 7971
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7972
    const/4 v0, 0x1

    .line 7979
    :goto_0
    return v0

    .line 7974
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7978
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "preferences"

    .prologue
    .line 8330
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "localrecentalbumid"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8331
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 8332
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8333
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 8334
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 8335
    aget-object v7, v1, v2

    .line 8336
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 8337
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 8338
    shl-int/lit8 v5, v5, 0x4

    .line 8339
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8340
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 8341
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 8337
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 8342
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 8343
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 8346
    :cond_1
    const/4 v4, 0x0

    .line 8350
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    .line 8334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8354
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 8355
    return-void
.end method

.method private loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V
    .locals 11
    .parameter "preferences"
    .parameter "newstyle"

    .prologue
    .line 8732
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "recentplayedplaylist"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8733
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 8734
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8735
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 8736
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 8737
    if-eqz p2, :cond_3

    .line 8738
    aget-object v7, v1, v2

    .line 8739
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 8740
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 8741
    shl-int/lit8 v5, v5, 0x4

    .line 8742
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8743
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 8744
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 8740
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 8745
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 8746
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 8749
    :cond_1
    const/4 v4, 0x0

    .line 8753
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    .line 8736
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8755
    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    goto :goto_3

    .line 8759
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    return-void
.end method

.method private makeAutoShuffleList()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 4452
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 4453
    .local v11, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4455
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4458
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 4472
    :cond_0
    if-eqz v6, :cond_1

    .line 4473
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4474
    const/4 v6, 0x0

    :cond_1
    move v0, v13

    .line 4477
    :goto_0
    return v0

    .line 4461
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 4462
    .local v9, len:I
    new-array v10, v9, [I

    .line 4463
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 4464
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4465
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 4463
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4467
    :cond_3
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4472
    if-eqz v6, :cond_4

    .line 4473
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4474
    const/4 v6, 0x0

    :cond_4
    move v0, v12

    .line 4468
    goto :goto_0

    .line 4469
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 4470
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception in makeAutoShuffleList. Ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4472
    if-eqz v6, :cond_5

    .line 4473
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4474
    const/4 v6, 0x0

    :cond_5
    move v0, v13

    .line 4477
    goto :goto_0

    .line 4472
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 4473
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4474
    const/4 v6, 0x0

    .line 4472
    :cond_6
    throw v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 3029
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3030
    return-void
.end method

.method private notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .parameter "what"
    .parameter "bundle"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 3038
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3040
    .local v1, i:Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3041
    const-string v6, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3042
    const-string v6, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3043
    const-string v6, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3044
    const-string v6, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3045
    const-string v6, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3047
    const-string v6, "com.htc.music.metachanged"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3048
    const-string v6, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3049
    if-eqz p2, :cond_2

    .line 3050
    const-string v6, "animationtype"

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3051
    .local v4, type:I
    if-ltz v4, :cond_0

    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 3052
    :cond_0
    const/4 v4, 0x0

    .line 3054
    :cond_1
    const-string v6, "animationtype"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3055
    const-string v6, "updatewidget"

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3056
    .local v5, updateWidget:Z
    const-string v6, "updatewidget"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3084
    .end local v4           #type:I
    .end local v5           #updateWidget:Z
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3086
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    .line 3088
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!=== notifyChange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    const-string v6, "com.htc.music.pluginservicebinded"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3099
    :goto_1
    const-string v6, "com.htc.music.rotateright"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.htc.music.rotateleft"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3101
    :cond_3
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    .line 3102
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x7be

    const-wide/16 v8, 0x1770

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3106
    :cond_4
    return-void

    .line 3058
    :cond_5
    const-string v6, "com.htc.music.playstatechanged"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3059
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    .line 3079
    :cond_6
    :goto_2
    if-eqz p2, :cond_2

    .line 3080
    const-string v6, "extrastate"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3081
    .local v0, extraState:Ljava/lang/String;
    const-string v6, "extrastate"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3063
    .end local v0           #extraState:Ljava/lang/String;
    :cond_7
    iget-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_6

    .line 3064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    sub-long v2, v6, v8

    .line 3066
    .local v2, playbackDuration:J
    cmp-long v6, v2, v11

    if-lez v6, :cond_8

    .line 3068
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 3069
    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->sendPlaybackTimeULogMsg(J)V

    .line 3075
    :goto_3
    iput-wide v11, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    goto :goto_2

    .line 3072
    :cond_8
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "playbackDuration should not <= 0."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3092
    .end local v2           #playbackDuration:J
    :cond_9
    const-string v6, "com.htc.music.queuechanged"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3093
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1

    .line 3095
    :cond_a
    invoke-direct {p0, v10}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1
.end method

.method private openCurrent()V
    .locals 12

    .prologue
    .line 3683
    monitor-enter p0

    .line 3684
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_0

    .line 3685
    monitor-exit p0

    .line 3733
    :goto_0
    return-void

    .line 3687
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_2

    .line 3688
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    monitor-exit p0

    goto :goto_0

    .line 3732
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3691
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3693
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3695
    .local v10, id:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    .line 3696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 3697
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3699
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 3700
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3703
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 3704
    .local v8, colCount:I
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 3705
    .local v11, position:I
    if-lez v8, :cond_3

    if-gez v11, :cond_5

    .line 3707
    :cond_3
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent: cols count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    if-eqz v9, :cond_4

    .line 3709
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3710
    const/4 v9, 0x0

    .line 3712
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .line 3716
    :cond_5
    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 3720
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3721
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    .line 3724
    .local v6, bookmark:J
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v1, 0x1388

    sub-long v1, v6, v1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 3728
    .end local v6           #bookmark:J
    .end local v8           #colCount:I
    .end local v11           #position:I
    :cond_6
    if-eqz v9, :cond_7

    .line 3729
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3732
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private openWithCategory([IILcom/htc/music/NpCategory;)V
    .locals 2
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 6031
    monitor-enter p0

    .line 6034
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 6038
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 6039
    monitor-exit p0

    .line 6040
    return-void

    .line 6039
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openWithoutCategory([II)V
    .locals 2
    .parameter "list"
    .parameter "position"

    .prologue
    .line 6043
    monitor-enter p0

    .line 6044
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 6045
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 6046
    monitor-exit p0

    .line 6047
    return-void

    .line 6046
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pauseOtherPlayer()V
    .locals 3

    .prologue
    .line 5505
    new-instance v0, Landroid/content/Intent;

    const-string v2, "kkbox.media.action.pause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5506
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5508
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/music/MediaPlaybackService$11;

    invoke-direct {v2, p0}, Lcom/htc/music/MediaPlaybackService$11;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5518
    .local v1, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5519
    return-void
.end method

.method private pluginNext(Z)V
    .locals 5
    .parameter "playAnim"

    .prologue
    const/4 v4, 0x4

    .line 4120
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4121
    const/4 p1, 0x0

    .line 4124
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v2

    .line 4125
    .local v2, playlistLen:I
    if-gtz v2, :cond_1

    .line 4126
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "pluginNext, No play queue"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    :goto_0
    return-void

    .line 4130
    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v3, :cond_2

    .line 4131
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "pluginNext, ==========skip one next"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4135
    :cond_2
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v3, :cond_3

    .line 4136
    const-string v3, "com.htc.music.rotatequickly"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4138
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4140
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4141
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4142
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "playAnim"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4143
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4144
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginPrev(Z)V
    .locals 12
    .parameter "playAnim"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    .line 4083
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 4084
    .local v1, isDmcOrPushMode:Z
    if-eqz v1, :cond_0

    .line 4085
    const/4 p1, 0x0

    .line 4088
    :cond_0
    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v5, :cond_2

    .line 4089
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "pluginPrev, ===========skip one prev"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4116
    :cond_1
    :goto_0
    return-void

    .line 4095
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 4096
    invoke-virtual {p0, v10, v11}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v3

    .line 4097
    .local v3, seekValue:J
    cmp-long v5, v3, v10

    if-gez v5, :cond_1

    .line 4100
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "pluginPrev, unable to do seek."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    .end local v3           #seekValue:J
    :cond_3
    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v5, :cond_4

    .line 4106
    const-string v5, "com.htc.music.rotatequickly"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4108
    :cond_4
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v5, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4110
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v5, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4111
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4112
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "playAnim"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4113
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4114
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v5, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginUpdateNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 7942
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7967
    return-void
.end method

.method private refreshPlaylist()V
    .locals 17

    .prologue
    .line 2549
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 2550
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2551
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    const-string v1, " AND _id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 2554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_0

    .line 2556
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2559
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2567
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2568
    .local v7, audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2570
    :cond_2
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist, cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset PlayList Length."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2572
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2576
    const-string v1, "com.htc.music.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2577
    if-eqz v10, :cond_3

    .line 2578
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2579
    const/4 v10, 0x0

    .line 2633
    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return-void

    .line 2584
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2585
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ne v9, v1, :cond_5

    .line 2588
    if-eqz v10, :cond_3

    .line 2589
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2590
    const/4 v10, 0x0

    goto :goto_1

    .line 2595
    :cond_5
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v13

    .line 2596
    .local v13, list:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    new-array v15, v1, [I

    .line 2598
    .local v15, removePosition:[I
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2599
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    :goto_2
    array-length v1, v13

    if-ge v11, v1, :cond_6

    .line 2600
    aget v1, v13, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v13, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2599
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2603
    :cond_6
    const/4 v12, 0x0

    .line 2604
    .local v12, j:I
    const/4 v8, 0x0

    .line 2605
    .local v8, bRemoved:Z
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v11, v1, :cond_7

    .line 2606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    if-lt v12, v1, :cond_9

    .line 2608
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "CMD_REFRESH_PLAYLIST, list length is wrong!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    :cond_7
    if-eqz v8, :cond_8

    .line 2620
    new-array v14, v12, [I

    .line 2621
    .local v14, removeArray:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v15, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2623
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 2624
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    .line 2627
    .end local v14           #removeArray:[I
    :cond_8
    if-eqz v10, :cond_3

    .line 2628
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2612
    :cond_9
    aput v11, v15, v12

    .line 2613
    add-int/lit8 v12, v12, 0x1

    .line 2614
    const/4 v8, 0x1

    .line 2605
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private refreshPlugin()V
    .locals 1

    .prologue
    .line 5977
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5978
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 5980
    :cond_0
    return-void
.end method

.method private reloadQueueImpl()V
    .locals 27

    .prologue
    .line 2072
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const/16 v20, 0x0

    .line 2074
    .local v20, q:Ljava/lang/String;
    const/16 v18, 0x0

    .line 2075
    .local v18, newstyle:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    .line 2076
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    .line 2077
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 2078
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2079
    const/16 v18, 0x1

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2082
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    if-ne v13, v2, :cond_1

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2086
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: card id is the same."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->loadRecentAlbumList(Landroid/content/SharedPreferences;)V

    .line 2090
    :cond_1
    if-eqz v20, :cond_2c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2c

    .line 2091
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q != null && q.length() > 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2105
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2106
    .local v11, entries:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .line 2107
    .local v16, len:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2108
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_6

    .line 2109
    if-eqz v18, :cond_5

    .line 2110
    aget-object v22, v11, v12

    .line 2111
    .local v22, revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2112
    .local v17, n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, j:I
    :goto_1
    if-ltz v14, :cond_4

    .line 2113
    shl-int/lit8 v17, v17, 0x4

    .line 2114
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2115
    .local v9, c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_2

    const/16 v2, 0x39

    if-gt v9, v2, :cond_2

    .line 2116
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2112
    :goto_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 2117
    :cond_2
    const/16 v2, 0x61

    if-lt v9, v2, :cond_3

    const/16 v2, 0x66

    if-gt v9, v2, :cond_3

    .line 2118
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_2

    .line 2121
    :cond_3
    const/16 v16, 0x0

    .line 2125
    .end local v9           #c:C
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aput v17, v2, v12

    .line 2108
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2127
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_3

    .line 2130
    :cond_6
    const/4 v8, 0x0

    .line 2132
    .local v8, bRecoverQueue:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v16

    if-le v0, v2, :cond_7

    .line 2134
    const/4 v8, 0x1

    .line 2135
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "bRecoverQueue = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :cond_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuealbum"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2141
    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    .line 2142
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2143
    array-length v0, v11

    move/from16 v16, v0

    .line 2144
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 2145
    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_c

    .line 2146
    if-eqz v18, :cond_b

    .line 2147
    aget-object v22, v11, v12

    .line 2148
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2149
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_5
    if-ltz v14, :cond_a

    .line 2150
    shl-int/lit8 v17, v17, 0x4

    .line 2151
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2152
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_8

    const/16 v2, 0x39

    if-gt v9, v2, :cond_8

    .line 2153
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2149
    :goto_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 2154
    :cond_8
    const/16 v2, 0x61

    if-lt v9, v2, :cond_9

    const/16 v2, 0x66

    if-gt v9, v2, :cond_9

    .line 2155
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_6

    .line 2158
    :cond_9
    const/16 v16, 0x0

    .line 2162
    .end local v9           #c:C
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aput v17, v2, v12

    .line 2145
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2164
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_7

    .line 2167
    :cond_c
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2209
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2210
    .local v21, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    .line 2211
    const/16 v21, 0x0

    .line 2213
    :cond_d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 2216
    .local v26, shufmode:I
    const/4 v2, 0x2

    move/from16 v0, v26

    if-eq v0, v2, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_e

    .line 2217
    const/16 v26, 0x0

    .line 2219
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    .line 2220
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2221
    const/16 v26, 0x0

    .line 2224
    :cond_f
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 2225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 2226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeue"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2227
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    .line 2228
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2229
    array-length v0, v11

    move/from16 v16, v0

    .line 2230
    const/4 v12, 0x0

    :goto_9
    move/from16 v0, v16

    if-ge v12, v0, :cond_15

    .line 2231
    if-eqz v18, :cond_14

    .line 2232
    aget-object v22, v11, v12

    .line 2233
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2234
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_a
    if-ltz v14, :cond_13

    .line 2235
    shl-int/lit8 v17, v17, 0x4

    .line 2236
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2237
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_11

    const/16 v2, 0x39

    if-gt v9, v2, :cond_11

    .line 2238
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2234
    :goto_b
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 2170
    .end local v9           #c:C
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v21           #repmode:I
    .end local v22           #revhex:Ljava/lang/String;
    .end local v26           #shufmode:I
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_8

    .line 2239
    .restart local v9       #c:C
    .restart local v14       #j:I
    .restart local v17       #n:I
    .restart local v21       #repmode:I
    .restart local v22       #revhex:Ljava/lang/String;
    .restart local v26       #shufmode:I
    :cond_11
    const/16 v2, 0x61

    if-lt v9, v2, :cond_12

    const/16 v2, 0x66

    if-gt v9, v2, :cond_12

    .line 2240
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_b

    .line 2243
    :cond_12
    const/16 v16, 0x0

    .line 2247
    .end local v9           #c:C
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aput v17, v2, v12

    .line 2230
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 2249
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_c

    .line 2252
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2257
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeuealbum"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2258
    if-eqz v20, :cond_23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_23

    .line 2259
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2260
    array-length v0, v11

    move/from16 v16, v0

    .line 2261
    const/4 v12, 0x0

    :goto_e
    move/from16 v0, v16

    if-ge v12, v0, :cond_1b

    .line 2262
    if-eqz v18, :cond_1a

    .line 2263
    aget-object v22, v11, v12

    .line 2264
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2265
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_f
    if-ltz v14, :cond_19

    .line 2266
    shl-int/lit8 v17, v17, 0x4

    .line 2267
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2268
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_17

    const/16 v2, 0x39

    if-gt v9, v2, :cond_17

    .line 2269
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2265
    :goto_10
    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    .line 2254
    .end local v9           #c:C
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_d

    .line 2270
    .restart local v9       #c:C
    .restart local v14       #j:I
    .restart local v17       #n:I
    .restart local v22       #revhex:Ljava/lang/String;
    :cond_17
    const/16 v2, 0x61

    if-lt v9, v2, :cond_18

    const/16 v2, 0x66

    if-gt v9, v2, :cond_18

    .line 2271
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_10

    .line 2274
    :cond_18
    const/16 v16, 0x0

    .line 2278
    .end local v9           #c:C
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aput v17, v2, v12

    .line 2261
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 2280
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_11

    .line 2283
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2322
    :cond_1c
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2325
    .local v19, pos:I
    if-ltz v19, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v19

    if-lt v0, v2, :cond_1e

    .line 2327
    :cond_1d
    if-gez v19, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ltz v2, :cond_24

    .line 2331
    const/16 v19, 0x0

    .line 2342
    :cond_1e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2343
    if-eqz v8, :cond_20

    .line 2344
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2345
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 2348
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2357
    :cond_20
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is_music>=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2382
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_21

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_25

    .line 2383
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    .line 2385
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: failed to get data from database."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    if-eqz v9, :cond_22

    .line 2391
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2392
    const/4 v9, 0x0

    .line 2394
    :cond_22
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #entries:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #len:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v26           #shufmode:I
    :goto_13
    return-void

    .line 2285
    .restart local v8       #bRecoverQueue:Z
    .restart local v11       #entries:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v16       #len:I
    .restart local v21       #repmode:I
    .restart local v26       #shufmode:I
    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_12

    .line 2334
    .restart local v19       #pos:I
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2338
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueue -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2397
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_25
    if-eqz v9, :cond_26

    .line 2398
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2399
    const/4 v9, 0x0

    .line 2410
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2411
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -, song is playing now, don\'t do opencurrent.!!! return."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2425
    :cond_27
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 2426
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2427
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 2428
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "seekpos"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 2432
    .local v23, seekpos:J
    if-eqz v8, :cond_2a

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v5, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v5, v6}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 2539
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #entries:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #len:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v23           #seekpos:J
    .end local v26           #shufmode:I
    :cond_28
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    if-nez v2, :cond_29

    .line 2540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2544
    :cond_29
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2436
    .restart local v8       #bRecoverQueue:Z
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v11       #entries:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v16       #len:I
    .restart local v19       #pos:I
    .restart local v21       #repmode:I
    .restart local v23       #seekpos:J
    .restart local v26       #shufmode:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v5, 0x0

    cmp-long v3, v23, v5

    if-ltz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v5

    cmp-long v3, v23, v5

    if-gez v3, :cond_2b

    .end local v23           #seekpos:J
    :goto_15
    move-wide/from16 v0, v23

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    goto :goto_14

    .restart local v23       #seekpos:J
    :cond_2b
    const-wide/16 v23, 0x0

    goto :goto_15

    .line 2449
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #entries:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #len:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v23           #seekpos:J
    .end local v26           #shufmode:I
    :cond_2c
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q == null || q.length() <= 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2453
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "LaunchedBefore"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    .line 2458
    .local v15, launchBefore:Z
    if-nez v15, :cond_28

    .line 2459
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: !launchBefore"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LaunchedBefore"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2462
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 2465
    .local v4, ccols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_music>=1"

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC,track"

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2469
    .local v10, cursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v25

    .line 2472
    .local v25, service:Lcom/htc/music/IMediaPlaybackService;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, v25

    invoke-static {v0, v2, v10, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)Z

    .line 2474
    if-eqz v10, :cond_28

    .line 2475
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_14
.end method

.method private removeTracksInternal(II)I
    .locals 12
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 4498
    monitor-enter p0

    .line 4499
    :try_start_0
    const-string v8, "[MediaPlaybackService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeTracksInternal, first: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", last: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPlayListLen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4500
    if-ge p2, p1, :cond_0

    .line 4501
    monitor-exit p0

    .line 4575
    :goto_0
    return v7

    .line 4502
    :cond_0
    if-gez p1, :cond_1

    .line 4503
    const/4 p1, 0x0

    .line 4504
    :cond_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v7, :cond_2

    .line 4505
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v7, -0x1

    .line 4507
    :cond_2
    const/4 v0, 0x0

    .line 4508
    .local v0, gotonext:Z
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_6

    .line 4509
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    .line 4510
    .local v4, pos:I
    if-gt p1, v4, :cond_5

    if-gt v4, p2, :cond_5

    .line 4511
    const/4 v0, 0x1

    .line 4524
    .end local v4           #pos:I
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v7, p2

    add-int/lit8 v2, v7, -0x1

    .line 4525
    .local v2, num:I
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4526
    .local v3, playListLen:I
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_8

    .line 4527
    move v1, p1

    .local v1, i:I
    :goto_2
    if-gt v1, p2, :cond_8

    .line 4528
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v5

    .line 4529
    .local v5, position:I
    if-ltz v5, :cond_4

    if-ge v5, v3, :cond_4

    .line 4530
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4531
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4532
    add-int/lit8 v3, v3, -0x1

    .line 4527
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4512
    .end local v1           #i:I
    .end local v2           #num:I
    .end local v3           #playListLen:I
    .end local v5           #position:I
    .restart local v4       #pos:I
    :cond_5
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    .line 4513
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4576
    .end local v0           #gotonext:Z
    .end local v4           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4516
    .restart local v0       #gotonext:Z
    :cond_6
    :try_start_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v7, :cond_7

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v7, p2, :cond_7

    .line 4517
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4518
    const/4 v0, 0x1

    goto :goto_1

    .line 4519
    :cond_7
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    .line 4520
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4539
    .restart local v2       #num:I
    .restart local v3       #playListLen:I
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 4540
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 4541
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 4539
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4543
    :cond_9
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4544
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 4545
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4559
    if-eqz v0, :cond_a

    .line 4560
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v7, :cond_b

    .line 4561
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4562
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4575
    :cond_a
    :goto_4
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 4564
    :cond_b
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v7, v8, :cond_c

    .line 4565
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4567
    :cond_c
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 4568
    .local v6, wasPlaying:Z
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4569
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4570
    if-eqz v6, :cond_a

    .line 4571
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private resetAudioMetaData()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 8978
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 8979
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 8980
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 8981
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 8982
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 8983
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 8984
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 8986
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 8987
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 8988
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 8989
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 8990
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 8991
    return-void
.end method

.method private resetPlayerForWirelessConnect(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    .line 1374
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1375
    monitor-enter p0

    .line 1376
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v2

    .line 1377
    .local v2, isPlaying:Z
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1378
    .local v0, currentPlaybackPosition:J
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTVOn: mPlayer.isPlaying() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    if-eqz v2, :cond_0

    .line 1380
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1381
    :cond_0
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.stop()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1383
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1384
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 1385
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.isReInitialized() == false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1396
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :cond_2
    return-void

    .line 1387
    .restart local v0       #currentPlaybackPosition:J
    .restart local v2       #isPlaying:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 1388
    if-ne v2, v6, :cond_1

    .line 1389
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.start()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    goto :goto_0

    .line 1394
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private resetQueueAlbumList([I)V
    .locals 4
    .parameter "albumList"

    .prologue
    const/4 v3, 0x0

    .line 8889
    array-length v1, p1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 8891
    .local v0, combineId:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 8892
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8893
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8898
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 8900
    return-void

    .line 8896
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private restoreRecentAlbumList(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 8460
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8464
    :goto_0
    return-void

    .line 8462
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecentAlbumList albumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8463
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecentPlayedPlaylist(I)V
    .locals 3
    .parameter "audioId"

    .prologue
    .line 8762
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecentPlayedPlaylist:audioId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8763
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8766
    :goto_0
    return-void

    .line 8765
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 4171
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4172
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 4173
    .local v4, pos:J
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 4174
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 4175
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 4195
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 4181
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 4183
    :cond_3
    const-wide/16 v4, 0x0

    .line 4187
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4188
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4189
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 4191
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4193
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 13
    .parameter "full"

    .prologue
    const/4 v12, 0x0

    .line 1791
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[saveQueue] full="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";mSdCardRemoved="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";mQueueModified="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const-string v9, "Music"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1795
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1798
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 1799
    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    if-eqz v9, :cond_3

    .line 1800
    const/4 p1, 0x1

    .line 1801
    iput-boolean v12, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 1830
    :cond_0
    :goto_0
    const-string v9, "version"

    const/4 v10, 0x4

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1834
    if-eqz p1, :cond_13

    .line 1835
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-nez v9, :cond_2

    .line 1836
    :cond_1
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BadQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1839
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1845
    :cond_2
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1846
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 1847
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v7, v9, v4

    .line 1848
    .local v7, n:I
    if-gtz v7, :cond_4

    .line 1849
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v7           #n:I
    :goto_2
    return-void

    .line 1803
    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 1846
    .restart local v4       #i:I
    .restart local v5       #l:I
    .restart local v7       #n:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1861
    .end local v7           #n:I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1869
    .local v8, q:Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1870
    .local v6, len:I
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_8

    .line 1872
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v7, v9, v4

    .line 1873
    .restart local v7       #n:I
    if-nez v7, :cond_6

    .line 1874
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1876
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 1877
    and-int/lit8 v1, v7, 0xf

    .line 1878
    .local v1, digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1879
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1881
    .end local v1           #digit:I
    :cond_7
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1885
    .end local v7           #n:I
    :cond_8
    const-string v9, "queue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1886
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1889
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1890
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_b

    .line 1892
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v7, v9, v4

    .line 1893
    .restart local v7       #n:I
    if-nez v7, :cond_9

    .line 1894
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1896
    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    .line 1897
    and-int/lit8 v1, v7, 0xf

    .line 1898
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1899
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1901
    .end local v1           #digit:I
    :cond_a
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1904
    .end local v7           #n:I
    :cond_b
    const-string v9, "queuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1905
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1925
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 1926
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1927
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_e

    .line 1928
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v7, v9, v4

    .line 1929
    .restart local v7       #n:I
    if-nez v7, :cond_c

    .line 1930
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1932
    :cond_c
    :goto_b
    if-eqz v7, :cond_d

    .line 1933
    and-int/lit8 v1, v7, 0xf

    .line 1934
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1935
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1937
    .end local v1           #digit:I
    :cond_d
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1940
    .end local v7           #n:I
    :cond_e
    const-string v9, "shufflequeue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1941
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1943
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1944
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_11

    .line 1945
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v7, v9, v4

    .line 1946
    .restart local v7       #n:I
    if-nez v7, :cond_f

    .line 1947
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1949
    :cond_f
    :goto_e
    if-eqz v7, :cond_10

    .line 1950
    and-int/lit8 v1, v7, 0xf

    .line 1951
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1952
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1954
    .end local v1           #digit:I
    :cond_10
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1957
    .end local v7           #n:I
    :cond_11
    const-string v9, "shufflequeuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1958
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1979
    :cond_12
    const-string v9, "cardid"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2006
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v6           #len:I
    .end local v8           #q:Ljava/lang/StringBuilder;
    :cond_13
    const-string v9, "curpos"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2008
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2009
    const-string v9, "seekpos"

    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v10}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2011
    :cond_14
    const-string v9, "repeatmode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2012
    const-string v9, "shufflemode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2023
    const/4 v0, 0x0

    .line 2025
    .local v0, className:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v9}, Lcom/htc/music/MusicPluginManager;->getCurrentPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 2026
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_15

    .line 2027
    const-string v9, "plugin"

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    :cond_15
    if-nez v0, :cond_16

    .line 2032
    const-string v9, "plugin"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2038
    :cond_16
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2039
    :catch_0
    move-exception v2

    .line 2040
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Exception in ed.apply: "

    invoke-static {v9, v10, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2031
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-nez v0, :cond_17

    .line 2032
    const-string v10, "plugin"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2031
    :cond_17
    throw v9
.end method

.method private saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V
    .locals 8
    .parameter "ed"

    .prologue
    .line 8301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8303
    .local v4, queue:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 8304
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8305
    .local v2, len:I
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRecentAlbumList mLocalRecentAlbumId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8306
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 8307
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8308
    .local v3, n:I
    if-nez v3, :cond_1

    .line 8309
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8306
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8310
    :cond_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 8314
    :goto_2
    if-eqz v3, :cond_2

    .line 8315
    and-int/lit8 v0, v3, 0xf

    .line 8316
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 8317
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8319
    .end local v0           #digit:I
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8323
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #n:I
    :cond_3
    const-string v5, "localrecentalbumid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8324
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRecentAlbumList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8325
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 8326
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8327
    return-void
.end method

.method private saveRecentPlayedPlaylist()V
    .locals 9

    .prologue
    .line 8697
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v6, :cond_0

    .line 8698
    const-string v6, "Music"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 8702
    :cond_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8703
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8705
    .local v5, queue:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 8706
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8707
    .local v3, len:I
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveQueue mRecentPlayTrackId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8708
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 8709
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8710
    .local v4, n:I
    if-nez v4, :cond_2

    .line 8711
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8708
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8712
    :cond_2
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 8716
    :goto_2
    if-eqz v4, :cond_3

    .line 8717
    and-int/lit8 v0, v4, 0xf

    .line 8718
    .local v0, digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 8719
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8721
    .end local v0           #digit:I
    :cond_3
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8725
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #n:I
    :cond_4
    const-string v6, "recentplayedplaylist"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8726
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRecentPlayedPlaylist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8727
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8728
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v8, 0x0

    .line 5379
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5381
    if-nez p1, :cond_0

    .line 5382
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5383
    iput-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5407
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5408
    return-void

    .line 5385
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    .line 5387
    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    .line 5392
    :goto_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    sub-long v0, v2, p2

    .line 5393
    .local v0, newpos:J
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 5395
    const-wide/16 v0, 0x0

    .line 5397
    :cond_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-gez p1, :cond_3

    .line 5398
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5399
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5401
    :cond_3
    if-ltz p1, :cond_5

    .line 5402
    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5390
    .end local v0           #newpos:J
    :cond_4
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_1

    .line 5404
    .restart local v0       #newpos:J
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private scanForward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v10, 0x1

    .line 5337
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5338
    if-nez p1, :cond_0

    .line 5339
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5340
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5375
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5376
    return-void

    .line 5342
    :cond_0
    cmp-long v4, p2, v6

    if-gez v4, :cond_4

    .line 5344
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 5349
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 5350
    .local v2, newpos:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 5356
    .local v0, duration:J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 5358
    move-wide v2, v0

    .line 5360
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v4, :cond_1

    .line 5361
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 5362
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 5365
    :cond_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-gez p1, :cond_3

    .line 5366
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5367
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5369
    :cond_3
    if-ltz p1, :cond_5

    .line 5370
    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5347
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_4
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 5372
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private sendMusicCountULogMsg(J)V
    .locals 2
    .parameter "delayTime"

    .prologue
    const/16 v1, 0x15

    .line 8239
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v0, :cond_0

    .line 8240
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 8241
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 8246
    :goto_0
    return-void

    .line 8244
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "send Music Count ULog, mNonUiHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPlaybackTimeULogMsg(J)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 8249
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v2, :cond_0

    .line 8250
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 8251
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8252
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "duration"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8253
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8254
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8259
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 8257
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "send Playback Time ULog, mNonUiHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAudioEffect(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "setting"
    .parameter "applyEffect"
    .parameter "saveStatus"

    .prologue
    const/4 v1, 0x0

    .line 8915
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8916
    packed-switch p3, :pswitch_data_0

    .line 8928
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8931
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8932
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8940
    :cond_0
    :goto_1
    return-void

    .line 8918
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 8922
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8923
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 8936
    :cond_1
    if-eqz p2, :cond_0

    .line 8937
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 8916
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioMetaData(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 8955
    if-nez p1, :cond_0

    .line 8956
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "setAudioMetaData, cursor = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 8975
    :goto_0
    return-void

    .line 8961
    :cond_0
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 8962
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 8963
    const-string v0, "composer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 8964
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 8965
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 8966
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 8967
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 8969
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 8970
    const-string v0, "artist_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 8971
    const-string v0, "bookmark"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 8972
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 8973
    const-string v0, "is_podcast"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 8974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    goto/16 :goto_0
.end method

.method private setCategory(IIIILjava/lang/String;I)V
    .locals 4
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v3, -0x1

    .line 5667
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCategory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5668
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 5669
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Category wrong in setCategory()."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5692
    :cond_1
    :goto_0
    return-void

    .line 5672
    :cond_2
    if-lt p2, v3, :cond_3

    if-lt p3, v3, :cond_3

    const/4 v0, -0x2

    if-lt p4, v0, :cond_3

    if-ge p6, v3, :cond_1

    .line 5673
    :cond_3
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Something wrong in setCategory()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCategory(Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 5664
    return-void
.end method

.method private setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "views"

    .prologue
    .line 7620
    if-eqz p1, :cond_0

    .line 7621
    const v0, 0x7f080062

    const v1, 0x7f020052

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7637
    :goto_0
    return-void

    .line 7635
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "RemoteViews is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastAudioEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "szSetting"

    .prologue
    .line 8947
    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V

    .line 8948
    return-void
.end method

.method private setOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 5641
    return-void
.end method

.method private setShuffleAlbumList([II)V
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 3480
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v0

    .line 3481
    .local v0, shuffleAlbumList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3482
    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 4812
    if-gtz p1, :cond_0

    .line 4813
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4843
    :goto_0
    return-void

    .line 4817
    :cond_0
    if-ge p2, p1, :cond_1

    if-gez p2, :cond_2

    .line 4818
    :cond_1
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq(), nFirst should be less than len, len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4819
    const/4 p2, 0x0

    .line 4822
    :cond_2
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4823
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 4824
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 4826
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 4827
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 4826
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4829
    :cond_3
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_4

    .line 4831
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 4832
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 4833
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 4834
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 4829
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4841
    .end local v3           #temp:I
    :cond_4
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    goto :goto_0
.end method

.method private showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "albumArt"
    .parameter "key"

    .prologue
    const/4 v2, 0x7

    .line 5616
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5617
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5618
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5619
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5620
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5621
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5530
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 5531
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5562
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5565
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5566
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5595
    return-void
.end method

.method private showToastInUiThread(II)V
    .locals 4
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5607
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5608
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5609
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5610
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5611
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5612
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5613
    return-void
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 514
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFFRWRepeat(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 5318
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5320
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5321
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5322
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5323
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x1

    .line 3968
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3970
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3972
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3973
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/16 v1, 0x7bd

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3974
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3981
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 3973
    .restart local v0       #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3977
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-enter p0

    .line 3978
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v1, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3979
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopActivePlugin(Z)V
    .locals 5
    .parameter "isPowerOff"

    .prologue
    const/4 v4, 0x5

    .line 5727
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-nez v1, :cond_1

    .line 5742
    :cond_0
    :goto_0
    return-void

    .line 5730
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5732
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 5733
    .local v0, status:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 5734
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 5735
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    goto :goto_0

    .line 5737
    .end local v0           #status:Landroid/app/Notification;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5738
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5739
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopFFRWRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5326
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 5327
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5328
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5329
    return-void
.end method

.method private switchToLocal()V
    .locals 5

    .prologue
    .line 9054
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9055
    const-string v3, "DLNA"

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 9059
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9060
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "server"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9061
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9062
    const/4 v1, 0x1

    .line 9063
    .local v1, isPowerOff:Z
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 9064
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Car mode start service force switch to local"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9066
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isPowerOff:Z
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    .locals 10
    .parameter "albumArt"
    .parameter "key"

    .prologue
    .line 7741
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification, albumArt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7743
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    .line 7744
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, not playing. return."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7807
    :goto_0
    return-void

    .line 7748
    :cond_0
    if-nez p1, :cond_1

    .line 7749
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, albumArt is null, return."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7753
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 7754
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v6, p2, :cond_3

    .line 7755
    :cond_2
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "updateAlbumArtInNotification, (mNotification == null || mNotification.hashCode() != key), return."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7756
    monitor-exit v7

    goto :goto_0

    .line 7806
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 7759
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget-object v6, v6, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v6, :cond_4

    .line 7760
    const-string v6, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlbumArtInNotification, mNotification.extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v9}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7761
    monitor-exit v7

    goto :goto_0

    .line 7764
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 7765
    .local v4, resource:Landroid/content/res/Resources;
    const v6, 0x7f0a0029

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 7766
    .local v2, reflectHeight:I
    const/16 v1, 0x48

    .line 7768
    .local v1, maxSideLen:I
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget-object v5, v6, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 7770
    .local v5, views:Landroid/widget/RemoteViews;
    if-nez v5, :cond_5

    .line 7771
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "updateAlbumArtInNotification, (views == null) return."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7772
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7776
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v6, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v1, :cond_7

    .line 7778
    :cond_6
    const/4 v6, 0x0

    invoke-static {p1, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7779
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7780
    const/4 p1, 0x0

    .line 7782
    const v6, 0x7f080062

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7801
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/4 v6, 0x1

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {p0, v6, v8}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7806
    :goto_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 7792
    :cond_7
    const v6, 0x7f080062

    :try_start_4
    invoke-virtual {v5, v6, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 7803
    :catch_0
    move-exception v0

    .line 7804
    .local v0, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v6, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlbumArtInNotification. Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private updateNotification()V
    .locals 17

    .prologue
    .line 7643
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f030057

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7644
    .local v10, views:Landroid/widget/RemoteViews;
    const v11, 0x7f0800b0

    const-string v12, "music_notification_pause_btn"

    const v13, 0x7f020057

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7645
    const v11, 0x7f0800b0

    const-string v12, "setBackgroundResource"

    const-string v13, "music_notification_b_transport_middle"

    const v14, 0x7f02005a

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7647
    const/4 v3, 0x0

    .local v3, artist:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, album:Ljava/lang/String;
    const/4 v9, 0x0

    .line 7649
    .local v9, track:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 7651
    .local v4, audioID:I
    if-gez v4, :cond_6

    .line 7653
    const v11, 0x7f0800b1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7654
    const v11, 0x7f0800b2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7655
    const v11, 0x7f080062

    const v12, 0x7f020052

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7660
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 7661
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 7662
    const v11, 0x7f0800b1

    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7663
    if-eqz v3, :cond_0

    const-string v11, "<unknown>"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 7664
    :cond_0
    const v11, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7666
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 7667
    if-eqz v1, :cond_2

    const-string v11, "<unknown>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 7668
    :cond_2
    const v11, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7671
    :cond_3
    const v11, 0x7f0800b2

    const v12, 0x7f0701dd

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7673
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    .line 7675
    .local v2, albumID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 7676
    :try_start_0
    new-instance v11, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 7677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iput-object v10, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 7678
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v14, 0x4

    or-int/2addr v13, v14

    iput v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 7679
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v13, 0x7f02005d

    iput v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->icon:I

    .line 7680
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7681
    .local v8, statusintent:Landroid/content/Intent;
    const/high16 v11, 0x400

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7682
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v13, v8, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    .line 7684
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 7685
    .local v7, pauseIntent:Landroid/content/Intent;
    const-string v11, "command"

    const-string v13, "pause"

    invoke-virtual {v7, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7686
    const-string v11, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7689
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v13, 0x7f0800b0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lcom/htc/notification/NotificationExtra;->setButtonAction(Landroid/app/Notification;ILandroid/app/PendingIntent;)V

    .line 7694
    if-ltz v4, :cond_5

    .line 7696
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_7

    .line 7697
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7698
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 7699
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 7700
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 7701
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7707
    .end local v6           #msg:Landroid/os/Message;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 7708
    .local v5, extras:Landroid/os/Bundle;
    const-string v11, "music_track"

    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7709
    const-string v11, "music_artist"

    invoke-virtual {v5, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7710
    const-string v11, "music_album"

    invoke-virtual {v5, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7711
    const-string v11, "music_albumid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7718
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_5
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7719
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7738
    return-void

    .line 7657
    .end local v2           #albumID:I
    .end local v7           #pauseIntent:Landroid/content/Intent;
    .end local v8           #statusintent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 7704
    .restart local v2       #albumID:I
    .restart local v7       #pauseIntent:Landroid/content/Intent;
    .restart local v8       #statusintent:Landroid/content/Intent;
    :cond_7
    :try_start_1
    const-string v11, "[MediaPlaybackService]"

    const-string v13, "updateNotification, mNonUiHandler is null."

    invoke-static {v11, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7719
    .end local v7           #pauseIntent:Landroid/content/Intent;
    .end local v8           #statusintent:Landroid/content/Intent;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method private updateRemoteControlClient(Ljava/lang/String;)V
    .locals 6
    .parameter "what"

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 2971
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRemoteControlClient - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2974
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isDmcOrPushMode() - return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 2978
    :cond_1
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2979
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 2981
    :cond_4
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "action_complete_one_download"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2982
    :cond_5
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v5}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 2983
    .local v0, ed:Landroid/media/RemoteControlClient$MetadataEditor;
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2984
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2985
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2986
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2988
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->genJasonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3005
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method private waitForAnimation()V
    .locals 3

    .prologue
    .line 4363
    monitor-enter p0

    .line 4364
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4365
    monitor-exit p0

    .line 4389
    :goto_0
    return-void

    .line 4367
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4368
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x7be

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4371
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4373
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 4383
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 4384
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_2

    .line 4385
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4386
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4388
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4376
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4377
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForAnimation mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4378
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_4

    .line 4379
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4380
    :cond_4
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 8004
    return-void
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 8041
    return-void
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 4
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 8080
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnHdmiPlugReceiver bIsPluged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8082
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8083
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, If support Global Beats. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8110
    :cond_0
    :goto_0
    return-void

    .line 8087
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8088
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, Wired/BT headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8093
    :cond_2
    if-lez p2, :cond_0

    .line 8095
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8096
    .local v0, currentStyle:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "Original"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8097
    const-string v1, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8101
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public activityGoSleep()V
    .locals 1

    .prologue
    .line 4935
    monitor-enter p0

    .line 4936
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 4937
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_0

    .line 4938
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->forcePlay()V

    .line 4940
    :cond_0
    monitor-exit p0

    .line 4941
    return-void

    .line 4940
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityWakeup()V
    .locals 1

    .prologue
    .line 4944
    monitor-enter p0

    .line 4945
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 4946
    monitor-exit p0

    .line 4947
    return-void

    .line 4946
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAlbumArtRequests()V
    .locals 1

    .prologue
    .line 5823
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5824
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearAlbumArtRequests()V

    .line 5826
    :cond_0
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1

    .prologue
    .line 5900
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5901
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearNowplayingQueueRequests()V

    .line 5905
    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 4
    .parameter "storagePath"

    .prologue
    .line 2881
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 2882
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2884
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2887
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 2889
    .local v0, isPlaying:Z
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 2894
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2895
    if-eqz v0, :cond_0

    .line 2896
    const-string v2, "com.htc.music.playstatechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2903
    .end local v0           #isPlaying:Z
    :cond_0
    :goto_0
    return-void

    .line 2900
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 5278
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5279
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .line 5281
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 4786
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "endAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4787
    monitor-enter p0

    .line 4788
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4793
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    .line 4797
    :goto_0
    monitor-exit p0

    .line 4799
    return-void

    .line 4795
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Bad !! endAnimation is not pair"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4797
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueue([II)V
    .locals 2
    .parameter "list"
    .parameter "action"

    .prologue
    .line 3381
    monitor-enter p0

    .line 3382
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_3

    .line 3383
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3384
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3398
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_2

    .line 3399
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3400
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3401
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 3402
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3403
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3405
    :cond_2
    monitor-exit p0

    .line 3406
    :goto_0
    return-void

    .line 3387
    :cond_3
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3388
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3389
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3390
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3391
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3392
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_4

    .line 3393
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3394
    :cond_4
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3395
    monitor-exit p0

    goto :goto_0

    .line 3405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 5120
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5121
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v11

    .line 5122
    .local v11, position:I
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 5123
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v11}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v6

    .line 5194
    .end local v11           #position:I
    :cond_0
    :goto_0
    return-object v6

    .line 5125
    .restart local v11       #position:I
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v11}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5132
    .end local v11           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v10

    .line 5133
    .local v10, id:I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    .line 5137
    monitor-enter p0

    .line 5139
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v0, v10, :cond_3

    .line 5140
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5146
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 5147
    .local v7, albumName:Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5148
    :cond_4
    monitor-enter p0

    .line 5149
    :try_start_2
    iput v10, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5151
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 5157
    :cond_5
    const/4 v9, 0x0

    .line 5159
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5161
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5164
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 5165
    :cond_6
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 5197
    if-eqz v9, :cond_0

    .line 5198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5199
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 5169
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5170
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    .line 5171
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 5172
    :cond_8
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 5197
    if-eqz v9, :cond_0

    .line 5198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5177
    :cond_9
    :try_start_5
    const-string v0, "album_art"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 5178
    .local v8, artColumnIndex:I
    if-gez v8, :cond_a

    .line 5179
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot find art column index"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 5197
    if-eqz v9, :cond_0

    .line 5198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5183
    :cond_a
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5184
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5185
    .local v6, albumArtPath:Ljava/lang/String;
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5186
    if-eqz v6, :cond_b

    :try_start_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 5187
    iput v10, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5188
    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5190
    :cond_b
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 5197
    if-eqz v9, :cond_0

    .line 5198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5190
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 5197
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #albumArtPath:Ljava/lang/String;
    .end local v8           #artColumnIndex:I
    :catchall_3
    move-exception v0

    if-eqz v9, :cond_c

    .line 5198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5199
    const/4 v9, 0x0

    .line 5197
    :cond_c
    throw v0

    .line 5193
    .restart local v3       #where:Ljava/lang/String;
    .restart local v8       #artColumnIndex:I
    :cond_d
    :try_start_a
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot move to first position"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 5197
    if-eqz v9, :cond_0

    .line 5198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 5867
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5869
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 5870
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5878
    :goto_0
    return-object v0

    .line 5872
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5878
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"

    .prologue
    .line 5883
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5884
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5887
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 5084
    monitor-enter p0

    .line 5085
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5086
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumId()I

    move-result v0

    monitor-exit p0

    .line 5088
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    monitor-exit p0

    goto :goto_0

    .line 5090
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5071
    monitor-enter p0

    .line 5072
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5073
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5078
    :goto_0
    return-object v0

    .line 5075
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5076
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mAlbum == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5080
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumQueue()[I
    .locals 5

    .prologue
    .line 4884
    monitor-enter p0

    .line 4885
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4889
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v1

    .line 4892
    .local v1, len:I
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4893
    const/4 v1, 0x1

    .line 4896
    :cond_0
    new-array v2, v1, [I

    .line 4897
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4898
    aput v0, v2, v0

    .line 4897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4900
    :cond_1
    monitor-exit p0

    move-object v3, v2

    .line 4908
    .end local v2           #list:[I
    .local v3, list:[I
    :goto_1
    return-object v3

    .line 4903
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #list:[I
    :cond_2
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4904
    .restart local v1       #len:I
    new-array v2, v1, [I

    .line 4905
    .restart local v2       #list:[I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 4906
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 4905
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4908
    :cond_3
    monitor-exit p0

    move-object v3, v2

    .end local v2           #list:[I
    .restart local v3       #list:[I
    goto :goto_1

    .line 4910
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #list:[I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAlbumQueuePosition()I
    .locals 1

    .prologue
    .line 4915
    monitor-enter p0

    .line 4916
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4919
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4920
    const/4 v0, 0x0

    monitor-exit p0

    .line 4926
    :goto_0
    return v0

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4931
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4926
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    .prologue
    .line 4961
    monitor-enter p0

    .line 4962
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4965
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4966
    const/4 v0, 0x1

    monitor-exit p0

    .line 4972
    :goto_0
    return v0

    .line 4969
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4974
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4972
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAnimationStatus()Z
    .locals 1

    .prologue
    .line 4802
    monitor-enter p0

    .line 4803
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4804
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 5061
    monitor-enter p0

    .line 5062
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5063
    const/4 v0, -0x1

    monitor-exit p0

    .line 5065
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    monitor-exit p0

    goto :goto_0

    .line 5067
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5048
    monitor-enter p0

    .line 5049
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5050
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5055
    :goto_0
    return-object v0

    .line 5052
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5053
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mArtist == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5055
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5057
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 4994
    monitor-enter p0

    .line 4995
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_2

    .line 4996
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 4999
    :goto_0
    return v0

    .line 4998
    :cond_2
    monitor-exit p0

    .line 4999
    const/4 v0, -0x1

    goto :goto_0

    .line 4998
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 5006
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5007
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioSessionId()I

    move-result v0

    .line 5009
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 5808
    monitor-enter p0

    .line 5809
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getBufferingPercent()I

    move-result v0

    monitor-exit p0

    .line 5813
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    monitor-exit p0

    goto :goto_0

    .line 5815
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5745
    monitor-enter p0

    .line 5746
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5747
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getComposer()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5749
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5751
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrmConstraint(Landroid/net/Uri;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2
    .parameter "uri"

    .prologue
    .line 5473
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "drmuri"

    .prologue
    .line 5411
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 5412
    .local v12, resolver:Landroid/content/ContentResolver;
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

    .line 5418
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 5419
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 5421
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5422
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5423
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 5424
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5425
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5427
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5429
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5432
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

    .line 5436
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 5437
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5438
    const/4 v11, 0x0

    .line 5442
    :cond_1
    return-object v10

    .line 5436
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 5437
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5438
    const/4 v11, 0x0

    .line 5436
    :cond_2
    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 5819
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5755
    monitor-enter p0

    .line 5756
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5757
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5759
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5761
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 9

    .prologue
    .line 5765
    monitor-enter p0

    .line 5766
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5767
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getGenre()Ljava/lang/String;

    move-result-object v8

    monitor-exit p0

    .line 5792
    :goto_0
    return-object v8

    .line 5769
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 5770
    .local v6, audioId:I
    const/4 v8, 0x0

    .line 5771
    .local v8, genre:Ljava/lang/String;
    if-ltz v6, :cond_2

    .line 5772
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 5776
    .local v2, CursorCols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5779
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5782
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 5783
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5784
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5787
    :cond_1
    if-eqz v7, :cond_2

    .line 5788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5792
    .end local v2           #CursorCols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 5794
    .end local v6           #audioId:I
    .end local v8           #genre:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5798
    monitor-enter p0

    .line 5799
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5800
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5802
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5804
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 4775
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getNowplayingQueue(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 5892
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5893
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getNowplayingQueue(I)V

    .line 5897
    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4983
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4984
    const-string v0, "plugin_file_path"

    .line 4986
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4770
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    .line 4771
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 4
    .parameter "shufflePosition"

    .prologue
    const/4 v2, -0x1

    .line 5829
    monitor-enter p0

    .line 5830
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5831
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getPositionByShufflePosition(I)I

    move-result v1

    monitor-exit p0

    .line 5842
    :goto_0
    return v1

    .line 5833
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5835
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5837
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v0, v3, p1

    .line 5839
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5840
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5844
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5839
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5842
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 4

    .prologue
    .line 3672
    monitor-enter p0

    .line 3673
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3674
    .local v1, len:I
    new-array v2, v1, [I

    .line 3675
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3676
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3678
    :cond_0
    monitor-exit p0

    return-object v2

    .line 3679
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 5018
    monitor-enter p0

    .line 5020
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5021
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    .line 5024
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    goto :goto_0

    .line 5025
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 4950
    monitor-enter p0

    .line 4952
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4953
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 4956
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    goto :goto_0

    .line 4957
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 4750
    monitor-enter p0

    .line 4751
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4752
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    .line 4754
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    monitor-exit p0

    goto :goto_0

    .line 4756
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 4728
    monitor-enter p0

    .line 4729
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4730
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    .line 4732
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    monitor-exit p0

    goto :goto_0

    .line 4734
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 5848
    monitor-enter p0

    .line 5849
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5850
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getShufflePositionByPosition(I)I

    move-result v1

    monitor-exit p0

    .line 5861
    :goto_0
    return v1

    .line 5852
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5854
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5856
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v0, v3, p1

    .line 5858
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5859
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5863
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5858
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5861
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getTrackDetails(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 5908
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5909
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getTrackDetails(I)V

    .line 5913
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5094
    monitor-enter p0

    .line 5095
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5096
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5101
    :goto_0
    return-object v0

    .line 5098
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5099
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getTrackName: mTitle == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5101
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 4765
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getVolume()I

    move-result v0

    .line 4766
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 5
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 8045
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headSetStatusChanged, newStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBeatsHeadset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8047
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8076
    :cond_0
    :goto_0
    return-void

    .line 8056
    :cond_1
    if-nez p1, :cond_0

    .line 8058
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v1

    .line 8060
    .local v1, selectSoundStyleIndes:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8061
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v1, v2, :cond_0

    .line 8062
    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8063
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 8067
    :cond_2
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v2, :cond_0

    .line 8068
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v0

    .line 8070
    .local v0, effect:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8071
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 4016
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4017
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPlaying()Z

    move-result v0

    .line 4019
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 3

    .prologue
    .line 4358
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 5
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3600
    monitor-enter p0

    .line 3601
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_0

    .line 3602
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v2, -0x1

    .line 3604
    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_1

    .line 3605
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 3607
    :cond_1
    if-ge p1, p2, :cond_5

    .line 3608
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3609
    .local v1, tmp:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 3610
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3612
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3613
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_4

    .line 3614
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3630
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3631
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3632
    monitor-exit p0

    .line 3633
    return-void

    .line 3615
    .restart local v0       #i:I
    .restart local v1       #tmp:I
    :cond_4
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 3616
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3632
    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3618
    :cond_5
    if-ge p2, p1, :cond_3

    .line 3619
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3620
    .restart local v1       #tmp:I
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 3621
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3620
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3623
    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3624
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_7

    .line 3625
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3626
    :cond_7
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_3

    .line 3627
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 4067
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 4068
    return-void
.end method

.method public next(ZZ)V
    .locals 1
    .parameter "force"
    .parameter "playAnim"

    .prologue
    .line 4071
    monitor-enter p0

    .line 4072
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4073
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->pluginNext(Z)V

    .line 4077
    :goto_0
    monitor-exit p0

    .line 4078
    return-void

    .line 4075
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V

    goto :goto_0

    .line 4077
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextAlbum(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 4355
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 2638
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2639
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2641
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2643
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    const-class v1, Lcom/htc/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2647
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onBind IHtcMediaPlaybackService"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 2653
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 19

    .prologue
    .line 1564
    const-string v16, "[MediaPlaybackService]"

    const-string v17, "onCreate"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 1566
    const-string v16, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1567
    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-class v17, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    .local v12, rec:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1570
    new-instance v8, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v8, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1575
    .local v9, mediaPendingIntent:Landroid/app/PendingIntent;
    new-instance v16, Landroid/media/RemoteControlClient;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1578
    const/16 v6, 0xbd

    .line 1584
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1586
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    .line 1587
    .local v14, status:Landroid/app/Notification;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1588
    const-string v16, "Music"

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1589
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "plugin"

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1591
    .local v7, lastPluginClass:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    .line 1592
    .local v15, storageStatus:Ljava/lang/String;
    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "mounted_ro"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const/16 v16, 0x1

    :goto_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 1595
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1596
    if-eqz v7, :cond_0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1597
    :cond_0
    new-instance v16, Lcom/htc/music/MusicPluginManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 1602
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 1604
    new-instance v16, Landroid/os/HandlerThread;

    const-string v17, "MediaPlaybackServiceWorker"

    invoke-direct/range {v16 .. v17}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->start()V

    .line 1606
    new-instance v16, Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 1611
    new-instance v16, Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    const/16 v17, 0xd

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    const/16 v17, 0xf

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1625
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1626
    .local v3, commandFilter:Landroid/content/IntentFilter;
    const-string v16, "com.htc.music.musicservicecommand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1627
    const-string v16, "com.htc.music.musicservicecommand.togglepause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1628
    const-string v16, "com.htc.music.musicservicecommand.pause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    const-string v16, "com.htc.music.musicservicecommand.next"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1630
    const-string v16, "com.htc.music.musicservicecommand.previous"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    const-string v16, "com.android.music.musicservicecommand.togglepause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1632
    const-string v16, "com.android.music.musicservicecommand.pause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1633
    const-string v16, "com.android.music.musicservicecommand.next"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1634
    const-string v16, "com.android.music.musicservicecommand.previous"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1636
    const-string v16, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1637
    const-string v16, "com.android.music.musicservicecommand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1638
    const-string v16, "com.htc.music.onerror"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1639
    const-string v16, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1652
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1653
    .local v13, shutdownReceiver:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1654
    const-string v16, "android.intent.action.QUICKBOOT_POWEROFF"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    .line 1662
    new-instance v16, Lcom/htc/music/MediaPlaybackService$DockEventListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService$DockEventListener;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1663
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1664
    .local v5, dockEventReceiver:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1667
    new-instance v16, Lcom/htc/music/MediaPlaybackService$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$QueryHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 1671
    const-string v16, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 1672
    .local v11, pm:Landroid/os/PowerManager;
    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 1678
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const-wide/32 v17, 0xea60

    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1681
    const-wide/16 v16, 0x2710

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1690
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1691
    .local v4, dlArtFilter:Landroid/content/IntentFilter;
    const-string v16, "action_complete_one_download"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1694
    const-string v16, "[MediaPlaybackService]"

    const-string v17, "onCreate finished"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    return-void

    .line 1592
    .end local v3           #commandFilter:Landroid/content/IntentFilter;
    .end local v4           #dlArtFilter:Landroid/content/IntentFilter;
    .end local v5           #dockEventReceiver:Landroid/content/IntentFilter;
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #pm:Landroid/os/PowerManager;
    .end local v13           #shutdownReceiver:Landroid/content/IntentFilter;
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1599
    :cond_3
    new-instance v16, Lcom/htc/music/MusicPluginManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1700
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy Begin]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1709
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1711
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1712
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1713
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1715
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1717
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1721
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1722
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1725
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1726
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1727
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1728
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1729
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1732
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1733
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1735
    :cond_4
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 1736
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_5

    .line 1737
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 1740
    :cond_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 1741
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1742
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 1745
    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 1746
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1747
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1750
    :cond_7
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 1751
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1752
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    .line 1755
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1757
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 1760
    :cond_9
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 1761
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 1764
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 1765
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1767
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1768
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1770
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1771
    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1774
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_a

    .line 1775
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1776
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopHandlerThread()V

    .line 1779
    :cond_a
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1780
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy End]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 7522
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7523
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 7545
    :cond_0
    :goto_0
    return-void

    .line 7527
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7528
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 7531
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0

    .line 7534
    :cond_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 7535
    const/4 v0, 0x1

    .line 7536
    .local v0, isPowerOff:Z
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 7537
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 7538
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 7540
    .end local v0           #isPowerOff:Z
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 7541
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2659
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2660
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2662
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2663
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

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

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2668
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 2670
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2672
    if-nez p1, :cond_0

    .line 2673
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2674
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand intent NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    const/4 v11, 0x1

    .line 2802
    :goto_0
    return v11

    .line 2678
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2679
    .local v1, action:Ljava/lang/String;
    const-string v11, "command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2680
    .local v3, cmd:Ljava/lang/String;
    const-string v11, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2681
    .local v8, mode:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "car"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2682
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->switchToLocal()V

    .line 2686
    :cond_1
    const-string v11, "forcePlay"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2687
    .local v5, forcePlay:Z
    const-string v11, "classname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2688
    .local v2, className:Ljava/lang/String;
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2689
    .local v10, tm:Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_2

    .line 2690
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2691
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand TelephonyManager NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    const/4 v11, 0x1

    goto :goto_0

    .line 2694
    :cond_2
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v7, 0x1

    .line 2695
    .local v7, isPhoneIdle:Z
    :goto_1
    if-nez v7, :cond_4

    .line 2696
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2697
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand call state is not idle"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    const/4 v11, 0x1

    goto :goto_0

    .line 2694
    .end local v7           #isPhoneIdle:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2701
    .restart local v7       #isPhoneIdle:Z
    :cond_4
    const-string v11, "next"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.android.music.musicservicecommand.next"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2702
    :cond_5
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDNEXT"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    if-eqz v5, :cond_6

    .line 2704
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2706
    :cond_6
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 2799
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2800
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 2801
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v12, 0xea60

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2802
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2707
    .end local v9           #msg:Landroid/os/Message;
    :cond_8
    const-string v11, "previous"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2708
    :cond_9
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDPREVIOUS"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    if-eqz v5, :cond_a

    .line 2710
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2712
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    goto :goto_2

    .line 2713
    :cond_b
    const-string v11, "togglepause"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2714
    :cond_c
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    cmp-long v11, v11, v13

    if-ltz v11, :cond_7

    .line 2720
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2721
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2722
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_2

    .line 2724
    :cond_d
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_7

    .line 2725
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v11

    if-nez v11, :cond_e

    .line 2726
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2727
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2729
    :cond_e
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2730
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2733
    :cond_f
    const-string v11, "pause"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2734
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2735
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2736
    :cond_11
    const-string v11, "play"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2737
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2738
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2739
    :cond_12
    const-string v11, "stop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2740
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2741
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2742
    const-wide/16 v11, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 2743
    const-string v11, "com.htc.music.playstatechanged"

    invoke-direct {p0, v11}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2744
    :cond_13
    const-string v11, "ffstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2745
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFFSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2747
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2748
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2749
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2750
    .end local v9           #msg:Landroid/os/Message;
    :cond_14
    const-string v11, "rwstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 2751
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRWSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2753
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2754
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2755
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2756
    .end local v9           #msg:Landroid/os/Message;
    :cond_15
    const-string v11, "ffstop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "rwstop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 2757
    :cond_16
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFF/RWSTOP"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2760
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-eqz v11, :cond_7

    .line 2761
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    .line 2764
    :cond_17
    const-string v11, "resume"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 2765
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRESUME"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v11, :cond_7

    .line 2769
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    .line 2770
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2772
    :cond_18
    const-string v11, "bindplugin"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2773
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDBINDPLUGIN"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2776
    :cond_19
    const-string v11, "play_artist"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "play_album"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "play_playlist"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "play_track"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2780
    :cond_1a
    const-string v11, "id"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2781
    .local v6, iID:I
    const-string v11, "[MediaPlaybackService]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onStartCommand, cmd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", iID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_1c

    .line 2783
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 2784
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2786
    :cond_1b
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2787
    .restart local v9       #msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2788
    .local v4, data:Landroid/os/Bundle;
    const-string v11, "command"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    const-string v11, "id"

    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2790
    invoke-virtual {v9, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2791
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2794
    .end local v4           #data:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    :cond_1c
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand, mNonUiHandler = null!"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 2807
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2810
    .local v0, action:Ljava/lang/String;
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    .line 2811
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :cond_0
    :goto_0
    return v5

    .line 2815
    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2816
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayback is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    .line 2823
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 2826
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2828
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_3

    .line 2831
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind isPlaying() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2838
    :cond_3
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2839
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2840
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2841
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind mPlayListLen > 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2846
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 2847
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    .line 2849
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 17
    .parameter "path"
    .parameter "oneshot"

    .prologue
    .line 3765
    monitor-enter p0

    .line 3766
    if-nez p1, :cond_0

    .line 3767
    :try_start_0
    monitor-exit p0

    .line 3942
    :goto_0
    return-void

    .line 3770
    :cond_0
    const/4 v11, 0x0

    .line 3771
    .local v11, drmFileToPlay:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 3772
    new-instance v2, Lcom/htc/music/NpCategory;

    const/16 v4, 0x15

    invoke-direct {v2, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 3773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_1

    .line 3774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3776
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 3777
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3778
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3779
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3780
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    const/4 v7, -0x1

    aput v7, v2, v4

    .line 3789
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3796
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gtz v2, :cond_4

    .line 3801
    const-string v2, "content://media/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3802
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3803
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 3804
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3825
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3826
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 3827
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 3828
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3829
    const/4 v9, 0x0

    .line 3851
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3852
    if-eqz v9, :cond_4

    .line 3853
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3860
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-lez v2, :cond_11

    .line 3861
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 3862
    .local v10, data:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3863
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 3864
    move-object/from16 p1, v10

    .line 3875
    .end local v10           #data:Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3876
    if-eqz v11, :cond_13

    .line 3877
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drmFileToPlay= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_12

    .line 3882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2, v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3884
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 3897
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_17

    .line 3898
    const/16 v12, 0xa

    .line 3899
    .local v12, min:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v4, 0xa

    if-ge v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_6

    .line 3900
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3903
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v2, v12, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_15

    .line 3904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 3905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3913
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-ge v2, v12, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    .line 3915
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 3918
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v2, v12, :cond_9

    .line 3919
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 3922
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v2, :cond_b

    .line 3927
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_b

    .line 3928
    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->hasValidRights()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3930
    :cond_a
    const v2, 0x7f070096

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    .line 3941
    .end local v12           #min:I
    :cond_b
    :goto_7
    monitor-exit p0

    goto/16 :goto_0

    .end local v11           #drmFileToPlay:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3805
    .restart local v11       #drmFileToPlay:Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v2, "/sdcard/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3806
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3807
    .restart local v3       #uri:Landroid/net/Uri;
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3810
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3814
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3816
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_8
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3819
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3814
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_8

    .line 3831
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_f
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3832
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3833
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v2, v4

    .line 3835
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3836
    const/4 v8, -0x1

    .line 3837
    .local v8, albumID:I
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 3838
    const-string v2, "album_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3841
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3842
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    aput v8, v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 3856
    .end local v8           #albumID:I
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 3867
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_11
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3868
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open, wasDrmContent, path: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", reset playlist length"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 3870
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3871
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    .line 3886
    :cond_12
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "drm setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3889
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_14

    .line 3890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3892
    :cond_14
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3908
    .restart local v12       #min:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 3909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto/16 :goto_6

    .line 3932
    :cond_16
    const v2, 0x7f070068

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    goto/16 :goto_7

    .line 3937
    .end local v12           #min:I
    :cond_17
    if-nez v11, :cond_b

    .line 3938
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7
.end method

.method public open([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 3416
    monitor-enter p0

    .line 3417
    :try_start_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3418
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3421
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 3422
    .local v3, oldId:I
    array-length v1, p1

    .line 3424
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 3425
    .local v2, newlist:Z
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v4, v1, :cond_1

    .line 3427
    const/4 v2, 0x0

    .line 3428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3429
    aget v4, p1, v0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_5

    .line 3430
    const/4 v2, 0x1

    .line 3436
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_3

    .line 3437
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v6, :cond_6

    .line 3438
    if-gez p2, :cond_2

    .line 3439
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    .line 3443
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3444
    const/4 p2, 0x0

    .line 3446
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3449
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3458
    :goto_1
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3459
    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3462
    :cond_3
    if-ltz p2, :cond_7

    .line 3463
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3469
    :goto_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 3471
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3472
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3473
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 3474
    const-string v4, "com.htc.music.metachanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3476
    :cond_4
    monitor-exit p0

    .line 3477
    return-void

    .line 3428
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3453
    .end local v0           #i:I
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3476
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3465
    .restart local v1       #listlength:I
    .restart local v2       #newlist:Z
    .restart local v3       #oldId:I
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 3736
    monitor-enter p0

    .line 3737
    if-nez p1, :cond_0

    .line 3738
    :try_start_0
    monitor-exit p0

    .line 3755
    :goto_0
    return-void

    .line 3741
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3742
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3743
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3745
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3748
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3751
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3752
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    .line 3753
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 3754
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 3995
    monitor-enter p0

    .line 3996
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    .line 3997
    .local v0, isPluginMode:Z
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, isPluginMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_0

    .line 4000
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4001
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4007
    :goto_0
    monitor-exit p0

    .line 4008
    return-void

    .line 4003
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 4004
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    goto :goto_0

    .line 4007
    .end local v0           #isPluginMode:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 4

    .prologue
    .line 3948
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "play() +++++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3949
    monitor-enter p0

    .line 3951
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 3953
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3956
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3958
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3959
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3960
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    .line 3964
    :goto_0
    monitor-exit p0

    .line 3965
    return-void

    .line 3962
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    goto :goto_0

    .line 3964
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playAlbum(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 5206
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5207
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    .line 5208
    .local v0, len:I
    if-eqz v0, :cond_0

    if-lt p1, v0, :cond_1

    .line 5209
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "playAlbum, Plugin mode, Something bad happened"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 5268
    .end local v0           #len:I
    .end local p1
    :goto_0
    return p1

    .line 5213
    .restart local v0       #len:I
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    goto :goto_0

    .line 5219
    .end local v0           #len:I
    :cond_2
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lt p1, v3, :cond_4

    .line 5220
    :cond_3
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Something bad happened"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 5221
    goto :goto_0

    .line 5223
    :cond_4
    monitor-enter p0

    .line 5225
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 5227
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5232
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5237
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_5

    .line 5238
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5239
    :cond_5
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5240
    monitor-exit p0

    move p1, v2

    goto :goto_0

    .line 5256
    :cond_6
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5260
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5264
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_7

    .line 5265
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5266
    :cond_7
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5268
    monitor-exit p0

    goto :goto_0

    .line 5269
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 7589
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 7598
    :cond_0
    :goto_0
    return-void

    .line 7591
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7592
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathshuffleupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7595
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7596
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7597
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginAlbumArtPathUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 7577
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 7586
    :cond_0
    :goto_0
    return-void

    .line 7579
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7580
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7583
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7584
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7585
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "action"
    .parameter "extra"

    .prologue
    const/4 v4, 0x2

    .line 7548
    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v3, :cond_3

    .line 7549
    const-string v3, "com.htc.music.playstatechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.music.playbackcomplete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7553
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7555
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7558
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginUpdateNotification()Landroid/app/Notification;

    move-result-object v2

    .line 7559
    .local v2, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7560
    .local v1, msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7561
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7565
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #notification:Landroid/app/Notification;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7566
    .restart local v1       #msg:Landroid/os/Message;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7567
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pluginNotifyChange: extra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7569
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "extrastate"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7570
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7572
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 7574
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7601
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p2, :cond_1

    .line 7608
    :cond_0
    :goto_0
    return-void

    .line 7603
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.nowplayingqueueupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7604
    .local v0, i:Landroid/content/Intent;
    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7605
    const-string v1, "end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7606
    const-string v1, "values"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7607
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V
    .locals 2
    .parameter "position"
    .parameter "values"

    .prologue
    .line 7611
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 7617
    :cond_0
    :goto_0
    return-void

    .line 7613
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.trackdetailsupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7614
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7615
    const-string v1, "values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7616
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 5289
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5290
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->position()J

    move-result-wide v0

    .line 5292
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 4050
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    .line 4051
    return-void
.end method

.method public prev(Z)V
    .locals 1
    .parameter "playAnim"

    .prologue
    .line 4054
    monitor-enter p0

    .line 4055
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4056
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginPrev(Z)V

    .line 4060
    :goto_0
    monitor-exit p0

    .line 4061
    return-void

    .line 4058
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0

    .line 4060
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prevAlbum()V
    .locals 0

    .prologue
    .line 4246
    return-void
.end method

.method printATSPauseMusictoStopLog()V
    .locals 0

    .prologue
    .line 8198
    return-void
.end method

.method printATSPlayMusicLog()V
    .locals 0

    .prologue
    .line 8174
    return-void
.end method

.method printATSStopMusicByPhoneCallLog()V
    .locals 0

    .prologue
    .line 8221
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 2911
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2912
    new-instance v1, Lcom/htc/music/MediaPlaybackService$10;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackService$10;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 2960
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2961
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2962
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2963
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2964
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2965
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2966
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2968
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 2047
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    if-eqz v0, :cond_0

    .line 2049
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue: mIsReloadingQueue = true"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    monitor-enter p0

    .line 2055
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    :goto_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    return-void

    .line 2055
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2057
    :cond_0
    monitor-enter p0

    .line 2058
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 2059
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()V

    .line 2060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 2061
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public removeQueueTracks([I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 4611
    const/4 v1, 0x0

    .line 4612
    .local v1, numremoved:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4614
    monitor-enter p0

    .line 4615
    :try_start_0
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4616
    aget v2, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4615
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4618
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4620
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_1

    .line 4621
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4622
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 4624
    :cond_1
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeQueueTracks numremoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4625
    if-lez v1, :cond_3

    .line 4626
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    if-nez v2, :cond_2

    .line 4627
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "removeQueueTracks mQueueModified = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4628
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4630
    :cond_2
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4632
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 4635
    :cond_3
    return v1

    .line 4618
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTrack(I)I
    .locals 5
    .parameter "id"

    .prologue
    .line 4586
    const/4 v1, 0x0

    .line 4587
    .local v1, numremoved:I
    monitor-enter p0

    .line 4588
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 4589
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 4590
    invoke-direct {p0, v0, v0}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4591
    add-int/lit8 v0, v0, -0x1

    .line 4588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4594
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4596
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTracks id numremoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4597
    if-lez v1, :cond_2

    .line 4598
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4599
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4601
    :cond_2
    return v1

    .line 4594
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 4489
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 4490
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 4491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4492
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4494
    :cond_0
    return v0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 4645
    const/4 v3, 0x0

    .line 4646
    .local v3, numRemoved:I
    const/4 v0, 0x0

    .line 4647
    .local v0, countToBroadcast:I
    array-length v4, p1

    .line 4648
    .local v4, removeTrackCount:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4650
    monitor-enter p0

    .line 4651
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_5

    .line 4653
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v5, :cond_1

    .line 4654
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v5, v5, v2

    aget v6, p1, v1

    if-ne v5, v6, :cond_0

    .line 4655
    invoke-direct {p0, v2, v2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 4653
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4658
    :cond_1
    if-lez v3, :cond_2

    .line 4659
    add-int/lit8 v0, v0, 0x1

    .line 4661
    :cond_2
    const/16 v5, 0x32

    if-ne v0, v5, :cond_3

    .line 4662
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast 50"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4663
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4664
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4665
    const/4 v0, 0x0

    .line 4667
    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_4

    .line 4668
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast removeTrackCount - "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4669
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4670
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4651
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4673
    .end local v2           #j:I
    :cond_5
    monitor-exit p0

    .line 4674
    return v3

    .line 4673
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public seek(J)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 5303
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    .line 5305
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5307
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .local v0, mDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 5308
    move-wide p1, v0

    .line 5310
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/MusicPluginManager;->seek(J)J

    move-result-wide v2

    .line 5313
    .end local v0           #mDuration:J
    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 4875
    monitor-enter p0

    .line 4876
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToAlbumList([II)V

    .line 4878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 4879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4880
    monitor-exit p0

    .line 4881
    return-void

    .line 4880
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaylist([IZ)V
    .locals 9
    .parameter "list"
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    .line 3517
    monitor-enter p0

    .line 3518
    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3519
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3521
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 3522
    .local v4, oldId:I
    array-length v2, p1

    .line 3524
    .local v2, listlength:I
    const/4 v3, 0x1

    .line 3528
    .local v3, newlist:Z
    if-nez p2, :cond_1

    .line 3529
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v2, :cond_1

    .line 3530
    const/4 v3, 0x0

    .line 3531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3532
    aget v6, p1, v0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_8

    .line 3533
    const/4 v3, 0x1

    .line 3539
    .end local v0           #i:I
    :cond_1
    if-eqz v3, :cond_2

    .line 3540
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v6, v8, :cond_9

    .line 3542
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3544
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3547
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3555
    :goto_1
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3556
    const-string v6, "com.htc.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3559
    :cond_2
    const/4 v5, 0x0

    .line 3560
    .local v5, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v6, :cond_3

    .line 3561
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_a

    .line 3562
    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3563
    const/4 v5, 0x1

    .line 3567
    :cond_3
    if-nez v5, :cond_5

    .line 3568
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3570
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3571
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 3572
    .local v1, isPlaying:Z
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3573
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3574
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3576
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3581
    .end local v1           #isPlaying:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3583
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3585
    if-nez v5, :cond_6

    .line 3586
    const-string v6, "com.htc.music.metachanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3588
    :cond_6
    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v6, :cond_7

    .line 3589
    const-string v6, "com.htc.music.refresh"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3591
    :cond_7
    monitor-exit p0

    .line 3592
    return-void

    .line 3531
    .end local v5           #playPosFound:Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3551
    .end local v0           #i:I
    :cond_9
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3591
    .end local v2           #listlength:I
    .end local v3           #newlist:Z
    .end local v4           #oldId:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3560
    .restart local v0       #i:I
    .restart local v2       #listlength:I
    .restart local v3       #newlist:Z
    .restart local v4       #oldId:I
    .restart local v5       #playPosFound:Z
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 5033
    monitor-enter p0

    .line 5034
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5035
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 5044
    :goto_0
    monitor-exit p0

    .line 5045
    return-void

    .line 5037
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 5038
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5039
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5040
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 5041
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5042
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 5044
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 4738
    monitor-enter p0

    .line 4739
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4740
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setRepeatMode(I)V

    .line 4746
    :goto_0
    const-string v0, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4747
    monitor-exit p0

    .line 4748
    return-void

    .line 4742
    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 4743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0

    .line 4747
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 4
    .parameter "shufflemode"

    .prologue
    const/4 v3, 0x1

    .line 4678
    monitor-enter p0

    .line 4679
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4680
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setShuffleMode(I)V

    .line 4723
    :cond_0
    :goto_0
    const-string v1, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4724
    monitor-exit p0

    .line 4725
    :goto_1
    return-void

    .line 4682
    :cond_1
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_2

    .line 4683
    monitor-exit p0

    goto :goto_1

    .line 4724
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4685
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4686
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 4687
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4688
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode, shufflemode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", makeAutoShuffleList, reset playlist lenght."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4689
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4690
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 4691
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4692
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4693
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 4694
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4695
    :cond_3
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4696
    monitor-exit p0

    goto :goto_1

    .line 4699
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4702
    :cond_5
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_6

    .line 4704
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v0, v1, [I

    .line 4705
    .local v0, nonShufflePlayList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 4706
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_0

    .line 4707
    .end local v0           #nonShufflePlayList:[I
    :cond_6
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_0

    .line 4708
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 4709
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 4712
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4714
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4715
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4716
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_0

    .line 4717
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4718
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nVol"

    .prologue
    .line 4761
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setVolume(I)V

    .line 4762
    :cond_0
    return-void
.end method

.method public showPluginToast(Ljava/lang/String;I)V
    .locals 4
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5598
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5599
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5600
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5602
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5603
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5604
    return-void
.end method

.method shutdownServcieDelay()V
    .locals 4

    .prologue
    .line 5522
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5523
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5524
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5525
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 4779
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4780
    monitor-enter p0

    .line 4781
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4782
    monitor-exit p0

    .line 4783
    return-void

    .line 4782
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 3987
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "!!!! @@@@ stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3989
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 5
    .parameter "list"

    .prologue
    .line 3636
    monitor-enter p0

    .line 3637
    :try_start_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncNowPlayingQueue :: mPlayPos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPlayListLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    if-nez p1, :cond_0

    .line 3640
    monitor-exit p0

    .line 3655
    :goto_0
    return-void

    .line 3642
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v1, v2, v3

    .line 3643
    .local v1, tmp:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3647
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3648
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3647
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3650
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v1, v3}, Lcom/htc/music/MediaPlaybackService;->Search([III)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3652
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3653
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3654
    monitor-exit p0

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 5446
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

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 8007
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8027
    :cond_0
    return-void
.end method
