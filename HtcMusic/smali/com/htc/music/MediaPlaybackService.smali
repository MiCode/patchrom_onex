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

.field public static final CMD_USER_PROFILING_LOG:I = 0x11

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

.field private static final ULOG_MUSIC_COUNT:I = 0x1

.field private static final UNBINDPLUGIN_ON_BIND_COMPLETE:I = 0x5

.field private static final UPDATE_NOTIFICATION_ALBUMART:I = 0x7

.field private static final mDoAnimationViaHeadset:Z = false

.field private static final mMaxNotifyAlbumArtSideLen:I = 0x48


# instance fields
.field private final MAX_RECENT_TRACK_LIST_SIZE:I

.field private final NO_ANIMATION:I

.field private final PLAY_NEXT_ANIMATION:I

.field private final PLAY_PREV_ANIMATION:I

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

.field mIsInMirror:Z

.field private mIsPodcast:I

.field private volatile mIsReloadingQueue:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsSystemReady:Z

.field private volatile mIsWaitAnimation:Z

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

.field private mStartSeekPos:J

.field mTest:Z

.field private mTitle:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

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
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1454
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 258
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 259
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 260
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 261
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 262
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 263
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    .line 268
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 270
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 271
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 272
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 273
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 276
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 277
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 278
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 279
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 282
    new-instance v0, Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    .line 283
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 298
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 300
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 303
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v8

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

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

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

    .line 321
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 326
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 329
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 330
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 331
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 334
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 335
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 352
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 353
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 354
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    .line 356
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 357
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    .line 358
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 363
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 366
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 369
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    .line 372
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 376
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 378
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 380
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCategory:I

    .line 381
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCArtistId:I

    .line 382
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCAlbumId:I

    .line 383
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mCGenreId:I

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCComposer:Ljava/lang/StringBuilder;

    .line 385
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCPlaylistId:I

    .line 389
    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 391
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 393
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 395
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 397
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 399
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    .line 401
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    .line 403
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 404
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 405
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 406
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    .line 414
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->RECENT_ALBUM_LIST_COUNT:I

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    .line 417
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->MAX_RECENT_TRACK_LIST_SIZE:I

    .line 419
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 420
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    .line 422
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    .line 426
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 428
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 432
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 433
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 434
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 435
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 436
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 437
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 438
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 439
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 440
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 441
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 442
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 443
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 768
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 852
    new-instance v0, Lcom/htc/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$1;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 966
    new-instance v0, Lcom/htc/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$2;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    .line 1070
    new-instance v0, Lcom/htc/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$3;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1250
    new-instance v0, Lcom/htc/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$4;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 1317
    new-instance v0, Lcom/htc/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$5;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    .line 1371
    new-instance v0, Lcom/htc/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$6;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1437
    new-instance v0, Lcom/htc/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$7;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1668
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    .line 2741
    new-instance v0, Lcom/htc/music/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$8;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2964
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->NO_ANIMATION:I

    .line 2965
    iput v8, p0, Lcom/htc/music/MediaPlaybackService;->PLAY_PREV_ANIMATION:I

    .line 2966
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->PLAY_NEXT_ANIMATION:I

    .line 3957
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 5411
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 7506
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 7507
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 1455
    return-void

    .line 1668
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
    .line 3569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3570
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 3575
    .end local v0           #i:I
    :goto_1
    return v0

    .line 3569
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3574
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Bad thing ! I don\'t want to see this"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3575
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V

    return-void
.end method

.method static synthetic access$10700(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V

    return-void
.end method

.method static synthetic access$10800(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$10900(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return p1
.end method

.method static synthetic access$2308(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return p1
.end method

.method static synthetic access$3108(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return p1
.end method

.method static synthetic access$3208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$3902(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->resetPlayerForWirelessConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$5502(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    return p1
.end method

.method static synthetic access$5708(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$5802(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$5900(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$7500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7602(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$7608(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7610(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7700(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    return-void
.end method

.method static synthetic access$8402(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$8408(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$8500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$8600(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-static {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRecentAlbumList()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 8116
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8149
    :goto_0
    return-void

    .line 8118
    :cond_0
    monitor-enter p0

    .line 8119
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 8120
    .local v0, currAlbumId:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 8121
    .local v2, indexOfAlbumId:I
    if-nez v2, :cond_1

    .line 8122
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "current album is recently album"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8123
    monitor-exit p0

    goto :goto_0

    .line 8148
    .end local v0           #currAlbumId:I
    .end local v2           #indexOfAlbumId:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 8125
    .restart local v0       #currAlbumId:I
    .restart local v2       #indexOfAlbumId:I
    :cond_1
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "addRecentPlayList"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8127
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 8128
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8131
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8133
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 8134
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8138
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_4

    .line 8139
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 8141
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8142
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_5

    .line 8143
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V

    .line 8147
    :goto_1
    const-string v3, "com.htc.music.recentlyplayedalbumchanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 8148
    monitor-exit p0

    goto :goto_0

    .line 8145
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

    .line 8523
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8544
    :goto_0
    return-void

    .line 8525
    :cond_0
    monitor-enter p0

    .line 8526
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 8527
    .local v0, currAudioId:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 8528
    .local v1, indexOfAudioId:I
    if-nez v1, :cond_1

    .line 8529
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Current track is the most recent track."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8530
    monitor-exit p0

    goto :goto_0

    .line 8543
    .end local v0           #currAudioId:I
    .end local v1           #indexOfAudioId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8532
    .restart local v0       #currAudioId:I
    .restart local v1       #indexOfAudioId:I
    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayedPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8534
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 8535
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8538
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8540
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 8541
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8543
    :cond_3
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
    .line 3181
    array-length v0, p1

    .line 3182
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3183
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3184
    const/4 p2, 0x0

    .line 3186
    :cond_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3187
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-le p2, v3, :cond_1

    .line 3188
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3192
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    sub-int v2, v3, p2

    .line 3193
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3194
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3193
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3198
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3199
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 3198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3201
    :cond_3
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3202
    return-void
.end method

.method private addToPlayList([II)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 3053
    array-length v0, p1

    .line 3054
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3055
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

    .line 3056
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3057
    const/4 p2, 0x0

    .line 3059
    :cond_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3060
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v4, :cond_1

    .line 3061
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3065
    :cond_1
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v3, v4, p2

    .line 3066
    .local v3, tailsize:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3067
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v7, p2, v1

    sub-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 3066
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3071
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3072
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    aget v6, p1, v1

    aput v6, v4, v5

    .line 3071
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3074
    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3075
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

    .line 3077
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v8, :cond_4

    .line 3078
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v2

    .line 3079
    .local v2, shufflePlayList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3080
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3084
    .end local v2           #shufflePlayList:[I
    :goto_2
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3085
    return-void

    .line 3082
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private addToQueue(II)V
    .locals 5
    .parameter "type"
    .parameter "id"

    .prologue
    .line 8644
    const/4 v1, 0x0

    .line 8645
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 8647
    .local v0, albumList:[I
    monitor-enter p0

    .line 8648
    packed-switch p1, :pswitch_data_0

    .line 8695
    :goto_0
    :try_start_0
    monitor-exit p0

    .line 8696
    return-void

    .line 8651
    :pswitch_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 8652
    const/4 v2, 0x0

    aput p2, v0, v2

    .line 8653
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8655
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8656
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8695
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8660
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8661
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8663
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8664
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8668
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8669
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8671
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8672
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8676
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getAlbumListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 8677
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8679
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v1

    .line 8680
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8684
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForSong(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8685
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8687
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 8688
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 8689
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addToQueue([I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 8699
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 8700
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

    .line 8718
    :goto_0
    return-void

    .line 8704
    :cond_0
    const/4 v0, 0x0

    .line 8706
    .local v0, combineId:[I
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 8707
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_1

    .line 8708
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [I

    .line 8709
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8710
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    invoke-static {p1, v7, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8711
    invoke-virtual {p0, v0, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 8716
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

    .line 8717
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 8714
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_1
.end method

.method private addToQueueForMultiConditions(III)V
    .locals 3
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 8629
    const/4 v1, 0x0

    .line 8630
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 8633
    .local v0, albumList:[I
    monitor-enter p0

    .line 8634
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [I

    .line 8635
    const/4 v2, 0x0

    aput p3, v0, v2

    .line 8636
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8638
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v1

    .line 8639
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    .line 8640
    monitor-exit p0

    .line 8641
    return-void

    .line 8640
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
    .line 4753
    if-nez p1, :cond_1

    .line 4754
    const/4 p1, 0x0

    .line 4775
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4756
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4763
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    if-eq p2, v2, :cond_2

    .line 4764
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 4767
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4771
    new-array v1, p2, [I

    .line 4772
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 4773
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 4772
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 4775
    goto :goto_0
.end method

.method private bindPluginService(Ljava/lang/String;)V
    .locals 6
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    .line 5810
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 5843
    :cond_0
    :goto_0
    return-void

    .line 5812
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5813
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5814
    .local v0, bindedClass:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5815
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 5816
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3, p1, v5, v5}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    .line 5838
    .end local v0           #bindedClass:Ljava/lang/String;
    :cond_2
    :goto_1
    const-class v3, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5839
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "set remote control client as pause"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5840
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v3, :cond_0

    .line 5841
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 5819
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getBindingClass()Ljava/lang/String;

    move-result-object v1

    .line 5820
    .local v1, bindingClass:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 5821
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5822
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 5823
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5824
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5825
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 5830
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v3, :cond_5

    .line 5831
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 5833
    :cond_5
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3, p1, v5, v5}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_1
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 5343
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5344
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5353
    :goto_0
    return v0

    .line 5348
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5349
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5353
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 1

    .prologue
    .line 5216
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 5217
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5218
    :cond_0
    return-void
.end method

.method private clearRecentAlbumList()V
    .locals 1

    .prologue
    .line 8318
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8319
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8320
    :cond_0
    return-void
.end method

.method private clearRecentPlayedPlaylist()V
    .locals 1

    .prologue
    .line 8614
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8615
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8616
    :cond_0
    return-void
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5361
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 5362
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 5363
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "consumeRights: drmCursor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5373
    :goto_0
    return v4

    .line 5368
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5369
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5371
    .local v2, filepath:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, p1, v2, v5}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 5372
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

    .line 5373
    if-nez v1, :cond_1

    .line 5375
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5376
    const/4 v0, 0x0

    move v4, v3

    .line 5373
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 5375
    .end local v1           #error:I
    .end local v2           #filepath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5376
    const/4 v0, 0x0

    .line 5375
    throw v3
.end method

.method private doAutoShuffleUpdate()V
    .locals 8

    .prologue
    .line 4316
    const/4 v2, 0x0

    .line 4318
    .local v2, notify:Z
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 4319
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    .line 4320
    const/4 v2, 0x1

    .line 4323
    :cond_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v3, v5, 0x7

    .line 4324
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 4326
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 4327
    .local v1, idx:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4328
    .local v4, which:Ljava/lang/Integer;
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 4329
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 4330
    const/4 v2, 0x1

    .line 4324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4323
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:Ljava/lang/Integer;
    :cond_1
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 4332
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_2
    if-eqz v2, :cond_3

    .line 4334
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4336
    :cond_3
    return-void
.end method

.method private ensureAlbumListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3121
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3125
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    new-array v2, v4, [I

    .line 3126
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3127
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_1

    .line 3128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3129
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3132
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 3134
    shl-int/lit8 v4, p1, 0x1

    new-array v3, v4, [I

    .line 3135
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_2

    .line 3136
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3137
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3140
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 3142
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3143
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3150
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3145
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
    .line 3020
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3024
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [I

    .line 3025
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3026
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_1

    .line 3027
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3028
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3031
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 3033
    mul-int/lit8 v4, p1, 0x2

    new-array v3, v4, [I

    .line 3034
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_2

    .line 3035
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3036
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3035
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3039
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 3041
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3042
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3049
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3044
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
    .line 8210
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v14

    .line 8211
    .local v14, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8213
    const-string v1, "[MediaPlaybackService]"

    const-string v4, "[ensureRecentlyPlayedAlbumList] Storage not mounted!"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8308
    :cond_0
    :goto_0
    return-void

    .line 8217
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8220
    .local v15, tempRecentAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 8221
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

    .line 8222
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 8223
    .local v16, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 8225
    .local v5, whereArgument:[Ljava/lang/String;
    const-string v1, "_id in ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8226
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 8227
    const-string v1, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8228
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

    .line 8229
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_2

    .line 8230
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8226
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 8232
    :cond_3
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8234
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 8237
    .local v3, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8241
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 8242
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 8243
    .local v13, ididx:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 8244
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

    .line 8245
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_6

    .line 8246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 8247
    .local v9, curAlbumId:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8248
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8249
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v9, v1, :cond_5

    .line 8250
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8245
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 8253
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 8257
    .end local v8           #count:I
    .end local v9           #curAlbumId:I
    .end local v13           #ididx:I
    :cond_6
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8261
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

    .line 8262
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v11, v1, 0x8

    .line 8263
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

    .line 8265
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 8266
    .restart local v16       #where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8267
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8268
    const/4 v5, 0x0

    .line 8269
    .restart local v5       #whereArgument:[Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 8270
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 8272
    const-string v1, " AND _id not in ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8273
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_9

    .line 8274
    const-string v1, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8275
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    .line 8276
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_8

    .line 8277
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8273
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 8279
    :cond_9
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8281
    .end local v12           #i:I
    :cond_a
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 8282
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 8286
    .restart local v3       #cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8289
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 8290
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8291
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 8292
    .restart local v8       #count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    if-ge v12, v8, :cond_b

    .line 8293
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 8295
    .local v7, albumId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8296
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 8292
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 8299
    .end local v7           #albumId:I
    .end local v8           #count:I
    .end local v12           #i:I
    :cond_b
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8303
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

    .line 8304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8306
    const-string v1, "com.htc.music.recentlyplayedalbumchanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ensureShuffleSeqCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 3154
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 3158
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 3159
    .local v2, newlist:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 3160
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_1

    .line 3161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3162
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3165
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 3169
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_2
    return-void
.end method

.method private forcePlay()V
    .locals 3

    .prologue
    .line 4295
    monitor-enter p0

    .line 4296
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    .line 4297
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4298
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

    .line 4299
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_0

    .line 4300
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4301
    :cond_0
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 4303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4305
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 4306
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4307
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4310
    :cond_1
    monitor-exit p0

    .line 4311
    return-void

    .line 4310
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
    .line 8824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8825
    .local v0, comp:Ljava/lang/StringBuilder;
    const-string v5, "[htc_lockscreen_music_control]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8826
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8827
    .local v1, data:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 8828
    .local v4, jasonStr:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8829
    .local v2, dropIntent:Landroid/content/Intent;
    const/high16 v5, 0x1400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8834
    const-string v5, "from-lockscreen"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8837
    :try_start_0
    const-string v5, "drop_intent"

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8838
    const-string v5, "albumart"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8839
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 8846
    :goto_0
    if-eqz v4, :cond_0

    .line 8847
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8850
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

    .line 8852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 8840
    :catch_0
    move-exception v3

    .line 8842
    .local v3, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 8843
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Failed to generate JSON string."

    invoke-static {v5, v6, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8775
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 5017
    monitor-enter p0

    .line 5018
    :try_start_0
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    monitor-exit p0

    return-wide v0

    .line 5019
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
    .line 5334
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

    .line 5339
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private getLastAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8783
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNowplaying()[I
    .locals 4

    .prologue
    .line 5943
    monitor-enter p0

    .line 5944
    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    .line 5951
    :goto_0
    return-object v2

    .line 5946
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 5947
    .local v1, len:I
    new-array v2, v1, [I

    .line 5948
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 5949
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 5948
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5951
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 5952
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
    .line 5846
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5847
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5849
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginCount()I
    .locals 1

    .prologue
    .line 5854
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5855
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginCount()I

    move-result v0

    .line 5857
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
    .line 5884
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5885
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 5887
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
    .line 5876
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5877
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5879
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
    .line 5862
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5863
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    .line 5865
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5910
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5911
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    .line 5913
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginUpdateNotification()Landroid/app/Notification;
    .locals 19

    .prologue
    .line 7677
    new-instance v11, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    .line 7678
    .local v11, status:Lcom/htc/wrap/android/app/HtcWrapNotification;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 7679
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030057

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7688
    .local v14, views:Landroid/widget/RemoteViews;
    const v15, 0x7f0800af

    const-string v16, "music_notification_pause_btn"

    const v17, 0x7f020055

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7689
    const v15, 0x7f0800af

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport_middle"

    const v18, 0x7f020058

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7694
    const/4 v4, 0x0

    .local v4, artist:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, album:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, track:Ljava/lang/String;
    const/4 v10, 0x0

    .line 7696
    .local v10, salbumartpath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v10

    .line 7697
    if-nez v10, :cond_5

    .line 7699
    const v15, 0x7f080062

    const v16, 0x7f020050

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7758
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 7759
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v13

    .line 7760
    const v15, 0x7f0800b0

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7761
    if-eqz v4, :cond_0

    const-string v15, "<unknown>"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 7762
    :cond_0
    const v15, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7764
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 7765
    if-eqz v3, :cond_2

    const-string v15, "<unknown>"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 7766
    :cond_2
    const v15, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7769
    :cond_3
    const v15, 0x7f0800b1

    const v16, 0x7f07023d

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

    .line 7774
    iput-object v14, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 7775
    iget v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v16, 0x4

    or-int v15, v15, v16

    iput v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 7776
    const v15, 0x7f02005b

    iput v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->icon:I

    .line 7778
    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7779
    .local v12, statusintent:Landroid/content/Intent;
    const/4 v15, 0x0

    const/high16 v16, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    .line 7781
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 7782
    .local v8, pauseIntent:Landroid/content/Intent;
    const-string v15, "command"

    const-string v16, "pause"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7783
    const-string v15, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7785
    const v15, 0x7f0800af

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

    .line 7790
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v15

    if-ltz v15, :cond_4

    .line 7791
    invoke-virtual {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 7792
    .local v6, extras:Landroid/os/Bundle;
    const-string v15, "music_track"

    invoke-virtual {v6, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7793
    const-string v15, "music_artist"

    invoke-virtual {v6, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7794
    const-string v15, "music_album"

    invoke-virtual {v6, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7795
    const-string v15, "music_albumid"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7805
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

    .line 7702
    .restart local v3       #album:Ljava/lang/String;
    .restart local v4       #artist:Ljava/lang/String;
    .restart local v10       #salbumartpath:Ljava/lang/String;
    .restart local v13       #track:Ljava/lang/String;
    .restart local v14       #views:Landroid/widget/RemoteViews;
    :cond_5
    const/16 v7, 0x48

    .line 7704
    .local v7, maxSideLen:I
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 7706
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_6

    .line 7708
    const-string v15, "[MediaPlaybackService]"

    const-string v16, " bitmap is null..."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7709
    const v15, 0x7f080062

    const v16, 0x7f020050

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7755
    :goto_1
    const-string v15, "[MediaPlaybackService]"

    invoke-static {v15, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7721
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-gt v15, v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v15, v7, :cond_8

    .line 7723
    :cond_7
    const/4 v15, 0x0

    invoke-static {v5, v7, v7, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 7724
    .local v9, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 7725
    const/4 v5, 0x0

    .line 7726
    const v15, 0x7f080062

    invoke-virtual {v14, v15, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 7740
    .end local v9           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_8
    const v15, 0x7f080062

    invoke-virtual {v14, v15, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private getRecentAlbumId()[I
    .locals 7

    .prologue
    .line 8323
    monitor-enter p0

    .line 8325
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 8326
    .local v3, status:Ljava/lang/String;
    const/4 v1, 0x0

    .line 8327
    .local v1, isMounted:Z
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8329
    :cond_0
    const/4 v1, 0x1

    .line 8332
    :cond_1
    if-eqz v1, :cond_3

    .line 8333
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

    .line 8335
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 8338
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 8339
    .local v2, localRecentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 8340
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 8339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8342
    :cond_2
    monitor-exit p0

    .line 8344
    .end local v0           #i:I
    .end local v2           #localRecentAlbumId:[I
    :goto_1
    return-object v2

    :cond_3
    const/4 v4, 0x0

    new-array v2, v4, [I

    monitor-exit p0

    goto :goto_1

    .line 8448
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

    .line 8453
    if-nez p1, :cond_1

    move-object v11, v13

    .line 8517
    :cond_0
    :goto_0
    return-object v11

    .line 8455
    :cond_1
    const/16 v0, 0x8

    new-array v11, v0, [Ljava/lang/String;

    .line 8456
    .local v11, recentAlbumartpath:[Ljava/lang/String;
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8457
    const/4 v7, 0x0

    .line 8459
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 8460
    .local v12, where:Ljava/lang/StringBuilder;
    array-length v0, p1

    new-array v4, v0, [Ljava/lang/String;

    .line 8462
    .local v4, recentAlbumId:[Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8463
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_1
    array-length v0, p1

    if-ge v9, v0, :cond_3

    .line 8464
    const-string v0, "_id = ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8465
    aget v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 8466
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v9, v0, :cond_2

    .line 8467
    const-string v0, " OR "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8463
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 8469
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8471
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

    .line 8472
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8476
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 8477
    :cond_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8511
    if-eqz v7, :cond_5

    .line 8512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8513
    const/4 v7, 0x0

    :cond_5
    move-object v11, v13

    .line 8478
    goto :goto_0

    .line 8469
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

    .line 8508
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 8509
    .local v8, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8511
    if-eqz v7, :cond_0

    .line 8512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8513
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 8481
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

    .line 8482
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 8484
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 8485
    :cond_7
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 8511
    if-eqz v7, :cond_8

    .line 8512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8513
    const/4 v7, 0x0

    :cond_8
    move-object v11, v13

    .line 8486
    goto/16 :goto_0

    .line 8490
    :cond_9
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 8491
    const/4 v9, 0x0

    :goto_3
    :try_start_8
    array-length v0, p1

    if-ge v9, v0, :cond_c

    .line 8492
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8493
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 8494
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 8497
    .local v6, currentAlbumId:I
    aget v0, p1, v9

    if-ne v6, v0, :cond_b

    .line 8498
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 8501
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

    .line 8491
    .end local v6           #currentAlbumId:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 8504
    .restart local v6       #currentAlbumId:I
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 8493
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 8507
    .end local v6           #currentAlbumId:I
    .end local v10           #j:I
    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 8511
    if-eqz v7, :cond_0

    .line 8512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8507
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

    .line 8511
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_d

    .line 8512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8513
    const/4 v7, 0x0

    .line 8511
    :cond_d
    throw v0
.end method

.method private getRecentPlayedPlaylist()[I
    .locals 3

    .prologue
    .line 8619
    monitor-enter p0

    .line 8620
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 8621
    .local v1, recentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 8622
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 8621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8624
    :cond_0
    monitor-exit p0

    return-object v1

    .line 8625
    .end local v0           #i:I
    .end local v1           #recentAlbumId:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 4056
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 4057
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

    .line 4060
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4061
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4062
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4065
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 4066
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 4074
    return-void
.end method

.method private handleDMCError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    .line 8859
    packed-switch p1, :pswitch_data_0

    .line 8872
    :goto_0
    return-void

    .line 8863
    :pswitch_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMC disconnect error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8864
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin()V

    goto :goto_0

    .line 8859
    :pswitch_data_0
    .packed-switch -0x2716
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 5892
    monitor-enter p0

    .line 5893
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5894
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isDmcOrPushMode()Z

    move-result v0

    monitor-exit p0

    .line 5896
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5898
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
    .line 5602
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5603
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginMode()Z

    move-result v0

    .line 5605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReady()Z
    .locals 1

    .prologue
    .line 5902
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5903
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginReady()Z

    move-result v0

    .line 5905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 1

    .prologue
    .line 5011
    monitor-enter p0

    .line 5012
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

    .line 5013
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

    .line 5609
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5610
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5616
    :cond_0
    :goto_0
    return v0

    .line 5613
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

    .line 7837
    if-eqz p0, :cond_1

    .line 7838
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7839
    const/4 v0, 0x1

    .line 7846
    :goto_0
    return v0

    .line 7841
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7845
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
    .line 8181
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "localrecentalbumid"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8182
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 8183
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8184
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 8185
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 8186
    aget-object v7, v1, v2

    .line 8187
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 8188
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 8189
    shl-int/lit8 v5, v5, 0x4

    .line 8190
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8191
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 8192
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 8188
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 8193
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 8194
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 8197
    :cond_1
    const/4 v4, 0x0

    .line 8201
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    .line 8185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8205
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 8206
    return-void
.end method

.method private loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V
    .locals 11
    .parameter "preferences"
    .parameter "newstyle"

    .prologue
    .line 8577
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "recentplayedplaylist"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8578
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 8579
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8580
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 8581
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 8582
    if-eqz p2, :cond_3

    .line 8583
    aget-object v7, v1, v2

    .line 8584
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 8585
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 8586
    shl-int/lit8 v5, v5, 0x4

    .line 8587
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8588
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 8589
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 8585
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 8590
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 8591
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 8594
    :cond_1
    const/4 v4, 0x0

    .line 8598
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    .line 8581
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8600
    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    goto :goto_3

    .line 8604
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

    .line 4355
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 4356
    .local v11, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4358
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

    .line 4361
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 4375
    :cond_0
    if-eqz v6, :cond_1

    .line 4376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4377
    const/4 v6, 0x0

    :cond_1
    move v0, v13

    .line 4380
    :goto_0
    return v0

    .line 4364
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 4365
    .local v9, len:I
    new-array v10, v9, [I

    .line 4366
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 4367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4368
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 4366
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4370
    :cond_3
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4375
    if-eqz v6, :cond_4

    .line 4376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4377
    const/4 v6, 0x0

    :cond_4
    move v0, v12

    .line 4371
    goto :goto_0

    .line 4372
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 4373
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

    .line 4375
    if-eqz v6, :cond_5

    .line 4376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4377
    const/4 v6, 0x0

    :cond_5
    move v0, v13

    .line 4380
    goto :goto_0

    .line 4375
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 4376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4377
    const/4 v6, 0x0

    .line 4375
    :cond_6
    throw v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 3
    .parameter "what"

    .prologue
    .line 2879
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2880
    .local v0, i:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2881
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2882
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2883
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2884
    const-string v1, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2885
    const-string v1, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2886
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2887
    const-string v1, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2890
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2892
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    .line 2897
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2912
    :cond_1
    const-string v1, "com.htc.music.pluginservicebinded"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2923
    :goto_0
    return-void

    .line 2914
    :cond_2
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2915
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0

    .line 2917
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "what"
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    .line 2974
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2976
    .local v1, i:Landroid/content/Intent;
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2977
    const-string v4, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2978
    const-string v4, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2979
    const-string v4, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2980
    const-string v4, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2981
    const-string v4, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2983
    const-string v4, "com.htc.music.metachanged"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2984
    const-string v4, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2985
    if-eqz p2, :cond_2

    .line 2986
    const-string v4, "animationtype"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2987
    .local v2, type:I
    if-ltz v2, :cond_0

    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    .line 2988
    :cond_0
    const/4 v2, 0x0

    .line 2990
    :cond_1
    const-string v4, "animationtype"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2991
    const-string v4, "updatewidget"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2992
    .local v3, updateWidget:Z
    const-string v4, "updatewidget"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3000
    .end local v2           #type:I
    .end local v3           #updateWidget:Z
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3002
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    .line 3004
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!=== notifyChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    const-string v4, "com.htc.music.pluginservicebinded"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3017
    :goto_1
    return-void

    .line 2994
    :cond_3
    const-string v4, "com.htc.music.playstatechanged"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2995
    if-eqz p2, :cond_2

    .line 2996
    const-string v4, "extrastate"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2997
    .local v0, extraState:Ljava/lang/String;
    const-string v4, "extrastate"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3008
    .end local v0           #extraState:Ljava/lang/String;
    :cond_4
    const-string v4, "com.htc.music.queuechanged"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3009
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1

    .line 3011
    :cond_5
    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1
.end method

.method private openCurrent()V
    .locals 12

    .prologue
    .line 3594
    monitor-enter p0

    .line 3595
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_0

    .line 3596
    monitor-exit p0

    .line 3643
    :goto_0
    return-void

    .line 3598
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_2

    .line 3599
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

    .line 3600
    monitor-exit p0

    goto :goto_0

    .line 3642
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3602
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3604
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3606
    .local v10, id:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    .line 3607
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

    .line 3609
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 3610
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3613
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 3614
    .local v8, colCount:I
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 3615
    .local v11, position:I
    if-lez v8, :cond_3

    if-gez v11, :cond_5

    .line 3617
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

    .line 3618
    if-eqz v9, :cond_4

    .line 3619
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3620
    const/4 v9, 0x0

    .line 3622
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .line 3626
    :cond_5
    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3628
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

    .line 3630
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3631
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    .line 3634
    .local v6, bookmark:J
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v1, 0x1388

    sub-long v1, v6, v1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 3638
    .end local v6           #bookmark:J
    .end local v8           #colCount:I
    .end local v11           #position:I
    :cond_6
    if-eqz v9, :cond_7

    .line 3639
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3642
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
    .line 5924
    monitor-enter p0

    .line 5927
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 5931
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 5932
    monitor-exit p0

    .line 5933
    return-void

    .line 5932
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
    .line 5936
    monitor-enter p0

    .line 5937
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 5938
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 5939
    monitor-exit p0

    .line 5940
    return-void

    .line 5939
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
    .line 5389
    new-instance v0, Landroid/content/Intent;

    const-string v2, "kkbox.media.action.pause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5390
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5392
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/music/MediaPlaybackService$10;

    invoke-direct {v2, p0}, Lcom/htc/music/MediaPlaybackService$10;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5402
    .local v1, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5403
    return-void
.end method

.method private pluginNext(Z)V
    .locals 5
    .parameter "playAnim"

    .prologue
    const/4 v4, 0x4

    .line 4027
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4028
    const/4 p1, 0x0

    .line 4031
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v2

    .line 4032
    .local v2, playlistLen:I
    if-gtz v2, :cond_1

    .line 4033
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "pluginNext, No play queue"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    :goto_0
    return-void

    .line 4037
    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v3, :cond_2

    .line 4038
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "pluginNext, ==========skip one next"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4042
    :cond_2
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v3, :cond_3

    .line 4043
    const-string v3, "com.htc.music.rotatequickly"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4045
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4047
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4048
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4049
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "playAnim"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4050
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4051
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginPrev(Z)V
    .locals 11
    .parameter "playAnim"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x3

    .line 3992
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3993
    const/4 p1, 0x0

    .line 3996
    :cond_0
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v4, :cond_2

    .line 3997
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "pluginPrev, ===========skip one prev"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    :cond_1
    :goto_0
    return-void

    .line 4001
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 4002
    invoke-virtual {p0, v9, v10}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v2

    .line 4004
    .local v2, seekValue:J
    cmp-long v4, v2, v9

    if-gez v4, :cond_1

    .line 4007
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "pluginPrev, unable to do seek."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    .end local v2           #seekValue:J
    :cond_3
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v4, :cond_4

    .line 4013
    const-string v4, "com.htc.music.rotatequickly"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4015
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v4, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4017
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v4, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4018
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4019
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "playAnim"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4020
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4021
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginUpdateNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 7809
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7834
    return-void
.end method

.method private refreshPlaylist()V
    .locals 17

    .prologue
    .line 2437
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 2438
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2439
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    const-string v1, " AND _id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 2442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_0

    .line 2444
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2447
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
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

    .line 2455
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2456
    .local v7, audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2458
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

    .line 2459
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2460
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2464
    const-string v1, "com.htc.music.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2465
    if-eqz v10, :cond_3

    .line 2466
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2467
    const/4 v10, 0x0

    .line 2521
    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return-void

    .line 2472
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2473
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ne v9, v1, :cond_5

    .line 2476
    if-eqz v10, :cond_3

    .line 2477
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2478
    const/4 v10, 0x0

    goto :goto_1

    .line 2483
    :cond_5
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v13

    .line 2484
    .local v13, list:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    new-array v15, v1, [I

    .line 2486
    .local v15, removePosition:[I
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2487
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    :goto_2
    array-length v1, v13

    if-ge v11, v1, :cond_6

    .line 2488
    aget v1, v13, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v13, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2491
    :cond_6
    const/4 v12, 0x0

    .line 2492
    .local v12, j:I
    const/4 v8, 0x0

    .line 2493
    .local v8, bRemoved:Z
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v11, v1, :cond_7

    .line 2494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    if-lt v12, v1, :cond_9

    .line 2496
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "CMD_REFRESH_PLAYLIST, list length is wrong!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    :cond_7
    if-eqz v8, :cond_8

    .line 2508
    new-array v14, v12, [I

    .line 2509
    .local v14, removeArray:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v15, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2511
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 2512
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    .line 2515
    .end local v14           #removeArray:[I
    :cond_8
    if-eqz v10, :cond_3

    .line 2516
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2500
    :cond_9
    aput v11, v15, v12

    .line 2501
    add-int/lit8 v12, v12, 0x1

    .line 2502
    const/4 v8, 0x1

    .line 2493
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private refreshPlugin()V
    .locals 1

    .prologue
    .line 5870
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5871
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 5873
    :cond_0
    return-void
.end method

.method private reloadQueueImpl()V
    .locals 27

    .prologue
    .line 1960
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const/16 v20, 0x0

    .line 1962
    .local v20, q:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1963
    .local v18, newstyle:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    .line 1964
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    .line 1965
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1966
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1967
    const/16 v18, 0x1

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1970
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    if-ne v13, v2, :cond_1

    .line 1973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1974
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: card id is the same."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->loadRecentAlbumList(Landroid/content/SharedPreferences;)V

    .line 1978
    :cond_1
    if-eqz v20, :cond_2c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2c

    .line 1979
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q != null && q.length() > 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 1993
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1994
    .local v11, entries:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .line 1995
    .local v16, len:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1996
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_6

    .line 1997
    if-eqz v18, :cond_5

    .line 1998
    aget-object v22, v11, v12

    .line 1999
    .local v22, revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2000
    .local v17, n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, j:I
    :goto_1
    if-ltz v14, :cond_4

    .line 2001
    shl-int/lit8 v17, v17, 0x4

    .line 2002
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2003
    .local v9, c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_2

    const/16 v2, 0x39

    if-gt v9, v2, :cond_2

    .line 2004
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2000
    :goto_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 2005
    :cond_2
    const/16 v2, 0x61

    if-lt v9, v2, :cond_3

    const/16 v2, 0x66

    if-gt v9, v2, :cond_3

    .line 2006
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_2

    .line 2009
    :cond_3
    const/16 v16, 0x0

    .line 2013
    .end local v9           #c:C
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aput v17, v2, v12

    .line 1996
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2015
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_3

    .line 2018
    :cond_6
    const/4 v8, 0x0

    .line 2020
    .local v8, bRecoverQueue:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v16

    if-le v0, v2, :cond_7

    .line 2022
    const/4 v8, 0x1

    .line 2023
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "bRecoverQueue = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    :cond_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuealbum"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2029
    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    .line 2030
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2031
    array-length v0, v11

    move/from16 v16, v0

    .line 2032
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 2033
    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_c

    .line 2034
    if-eqz v18, :cond_b

    .line 2035
    aget-object v22, v11, v12

    .line 2036
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2037
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_5
    if-ltz v14, :cond_a

    .line 2038
    shl-int/lit8 v17, v17, 0x4

    .line 2039
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2040
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_8

    const/16 v2, 0x39

    if-gt v9, v2, :cond_8

    .line 2041
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2037
    :goto_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 2042
    :cond_8
    const/16 v2, 0x61

    if-lt v9, v2, :cond_9

    const/16 v2, 0x66

    if-gt v9, v2, :cond_9

    .line 2043
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_6

    .line 2046
    :cond_9
    const/16 v16, 0x0

    .line 2050
    .end local v9           #c:C
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aput v17, v2, v12

    .line 2033
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2052
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_7

    .line 2055
    :cond_c
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2097
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2098
    .local v21, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    .line 2099
    const/16 v21, 0x0

    .line 2101
    :cond_d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 2103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 2104
    .local v26, shufmode:I
    const/4 v2, 0x2

    move/from16 v0, v26

    if-eq v0, v2, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_e

    .line 2105
    const/16 v26, 0x0

    .line 2107
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    .line 2108
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2109
    const/16 v26, 0x0

    .line 2112
    :cond_f
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 2113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 2114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeue"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2115
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    .line 2116
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2117
    array-length v0, v11

    move/from16 v16, v0

    .line 2118
    const/4 v12, 0x0

    :goto_9
    move/from16 v0, v16

    if-ge v12, v0, :cond_15

    .line 2119
    if-eqz v18, :cond_14

    .line 2120
    aget-object v22, v11, v12

    .line 2121
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2122
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_a
    if-ltz v14, :cond_13

    .line 2123
    shl-int/lit8 v17, v17, 0x4

    .line 2124
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2125
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_11

    const/16 v2, 0x39

    if-gt v9, v2, :cond_11

    .line 2126
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2122
    :goto_b
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 2058
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

    .line 2127
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

    .line 2128
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_b

    .line 2131
    :cond_12
    const/16 v16, 0x0

    .line 2135
    .end local v9           #c:C
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aput v17, v2, v12

    .line 2118
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 2137
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_c

    .line 2140
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2145
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeuealbum"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2146
    if-eqz v20, :cond_23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_23

    .line 2147
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2148
    array-length v0, v11

    move/from16 v16, v0

    .line 2149
    const/4 v12, 0x0

    :goto_e
    move/from16 v0, v16

    if-ge v12, v0, :cond_1b

    .line 2150
    if-eqz v18, :cond_1a

    .line 2151
    aget-object v22, v11, v12

    .line 2152
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2153
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_f
    if-ltz v14, :cond_19

    .line 2154
    shl-int/lit8 v17, v17, 0x4

    .line 2155
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2156
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_17

    const/16 v2, 0x39

    if-gt v9, v2, :cond_17

    .line 2157
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2153
    :goto_10
    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    .line 2142
    .end local v9           #c:C
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_d

    .line 2158
    .restart local v9       #c:C
    .restart local v14       #j:I
    .restart local v17       #n:I
    .restart local v22       #revhex:Ljava/lang/String;
    :cond_17
    const/16 v2, 0x61

    if-lt v9, v2, :cond_18

    const/16 v2, 0x66

    if-gt v9, v2, :cond_18

    .line 2159
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_10

    .line 2162
    :cond_18
    const/16 v16, 0x0

    .line 2166
    .end local v9           #c:C
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aput v17, v2, v12

    .line 2149
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 2168
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_11

    .line 2171
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2210
    :cond_1c
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2213
    .local v19, pos:I
    if-ltz v19, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v19

    if-lt v0, v2, :cond_1e

    .line 2215
    :cond_1d
    if-gez v19, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ltz v2, :cond_24

    .line 2219
    const/16 v19, 0x0

    .line 2230
    :cond_1e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2231
    if-eqz v8, :cond_20

    .line 2232
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2233
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 2236
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2245
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

    .line 2270
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_21

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_25

    .line 2271
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    .line 2273
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: failed to get data from database."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    if-eqz v9, :cond_22

    .line 2279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2280
    const/4 v9, 0x0

    .line 2282
    :cond_22
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
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

    .line 2173
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

    .line 2222
    .restart local v19       #pos:I
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2226
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueue -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2285
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_25
    if-eqz v9, :cond_26

    .line 2286
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2287
    const/4 v9, 0x0

    .line 2298
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2299
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -, song is playing now, don\'t do opencurrent.!!! return."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2313
    :cond_27
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 2314
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2315
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 2316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "seekpos"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 2320
    .local v23, seekpos:J
    if-eqz v8, :cond_2a

    .line 2321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v5, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v5, v6}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 2427
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

    .line 2428
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2430
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2432
    :cond_29
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2324
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
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v5

    cmp-long v3, v23, v5

    if-gez v3, :cond_2b

    .end local v23           #seekpos:J
    :goto_15
    move-wide/from16 v0, v23

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    goto :goto_14

    .restart local v23       #seekpos:J
    :cond_2b
    const-wide/16 v23, 0x0

    goto :goto_15

    .line 2337
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

    .line 2339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "LaunchedBefore"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    .line 2346
    .local v15, launchBefore:Z
    if-nez v15, :cond_28

    .line 2347
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: !launchBefore"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LaunchedBefore"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2350
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 2353
    .local v4, ccols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_music>=1"

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC,track"

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2357
    .local v10, cursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v25

    .line 2360
    .local v25, service:Lcom/htc/music/IMediaPlaybackService;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, v25

    invoke-static {v0, v2, v10, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)Z

    .line 2362
    if-eqz v10, :cond_28

    .line 2363
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

    .line 4401
    monitor-enter p0

    .line 4402
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

    .line 4403
    if-ge p2, p1, :cond_0

    .line 4404
    monitor-exit p0

    .line 4478
    :goto_0
    return v7

    .line 4405
    :cond_0
    if-gez p1, :cond_1

    .line 4406
    const/4 p1, 0x0

    .line 4407
    :cond_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v7, :cond_2

    .line 4408
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v7, -0x1

    .line 4410
    :cond_2
    const/4 v0, 0x0

    .line 4411
    .local v0, gotonext:Z
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_6

    .line 4412
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    .line 4413
    .local v4, pos:I
    if-gt p1, v4, :cond_5

    if-gt v4, p2, :cond_5

    .line 4414
    const/4 v0, 0x1

    .line 4427
    .end local v4           #pos:I
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v7, p2

    add-int/lit8 v2, v7, -0x1

    .line 4428
    .local v2, num:I
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4429
    .local v3, playListLen:I
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_8

    .line 4430
    move v1, p1

    .local v1, i:I
    :goto_2
    if-gt v1, p2, :cond_8

    .line 4431
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v5

    .line 4432
    .local v5, position:I
    if-ltz v5, :cond_4

    if-ge v5, v3, :cond_4

    .line 4433
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4434
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4435
    add-int/lit8 v3, v3, -0x1

    .line 4430
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4415
    .end local v1           #i:I
    .end local v2           #num:I
    .end local v3           #playListLen:I
    .end local v5           #position:I
    .restart local v4       #pos:I
    :cond_5
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    .line 4416
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4479
    .end local v0           #gotonext:Z
    .end local v4           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4419
    .restart local v0       #gotonext:Z
    :cond_6
    :try_start_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v7, :cond_7

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v7, p2, :cond_7

    .line 4420
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4421
    const/4 v0, 0x1

    goto :goto_1

    .line 4422
    :cond_7
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    .line 4423
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4442
    .restart local v2       #num:I
    .restart local v3       #playListLen:I
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 4443
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 4444
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 4442
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4446
    :cond_9
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4447
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 4448
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4462
    if-eqz v0, :cond_a

    .line 4463
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v7, :cond_b

    .line 4464
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4465
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4478
    :cond_a
    :goto_4
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 4467
    :cond_b
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v7, v8, :cond_c

    .line 4468
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4470
    :cond_c
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 4471
    .local v6, wasPlaying:Z
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4472
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4473
    if-eqz v6, :cond_a

    .line 4474
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

    .line 8808
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 8809
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 8810
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 8811
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 8812
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 8813
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 8814
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 8816
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 8817
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 8818
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 8819
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 8820
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 8821
    return-void
.end method

.method private resetPlayerForWirelessConnect(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    .line 1293
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1294
    monitor-enter p0

    .line 1295
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v2

    .line 1296
    .local v2, isPlaying:Z
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1297
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

    .line 1298
    if-eqz v2, :cond_0

    .line 1299
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1300
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

    .line 1301
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1302
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1303
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 1304
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

    .line 1313
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1315
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :cond_2
    return-void

    .line 1306
    .restart local v0       #currentPlaybackPosition:J
    .restart local v2       #isPlaying:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 1307
    if-ne v2, v6, :cond_1

    .line 1308
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

    .line 1310
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    goto :goto_0

    .line 1313
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

    .line 8721
    array-length v1, p1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 8723
    .local v0, combineId:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 8724
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8725
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8730
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 8732
    return-void

    .line 8728
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private restoreRecentAlbumList(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 8311
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8315
    :goto_0
    return-void

    .line 8313
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

    .line 8314
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
    .line 8607
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

    .line 8608
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8611
    :goto_0
    return-void

    .line 8610
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

    .line 4078
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4079
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 4080
    .local v4, pos:J
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 4081
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 4082
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

    .line 4102
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 4088
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

    .line 4090
    :cond_3
    const-wide/16 v4, 0x0

    .line 4094
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4095
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4096
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 4098
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4100
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
    .locals 14
    .parameter "full"

    .prologue
    const/4 v13, 0x0

    .line 1676
    const-string v10, "[MediaPlaybackService]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[saveQueue] full="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";mSdCardRemoved="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";mQueueModified="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v10, "Music"

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1680
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1683
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 1684
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    .local v9, recentPlaylist:Ljava/lang/StringBuilder;
    invoke-direct {p0, v3, v9}, Lcom/htc/music/MediaPlaybackService;->saveRecentPlayedPlaylist(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V

    .line 1687
    iget-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    if-eqz v10, :cond_3

    .line 1688
    const/4 p1, 0x1

    .line 1689
    iput-boolean v13, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 1718
    .end local v9           #recentPlaylist:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    const-string v10, "version"

    const/4 v11, 0x4

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1722
    if-eqz p1, :cond_13

    .line 1723
    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-nez v10, :cond_2

    .line 1724
    :cond_1
    const-string v10, "[MediaPlaybackService]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BadQueue mPlayListLen : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mAlbumListLen : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iput v13, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1727
    iput v13, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1733
    :cond_2
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1734
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 1735
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v7, v10, v4

    .line 1736
    .local v7, n:I
    if-gtz v7, :cond_4

    .line 1737
    const-string v10, "[MediaPlaybackService]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " BadQueue mAlbumList["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v7           #n:I
    :goto_2
    return-void

    .line 1691
    .restart local v9       #recentPlaylist:Ljava/lang/StringBuilder;
    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 1734
    .end local v9           #recentPlaylist:Ljava/lang/StringBuilder;
    .restart local v4       #i:I
    .restart local v5       #l:I
    .restart local v7       #n:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1749
    .end local v7           #n:I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1757
    .local v8, q:Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1758
    .local v6, len:I
    const-string v10, "[MediaPlaybackService]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveQueue mPlayListLen : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_8

    .line 1760
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v7, v10, v4

    .line 1761
    .restart local v7       #n:I
    if-nez v7, :cond_6

    .line 1762
    const-string v10, "0;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1764
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 1765
    and-int/lit8 v1, v7, 0xf

    .line 1766
    .local v1, digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1767
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v10, v10, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1769
    .end local v1           #digit:I
    :cond_7
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1773
    .end local v7           #n:I
    :cond_8
    const-string v10, "queue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1774
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v8, v13, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1777
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1778
    const-string v10, "[MediaPlaybackService]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveQueue mAlbumListLen : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_b

    .line 1780
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v7, v10, v4

    .line 1781
    .restart local v7       #n:I
    if-nez v7, :cond_9

    .line 1782
    const-string v10, "0;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1784
    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    .line 1785
    and-int/lit8 v1, v7, 0xf

    .line 1786
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1787
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v10, v10, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1789
    .end local v1           #digit:I
    :cond_a
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1792
    .end local v7           #n:I
    :cond_b
    const-string v10, "queuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1793
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v8, v13, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1813
    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 1814
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1815
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_e

    .line 1816
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v7, v10, v4

    .line 1817
    .restart local v7       #n:I
    if-nez v7, :cond_c

    .line 1818
    const-string v10, "0;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1820
    :cond_c
    :goto_b
    if-eqz v7, :cond_d

    .line 1821
    and-int/lit8 v1, v7, 0xf

    .line 1822
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1823
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v10, v10, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1825
    .end local v1           #digit:I
    :cond_d
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1828
    .end local v7           #n:I
    :cond_e
    const-string v10, "shufflequeue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1829
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v8, v13, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1831
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1832
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_11

    .line 1833
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v7, v10, v4

    .line 1834
    .restart local v7       #n:I
    if-nez v7, :cond_f

    .line 1835
    const-string v10, "0;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1837
    :cond_f
    :goto_e
    if-eqz v7, :cond_10

    .line 1838
    and-int/lit8 v1, v7, 0xf

    .line 1839
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1840
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v10, v10, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1842
    .end local v1           #digit:I
    :cond_10
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1845
    .end local v7           #n:I
    :cond_11
    const-string v10, "shufflequeuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1846
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v8, v13, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1867
    :cond_12
    const-string v10, "cardid"

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1894
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v6           #len:I
    .end local v8           #q:Ljava/lang/StringBuilder;
    :cond_13
    const-string v10, "curpos"

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1896
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v10}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1897
    const-string v10, "seekpos"

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v11

    invoke-interface {v3, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1899
    :cond_14
    const-string v10, "repeatmode"

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1900
    const-string v10, "shufflemode"

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1911
    const/4 v0, 0x0

    .line 1913
    .local v0, className:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v10}, Lcom/htc/music/MusicPluginManager;->getCurrentPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 1914
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_15

    .line 1915
    const-string v10, "plugin"

    invoke-interface {v3, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    :cond_15
    if-nez v0, :cond_16

    .line 1920
    const-string v10, "plugin"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1926
    :cond_16
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1927
    :catch_0
    move-exception v2

    .line 1928
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "[MediaPlaybackService]"

    const-string v11, "Exception in ed.apply: "

    invoke-static {v10, v11, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1919
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-nez v0, :cond_17

    .line 1920
    const-string v11, "plugin"

    const-string v12, ""

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1919
    :cond_17
    throw v10
.end method

.method private saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V
    .locals 8
    .parameter "ed"

    .prologue
    .line 8152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8154
    .local v4, queue:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 8155
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8156
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

    .line 8157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 8158
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8159
    .local v3, n:I
    if-nez v3, :cond_1

    .line 8160
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8157
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8161
    :cond_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 8165
    :goto_2
    if-eqz v3, :cond_2

    .line 8166
    and-int/lit8 v0, v3, 0xf

    .line 8167
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 8168
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8170
    .end local v0           #digit:I
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8174
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #n:I
    :cond_3
    const-string v5, "localrecentalbumid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8175
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

    .line 8176
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 8177
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8178
    return-void
.end method

.method private saveRecentPlayedPlaylist(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "ed"
    .parameter "queue"

    .prologue
    .line 8547
    if-nez p2, :cond_0

    .line 8548
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8550
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 8551
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8552
    .local v2, len:I
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveQueue mRecentPlayTrackId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8553
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 8554
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8555
    .local v3, n:I
    if-nez v3, :cond_2

    .line 8556
    const-string v4, "0;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8553
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8557
    :cond_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 8561
    :goto_2
    if-eqz v3, :cond_3

    .line 8562
    and-int/lit8 v0, v3, 0xf

    .line 8563
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 8564
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v4, v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8566
    .end local v0           #digit:I
    :cond_3
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8570
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #n:I
    :cond_4
    const-string v4, "recentplayedplaylist"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8571
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRecentPlayedPlaylist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8572
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 8573
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v8, 0x0

    .line 5263
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5265
    if-nez p1, :cond_0

    .line 5266
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5267
    iput-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5291
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5292
    return-void

    .line 5269
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    .line 5271
    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    .line 5276
    :goto_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    sub-long v0, v2, p2

    .line 5277
    .local v0, newpos:J
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 5279
    const-wide/16 v0, 0x0

    .line 5281
    :cond_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-gez p1, :cond_3

    .line 5282
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5283
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5285
    :cond_3
    if-ltz p1, :cond_5

    .line 5286
    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5274
    .end local v0           #newpos:J
    :cond_4
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_1

    .line 5288
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

    .line 5221
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5222
    if-nez p1, :cond_0

    .line 5223
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5224
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5259
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5260
    return-void

    .line 5226
    :cond_0
    cmp-long v4, p2, v6

    if-gez v4, :cond_4

    .line 5228
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 5233
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 5234
    .local v2, newpos:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 5240
    .local v0, duration:J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 5242
    move-wide v2, v0

    .line 5244
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v4, :cond_1

    .line 5245
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 5246
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 5249
    :cond_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-gez p1, :cond_3

    .line 5250
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5251
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5253
    :cond_3
    if-ltz p1, :cond_5

    .line 5254
    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5231
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_4
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 5256
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private sendULogMessage(IJ)V
    .locals 3
    .parameter "purpose"
    .parameter "delayTime"

    .prologue
    const/16 v2, 0x11

    .line 8106
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 8107
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8108
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8109
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8110
    return-void
.end method

.method private setAudioEffect(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "setting"
    .parameter "applyEffect"
    .parameter "saveStatus"

    .prologue
    const/4 v1, 0x0

    .line 8747
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8748
    packed-switch p3, :pswitch_data_0

    .line 8760
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8763
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8764
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8772
    :cond_0
    :goto_1
    return-void

    .line 8750
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 8754
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8755
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 8768
    :cond_1
    if-eqz p2, :cond_0

    .line 8769
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 8748
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
    .line 8787
    if-nez p1, :cond_0

    .line 8788
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "setAudioMetaData, cursor = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8805
    :goto_0
    return-void

    .line 8792
    :cond_0
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 8793
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 8794
    const-string v0, "composer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 8795
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 8796
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 8797
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 8798
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 8800
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 8801
    const-string v0, "artist_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 8802
    const-string v0, "bookmark"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 8803
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 8804
    const-string v0, "is_podcast"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

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

    .line 5561
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

    .line 5562
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 5563
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Category wrong in setCategory()."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5586
    :cond_1
    :goto_0
    return-void

    .line 5566
    :cond_2
    if-lt p2, v3, :cond_3

    if-lt p3, v3, :cond_3

    const/4 v0, -0x2

    if-lt p4, v0, :cond_3

    if-ge p6, v3, :cond_1

    .line 5567
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
    .line 5558
    return-void
.end method

.method private setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "views"

    .prologue
    .line 7487
    if-eqz p1, :cond_0

    .line 7488
    const v0, 0x7f080062

    const v1, 0x7f020050

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7504
    :goto_0
    return-void

    .line 7502
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
    .line 8779
    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V

    .line 8780
    return-void
.end method

.method private setOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 5535
    return-void
.end method

.method private setShuffleAlbumList([II)V
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 3391
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v0

    .line 3392
    .local v0, shuffleAlbumList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3393
    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 4716
    if-nez p1, :cond_0

    .line 4717
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4747
    :goto_0
    return-void

    .line 4721
    :cond_0
    if-lt p2, p1, :cond_1

    .line 4722
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

    .line 4723
    const/4 p2, 0x0

    .line 4726
    :cond_1
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4727
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 4728
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 4730
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 4731
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 4730
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4733
    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_3

    .line 4735
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 4736
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 4737
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 4738
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 4733
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4745
    .end local v3           #temp:I
    :cond_3
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    goto :goto_0
.end method

.method private showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "albumArt"
    .parameter "key"

    .prologue
    const/4 v2, 0x7

    .line 5510
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5511
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5512
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5513
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5514
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5515
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5414
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 5415
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 5416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 5419
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 5420
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5451
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 5455
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 5456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 5459
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 5460
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5489
    return-void
.end method

.method private showToastInUiThread(II)V
    .locals 4
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5501
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5502
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5503
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5504
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5505
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5506
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5507
    return-void
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 496
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

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    :goto_0
    return-void

    .line 505
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
    .line 5202
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5204
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5205
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5206
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5207
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x1

    .line 3878
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3880
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3882
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3883
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/16 v1, 0x7bd

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3884
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3891
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 3883
    .restart local v0       #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3887
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-enter p0

    .line 3888
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v1, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3889
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopActivePlugin()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 5621
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-nez v1, :cond_1

    .line 5636
    :cond_0
    :goto_0
    return-void

    .line 5624
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5626
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 5627
    .local v0, status:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 5628
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 5629
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    goto :goto_0

    .line 5631
    .end local v0           #status:Landroid/app/Notification;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5632
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5633
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopFFRWRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5210
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 5211
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5212
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5213
    return-void
.end method

.method private switchToLocal()V
    .locals 4

    .prologue
    .line 8876
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8877
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8881
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8882
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "server"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8883
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8884
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin()V

    .line 8885
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Car mode start service force switch to local"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8887
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    .locals 10
    .parameter "albumArt"
    .parameter "key"

    .prologue
    .line 7608
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

    .line 7610
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    .line 7611
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, not playing. return."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7674
    :goto_0
    return-void

    .line 7615
    :cond_0
    if-nez p1, :cond_1

    .line 7616
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, albumArt is null, return."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7620
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 7621
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v6, p2, :cond_3

    .line 7622
    :cond_2
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "updateAlbumArtInNotification, (mNotification == null || mNotification.hashCode() != key), return."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7623
    monitor-exit v7

    goto :goto_0

    .line 7673
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 7626
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget-object v6, v6, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v6, :cond_4

    .line 7627
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

    .line 7628
    monitor-exit v7

    goto :goto_0

    .line 7631
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 7632
    .local v4, resource:Landroid/content/res/Resources;
    const v6, 0x7f0a0029

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 7633
    .local v2, reflectHeight:I
    const/16 v1, 0x48

    .line 7635
    .local v1, maxSideLen:I
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget-object v5, v6, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 7637
    .local v5, views:Landroid/widget/RemoteViews;
    if-nez v5, :cond_5

    .line 7638
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "updateAlbumArtInNotification, (views == null) return."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7639
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7643
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v6, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v1, :cond_7

    .line 7645
    :cond_6
    const/4 v6, 0x0

    invoke-static {p1, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7646
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7647
    const/4 p1, 0x0

    .line 7649
    const v6, 0x7f080062

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7668
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/4 v6, 0x1

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {p0, v6, v8}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7673
    :goto_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 7659
    :cond_7
    const v6, 0x7f080062

    :try_start_4
    invoke-virtual {v5, v6, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 7670
    :catch_0
    move-exception v0

    .line 7671
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
    .line 7510
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f030057

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7511
    .local v10, views:Landroid/widget/RemoteViews;
    const v11, 0x7f0800af

    const-string v12, "music_notification_pause_btn"

    const v13, 0x7f020055

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7512
    const v11, 0x7f0800af

    const-string v12, "setBackgroundResource"

    const-string v13, "music_notification_b_transport_middle"

    const v14, 0x7f020058

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7514
    const/4 v3, 0x0

    .local v3, artist:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, album:Ljava/lang/String;
    const/4 v9, 0x0

    .line 7516
    .local v9, track:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 7518
    .local v4, audioID:I
    if-gez v4, :cond_6

    .line 7520
    const v11, 0x7f0800b0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7521
    const v11, 0x7f0800b1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7522
    const v11, 0x7f080062

    const v12, 0x7f020050

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7527
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 7528
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 7529
    const v11, 0x7f0800b0

    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7530
    if-eqz v3, :cond_0

    const-string v11, "<unknown>"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 7531
    :cond_0
    const v11, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7533
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 7534
    if-eqz v1, :cond_2

    const-string v11, "<unknown>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 7535
    :cond_2
    const v11, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7538
    :cond_3
    const v11, 0x7f0800b1

    const v12, 0x7f07023d

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

    .line 7540
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    .line 7542
    .local v2, albumID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 7543
    :try_start_0
    new-instance v11, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 7544
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iput-object v10, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 7545
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v14, 0x4

    or-int/2addr v13, v14

    iput v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 7546
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v13, 0x7f02005b

    iput v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->icon:I

    .line 7547
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7548
    .local v8, statusintent:Landroid/content/Intent;
    const/high16 v11, 0x400

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7549
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v13, v8, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    .line 7551
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 7552
    .local v7, pauseIntent:Landroid/content/Intent;
    const-string v11, "command"

    const-string v13, "pause"

    invoke-virtual {v7, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7553
    const-string v11, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7556
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v13, 0x7f0800af

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lcom/htc/notification/NotificationExtra;->setButtonAction(Landroid/app/Notification;ILandroid/app/PendingIntent;)V

    .line 7561
    if-ltz v4, :cond_5

    .line 7563
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_7

    .line 7564
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7565
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 7566
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 7567
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 7568
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7574
    .end local v6           #msg:Landroid/os/Message;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 7575
    .local v5, extras:Landroid/os/Bundle;
    const-string v11, "music_track"

    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7576
    const-string v11, "music_artist"

    invoke-virtual {v5, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7577
    const-string v11, "music_album"

    invoke-virtual {v5, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7578
    const-string v11, "music_albumid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7585
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_5
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7586
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7605
    return-void

    .line 7524
    .end local v2           #albumID:I
    .end local v7           #pauseIntent:Landroid/content/Intent;
    .end local v8           #statusintent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 7571
    .restart local v2       #albumID:I
    .restart local v7       #pauseIntent:Landroid/content/Intent;
    .restart local v8       #statusintent:Landroid/content/Intent;
    :cond_7
    :try_start_1
    const-string v11, "[MediaPlaybackService]"

    const-string v13, "updateNotification, mNonUiHandler is null."

    invoke-static {v11, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7586
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

    .line 2926
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

    .line 2928
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2929
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isDmcOrPushMode() - return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2934
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 2936
    :cond_4
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2937
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v5}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 2938
    .local v0, ed:Landroid/media/RemoteControlClient$MetadataEditor;
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2939
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2940
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2941
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2943
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->genJasonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2960
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method private waitForAnimation()V
    .locals 3

    .prologue
    .line 4270
    monitor-enter p0

    .line 4271
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4272
    monitor-exit p0

    .line 4292
    :goto_0
    return-void

    .line 4274
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4276
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 4286
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 4287
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 4288
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4289
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4291
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4279
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4280
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

    .line 4281
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_3

    .line 4282
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4283
    :cond_3
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
    .line 7871
    return-void
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 7908
    return-void
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 4
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 7947
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

    .line 7949
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7950
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, If support Global Beats. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7977
    :cond_0
    :goto_0
    return-void

    .line 7954
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7955
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, Wired/BT headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7960
    :cond_2
    if-lez p2, :cond_0

    .line 7962
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7963
    .local v0, currentStyle:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "Original"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7964
    const-string v1, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7968
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
    .line 4839
    monitor-enter p0

    .line 4840
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 4841
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_0

    .line 4842
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->forcePlay()V

    .line 4844
    :cond_0
    monitor-exit p0

    .line 4845
    return-void

    .line 4844
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
    .line 4848
    monitor-enter p0

    .line 4849
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 4850
    monitor-exit p0

    .line 4851
    return-void

    .line 4850
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
    .line 5717
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5718
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearAlbumArtRequests()V

    .line 5720
    :cond_0
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1

    .prologue
    .line 5794
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5795
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearNowplayingQueueRequests()V

    .line 5799
    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 4
    .parameter "storagePath"

    .prologue
    .line 2769
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 2770
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2772
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2775
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 2777
    .local v0, isPlaying:Z
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 2782
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2783
    if-eqz v0, :cond_0

    .line 2784
    const-string v2, "com.htc.music.playstatechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2791
    .end local v0           #isPlaying:Z
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 5162
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5163
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .line 5165
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 4689
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "endAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4690
    monitor-enter p0

    .line 4691
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4696
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    .line 4700
    :goto_0
    monitor-exit p0

    .line 4702
    return-void

    .line 4698
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Bad !! endAnimation is not pair"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4700
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
    .line 3292
    monitor-enter p0

    .line 3293
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_3

    .line 3294
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3295
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3309
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_2

    .line 3310
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3311
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3312
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 3313
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3314
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3316
    :cond_2
    monitor-exit p0

    .line 3317
    :goto_0
    return-void

    .line 3298
    :cond_3
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3299
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3300
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3301
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3302
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3303
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_4

    .line 3304
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3305
    :cond_4
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3306
    monitor-exit p0

    goto :goto_0

    .line 3316
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
    const/4 v11, 0x0

    .line 5024
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5025
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v10

    .line 5026
    .local v10, position:I
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 5027
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v10}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5078
    .end local v10           #position:I
    :cond_0
    :goto_0
    return-object v0

    .line 5029
    .restart local v10       #position:I
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v10}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5036
    .end local v10           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v9

    .line 5037
    .local v9, id:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_3

    move-object v0, v11

    .line 5038
    goto :goto_0

    .line 5041
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    .line 5042
    .local v6, albumName:Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v11

    .line 5043
    goto :goto_0

    .line 5048
    :cond_5
    const/4 v8, 0x0

    .line 5050
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5052
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5055
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    .line 5056
    :cond_6
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5081
    if-eqz v8, :cond_7

    .line 5082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5083
    const/4 v8, 0x0

    :cond_7
    move-object v0, v11

    .line 5057
    goto :goto_0

    .line 5060
    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5061
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 5062
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_b

    .line 5063
    :cond_9
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5081
    if-eqz v8, :cond_a

    .line 5082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5083
    const/4 v8, 0x0

    :cond_a
    move-object v0, v11

    .line 5064
    goto/16 :goto_0

    .line 5068
    :cond_b
    :try_start_2
    const-string v0, "album_art"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 5069
    .local v7, artColumnIndex:I
    if-gez v7, :cond_d

    .line 5070
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot find art column index"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5081
    if-eqz v8, :cond_c

    .line 5082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5083
    const/4 v8, 0x0

    :cond_c
    move-object v0, v11

    .line 5071
    goto/16 :goto_0

    .line 5074
    :cond_d
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5075
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 5081
    if-eqz v8, :cond_0

    .line 5082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5083
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 5077
    :cond_e
    :try_start_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot move to first position"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5081
    if-eqz v8, :cond_f

    .line 5082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5083
    const/4 v8, 0x0

    :cond_f
    move-object v0, v11

    .line 5078
    goto/16 :goto_0

    .line 5081
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #artColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_10

    .line 5082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5083
    const/4 v8, 0x0

    .line 5081
    :cond_10
    throw v0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 5761
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5763
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 5764
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5772
    :goto_0
    return-object v0

    .line 5766
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5772
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"

    .prologue
    .line 5777
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5778
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5781
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 4988
    monitor-enter p0

    .line 4989
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4990
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumId()I

    move-result v0

    monitor-exit p0

    .line 4992
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    monitor-exit p0

    goto :goto_0

    .line 4994
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
    .line 4975
    monitor-enter p0

    .line 4976
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4977
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 4982
    :goto_0
    return-object v0

    .line 4979
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4980
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mAlbum == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4982
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 4984
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
    .line 4788
    monitor-enter p0

    .line 4789
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4793
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v1

    .line 4796
    .local v1, len:I
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4797
    const/4 v1, 0x1

    .line 4800
    :cond_0
    new-array v2, v1, [I

    .line 4801
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4802
    aput v0, v2, v0

    .line 4801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4804
    :cond_1
    monitor-exit p0

    move-object v3, v2

    .line 4812
    .end local v2           #list:[I
    .local v3, list:[I
    :goto_1
    return-object v3

    .line 4807
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #list:[I
    :cond_2
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4808
    .restart local v1       #len:I
    new-array v2, v1, [I

    .line 4809
    .restart local v2       #list:[I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 4810
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 4809
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4812
    :cond_3
    monitor-exit p0

    move-object v3, v2

    .end local v2           #list:[I
    .restart local v3       #list:[I
    goto :goto_1

    .line 4814
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
    .line 4819
    monitor-enter p0

    .line 4820
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4823
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4824
    const/4 v0, 0x0

    monitor-exit p0

    .line 4830
    :goto_0
    return v0

    .line 4827
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4835
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4830
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
    .line 4865
    monitor-enter p0

    .line 4866
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4869
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4870
    const/4 v0, 0x1

    monitor-exit p0

    .line 4876
    :goto_0
    return v0

    .line 4873
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4878
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4876
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
    .line 4705
    monitor-enter p0

    .line 4706
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

    .line 4707
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
    .line 4965
    monitor-enter p0

    .line 4966
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4967
    const/4 v0, -0x1

    monitor-exit p0

    .line 4969
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    monitor-exit p0

    goto :goto_0

    .line 4971
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
    .line 4952
    monitor-enter p0

    .line 4953
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4954
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 4959
    :goto_0
    return-object v0

    .line 4956
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4957
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mArtist == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4959
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 4961
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
    .line 4898
    monitor-enter p0

    .line 4899
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

    .line 4900
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 4903
    :goto_0
    return v0

    .line 4902
    :cond_2
    monitor-exit p0

    .line 4903
    const/4 v0, -0x1

    goto :goto_0

    .line 4902
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
    .line 4910
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4911
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioSessionId()I

    move-result v0

    .line 4913
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 5702
    monitor-enter p0

    .line 5703
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5704
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getBufferingPercent()I

    move-result v0

    monitor-exit p0

    .line 5707
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    monitor-exit p0

    goto :goto_0

    .line 5709
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
    .line 5639
    monitor-enter p0

    .line 5640
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5641
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getComposer()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5643
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5645
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
    .line 5357
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
    .line 5295
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 5296
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

    .line 5302
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 5303
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 5305
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5306
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5307
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 5308
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5309
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5311
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5313
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5316
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

    .line 5320
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 5321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5322
    const/4 v11, 0x0

    .line 5326
    :cond_1
    return-object v10

    .line 5320
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 5321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5322
    const/4 v11, 0x0

    .line 5320
    :cond_2
    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 5713
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5649
    monitor-enter p0

    .line 5650
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5651
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5653
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5655
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
    .line 5659
    monitor-enter p0

    .line 5660
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5661
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getGenre()Ljava/lang/String;

    move-result-object v8

    monitor-exit p0

    .line 5686
    :goto_0
    return-object v8

    .line 5663
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 5664
    .local v6, audioId:I
    const/4 v8, 0x0

    .line 5665
    .local v8, genre:Ljava/lang/String;
    if-ltz v6, :cond_2

    .line 5666
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 5670
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

    .line 5673
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5676
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 5677
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5678
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5681
    :cond_1
    if-eqz v7, :cond_2

    .line 5682
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5686
    .end local v2           #CursorCols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 5688
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
    .line 5692
    monitor-enter p0

    .line 5693
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5694
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5696
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5698
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
    .line 4678
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getNowplayingQueue(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 5786
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5787
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getNowplayingQueue(I)V

    .line 5791
    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4887
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4888
    const-string v0, "plugin_file_path"

    .line 4890
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4673
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    .line 4674
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

    .line 5723
    monitor-enter p0

    .line 5724
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5725
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getPositionByShufflePosition(I)I

    move-result v1

    monitor-exit p0

    .line 5736
    :goto_0
    return v1

    .line 5727
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5729
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5731
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v0, v3, p1

    .line 5733
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5734
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5738
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5733
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5736
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
    .line 3583
    monitor-enter p0

    .line 3584
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3585
    .local v1, len:I
    new-array v2, v1, [I

    .line 3586
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3587
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3589
    :cond_0
    monitor-exit p0

    return-object v2

    .line 3590
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
    .line 4922
    monitor-enter p0

    .line 4924
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4925
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    .line 4928
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    goto :goto_0

    .line 4929
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
    .line 4854
    monitor-enter p0

    .line 4856
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4857
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 4860
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    goto :goto_0

    .line 4861
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
    .line 4653
    monitor-enter p0

    .line 4654
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4655
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    .line 4657
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    monitor-exit p0

    goto :goto_0

    .line 4659
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
    .line 4631
    monitor-enter p0

    .line 4632
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4633
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    .line 4635
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    monitor-exit p0

    goto :goto_0

    .line 4637
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

    .line 5742
    monitor-enter p0

    .line 5743
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5744
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getShufflePositionByPosition(I)I

    move-result v1

    monitor-exit p0

    .line 5755
    :goto_0
    return v1

    .line 5746
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5748
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5750
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v0, v3, p1

    .line 5752
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5753
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5757
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5752
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5755
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
    .line 5802
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5803
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getTrackDetails(I)V

    .line 5807
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4998
    monitor-enter p0

    .line 4999
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5000
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5005
    :goto_0
    return-object v0

    .line 5002
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5003
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getTrackName: mTitle == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5007
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
    .line 4668
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getVolume()I

    move-result v0

    .line 4669
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
    .line 7912
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

    .line 7914
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7943
    :cond_0
    :goto_0
    return-void

    .line 7923
    :cond_1
    if-nez p1, :cond_0

    .line 7925
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v1

    .line 7927
    .local v1, selectSoundStyleIndes:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7928
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v1, v2, :cond_0

    .line 7929
    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7930
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 7934
    :cond_2
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v2, :cond_0

    .line 7935
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v0

    .line 7937
    .local v0, effect:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7938
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
    .line 3926
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3927
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPlaying()Z

    move-result v0

    .line 3929
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 3

    .prologue
    .line 4265
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

    .line 4266
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 5
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3511
    monitor-enter p0

    .line 3512
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_0

    .line 3513
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v2, -0x1

    .line 3515
    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_1

    .line 3516
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 3518
    :cond_1
    if-ge p1, p2, :cond_5

    .line 3519
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3520
    .local v1, tmp:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 3521
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3523
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3524
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_4

    .line 3525
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3541
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3542
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3543
    monitor-exit p0

    .line 3544
    return-void

    .line 3526
    .restart local v0       #i:I
    .restart local v1       #tmp:I
    :cond_4
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 3527
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3543
    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3529
    :cond_5
    if-ge p2, p1, :cond_3

    .line 3530
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3531
    .restart local v1       #tmp:I
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 3532
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3531
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3534
    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3535
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_7

    .line 3536
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3537
    :cond_7
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_3

    .line 3538
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
    .line 3977
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 3978
    return-void
.end method

.method public next(ZZ)V
    .locals 1
    .parameter "force"
    .parameter "playAnim"

    .prologue
    .line 3981
    monitor-enter p0

    .line 3982
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3983
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->pluginNext(Z)V

    .line 3987
    :goto_0
    monitor-exit p0

    .line 3988
    return-void

    .line 3985
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V

    goto :goto_0

    .line 3987
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
    .line 4262
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 2526
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2527
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2529
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2531
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

    .line 2534
    const-class v1, Lcom/htc/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onBind IHtcMediaPlaybackService"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 2541
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 15

    .prologue
    .line 1459
    const-string v12, "[MediaPlaybackService]"

    const-string v13, "onCreate"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1461
    const-string v12, "audio"

    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1462
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    .local v8, rec:Landroid/content/ComponentName;
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v12, v8}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1465
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v4, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1467
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1470
    .local v5, mediaPendingIntent:Landroid/app/PendingIntent;
    new-instance v12, Landroid/media/RemoteControlClient;

    invoke-direct {v12, v5}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1471
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v13, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1473
    const/16 v2, 0xbd

    .line 1479
    .local v2, flags:I
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v12, v2}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1481
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 1482
    .local v10, status:Landroid/app/Notification;
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v10}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1483
    const-string v12, "Music"

    const/4 v13, 0x3

    invoke-virtual {p0, v12, v13}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1484
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1485
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "plugin"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1486
    .local v3, lastPluginClass:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 1487
    .local v11, storageStatus:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "mounted_ro"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 1490
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1491
    if-eqz v3, :cond_0

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1492
    :cond_0
    new-instance v12, Lcom/htc/music/MusicPluginManager;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 1497
    :cond_1
    :goto_1
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v12, v3}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 1499
    new-instance v12, Landroid/os/HandlerThread;

    const-string v13, "MediaPlaybackServiceWorker"

    invoke-direct {v12, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1500
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 1501
    new-instance v12, Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    iget-object v13, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1503
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 1506
    new-instance v12, Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v12, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1507
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v13, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1514
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1518
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1521
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v12, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1522
    const-string v12, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1523
    const-string v12, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1524
    const-string v12, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1525
    const-string v12, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1526
    const-string v12, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1527
    const-string v12, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1528
    const-string v12, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1529
    const-string v12, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1531
    const-string v12, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1532
    const-string v12, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1533
    const-string v12, "com.htc.music.onerror"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1534
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1538
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1546
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1547
    .local v9, shutdownReceiver:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    const-string v12, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v9}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1552
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1554
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    .line 1556
    new-instance v12, Lcom/htc/music/MediaPlaybackService$DockEventListener;

    invoke-direct {v12, p0}, Lcom/htc/music/MediaPlaybackService$DockEventListener;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1557
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1558
    .local v1, dockEventReceiver:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v1}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1561
    new-instance v12, Lcom/htc/music/MediaPlaybackService$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lcom/htc/music/MediaPlaybackService$QueryHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/ContentResolver;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 1565
    const-string v12, "power"

    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 1566
    .local v7, pm:Landroid/os/PowerManager;
    const/4 v12, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1567
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1571
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 1572
    .local v6, msg:Landroid/os/Message;
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v13, 0xea60

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1575
    const/4 v12, 0x1

    const-wide/16 v13, 0x2710

    invoke-direct {p0, v12, v13, v14}, Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V

    .line 1578
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1579
    iget-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1584
    const-string v12, "[MediaPlaybackService]"

    const-string v13, "onCreate finished"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    return-void

    .line 1487
    .end local v0           #commandFilter:Landroid/content/IntentFilter;
    .end local v1           #dockEventReceiver:Landroid/content/IntentFilter;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #pm:Landroid/os/PowerManager;
    .end local v9           #shutdownReceiver:Landroid/content/IntentFilter;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1494
    :cond_3
    new-instance v12, Lcom/htc/music/MusicPluginManager;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, p0, v3, v13}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v12, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1590
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy Begin]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1601
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1602
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1603
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1605
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1607
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1611
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1612
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1615
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1616
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1617
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1618
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1619
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1622
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1623
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1625
    :cond_4
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 1626
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_5

    .line 1627
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 1630
    :cond_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 1631
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1632
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 1635
    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 1636
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1637
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1640
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1642
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 1645
    :cond_8
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 1646
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 1649
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 1650
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1652
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1653
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1655
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1656
    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1659
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_9

    .line 1660
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1661
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopHandlerThread()V

    .line 1664
    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1665
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy End]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 7390
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7391
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 7412
    :cond_0
    :goto_0
    return-void

    .line 7395
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7396
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 7399
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0

    .line 7402
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 7403
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 7404
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 7405
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 7407
    :cond_4
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7408
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2547
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2548
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2550
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2551
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

    .line 2552
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2556
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 2558
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2560
    if-nez p1, :cond_0

    .line 2561
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2562
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand intent NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    const/4 v11, 0x1

    .line 2690
    :goto_0
    return v11

    .line 2566
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2567
    .local v1, action:Ljava/lang/String;
    const-string v11, "command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2568
    .local v3, cmd:Ljava/lang/String;
    const-string v11, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2569
    .local v8, mode:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "car"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2570
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->switchToLocal()V

    .line 2574
    :cond_1
    const-string v11, "forcePlay"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2575
    .local v5, forcePlay:Z
    const-string v11, "classname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2576
    .local v2, className:Ljava/lang/String;
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2577
    .local v10, tm:Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_2

    .line 2578
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2579
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand TelephonyManager NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    const/4 v11, 0x1

    goto :goto_0

    .line 2582
    :cond_2
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v7, 0x1

    .line 2583
    .local v7, isPhoneIdle:Z
    :goto_1
    if-nez v7, :cond_4

    .line 2584
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2585
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand call state is not idle"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    const/4 v11, 0x1

    goto :goto_0

    .line 2582
    .end local v7           #isPhoneIdle:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2589
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

    .line 2590
    :cond_5
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDNEXT"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    if-eqz v5, :cond_6

    .line 2592
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2594
    :cond_6
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 2687
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2688
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 2689
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v12, 0xea60

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2690
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2595
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

    .line 2596
    :cond_9
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDPREVIOUS"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    if-eqz v5, :cond_a

    .line 2598
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2600
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    goto :goto_2

    .line 2601
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

    .line 2602
    :cond_c
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    cmp-long v11, v11, v13

    if-ltz v11, :cond_7

    .line 2608
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2609
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2610
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_2

    .line 2612
    :cond_d
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_7

    .line 2613
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v11

    if-nez v11, :cond_e

    .line 2614
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2615
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2617
    :cond_e
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2618
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2621
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

    .line 2622
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2623
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2624
    :cond_11
    const-string v11, "play"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2625
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2626
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2627
    :cond_12
    const-string v11, "stop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2628
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2629
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2630
    const-wide/16 v11, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 2631
    const-string v11, "com.htc.music.playstatechanged"

    invoke-direct {p0, v11}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2632
    :cond_13
    const-string v11, "ffstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2633
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFFSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2635
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2636
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2637
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2638
    .end local v9           #msg:Landroid/os/Message;
    :cond_14
    const-string v11, "rwstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 2639
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRWSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2641
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2642
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2643
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2644
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

    .line 2645
    :cond_16
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFF/RWSTOP"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2648
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-eqz v11, :cond_7

    .line 2649
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    .line 2652
    :cond_17
    const-string v11, "resume"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 2653
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRESUME"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v11, :cond_7

    .line 2657
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    .line 2658
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2660
    :cond_18
    const-string v11, "bindplugin"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2661
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDBINDPLUGIN"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2664
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

    .line 2668
    :cond_1a
    const-string v11, "id"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2669
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

    .line 2670
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_1c

    .line 2671
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 2672
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2674
    :cond_1b
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2675
    .restart local v9       #msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2676
    .local v4, data:Landroid/os/Bundle;
    const-string v11, "command"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    const-string v11, "id"

    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2678
    invoke-virtual {v9, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2679
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2682
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

    .line 2695
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2698
    .local v0, action:Ljava/lang/String;
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    .line 2699
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    :cond_0
    :goto_0
    return v5

    .line 2703
    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2704
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

    .line 2707
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    .line 2711
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 2714
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2716
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_3

    .line 2719
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind isPlaying() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2726
    :cond_3
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2727
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2728
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2729
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind mPlayListLen > 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2734
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 2735
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    .line 2737
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
    .line 3675
    monitor-enter p0

    .line 3676
    if-nez p1, :cond_0

    .line 3677
    :try_start_0
    monitor-exit p0

    .line 3852
    :goto_0
    return-void

    .line 3680
    :cond_0
    const/4 v11, 0x0

    .line 3681
    .local v11, drmFileToPlay:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 3682
    new-instance v2, Lcom/htc/music/NpCategory;

    const/16 v4, 0x15

    invoke-direct {v2, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 3683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_1

    .line 3684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3686
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 3687
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3688
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3689
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3690
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    const/4 v7, -0x1

    aput v7, v2, v4

    .line 3699
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3706
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gtz v2, :cond_4

    .line 3711
    const-string v2, "content://media/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3712
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3713
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 3714
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3735
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3736
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 3737
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 3738
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3739
    const/4 v9, 0x0

    .line 3761
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3762
    if-eqz v9, :cond_4

    .line 3763
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3770
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

    .line 3771
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 3772
    .local v10, data:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3773
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 3774
    move-object/from16 p1, v10

    .line 3785
    .end local v10           #data:Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3786
    if-eqz v11, :cond_13

    .line 3787
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

    .line 3791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_12

    .line 3792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2, v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 3807
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_17

    .line 3808
    const/16 v12, 0xa

    .line 3809
    .local v12, min:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v4, 0xa

    if-ge v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_6

    .line 3810
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3813
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v2, v12, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_15

    .line 3814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 3815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3823
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

    .line 3825
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 3828
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v2, v12, :cond_9

    .line 3829
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 3832
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

    .line 3837
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_b

    .line 3838
    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->hasValidRights()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3840
    :cond_a
    const v2, 0x7f070096

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    .line 3851
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

    .line 3715
    .restart local v11       #drmFileToPlay:Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v2, "/sdcard/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3716
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3717
    .restart local v3       #uri:Landroid/net/Uri;
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3720
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

    .line 3724
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3726
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_8
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3729
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3724
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_8

    .line 3741
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_f
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3742
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3743
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v2, v4

    .line 3745
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3746
    const/4 v8, -0x1

    .line 3747
    .local v8, albumID:I
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 3748
    const-string v2, "album_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3751
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3752
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    aput v8, v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 3766
    .end local v8           #albumID:I
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 3777
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_11
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3778
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

    .line 3779
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 3780
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3781
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    .line 3796
    :cond_12
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "drm setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3799
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_14

    .line 3800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3802
    :cond_14
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3818
    .restart local v12       #min:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 3819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto/16 :goto_6

    .line 3842
    :cond_16
    const v2, 0x7f070068

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    goto/16 :goto_7

    .line 3847
    .end local v12           #min:I
    :cond_17
    if-nez v11, :cond_b

    .line 3848
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

    .line 3327
    monitor-enter p0

    .line 3328
    :try_start_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3329
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3332
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 3333
    .local v3, oldId:I
    array-length v1, p1

    .line 3335
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 3336
    .local v2, newlist:Z
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v4, v1, :cond_1

    .line 3338
    const/4 v2, 0x0

    .line 3339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3340
    aget v4, p1, v0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_5

    .line 3341
    const/4 v2, 0x1

    .line 3347
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_3

    .line 3348
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v6, :cond_6

    .line 3349
    if-gez p2, :cond_2

    .line 3350
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    .line 3354
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3355
    const/4 p2, 0x0

    .line 3357
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3360
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3369
    :goto_1
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3370
    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3373
    :cond_3
    if-ltz p2, :cond_7

    .line 3374
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3380
    :goto_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 3382
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3383
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3384
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 3385
    const-string v4, "com.htc.music.metachanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3387
    :cond_4
    monitor-exit p0

    .line 3388
    return-void

    .line 3339
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3364
    .end local v0           #i:I
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3387
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3376
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
    .line 3646
    monitor-enter p0

    .line 3647
    if-nez p1, :cond_0

    .line 3648
    :try_start_0
    monitor-exit p0

    .line 3665
    :goto_0
    return-void

    .line 3651
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3652
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3653
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3655
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3658
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3661
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3662
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    .line 3663
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 3664
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
    .line 3905
    monitor-enter p0

    .line 3906
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    .line 3907
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

    .line 3908
    if-eqz v0, :cond_0

    .line 3910
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3911
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3917
    :goto_0
    monitor-exit p0

    .line 3918
    return-void

    .line 3913
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 3914
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    goto :goto_0

    .line 3917
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
    .line 3858
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "play() +++++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    monitor-enter p0

    .line 3861
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 3863
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3866
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3869
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3870
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    .line 3874
    :goto_0
    monitor-exit p0

    .line 3875
    return-void

    .line 3872
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    goto :goto_0

    .line 3874
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

    .line 5090
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5091
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    .line 5092
    .local v0, len:I
    if-eqz v0, :cond_0

    if-lt p1, v0, :cond_1

    .line 5093
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "playAlbum, Plugin mode, Something bad happened"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 5152
    .end local v0           #len:I
    .end local p1
    :goto_0
    return p1

    .line 5097
    .restart local v0       #len:I
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    goto :goto_0

    .line 5103
    .end local v0           #len:I
    :cond_2
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lt p1, v3, :cond_4

    .line 5104
    :cond_3
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Something bad happened"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 5105
    goto :goto_0

    .line 5107
    :cond_4
    monitor-enter p0

    .line 5109
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 5111
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5116
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5121
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_5

    .line 5122
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5123
    :cond_5
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5124
    monitor-exit p0

    move p1, v2

    goto :goto_0

    .line 5140
    :cond_6
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5144
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5148
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_7

    .line 5149
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5150
    :cond_7
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5152
    monitor-exit p0

    goto :goto_0

    .line 5153
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

    .line 7456
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 7465
    :cond_0
    :goto_0
    return-void

    .line 7458
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7459
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathshuffleupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7462
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7463
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7464
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginAlbumArtPathUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 7444
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 7453
    :cond_0
    :goto_0
    return-void

    .line 7446
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7447
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7450
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7451
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7452
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "action"
    .parameter "extra"

    .prologue
    const/4 v4, 0x2

    .line 7415
    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v3, :cond_3

    .line 7416
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

    .line 7420
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7422
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7425
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginUpdateNotification()Landroid/app/Notification;

    move-result-object v2

    .line 7426
    .local v2, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7427
    .local v1, msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7428
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7432
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #notification:Landroid/app/Notification;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7433
    .restart local v1       #msg:Landroid/os/Message;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7434
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

    .line 7435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7436
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "extrastate"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7437
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7439
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 7441
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
    .line 7468
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p2, :cond_1

    .line 7475
    :cond_0
    :goto_0
    return-void

    .line 7470
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.nowplayingqueueupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7471
    .local v0, i:Landroid/content/Intent;
    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7472
    const-string v1, "end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7473
    const-string v1, "values"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7474
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V
    .locals 2
    .parameter "position"
    .parameter "values"

    .prologue
    .line 7478
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 7484
    :cond_0
    :goto_0
    return-void

    .line 7480
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.trackdetailsupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7481
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7482
    const-string v1, "values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7483
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 5173
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5174
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->position()J

    move-result-wide v0

    .line 5176
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 3960
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    .line 3961
    return-void
.end method

.method public prev(Z)V
    .locals 1
    .parameter "playAnim"

    .prologue
    .line 3964
    monitor-enter p0

    .line 3965
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3966
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginPrev(Z)V

    .line 3970
    :goto_0
    monitor-exit p0

    .line 3971
    return-void

    .line 3968
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6100(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0

    .line 3970
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
    .line 4153
    return-void
.end method

.method printATSPauseMusictoStopLog()V
    .locals 0

    .prologue
    .line 8065
    return-void
.end method

.method printATSPlayMusicLog()V
    .locals 0

    .prologue
    .line 8041
    return-void
.end method

.method printATSStopMusicByPhoneCallLog()V
    .locals 0

    .prologue
    .line 8088
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 2799
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2800
    new-instance v1, Lcom/htc/music/MediaPlaybackService$9;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackService$9;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 2848
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2849
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2850
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2851
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2852
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2853
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2854
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2856
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 1935
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    if-eqz v0, :cond_0

    .line 1937
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue: mIsReloadingQueue = true"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    monitor-enter p0

    .line 1943
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    :goto_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    return-void

    .line 1943
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1945
    :cond_0
    monitor-enter p0

    .line 1946
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 1947
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()V

    .line 1948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 1949
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

    .line 4514
    const/4 v1, 0x0

    .line 4515
    .local v1, numremoved:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4517
    monitor-enter p0

    .line 4518
    :try_start_0
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4519
    aget v2, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4518
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4521
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4523
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_1

    .line 4524
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4525
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 4527
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

    .line 4528
    if-lez v1, :cond_3

    .line 4529
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    if-nez v2, :cond_2

    .line 4530
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "removeQueueTracks mQueueModified = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4531
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4533
    :cond_2
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4535
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 4538
    :cond_3
    return v1

    .line 4521
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
    .line 4489
    const/4 v1, 0x0

    .line 4490
    .local v1, numremoved:I
    monitor-enter p0

    .line 4491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 4492
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 4493
    invoke-direct {p0, v0, v0}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4494
    add-int/lit8 v0, v0, -0x1

    .line 4491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4497
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4499
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

    .line 4500
    if-lez v1, :cond_2

    .line 4501
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4502
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4504
    :cond_2
    return v1

    .line 4497
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
    .line 4392
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 4393
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 4394
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4395
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4397
    :cond_0
    return v0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 4548
    const/4 v3, 0x0

    .line 4549
    .local v3, numRemoved:I
    const/4 v0, 0x0

    .line 4550
    .local v0, countToBroadcast:I
    array-length v4, p1

    .line 4551
    .local v4, removeTrackCount:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4553
    monitor-enter p0

    .line 4554
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_5

    .line 4556
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v5, :cond_1

    .line 4557
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v5, v5, v2

    aget v6, p1, v1

    if-ne v5, v6, :cond_0

    .line 4558
    invoke-direct {p0, v2, v2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 4556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4561
    :cond_1
    if-lez v3, :cond_2

    .line 4562
    add-int/lit8 v0, v0, 0x1

    .line 4564
    :cond_2
    const/16 v5, 0x32

    if-ne v0, v5, :cond_3

    .line 4565
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast 50"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4566
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4567
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4568
    const/4 v0, 0x0

    .line 4570
    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_4

    .line 4571
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast removeTrackCount - "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4572
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4573
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4554
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4576
    .end local v2           #j:I
    :cond_5
    monitor-exit p0

    .line 4577
    return v3

    .line 4576
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
    .line 5187
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    .line 5189
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5191
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .local v0, mDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 5192
    move-wide p1, v0

    .line 5194
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/MusicPluginManager;->seek(J)J

    move-result-wide v2

    .line 5197
    .end local v0           #mDuration:J
    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 4779
    monitor-enter p0

    .line 4780
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToAlbumList([II)V

    .line 4782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 4783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4784
    monitor-exit p0

    .line 4785
    return-void

    .line 4784
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

    .line 3428
    monitor-enter p0

    .line 3429
    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3430
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3432
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 3433
    .local v4, oldId:I
    array-length v2, p1

    .line 3435
    .local v2, listlength:I
    const/4 v3, 0x1

    .line 3439
    .local v3, newlist:Z
    if-nez p2, :cond_1

    .line 3440
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v2, :cond_1

    .line 3441
    const/4 v3, 0x0

    .line 3442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3443
    aget v6, p1, v0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_8

    .line 3444
    const/4 v3, 0x1

    .line 3450
    .end local v0           #i:I
    :cond_1
    if-eqz v3, :cond_2

    .line 3451
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v6, v8, :cond_9

    .line 3453
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3455
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3458
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3466
    :goto_1
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3467
    const-string v6, "com.htc.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3470
    :cond_2
    const/4 v5, 0x0

    .line 3471
    .local v5, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v6, :cond_3

    .line 3472
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_a

    .line 3473
    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3474
    const/4 v5, 0x1

    .line 3478
    :cond_3
    if-nez v5, :cond_5

    .line 3479
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3481
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3482
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 3483
    .local v1, isPlaying:Z
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3484
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3485
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3487
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3492
    .end local v1           #isPlaying:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3494
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3496
    if-nez v5, :cond_6

    .line 3497
    const-string v6, "com.htc.music.metachanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3499
    :cond_6
    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v6, :cond_7

    .line 3500
    const-string v6, "com.htc.music.refresh"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3502
    :cond_7
    monitor-exit p0

    .line 3503
    return-void

    .line 3442
    .end local v5           #playPosFound:Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3462
    .end local v0           #i:I
    :cond_9
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3502
    .end local v2           #listlength:I
    .end local v3           #newlist:Z
    .end local v4           #oldId:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3471
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
    .line 4937
    monitor-enter p0

    .line 4938
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4939
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 4948
    :goto_0
    monitor-exit p0

    .line 4949
    return-void

    .line 4941
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4942
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4943
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4944
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 4945
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4946
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 4948
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
    .line 4641
    monitor-enter p0

    .line 4642
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4643
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setRepeatMode(I)V

    .line 4649
    :goto_0
    const-string v0, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4650
    monitor-exit p0

    .line 4651
    return-void

    .line 4645
    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 4646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0

    .line 4650
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

    .line 4581
    monitor-enter p0

    .line 4582
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4583
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setShuffleMode(I)V

    .line 4626
    :cond_0
    :goto_0
    const-string v1, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4627
    monitor-exit p0

    .line 4628
    :goto_1
    return-void

    .line 4585
    :cond_1
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_2

    .line 4586
    monitor-exit p0

    goto :goto_1

    .line 4627
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4588
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4589
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 4590
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4591
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

    .line 4592
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4593
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 4594
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4595
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4596
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 4597
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4598
    :cond_3
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4599
    monitor-exit p0

    goto :goto_1

    .line 4602
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4605
    :cond_5
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_6

    .line 4607
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v0, v1, [I

    .line 4608
    .local v0, nonShufflePlayList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 4609
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_0

    .line 4610
    .end local v0           #nonShufflePlayList:[I
    :cond_6
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_0

    .line 4611
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 4612
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 4615
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4617
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4618
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4619
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_0

    .line 4620
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4621
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
    .line 4664
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setVolume(I)V

    .line 4665
    :cond_0
    return-void
.end method

.method public showPluginToast(Ljava/lang/String;I)V
    .locals 4
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5492
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5493
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5494
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5495
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5496
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5497
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5498
    return-void
.end method

.method shutdownServcieDelay()V
    .locals 4

    .prologue
    .line 5406
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5407
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5408
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5409
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 4682
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4683
    monitor-enter p0

    .line 4684
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4685
    monitor-exit p0

    .line 4686
    return-void

    .line 4685
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
    .line 3897
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "!!!! @@@@ stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3899
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 5
    .parameter "list"

    .prologue
    .line 3547
    monitor-enter p0

    .line 3548
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

    .line 3550
    if-nez p1, :cond_0

    .line 3551
    monitor-exit p0

    .line 3566
    :goto_0
    return-void

    .line 3553
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v1, v2, v3

    .line 3554
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

    .line 3556
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3558
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3559
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3558
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3561
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v1, v3}, Lcom/htc/music/MediaPlaybackService;->Search([III)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3563
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3564
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3565
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
    .line 5330
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
    .line 7874
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7894
    :cond_0
    return-void
.end method
